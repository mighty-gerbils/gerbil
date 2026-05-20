(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1779274777)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp236578 (list gxc#::identity::t))
            (__tmp236577 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp236578
         '()
         __tmp236577
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args235375%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args235375%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp236579
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
        (__make-atomic-promise __tmp236579)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx235367%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self235370%_
                (let ((__obj236570
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj236570))
               (__tmp236580
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235370%_ _%stx235367%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236580
           gxc#current-compile-method
           _%self235370%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp236582 (list gxc#::false::t))
            (__tmp236581 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp236582
         '()
         __tmp236581
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args235364%_
        (apply make-instance gxc#::extract-receiver::t _%$args235364%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp236583
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
        (__make-atomic-promise __tmp236583)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx235356%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self235359%_
                (let ((__obj236572
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj236572))
               (__tmp236584
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self235359%_ _%stx235356%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp236584
           gxc#current-compile-method
           _%self235359%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp236586 (list gxc#::void::t))
            (__tmp236585 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp236586
         '(receiver methods slots)
         __tmp236585
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args235353%_
        (apply make-instance gxc#::collect-object-refs::t _%$args235353%_)))
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
      (let ((__tmp236587
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
        (__make-atomic-promise __tmp236587)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords235322%_
               _%receiver235317235323%_
               _%methods235318235324%_
               _%slots235319235325%_
               _%stx235326%_)
        (let* ((_%receiver235329%_
                (if (eq? _%receiver235317235323%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235317235323%_))
               (_%methods235331%_
                (if (eq? _%methods235318235324%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235318235324%_))
               (_%slots235333%_
                (if (eq? _%slots235319235325%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235319235325%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self235335%_
                  (let ((__obj236574
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
                       __obj236574
                       _%receiver235329%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236574
                       _%methods235331%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236574
                       _%slots235333%_
                       '3
                       '#f
                       '#f))
                    __obj236574))
                 (__tmp236588
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235335%_ _%stx235326%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236588
             gxc#current-compile-method
             _%self235335%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords235342%_ . _%args235343%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords235342%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235342%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235342%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235342%_
                  'slots:
                  absent-value))
               _%args235343%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args235320235349%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args235320235349%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp236590 (list gxc#::basic-xform-expression::t))
            (__tmp236589 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp236590
         '(receiver klass methods slots)
         __tmp236589
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args235313%_
        (apply make-instance gxc#::subst-object-refs::t _%$args235313%_)))
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
      (let ((__tmp236591
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
        (__make-atomic-promise __tmp236591)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords235279%_
               _%receiver235273235280%_
               _%klass235274235281%_
               _%methods235275235282%_
               _%slots235276235283%_
               _%stx235284%_)
        (let* ((_%receiver235287%_
                (if (eq? _%receiver235273235280%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver235273235280%_))
               (_%klass235289%_
                (if (eq? _%klass235274235281%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass235274235281%_))
               (_%methods235291%_
                (if (eq? _%methods235275235282%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods235275235282%_))
               (_%slots235293%_
                (if (eq? _%slots235276235283%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots235276235283%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self235295%_
                  (let ((__obj236576
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
                       __obj236576
                       _%receiver235287%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236576
                       _%klass235289%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236576
                       _%methods235291%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj236576
                       _%slots235293%_
                       '4
                       '#f
                       '#f))
                    __obj236576))
                 (__tmp236592
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self235295%_ _%stx235284%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp236592
             gxc#current-compile-method
             _%self235295%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords235302%_ . _%args235303%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords235302%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235302%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235302%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235302%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords235302%_
                  'slots:
                  absent-value))
               _%args235303%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args235277235309%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args235277235309%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self232404%_ _%stx232405%_)
        (letrec ((_%generate-method-bind232407%_
                  (lambda (_%$klass235265%_
                           _%$method-table235266%_
                           _%id235267%_
                           _%$id235268%_)
                    (let ((_%$tmp235270%_
                           (let ((__tmp236593
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236593))))
                      (cons (cons _%$id235268%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp235270%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table235266%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id235267%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp235270%_ '()))
                    (cons (cons '%#ref (cons _%$tmp235270%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id235267%_
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
                 (_%generate-slot-bind232408%_
                  (lambda (_%$klass235259%_ _%id235260%_ _%$id235261%_)
                    (let ((_%$tmp235263%_
                           (let ((__tmp236594
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp236594))))
                      (cons (cons _%$id235261%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp235263%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass235259%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id235260%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp235263%_ '()))
                        (cons (cons '%#ref (cons _%$tmp235263%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id235260%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl232409%_
                  (lambda (_%$klass235253%_
                           _%$method-table235254%_
                           _%methods-bind235255%_
                           _%slots-bind235256%_
                           _%specializer-impl235257%_)
                    (let ((__tmp236595
                           (cons '%#lambda
                                 (cons (cons _%$klass235253%_
                                             (cons _%$method-table235254%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind235256%_
                                                            _%methods-bind235255%_))
                                                         (cons _%specializer-impl235257%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236595 _%stx232405%_))))
                 (_%generate-specializer-def232410%_
                  (lambda (_%id235249%_
                           _%specializer-id235250%_
                           _%specializer-impl235251%_)
                    (let ((__tmp236596
                           (cons '%#begin
                                 (cons _%stx232405%_
                                       (cons (let ((__tmp236597
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id235250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl235251%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236597
                                                _%stx232405%_))
                                             (cons (let ((__tmp236598
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id235249%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id235250%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236598
                                                      _%stx232405%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp236596 _%stx232405%_)))))
          (let* ((_%__stx235464235465%_ _%stx232405%_)
                 (_%g232413232433%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235464235465%_)))))
            (let ((_%__kont235466235467%_
                   (lambda (_%g232415232477%_ _%g232416232478%_)
                     (let ((_%method-calls232497%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs232498%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty232499%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?232501%_
                                 (lambda ()
                                   (if (let ((__tmp236599
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls232497%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236599))
                                       (let ((__tmp236600
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs232498%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp236600))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g232415232477%_))
                             (let* ((_%__stx235378235379%_ _%g232415232477%_)
                                    (_%g232885232903%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx235378235379%_)))))
                               (let ((_%__kont235380235381%_
                                      (lambda (_%g232887232939%_
                                               _%g232888232940%_
                                               _%g232889232941%_)
                                        (let ((_%receiver232961%_
                                               (let ((_%$e232958%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g232887232939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232958%_
                                                     _%$e232958%_
                                                     _%g232889232941%_))))
                                          (for-each
                                           (lambda (_%g232962232964%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232961%_
                                              _%method-calls232497%_
                                              _%slot-refs232498%_
                                              _%g232962232964%_))
                                           _%g232887232939%_)
                                          (if (_%no-specializer?232501%_)
                                              _%stx232405%_
                                              (let* ((_%specializer-id232973%_
                                                      (let* ((_%id232967%_
                                                              (let ((__tmp236601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232416232478%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236601 '"::specialize")))
                     (_%specializer-id232970%_
                      (let ((__tmp236602
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232405%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232967%_ __tmp236602))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232970%_))
                _%specializer-id232970%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232975%_
                                                      (let ((__tmp236603
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236603)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232977%_
                                                      (let ((__tmp236604
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236604)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232979%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232497%_)))
                                                     (_%$methods232983%_
                                                      (let ((__tmp236605
                                                             (lambda (_%id232981%_)
                                                               (let ((__tmp236606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232981%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236606)))))
                (declare (not safe))
                (##map __tmp236605 _%methods232979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232992%_
                                                      (let ((__tmp236607
                                                             (lambda (_%g232984232987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232985232989%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232497%_
                          _%g232984232987%_
                          _%g232985232989%_)))))
                (declare (not safe))
                (##for-each __tmp236607 _%methods232979%_ _%$methods232983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind233002%_
                                                      (let ((__tmp236608
                                                             (lambda (_%g232994232997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232995232999%_)
                       (_%generate-method-bind232407%_
                        _%$klass232975%_
                        _%$method-table232977%_
                        _%g232994232997%_
                        _%g232995232999%_))))
                (declare (not safe))
                (##map __tmp236608 _%methods232979%_ _%$methods232983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots233004%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232498%_)))
                                                     (_%$slots233008%_
                                                      (let ((__tmp236609
                                                             (lambda (_%id233006%_)
                                                               (let ((__tmp236610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233006%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236610)))))
                (declare (not safe))
                (##map __tmp236609 _%slots233004%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233017%_
                                                      (let ((__tmp236611
                                                             (lambda (_%g233009233012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233010233014%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232498%_
                          _%g233009233012%_
                          _%g233010233014%_)))))
                (declare (not safe))
                (##for-each __tmp236611 _%slots233004%_ _%$slots233008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind233026%_
                                                      (let ((__tmp236612
                                                             (lambda (_%g233018233021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233019233023%_)
                       (_%generate-slot-bind232408%_
                        _%$klass232975%_
                        _%g233018233021%_
                        _%g233019233023%_))))
                (declare (not safe))
                (##map __tmp236612 _%slots233004%_ _%$slots233008%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body233032%_
                                                      (map (lambda (_%g233027233029%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232961%_
                                                              _%$klass232975%_
                                                              _%method-calls232497%_
                                                              _%slot-refs232498%_
                                                              _%g233027233029%_))
                                                           _%g232887232939%_))
                                                     (_%specializer-impl233034%_
                                                      (let ((__tmp236613
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g232889232941%_ _%g232888232940%_)
                                 _%specializer-body233032%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236613 _%stx232405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233036%_
                                                      (_%generate-specializer-impl232409%_
                                                       _%$klass232975%_
                                                       _%$method-table232977%_
                                                       _%methods-bind233002%_
                                                       _%slots-bind233026%_
                                                       _%specializer-impl233034%_)))
                                                (let ((__tmp236615
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232416232478%_)))
                                                      (__tmp236614
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232973%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236615
                                                   '" => "
                                                   __tmp236614))
                                                (_%generate-specializer-def232410%_
                                                 _%g232416232478%_
                                                 _%specializer-id232973%_
                                                 _%specializer-impl233036%_))))))
                                     (_%__kont235382235383%_
                                      (lambda () _%stx232405%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx235378235379%_))
                                     (let ((_%e232890232915%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx235378235379%_))))
                                       (let ((_%tl232892232920%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e232890232915%_)))
                                             (_%hd232891232918%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e232890232915%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl232892232920%_))
                                             (let ((_%e232893232923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl232892232920%_))))
                                               (let ((_%tl232895232928%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e232893232923%_)))
                                                     (_%hd232894232926%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e232893232923%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd232894232926%_))
                                                     (let ((_%e232896232931%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd232894232926%_))))
                                                       (let ((_%tl232898232936%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e232896232931%_)))
                     (_%hd232897232934%_
                      (let () (declare (not safe)) (##car _%e232896232931%_))))
                 (_%__kont235380235381%_
                  _%tl232895232928%_
                  _%tl232898232936%_
                  _%hd232897232934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont235382235383%_))))
                                             (_%__kont235382235383%_))))
                                     (_%__kont235382235383%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g232415232477%_))
                                 (let* ((_%g233043233062%_
                                         (lambda (_%g233044233059%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g233044233059%_))))
                                        (_%g233042233358%_
                                         (lambda (_%g233044233065%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g233044233065%_))
                                               (let ((_%e233046233067%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g233044233065%_))))
                                                 (let ((_%hd233047233070%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233046233067%_)))
                                                       (_%tl233048233072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233046233067%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl233048233072%_))
                                                       (let ((_g236616_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl233048233072%_ '0))))
                 (begin
                   (let ((_g236617_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g236616_)
                                (##values-length _g236616_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g236617_ 2)))
                         (error "Context expects 2 values" _g236617_)))
                   (let ((_%target233049233075%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236616_ 0)))
                         (_%tl233051233077%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g236616_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl233051233077%_))
                         (letrec ((_%loop233052233080%_
                                   (lambda (_%hd233050233083%_
                                            _%clause233056233085%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd233050233083%_))
                                         (let ((_%e233053233087%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd233050233083%_))))
                                           (let ((_%lp-hd233054233090%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e233053233087%_)))
                                                 (_%lp-tl233055233092%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e233053233087%_))))
                                             (_%loop233052233080%_
                                              _%lp-tl233055233092%_
                                              (cons _%lp-hd233054233090%_
                                                    _%clause233056233085%_))))
                                         (let ((_%clause233057233095%_
                                                (reverse _%clause233056233085%_)))
                                           ((lambda (_%g233045233097%_)
                                              (for-each
                                               (lambda (_%clause233111%_)
                                                 (let* ((_%__stx235404235405%_
                                                         _%clause233111%_)
                                                        (_%g233114233129%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx235404235405%_)))))
                                                   (let ((_%__kont235406235407%_
                                                          (lambda (_%g233116233157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g233117233158%_
                           _%g233118233159%_)
                    (let ((_%receiver233178%_
                           (let ((_%$e233175%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g233116233157%_))))
                             (if _%$e233175%_
                                 _%$e233175%_
                                 _%g233118233159%_))))
                      (for-each
                       (lambda (_%g233179233181%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver233178%_
                          _%method-calls232497%_
                          _%slot-refs232498%_
                          _%g233179233181%_))
                       _%g233116233157%_))))
                 (_%__kont235408235409%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx235404235405%_))
                                                         (let ((_%e233119233141%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx235404235405%_))))
                   (let ((_%tl233121233146%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e233119233141%_)))
                         (_%hd233120233144%_
                          (let ()
                            (declare (not safe))
                            (##car _%e233119233141%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd233120233144%_))
                         (let ((_%e233122233149%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd233120233144%_))))
                           (let ((_%tl233124233154%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e233122233149%_)))
                                 (_%hd233123233152%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e233122233149%_))))
                             (_%__kont235406235407%_
                              _%tl233121233146%_
                              _%tl233124233154%_
                              _%hd233123233152%_)))
                         (_%__kont235408235409%_))))
                 (_%__kont235408235409%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp236618
                                                      (lambda (_%g233186233189%_
                                                               _%g233187233191%_)
                                                        (cons _%g233186233189%_
                                                              _%g233187233191%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236618
                                                  '()
                                                  _%g233045233097%_)))
                                              (if (_%no-specializer?232501%_)
                                                  _%stx232405%_
                                                  (let* ((_%specializer-id233200%_
                                                          (let* ((_%id233194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236619
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232416232478%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236619 '"::specialize")))
                         (_%specializer-id233197%_
                          (let ((__tmp236620
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232405%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id233194%_
                             __tmp236620))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id233197%_))
                    _%specializer-id233197%_))
                 (_%$klass233202%_
                  (let ((__tmp236621
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236621)))
                 (_%$method-table233204%_
                  (let ((__tmp236622
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236622)))
                 (_%methods233206%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232497%_)))
                 (_%$methods233210%_
                  (let ((__tmp236623
                         (lambda (_%id233208%_)
                           (let ((__tmp236624 (gensym _%id233208%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236624)))))
                    (declare (not safe))
                    (##map __tmp236623 _%methods233206%_)))
                 (_%_233219%_
                  (let ((__tmp236625
                         (lambda (_%g233211233214%_ _%g233212233216%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232497%_
                              _%g233211233214%_
                              _%g233212233216%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236625
                     _%methods233206%_
                     _%$methods233210%_)))
                 (_%methods-bind233229%_
                  (let ((__tmp236626
                         (lambda (_%g233221233224%_ _%g233222233226%_)
                           (_%generate-method-bind232407%_
                            _%$klass233202%_
                            _%$method-table233204%_
                            _%g233221233224%_
                            _%g233222233226%_))))
                    (declare (not safe))
                    (##map __tmp236626 _%methods233206%_ _%$methods233210%_)))
                 (_%slots233231%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232498%_)))
                 (_%$slots233235%_
                  (let ((__tmp236627
                         (lambda (_%id233233%_)
                           (let ((__tmp236628 (gensym _%id233233%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236628)))))
                    (declare (not safe))
                    (##map __tmp236627 _%slots233231%_)))
                 (_%_233244%_
                  (let ((__tmp236629
                         (lambda (_%g233236233239%_ _%g233237233241%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232498%_
                              _%g233236233239%_
                              _%g233237233241%_)))))
                    (declare (not safe))
                    (##for-each __tmp236629 _%slots233231%_ _%$slots233235%_)))
                 (_%slots-bind233253%_
                  (let ((__tmp236630
                         (lambda (_%g233245233248%_ _%g233246233250%_)
                           (_%generate-slot-bind232408%_
                            _%$klass233202%_
                            _%g233245233248%_
                            _%g233246233250%_))))
                    (declare (not safe))
                    (##map __tmp236630 _%slots233231%_ _%$slots233235%_)))
                 (_%specializer-clauses233351%_
                  (map (lambda (_%clause233255%_)
                         (let* ((_%__stx235424235425%_ _%clause233255%_)
                                (_%g233258233273%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx235424235425%_)))))
                           (let ((_%__kont235426235427%_
                                  (lambda (_%g233260233301%_
                                           _%g233261233302%_
                                           _%g233262233303%_)
                                    (let* ((_%receiver233332%_
                                            (let ((_%$e233329%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g233260233301%_))))
                                              (if _%$e233329%_
                                                  _%$e233329%_
                                                  _%g233262233303%_)))
                                           (_%body233338%_
                                            (map (lambda (_%g233333233335%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver233332%_
                                                    _%$klass233202%_
                                                    _%method-calls232497%_
                                                    _%slot-refs232498%_
                                                    _%g233333233335%_))
                                                 _%g233260233301%_)))
                                      (cons (cons _%g233262233303%_
                                                  _%g233261233302%_)
                                            _%body233338%_))))
                                 (_%__kont235428235429%_
                                  (lambda () _%clause233255%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx235424235425%_))
                                 (let ((_%e233263233285%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx235424235425%_))))
                                   (let ((_%tl233265233290%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e233263233285%_)))
                                         (_%hd233264233288%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e233263233285%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd233264233288%_))
                                         (let ((_%e233266233293%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd233264233288%_))))
                                           (let ((_%tl233268233298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e233266233293%_)))
                                                 (_%hd233267233296%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e233266233293%_))))
                                             (_%__kont235426235427%_
                                              _%tl233265233290%_
                                              _%tl233268233298%_
                                              _%hd233267233296%_)))
                                         (_%__kont235428235429%_))))
                                 (_%__kont235428235429%_)))))
                       (let ((__tmp236631
                              (lambda (_%g233343233346%_ _%g233344233348%_)
                                (cons _%g233343233346%_ _%g233344233348%_))))
                         (declare (not safe))
                         (foldr__0 __tmp236631 '() _%g233045233097%_))))
                 (_%specializer-impl233353%_
                  (let ((__tmp236632
                         (cons '%#case-lambda _%specializer-clauses233351%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236632 _%stx232405%_)))
                 (_%specializer-impl233355%_
                  (_%generate-specializer-impl232409%_
                   _%$klass233202%_
                   _%$method-table233204%_
                   _%methods-bind233229%_
                   _%slots-bind233253%_
                   _%specializer-impl233353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236634
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232416232478%_)))
                                                          (__tmp236633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id233200%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236634
                                                       '" => "
                                                       __tmp236633))
                                                    (_%generate-specializer-def232410%_
                                                     _%g232416232478%_
                                                     _%specializer-id233200%_
                                                     _%specializer-impl233355%_))))
                                            _%clause233057233095%_))))))
                           (_%loop233052233080%_ _%target233049233075%_ '()))
                         (_%g233043233062%_ _%g233044233065%_)))))
               (_%g233043233062%_ _%g233044233065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233043233062%_
                                                _%g233044233065%_)))))
                                   (_%g233042233358%_ _%g232415232477%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g232415232477%_))
                                     (let* ((_%g233362233392%_
                                             (lambda (_%g233363233389%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233363233389%_))))
                                            (_%g233361234019%_
                                             (lambda (_%g233363233395%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233363233395%_))
                                                   (let ((_%e233367233397%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233363233395%_))))
                                                     (let ((_%hd233368233400%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233367233397%_)))
                                                           (_%tl233369233402%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233367233397%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233369233402%_))
                                                           (let ((_%e233370233405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233369233402%_))))
                     (let ((_%hd233371233408%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233370233405%_)))
                           (_%tl233372233410%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233370233405%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233371233408%_))
                           (let ((_%e233373233413%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233371233408%_))))
                             (let ((_%hd233374233416%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233373233413%_)))
                                   (_%tl233375233418%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233373233413%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233374233416%_))
                                   (let ((_%e233376233421%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233374233416%_))))
                                     (let ((_%hd233377233424%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233376233421%_)))
                                           (_%tl233378233426%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233376233421%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd233377233424%_))
                                           (let ((_%e233379233429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd233377233424%_))))
                                             (let ((_%hd233380233432%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233379233429%_)))
                                                   (_%tl233381233434%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233379233429%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233381233434%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl233378233426%_))
                                                       (let ((_%e233382233437%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl233378233426%_))))
                 (let ((_%hd233383233440%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233382233437%_)))
                       (_%tl233384233442%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233382233437%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233384233442%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233375233418%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233372233410%_))
                               (let ((_%e233385233445%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233372233410%_))))
                                 (let ((_%hd233386233448%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233385233445%_)))
                                       (_%tl233387233450%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233385233445%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233387233450%_))
                                       ((lambda (_%g233364233453%_
                                                 _%g233365233454%_
                                                 _%g233366233455%_)
                                          (let* ((_%g233479233497%_
                                                  (lambda (_%g233480233494%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233480233494%_))))
                                                 (_%g233478233553%_
                                                  (lambda (_%g233480233500%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233480233500%_))
                                                        (let ((_%e233484233502%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233480233500%_))))
                  (let ((_%hd233485233505%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233484233502%_)))
                        (_%tl233486233507%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233484233502%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl233486233507%_))
                        (let ((_%e233487233510%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl233486233507%_))))
                          (let ((_%hd233488233513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e233487233510%_)))
                                (_%tl233489233515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e233487233510%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd233488233513%_))
                                (let ((_%e233490233518%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd233488233513%_))))
                                  (let ((_%hd233491233521%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233490233518%_)))
                                        (_%tl233492233523%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233490233518%_))))
                                    ((lambda (_%g233481233526%_
                                              _%g233482233527%_
                                              _%g233483233528%_)
                                       (let ((_%receiver233547%_
                                              (let ((_%$e233544%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g233481233526%_))))
                                                (if _%$e233544%_
                                                    _%$e233544%_
                                                    _%g233483233528%_))))
                                         (for-each
                                          (lambda (_%g233548233550%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver233547%_
                                             _%method-calls232497%_
                                             _%slot-refs232498%_
                                             _%g233548233550%_))
                                          _%g233481233526%_)))
                                     _%tl233489233515%_
                                     _%tl233492233523%_
                                     _%hd233491233521%_)))
                                (_%g233479233497%_ _%g233480233500%_))))
                        (_%g233479233497%_ _%g233480233500%_))))
                (_%g233479233497%_ _%g233480233500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233478233553%_
                                             _%g233365233454%_))
                                          (let* ((_%g233556233575%_
                                                  (lambda (_%g233557233572%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g233557233572%_))))
                                                 (_%g233555233697%_
                                                  (lambda (_%g233557233578%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g233557233578%_))
                                                        (let ((_%e233559233580%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g233557233578%_))))
                  (let ((_%hd233560233583%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233559233580%_)))
                        (_%tl233561233585%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233559233580%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233561233585%_))
                        (let ((_g236635_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl233561233585%_
                                  '0))))
                          (begin
                            (let ((_g236636_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g236635_)
                                         (##values-length _g236635_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g236636_ 2)))
                                  (error "Context expects 2 values"
                                         _g236636_)))
                            (let ((_%target233562233588%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236635_ 0)))
                                  (_%tl233564233590%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g236635_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl233564233590%_))
                                  (letrec ((_%loop233565233593%_
                                            (lambda (_%hd233563233596%_
                                                     _%clause233569233598%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd233563233596%_))
                                                  (let ((_%e233566233600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd233563233596%_))))
                                                    (let ((_%lp-hd233567233603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233566233600%_)))
                                                          (_%lp-tl233568233605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233566233600%_))))
                                                      (_%loop233565233593%_
                                                       _%lp-tl233568233605%_
                                                       (cons _%lp-hd233567233603%_
                                                             _%clause233569233598%_))))
                                                  (let ((_%clause233570233608%_
                                                         (reverse _%clause233569233598%_)))
                                                    ((lambda (_%g233558233610%_)
                                                       (for-each
                                                        (lambda (_%clause233623%_)
                                                          (let* ((_%g233625233640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g233626233637%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233626233637%_))))
                         (_%g233624233687%_
                          (lambda (_%g233626233643%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233626233643%_))
                                (let ((_%e233630233645%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233626233643%_))))
                                  (let ((_%hd233631233648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233630233645%_)))
                                        (_%tl233632233650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233630233645%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233631233648%_))
                                        (let ((_%e233633233653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233631233648%_))))
                                          (let ((_%hd233634233656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233633233653%_)))
                                                (_%tl233635233658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233633233653%_))))
                                            ((lambda (_%g233627233661%_
                                                      _%g233628233662%_
                                                      _%g233629233663%_)
                                               (let ((_%receiver233681%_
                                                      (let ((_%$e233678%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g233627233661%_))))
                (if _%$e233678%_ _%$e233678%_ _%g233629233663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g233682233684%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver233681%_
                                                     _%method-calls232497%_
                                                     _%slot-refs232498%_
                                                     _%g233682233684%_))
                                                  _%g233627233661%_)))
                                             _%tl233632233650%_
                                             _%tl233635233658%_
                                             _%hd233634233656%_)))
                                        (_%g233625233640%_
                                         _%g233626233643%_))))
                                (_%g233625233640%_ _%g233626233643%_)))))
                    (_%g233624233687%_ _%clause233623%_)))
                (let ((__tmp236637
                       (lambda (_%g233689233692%_ _%g233690233694%_)
                         (cons _%g233689233692%_ _%g233690233694%_))))
                  (declare (not safe))
                  (foldr__0 __tmp236637 '() _%g233558233610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause233570233608%_))))))
                                    (_%loop233565233593%_
                                     _%target233562233588%_
                                     '()))
                                  (_%g233556233575%_ _%g233557233578%_)))))
                        (_%g233556233575%_ _%g233557233578%_))))
                (_%g233556233575%_ _%g233557233578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g233555233697%_
                                             _%g233364233453%_))
                                          (if (_%no-specializer?232501%_)
                                              _%stx232405%_
                                              (let* ((_%specializer-id233706%_
                                                      (let* ((_%id233700%_
                                                              (let ((__tmp236638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232416232478%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp236638 '"::specialize")))
                     (_%specializer-id233703%_
                      (let ((__tmp236639
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx232405%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id233700%_ __tmp236639))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id233703%_))
                _%specializer-id233703%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass233708%_
                                                      (let ((__tmp236640
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp236640)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table233710%_
                                                      (let ((__tmp236641
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp236641)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods233712%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls232497%_)))
                                                     (_%$methods233716%_
                                                      (let ((__tmp236642
                                                             (lambda (_%id233714%_)
                                                               (let ((__tmp236643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233714%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236643)))))
                (declare (not safe))
                (##map __tmp236642 _%methods233712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233725%_
                                                      (let ((__tmp236644
                                                             (lambda (_%g233717233720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233718233722%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls232497%_
                          _%g233717233720%_
                          _%g233718233722%_)))))
                (declare (not safe))
                (##for-each __tmp236644 _%methods233712%_ _%$methods233716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind233735%_
                                                      (let ((__tmp236645
                                                             (lambda (_%g233727233730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233728233732%_)
                       (_%generate-method-bind232407%_
                        _%$klass233708%_
                        _%$method-table233710%_
                        _%g233727233730%_
                        _%g233728233732%_))))
                (declare (not safe))
                (##map __tmp236645 _%methods233712%_ _%$methods233716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots233737%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs232498%_)))
                                                     (_%$slots233741%_
                                                      (let ((__tmp236646
                                                             (lambda (_%id233739%_)
                                                               (let ((__tmp236647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id233739%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp236647)))))
                (declare (not safe))
                (##map __tmp236646 _%slots233737%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_233750%_
                                                      (let ((__tmp236648
                                                             (lambda (_%g233742233745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233743233747%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs232498%_
                          _%g233742233745%_
                          _%g233743233747%_)))))
                (declare (not safe))
                (##for-each __tmp236648 _%slots233737%_ _%$slots233741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind233759%_
                                                      (let ((__tmp236649
                                                             (lambda (_%g233751233754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g233752233756%_)
                       (_%generate-slot-bind232408%_
                        _%$klass233708%_
                        _%g233751233754%_
                        _%g233752233756%_))))
                (declare (not safe))
                (##map __tmp236649 _%slots233737%_ _%$slots233741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr233851%_
                                                      (let* ((_%g233761233779%_
                                                              (lambda (_%g233762233776%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233762233776%_))))
                     (_%g233760233848%_
                      (lambda (_%g233762233782%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233762233782%_))
                            (let ((_%e233766233784%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233762233782%_))))
                              (let ((_%hd233767233787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233766233784%_)))
                                    (_%tl233768233789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233766233784%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233768233789%_))
                                    (let ((_%e233769233792%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233768233789%_))))
                                      (let ((_%hd233770233795%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233769233792%_)))
                                            (_%tl233771233797%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233769233792%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233770233795%_))
                                            (let ((_%e233772233800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233770233795%_))))
                                              (let ((_%hd233773233803%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233772233800%_)))
                                                    (_%tl233774233805%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233772233800%_))))
                                                ((lambda (_%g233763233808%_
                                                          _%g233764233809%_
                                                          _%g233765233810%_)
                                                   (let* ((_%receiver233839%_
                                                           (let ((_%$e233836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g233763233808%_))))
                     (if _%$e233836%_ _%$e233836%_ _%g233765233810%_)))
                  (_%body233845%_
                   (map (lambda (_%g233840233842%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver233839%_
                           _%$klass233708%_
                           _%method-calls232497%_
                           _%slot-refs232498%_
                           _%g233840233842%_))
                        _%g233763233808%_))
                  (__tmp236650
                   (cons '%#lambda
                         (cons (cons _%g233765233810%_ _%g233764233809%_)
                               _%body233845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp236650
                                                      _%g233365233454%_)))
                                                 _%tl233771233797%_
                                                 _%tl233774233805%_
                                                 _%hd233773233803%_)))
                                            (_%g233761233779%_
                                             _%g233762233782%_))))
                                    (_%g233761233779%_ _%g233762233782%_))))
                            (_%g233761233779%_ _%g233762233782%_)))))
                (_%g233760233848%_ _%g233365233454%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr234012%_
                                                      (let* ((_%g233853233872%_
                                                              (lambda (_%g233854233869%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233854233869%_))))
                     (_%g233852234009%_
                      (lambda (_%g233854233875%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233854233875%_))
                            (let ((_%e233856233877%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233854233875%_))))
                              (let ((_%hd233857233880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233856233877%_)))
                                    (_%tl233858233882%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233856233877%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl233858233882%_))
                                    (let ((_g236651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl233858233882%_
                                              '0))))
                                      (begin
                                        (let ((_g236652_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g236651_)
                                                     (##values-length
                                                      _g236651_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g236652_ 2)))
                                              (error "Context expects 2 values"
                                                     _g236652_)))
                                        (let ((_%target233859233885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236651_ 0)))
                                              (_%tl233861233887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g236651_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233861233887%_))
                                              (letrec ((_%loop233862233890%_
                                                        (lambda (_%hd233860233893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause233866233895%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233860233893%_))
                      (let ((_%e233863233897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233860233893%_))))
                        (let ((_%lp-hd233864233900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233863233897%_)))
                              (_%lp-tl233865233902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233863233897%_))))
                          (_%loop233862233890%_
                           _%lp-tl233865233902%_
                           (cons _%lp-hd233864233900%_
                                 _%clause233866233895%_))))
                      (let ((_%clause233867233905%_
                             (reverse _%clause233866233895%_)))
                        ((lambda (_%g233855233907%_)
                           (let* ((_%clauses234007%_
                                   (map (lambda (_%clause233921%_)
                                          (let* ((_%__stx235444235445%_
                                                  _%clause233921%_)
                                                 (_%g233924233939%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx235444235445%_)))))
                                            (let ((_%__kont235446235447%_
                                                   (lambda (_%g233926233967%_
                                                            _%g233927233968%_
                                                            _%g233928233969%_)
                                                     (let* ((_%receiver233988%_
                                                             (let ((_%$e233985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233926233967%_))))
                       (if _%$e233985%_ _%$e233985%_ _%g233928233969%_)))
                    (_%body233994%_
                     (map (lambda (_%g233989233991%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233988%_
                             _%$klass233708%_
                             _%method-calls232497%_
                             _%slot-refs232498%_
                             _%g233989233991%_))
                          _%g233926233967%_)))
               (cons (cons _%g233928233969%_ _%g233927233968%_)
                     _%body233994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235448235449%_
                                                   (lambda ()
                                                     _%clause233921%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx235444235445%_))
                                                  (let ((_%e233929233951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx235444235445%_))))
                                                    (let ((_%tl233931233956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233929233951%_)))
                                                          (_%hd233930233954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233929233951%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233930233954%_))
                                                          (let ((_%e233932233959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233930233954%_))))
                    (let ((_%tl233934233964%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233932233959%_)))
                          (_%hd233933233962%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233932233959%_))))
                      (_%__kont235446235447%_
                       _%tl233931233956%_
                       _%tl233934233964%_
                       _%hd233933233962%_)))
                  (_%__kont235448235449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235448235449%_)))))
                                        (let ((__tmp236653
                                               (lambda (_%g233999234002%_
                                                        _%g234000234004%_)
                                                 (cons _%g233999234002%_
                                                       _%g234000234004%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp236653
                                           '()
                                           _%g233855233907%_))))
                                  (__tmp236654
                                   (cons '%#case-lambda _%clauses234007%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236654
                              _%g233364233453%_)))
                         _%clause233867233905%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233862233890%_
                                                 _%target233859233885%_
                                                 '()))
                                              (_%g233853233872%_
                                               _%g233854233875%_)))))
                                    (_%g233853233872%_ _%g233854233875%_))))
                            (_%g233853233872%_ _%g233854233875%_)))))
                (_%g233852234009%_ _%g233364233453%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl234014%_
                                                      (let ((__tmp236655
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g233366233455%_ '())
                                             (cons _%specializer-lambda-expr233851%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr234012%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp236655 _%stx232405%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl234016%_
                                                      (_%generate-specializer-impl232409%_
                                                       _%$klass233708%_
                                                       _%$method-table233710%_
                                                       _%methods-bind233735%_
                                                       _%slots-bind233759%_
                                                       _%specializer-impl234014%_)))
                                                (let ((__tmp236657
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232416232478%_)))
                                                      (__tmp236656
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id233706%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp236657
                                                   '" => "
                                                   __tmp236656))
                                                (_%generate-specializer-def232410%_
                                                 _%g232416232478%_
                                                 _%specializer-id233706%_
                                                 _%specializer-impl234016%_))))
                                        _%hd233386233448%_
                                        _%hd233383233440%_
                                        _%hd233380233432%_)
                                       (_%g233362233392%_ _%g233363233395%_))))
                               (_%g233362233392%_ _%g233363233395%_))
                           (_%g233362233392%_ _%g233363233395%_))
                       (_%g233362233392%_ _%g233363233395%_))))
               (_%g233362233392%_ _%g233363233395%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233362233392%_
                                                    _%g233363233395%_))))
                                           (_%g233362233392%_
                                            _%g233363233395%_))))
                                   (_%g233362233392%_ _%g233363233395%_))))
                           (_%g233362233392%_ _%g233363233395%_))))
                   (_%g233362233392%_ _%g233363233395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233362233392%_
                                                    _%g233363233395%_)))))
                                       (_%g233361234019%_ _%g232415232477%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g232415232477%_))
                                         (let* ((_%g234023234076%_
                                                 (lambda (_%g234024234073%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234024234073%_))))
                                                (_%g234022235241%_
                                                 (lambda (_%g234024234079%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234024234079%_))
                                                       (let ((_%e234030234081%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234024234079%_))))
                 (let ((_%hd234031234084%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234030234081%_)))
                       (_%tl234032234086%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234030234081%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd234031234084%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd234031234084%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl234032234086%_))
                               (let ((_%e234033234089%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl234032234086%_))))
                                 (let ((_%hd234034234092%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234033234089%_)))
                                       (_%tl234035234094%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234033234089%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd234034234092%_))
                                       (let ((_%e234036234097%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd234034234092%_))))
                                         (let ((_%hd234037234100%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e234036234097%_)))
                                               (_%tl234038234102%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e234036234097%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd234037234100%_))
                                               (let ((_%e234039234105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd234037234100%_))))
                                                 (let ((_%hd234040234108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234039234105%_)))
                                                       (_%tl234041234110%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234039234105%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd234040234108%_))
                                                       (let ((_%e234042234113%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd234040234108%_))))
                 (let ((_%hd234043234116%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234042234113%_)))
                       (_%tl234044234118%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234042234113%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl234044234118%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl234041234110%_))
                           (let ((_%e234045234121%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl234041234110%_))))
                             (let ((_%hd234046234124%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234045234121%_)))
                                   (_%tl234047234126%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234045234121%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234046234124%_))
                                   (let ((_%e234048234129%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234046234124%_))))
                                     (let ((_%hd234049234132%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234048234129%_)))
                                           (_%tl234050234134%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234048234129%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd234049234132%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd234049234132%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl234050234134%_))
                                                   (let ((_%e234051234137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl234050234134%_))))
                                                     (let ((_%hd234052234140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234051234137%_)))
                                                           (_%tl234053234142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234051234137%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd234052234140%_))
                                                           (let ((_%e234054234145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd234052234140%_))))
                     (let ((_%hd234055234148%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234054234145%_)))
                           (_%tl234056234150%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234054234145%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd234055234148%_))
                           (let ((_%e234057234153%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd234055234148%_))))
                             (let ((_%hd234058234156%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e234057234153%_)))
                                   (_%tl234059234158%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e234057234153%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd234058234156%_))
                                   (let ((_%e234060234161%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd234058234156%_))))
                                     (let ((_%hd234061234164%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234060234161%_)))
                                           (_%tl234062234166%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234060234161%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234062234166%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl234059234158%_))
                                               (let ((_%e234063234169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl234059234158%_))))
                                                 (let ((_%hd234064234172%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234063234169%_)))
                                                       (_%tl234065234174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234063234169%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl234065234174%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl234056234150%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl234053234142%_))
                       (let ((_%e234066234177%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234053234142%_))))
                         (let ((_%hd234067234180%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234066234177%_)))
                               (_%tl234068234182%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234066234177%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl234068234182%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl234047234126%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl234038234102%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl234035234094%_))
                                           (let ((_%e234069234185%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl234035234094%_))))
                                             (let ((_%hd234070234188%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e234069234185%_)))
                                                   (_%tl234071234190%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e234069234185%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl234071234190%_))
                                                   ((lambda (_%g234025234193%_
                                                             _%g234026234194%_
                                                             _%g234027234195%_
                                                             _%g234028234196%_
                                                             _%g234029234197%_)
                                                      (let* ((_%g234237234299%_
                                                              (lambda (_%g234238234296%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g234238234296%_))))
                     (_%g234236235238%_
                      (lambda (_%g234238234302%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g234238234302%_))
                            (let ((_%e234244234304%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g234238234302%_))))
                              (let ((_%hd234245234307%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234244234304%_)))
                                    (_%tl234246234309%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234244234304%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd234245234307%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd234245234307%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl234246234309%_))
                                            (let ((_%e234247234312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl234246234309%_))))
                                              (let ((_%hd234248234315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e234247234312%_)))
                                                    (_%tl234249234317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e234247234312%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl234249234317%_))
                                                    (let ((_%e234250234320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl234249234317%_))))
                                                      (let ((_%hd234251234323%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e234250234320%_)))
                    (_%tl234252234325%_
                     (let () (declare (not safe)) (##cdr _%e234250234320%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd234251234323%_))
                    (let ((_%e234253234328%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd234251234323%_))))
                      (let ((_%hd234254234331%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234253234328%_)))
                            (_%tl234255234333%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234253234328%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd234254234331%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd234254234331%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl234255234333%_))
                                    (let ((_%e234256234336%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl234255234333%_))))
                                      (let ((_%hd234257234339%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234256234336%_)))
                                            (_%tl234258234341%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234256234336%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd234257234339%_))
                                            (let ((_%e234259234344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd234257234339%_))))
                                              (let ((_%hd234260234347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e234259234344%_)))
                                                    (_%tl234261234349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e234259234344%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd234260234347%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd234260234347%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl234261234349%_))
                                                            (let ((_%e234262234352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl234261234349%_))))
                      (let ((_%hd234263234355%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234262234352%_)))
                            (_%tl234264234357%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234262234352%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl234264234357%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl234258234341%_))
                                (let ((_%e234265234360%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl234258234341%_))))
                                  (let ((_%hd234266234363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234265234360%_)))
                                        (_%tl234267234365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234265234360%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd234266234363%_))
                                        (let ((_%e234268234368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd234266234363%_))))
                                          (let ((_%hd234269234371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234268234368%_)))
                                                (_%tl234270234373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234268234368%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd234269234371%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd234269234371%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl234270234373%_))
                                                        (let ((_%e234271234376%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl234270234373%_))))
                  (let ((_%hd234272234379%_
                         (let ()
                           (declare (not safe))
                           (##car _%e234271234376%_)))
                        (_%tl234273234381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e234271234376%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl234273234381%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl234267234365%_))
                            (let ((_%e234274234384%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl234267234365%_))))
                              (let ((_%hd234275234387%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234274234384%_)))
                                    (_%tl234276234389%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234274234384%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd234275234387%_))
                                    (let ((_%e234277234392%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd234275234387%_))))
                                      (let ((_%hd234278234395%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234277234392%_)))
                                            (_%tl234279234397%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234277234392%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd234278234395%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd234278234395%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl234279234397%_))
                                                    (let ((_%e234280234400%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl234279234397%_))))
                                                      (let ((_%hd234281234403%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e234280234400%_)))
                    (_%tl234282234405%_
                     (let () (declare (not safe)) (##cdr _%e234280234400%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl234282234405%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl234276234389%_))
                        (if (let ((__tmp236658
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl234276234389%_))))
                              (declare (not safe))
                              (##fx>= __tmp236658 '1))
                            (let ((_g236659_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl234276234389%_
                                      '1))))
                              (begin
                                (let ((_g236660_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236659_)
                                             (##values-length _g236659_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236660_ 2)))
                                      (error "Context expects 2 values"
                                             _g236660_)))
                                (let ((_%target234283234408%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236659_ 0)))
                                      (_%tl234285234410%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236659_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl234285234410%_))
                                      (let ((_%e234292234413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl234285234410%_))))
                                        (let ((_%hd234293234416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e234292234413%_)))
                                              (_%tl234294234418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e234292234413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl234294234418%_))
                                              (letrec ((_%loop234286234421%_
                                                        (lambda (_%hd234284234424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref234290234426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd234284234424%_))
                      (let ((_%e234287234428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd234284234424%_))))
                        (let ((_%lp-hd234288234431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e234287234428%_)))
                              (_%lp-tl234289234433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e234287234428%_))))
                          (_%loop234286234421%_
                           _%lp-tl234289234433%_
                           (cons _%lp-hd234288234431%_
                                 _%kw-ref234290234426%_))))
                      (let ((_%kw-ref234291234436%_
                             (reverse _%kw-ref234290234426%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl234252234325%_))
                            ((lambda (_%g234239234438%_
                                      _%g234240234439%_
                                      _%g234241234440%_
                                      _%g234242234441%_
                                      _%g234243234442%_)
                               (let* ((_%kw-count234493%_
                                       (length (let ((__tmp236661
                                                      (lambda (_%g234485234488%_
                                                               _%g234486234490%_)
                                                        (cons _%g234485234488%_
                                                              _%g234486234490%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp236661
                                                  '()
                                                  _%g234240234439%_))))
                                      (_%self-index234495%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count234493%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g234027234195%_))
                                     (let* ((_%g234499234513%_
                                             (lambda (_%g234500234510%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g234500234510%_))))
                                            (_%g234498234636%_
                                             (lambda (_%g234500234516%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g234500234516%_))
                                                   (let ((_%e234503234518%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g234500234516%_))))
                                                     (let ((_%hd234504234521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e234503234518%_)))
                                                           (_%tl234505234523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e234503234518%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234505234523%_))
                                                           (let ((_%e234506234526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234505234523%_))))
                     (let ((_%hd234507234529%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234506234526%_)))
                           (_%tl234508234531%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234506234526%_))))
                       ((lambda (_%g234501234534%_ _%g234502234535%_)
                          (let* ((_%self234552%_
                                  (list-ref
                                   _%g234502234535%_
                                   _%self-index234495%_))
                                 (_%receiver234557%_
                                  (let ((_%$e234554%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g234501234534%_))))
                                    (if _%$e234554%_
                                        _%$e234554%_
                                        _%self234552%_))))
                            (for-each
                             (lambda (_%g234559234561%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver234557%_
                                _%method-calls232497%_
                                _%slot-refs232498%_
                                _%g234559234561%_))
                             _%g234501234534%_)
                            (if (_%no-specializer?232501%_)
                                _%stx232405%_
                                (let* ((_%specializer-id234570%_
                                        (let* ((_%id234564%_
                                                (let ((__tmp236662
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g232416232478%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp236662
                                                   '"::specialize")))
                                               (_%specializer-id234567%_
                                                (let ((__tmp236663
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx232405%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id234564%_
                                                   __tmp236663))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id234567%_))
                                          _%specializer-id234567%_))
                                       (_%$klass234572%_
                                        (let ((__tmp236664
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236664)))
                                       (_%$method-table234574%_
                                        (let ((__tmp236665
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp236665)))
                                       (_%methods234576%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls232497%_)))
                                       (_%$methods234580%_
                                        (let ((__tmp236666
                                               (lambda (_%id234578%_)
                                                 (let ((__tmp236667
                                                        (gensym _%id234578%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236667)))))
                                          (declare (not safe))
                                          (##map __tmp236666
                                                 _%methods234576%_)))
                                       (_%_234589%_
                                        (let ((__tmp236668
                                               (lambda (_%g234581234584%_
                                                        _%g234582234586%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls232497%_
                                                    _%g234581234584%_
                                                    _%g234582234586%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236668
                                           _%methods234576%_
                                           _%$methods234580%_)))
                                       (_%methods-bind234599%_
                                        (let ((__tmp236669
                                               (lambda (_%g234591234594%_
                                                        _%g234592234596%_)
                                                 (_%generate-method-bind232407%_
                                                  _%$klass234572%_
                                                  _%$method-table234574%_
                                                  _%g234591234594%_
                                                  _%g234592234596%_))))
                                          (declare (not safe))
                                          (##map __tmp236669
                                                 _%methods234576%_
                                                 _%$methods234580%_)))
                                       (_%slots234601%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs232498%_)))
                                       (_%$slots234605%_
                                        (let ((__tmp236670
                                               (lambda (_%id234603%_)
                                                 (let ((__tmp236671
                                                        (gensym _%id234603%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp236671)))))
                                          (declare (not safe))
                                          (##map __tmp236670 _%slots234601%_)))
                                       (_%_234614%_
                                        (let ((__tmp236672
                                               (lambda (_%g234606234609%_
                                                        _%g234607234611%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs232498%_
                                                    _%g234606234609%_
                                                    _%g234607234611%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp236672
                                           _%slots234601%_
                                           _%$slots234605%_)))
                                       (_%slots-bind234623%_
                                        (let ((__tmp236673
                                               (lambda (_%g234615234618%_
                                                        _%g234616234620%_)
                                                 (_%generate-slot-bind232408%_
                                                  _%$klass234572%_
                                                  _%g234615234618%_
                                                  _%g234616234620%_))))
                                          (declare (not safe))
                                          (##map __tmp236673
                                                 _%slots234601%_
                                                 _%$slots234605%_)))
                                       (_%specializer-impl234631%_
                                        (let* ((_%specializer-body234629%_
                                                (map (lambda (_%g234624234626%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver234557%_
                                                        _%$klass234572%_
                                                        _%method-calls232497%_
                                                        _%slot-refs232498%_
                                                        _%g234624234626%_))
                                                     _%g234501234534%_))
                                               (__tmp236674
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g234029234197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g234028234196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp236675
                                   (cons '%#lambda
                                         (cons _%g234502234535%_
                                               _%specializer-body234629%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp236675
                               _%g234027234195%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g234026234194%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g234025234193%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp236674
                                           _%stx232405%_)))
                                       (_%specializer-impl234633%_
                                        (_%generate-specializer-impl232409%_
                                         _%$klass234572%_
                                         _%$method-table234574%_
                                         _%methods-bind234599%_
                                         _%slots-bind234623%_
                                         _%specializer-impl234631%_)))
                                  (let ((__tmp236677
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g232416232478%_)))
                                        (__tmp236676
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id234570%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp236677
                                     '" => "
                                     __tmp236676))
                                  (_%generate-specializer-def232410%_
                                   _%g232416232478%_
                                   _%specializer-id234570%_
                                   _%specializer-impl234633%_)))))
                        _%tl234508234531%_
                        _%hd234507234529%_)))
                   (_%g234499234513%_ _%g234500234516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234499234513%_
                                                    _%g234500234516%_)))))
                                       (_%g234498234636%_ _%g234027234195%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g234027234195%_))
                                         (let* ((_%g234640234670%_
                                                 (lambda (_%g234641234667%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g234641234667%_))))
                                                (_%g234639235234%_
                                                 (lambda (_%g234641234673%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g234641234673%_))
                                                       (let ((_%e234645234675%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g234641234673%_))))
                 (let ((_%hd234646234678%_
                        (let ()
                          (declare (not safe))
                          (##car _%e234645234675%_)))
                       (_%tl234647234680%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e234645234675%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl234647234680%_))
                       (let ((_%e234648234683%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl234647234680%_))))
                         (let ((_%hd234649234686%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e234648234683%_)))
                               (_%tl234650234688%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e234648234683%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd234649234686%_))
                               (let ((_%e234651234691%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd234649234686%_))))
                                 (let ((_%hd234652234694%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e234651234691%_)))
                                       (_%tl234653234696%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e234651234691%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd234652234694%_))
                                       (let ((_%e234654234699%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd234652234694%_))))
                                         (let ((_%hd234655234702%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e234654234699%_)))
                                               (_%tl234656234704%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e234654234699%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd234655234702%_))
                                               (let ((_%e234657234707%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd234655234702%_))))
                                                 (let ((_%hd234658234710%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e234657234707%_)))
                                                       (_%tl234659234712%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e234657234707%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl234659234712%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl234656234704%_))
                                                           (let ((_%e234660234715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl234656234704%_))))
                     (let ((_%hd234661234718%_
                            (let ()
                              (declare (not safe))
                              (##car _%e234660234715%_)))
                           (_%tl234662234720%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e234660234715%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl234662234720%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl234653234696%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl234650234688%_))
                                   (let ((_%e234663234723%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl234650234688%_))))
                                     (let ((_%hd234664234726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e234663234723%_)))
                                           (_%tl234665234728%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e234663234723%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl234665234728%_))
                                           ((lambda (_%g234642234731%_
                                                     _%g234643234732%_
                                                     _%g234644234733%_)
                                              (let* ((_%g234757234771%_
                                                      (lambda (_%g234758234768%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234758234768%_))))
                                                     (_%g234756234818%_
                                                      (lambda (_%g234758234774%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234758234774%_))
                                                            (let ((_%e234761234776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234758234774%_))))
                      (let ((_%hd234762234779%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234761234776%_)))
                            (_%tl234763234781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234761234776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl234763234781%_))
                            (let ((_%e234764234784%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl234763234781%_))))
                              (let ((_%hd234765234787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e234764234784%_)))
                                    (_%tl234766234789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e234764234784%_))))
                                ((lambda (_%g234759234792%_ _%g234760234793%_)
                                   (let* ((_%self234806%_
                                           (list-ref
                                            _%g234760234793%_
                                            _%self-index234495%_))
                                          (_%receiver234811%_
                                           (let ((_%$e234808%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g234759234792%_))))
                                             (if _%$e234808%_
                                                 _%$e234808%_
                                                 _%self234806%_))))
                                     (for-each
                                      (lambda (_%g234813234815%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver234811%_
                                         _%method-calls232497%_
                                         _%slot-refs232498%_
                                         _%g234813234815%_))
                                      _%g234759234792%_)))
                                 _%tl234766234789%_
                                 _%hd234765234787%_)))
                            (_%g234757234771%_ _%g234758234774%_))))
                    (_%g234757234771%_ _%g234758234774%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234756234818%_
                                                 _%g234643234732%_))
                                              (let* ((_%g234821234840%_
                                                      (lambda (_%g234822234837%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234822234837%_))))
                                                     (_%g234820234949%_
                                                      (lambda (_%g234822234843%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234822234843%_))
                                                            (let ((_%e234824234845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234822234843%_))))
                      (let ((_%hd234825234848%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234824234845%_)))
                            (_%tl234826234850%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234824234845%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl234826234850%_))
                            (let ((_g236678_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl234826234850%_
                                      '0))))
                              (begin
                                (let ((_g236679_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g236678_)
                                             (##values-length _g236678_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g236679_ 2)))
                                      (error "Context expects 2 values"
                                             _g236679_)))
                                (let ((_%target234827234853%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236678_ 0)))
                                      (_%tl234829234855%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g236678_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl234829234855%_))
                                      (letrec ((_%loop234830234858%_
                                                (lambda (_%hd234828234861%_
                                                         _%clause234834234863%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd234828234861%_))
                                                      (let ((_%e234831234865%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd234828234861%_))))
                (let ((_%lp-hd234832234868%_
                       (let () (declare (not safe)) (##car _%e234831234865%_)))
                      (_%lp-tl234833234870%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e234831234865%_))))
                  (_%loop234830234858%_
                   _%lp-tl234833234870%_
                   (cons _%lp-hd234832234868%_ _%clause234834234863%_))))
              (let ((_%clause234835234873%_ (reverse _%clause234834234863%_)))
                ((lambda (_%g234823234875%_)
                   (for-each
                    (lambda (_%clause234888%_)
                      (let* ((_%g234890234901%_
                              (lambda (_%g234891234898%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g234891234898%_))))
                             (_%g234889234939%_
                              (lambda (_%g234891234904%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g234891234904%_))
                                    (let ((_%e234894234906%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g234891234904%_))))
                                      (let ((_%hd234895234909%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234894234906%_)))
                                            (_%tl234896234911%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234894234906%_))))
                                        ((lambda (_%g234892234914%_
                                                  _%g234893234915%_)
                                           (let* ((_%self234927%_
                                                   (list-ref
                                                    _%g234893234915%_
                                                    _%self-index234495%_))
                                                  (_%receiver234932%_
                                                   (let ((_%$e234929%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g234892234914%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234929%_
                                                         _%$e234929%_
                                                         _%self234927%_))))
                                             (for-each
                                              (lambda (_%g234934234936%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234932%_
                                                 _%method-calls232497%_
                                                 _%slot-refs232498%_
                                                 _%g234934234936%_))
                                              _%g234892234914%_)))
                                         _%tl234896234911%_
                                         _%hd234895234909%_)))
                                    (_%g234890234901%_ _%g234891234904%_)))))
                        (_%g234889234939%_ _%clause234888%_)))
                    (let ((__tmp236680
                           (lambda (_%g234941234944%_ _%g234942234946%_)
                             (cons _%g234941234944%_ _%g234942234946%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236680 '() _%g234823234875%_))))
                 _%clause234835234873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop234830234858%_
                                         _%target234827234853%_
                                         '()))
                                      (_%g234821234840%_ _%g234822234843%_)))))
                            (_%g234821234840%_ _%g234822234843%_))))
                    (_%g234821234840%_ _%g234822234843%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234820234949%_
                                                 _%g234642234731%_))
                                              (if (_%no-specializer?232501%_)
                                                  _%stx232405%_
                                                  (let* ((_%specializer-id234958%_
                                                          (let* ((_%id234952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp236681
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g232416232478%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp236681 '"::specialize")))
                         (_%specializer-id234955%_
                          (let ((__tmp236682
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx232405%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234952%_
                             __tmp236682))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234955%_))
                    _%specializer-id234955%_))
                 (_%$klass234960%_
                  (let ((__tmp236683
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236683)))
                 (_%$method-table234962%_
                  (let ((__tmp236684
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp236684)))
                 (_%methods234964%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls232497%_)))
                 (_%$methods234968%_
                  (let ((__tmp236685
                         (lambda (_%id234966%_)
                           (let ((__tmp236686 (gensym _%id234966%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236686)))))
                    (declare (not safe))
                    (##map __tmp236685 _%methods234964%_)))
                 (_%_234977%_
                  (let ((__tmp236687
                         (lambda (_%g234969234972%_ _%g234970234974%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls232497%_
                              _%g234969234972%_
                              _%g234970234974%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp236687
                     _%methods234964%_
                     _%$methods234968%_)))
                 (_%methods-bind234987%_
                  (let ((__tmp236688
                         (lambda (_%g234979234982%_ _%g234980234984%_)
                           (_%generate-method-bind232407%_
                            _%$klass234960%_
                            _%$method-table234962%_
                            _%g234979234982%_
                            _%g234980234984%_))))
                    (declare (not safe))
                    (##map __tmp236688 _%methods234964%_ _%$methods234968%_)))
                 (_%slots234989%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs232498%_)))
                 (_%$slots234993%_
                  (let ((__tmp236689
                         (lambda (_%id234991%_)
                           (let ((__tmp236690 (gensym _%id234991%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp236690)))))
                    (declare (not safe))
                    (##map __tmp236689 _%slots234989%_)))
                 (_%_235002%_
                  (let ((__tmp236691
                         (lambda (_%g234994234997%_ _%g234995234999%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs232498%_
                              _%g234994234997%_
                              _%g234995234999%_)))))
                    (declare (not safe))
                    (##for-each __tmp236691 _%slots234989%_ _%$slots234993%_)))
                 (_%slots-bind235011%_
                  (let ((__tmp236692
                         (lambda (_%g235003235006%_ _%g235004235008%_)
                           (_%generate-slot-bind232408%_
                            _%$klass234960%_
                            _%g235003235006%_
                            _%g235004235008%_))))
                    (declare (not safe))
                    (##map __tmp236692 _%slots234989%_ _%$slots234993%_)))
                 (_%specializer-lambda-expr235089%_
                  (let* ((_%g235013235027%_
                          (lambda (_%g235014235024%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g235014235024%_))))
                         (_%g235012235086%_
                          (lambda (_%g235014235030%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g235014235030%_))
                                (let ((_%e235017235032%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g235014235030%_))))
                                  (let ((_%hd235018235035%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e235017235032%_)))
                                        (_%tl235019235037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e235017235032%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl235019235037%_))
                                        (let ((_%e235020235040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl235019235037%_))))
                                          (let ((_%hd235021235043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e235020235040%_)))
                                                (_%tl235022235045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e235020235040%_))))
                                            ((lambda (_%g235015235048%_
                                                      _%g235016235049%_)
                                               (let* ((_%self235072%_
                                                       (list-ref
                                                        _%g235016235049%_
                                                        _%self-index234495%_))
                                                      (_%receiver235077%_
                                                       (let ((_%$e235074%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g235015235048%_))))
                 (if _%$e235074%_ _%$e235074%_ _%self235072%_)))
              (_%body235083%_
               (map (lambda (_%g235078235080%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver235077%_
                       _%$klass234960%_
                       _%method-calls232497%_
                       _%slot-refs232498%_
                       _%g235078235080%_))
                    _%g235015235048%_))
              (__tmp236693
               (cons '%#lambda (cons _%g235016235049%_ _%body235083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp236693
                                                  _%g234643234732%_)))
                                             _%tl235022235045%_
                                             _%hd235021235043%_)))
                                        (_%g235013235027%_
                                         _%g235014235030%_))))
                                (_%g235013235027%_ _%g235014235030%_)))))
                    (_%g235012235086%_ _%g234643234732%_)))
                 (_%specializer-case-lambda-expr235227%_
                  (let* ((_%g235091235110%_
                          (lambda (_%g235092235107%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g235092235107%_))))
                         (_%g235090235224%_
                          (lambda (_%g235092235113%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g235092235113%_))
                                (let ((_%e235094235115%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g235092235113%_))))
                                  (let ((_%hd235095235118%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e235094235115%_)))
                                        (_%tl235096235120%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e235094235115%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl235096235120%_))
                                        (let ((_g236694_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl235096235120%_
                                                  '0))))
                                          (begin
                                            (let ((_g236695_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g236694_)
                                                         (##values-length
                                                          _g236694_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g236695_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g236695_)))
                                            (let ((_%target235097235123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236694_
                                                      0)))
                                                  (_%tl235099235125%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g236694_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl235099235125%_))
                                                  (letrec ((_%loop235100235128%_
                                                            (lambda (_%hd235098235131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause235104235133%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd235098235131%_))
                          (let ((_%e235101235135%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd235098235131%_))))
                            (let ((_%lp-hd235102235138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e235101235135%_)))
                                  (_%lp-tl235103235140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e235101235135%_))))
                              (_%loop235100235128%_
                               _%lp-tl235103235140%_
                               (cons _%lp-hd235102235138%_
                                     _%clause235104235133%_))))
                          (let ((_%clause235105235143%_
                                 (reverse _%clause235104235133%_)))
                            ((lambda (_%g235093235145%_)
                               (let* ((_%clauses235222%_
                                       (map (lambda (_%clause235159%_)
                                              (let* ((_%g235161235172%_
                                                      (lambda (_%g235162235169%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g235162235169%_))))
                                                     (_%g235160235212%_
                                                      (lambda (_%g235162235175%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g235162235175%_))
                                                            (let ((_%e235165235177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g235162235175%_))))
                      (let ((_%hd235166235180%_
                             (let ()
                               (declare (not safe))
                               (##car _%e235165235177%_)))
                            (_%tl235167235182%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e235165235177%_))))
                        ((lambda (_%g235163235185%_ _%g235164235186%_)
                           (let* ((_%self235198%_
                                   (list-ref
                                    _%g235164235186%_
                                    _%self-index234495%_))
                                  (_%receiver235203%_
                                   (let ((_%$e235200%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g235163235185%_))))
                                     (if _%$e235200%_
                                         _%$e235200%_
                                         _%self235198%_)))
                                  (_%body235209%_
                                   (map (lambda (_%g235204235206%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver235203%_
                                           _%$klass234960%_
                                           _%method-calls232497%_
                                           _%slot-refs232498%_
                                           _%g235204235206%_))
                                        _%g235163235185%_)))
                             (cons _%g235164235186%_ _%body235209%_)))
                         _%tl235167235182%_
                         _%hd235166235180%_)))
                    (_%g235161235172%_ _%g235162235175%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g235160235212%_
                                                 _%clause235159%_)))
                                            (let ((__tmp236696
                                                   (lambda (_%g235214235217%_
                                                            _%g235215235219%_)
                                                     (cons _%g235214235217%_
                                                           _%g235215235219%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp236696
                                               '()
                                               _%g235093235145%_))))
                                      (__tmp236697
                                       (cons '%#case-lambda
                                             _%clauses235222%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp236697
                                  _%g234642234731%_)))
                             _%clause235105235143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop235100235128%_
                                                     _%target235097235123%_
                                                     '()))
                                                  (_%g235091235110%_
                                                   _%g235092235113%_)))))
                                        (_%g235091235110%_
                                         _%g235092235113%_))))
                                (_%g235091235110%_ _%g235092235113%_)))))
                    (_%g235090235224%_ _%g234642234731%_)))
                 (_%specializer-impl235229%_
                  (let ((__tmp236698
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g234029234197%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g234028234196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp236699
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g234644234733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr235089%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr235227%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp236699
                                                _%stx232405%_))
                                             '()))
                                 '())
                           (cons _%g234026234194%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g234025234193%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp236698 _%stx232405%_)))
                 (_%specializer-impl235231%_
                  (_%generate-specializer-impl232409%_
                   _%$klass234960%_
                   _%$method-table234962%_
                   _%methods-bind234987%_
                   _%slots-bind235011%_
                   _%specializer-impl235229%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp236701
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g232416232478%_)))
                                                          (__tmp236700
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234958%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp236701
                                                       '" => "
                                                       __tmp236700))
                                                    (_%generate-specializer-def232410%_
                                                     _%g232416232478%_
                                                     _%specializer-id234958%_
                                                     _%specializer-impl235231%_))))
                                            _%hd234664234726%_
                                            _%hd234661234718%_
                                            _%hd234658234710%_)
                                           (_%g234640234670%_
                                            _%g234641234673%_))))
                                   (_%g234640234670%_ _%g234641234673%_))
                               (_%g234640234670%_ _%g234641234673%_))
                           (_%g234640234670%_ _%g234641234673%_))))
                   (_%g234640234670%_ _%g234641234673%_))
               (_%g234640234670%_ _%g234641234673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234640234670%_
                                                _%g234641234673%_))))
                                       (_%g234640234670%_ _%g234641234673%_))))
                               (_%g234640234670%_ _%g234641234673%_))))
                       (_%g234640234670%_ _%g234641234673%_))))
               (_%g234640234670%_ _%g234641234673%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234639235234%_
                                            _%g234027234195%_))
                                         _%stx232405%_))))
                             _%hd234293234416%_
                             _%kw-ref234291234436%_
                             _%hd234281234403%_
                             _%hd234272234379%_
                             _%hd234263234355%_)
                            (_%g234237234299%_ _%g234238234302%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop234286234421%_
                                                 _%target234283234408%_
                                                 '()))
                                              (_%g234237234299%_
                                               _%g234238234302%_))))
                                      (_%g234237234299%_ _%g234238234302%_)))))
                            (_%g234237234299%_ _%g234238234302%_))
                        (_%g234237234299%_ _%g234238234302%_))
                    (_%g234237234299%_ _%g234238234302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g234237234299%_
                                                     _%g234238234302%_))
                                                (_%g234237234299%_
                                                 _%g234238234302%_))
                                            (_%g234237234299%_
                                             _%g234238234302%_))))
                                    (_%g234237234299%_ _%g234238234302%_))))
                            (_%g234237234299%_ _%g234238234302%_))
                        (_%g234237234299%_ _%g234238234302%_))))
                (_%g234237234299%_ _%g234238234302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g234237234299%_
                                                     _%g234238234302%_))
                                                (_%g234237234299%_
                                                 _%g234238234302%_))))
                                        (_%g234237234299%_
                                         _%g234238234302%_))))
                                (_%g234237234299%_ _%g234238234302%_))
                            (_%g234237234299%_ _%g234238234302%_))))
                    (_%g234237234299%_ _%g234238234302%_))
                (_%g234237234299%_ _%g234238234302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g234237234299%_
                                                     _%g234238234302%_))))
                                            (_%g234237234299%_
                                             _%g234238234302%_))))
                                    (_%g234237234299%_ _%g234238234302%_))
                                (_%g234237234299%_ _%g234238234302%_))
                            (_%g234237234299%_ _%g234238234302%_))))
                    (_%g234237234299%_ _%g234238234302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g234237234299%_
                                                     _%g234238234302%_))))
                                            (_%g234237234299%_
                                             _%g234238234302%_))
                                        (_%g234237234299%_ _%g234238234302%_))
                                    (_%g234237234299%_ _%g234238234302%_))))
                            (_%g234237234299%_ _%g234238234302%_)))))
                (_%g234236235238%_ _%g234026234194%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd234070234188%_
                                                    _%hd234067234180%_
                                                    _%hd234064234172%_
                                                    _%hd234061234164%_
                                                    _%hd234043234116%_)
                                                   (_%g234023234076%_
                                                    _%g234024234079%_))))
                                           (_%g234023234076%_
                                            _%g234024234079%_))
                                       (_%g234023234076%_ _%g234024234079%_))
                                   (_%g234023234076%_ _%g234024234079%_))
                               (_%g234023234076%_ _%g234024234079%_))))
                       (_%g234023234076%_ _%g234024234079%_))
                   (_%g234023234076%_ _%g234024234079%_))
               (_%g234023234076%_ _%g234024234079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234023234076%_
                                                _%g234024234079%_))
                                           (_%g234023234076%_
                                            _%g234024234079%_))))
                                   (_%g234023234076%_ _%g234024234079%_))))
                           (_%g234023234076%_ _%g234024234079%_))))
                   (_%g234023234076%_ _%g234024234079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g234023234076%_
                                                    _%g234024234079%_))
                                               (_%g234023234076%_
                                                _%g234024234079%_))
                                           (_%g234023234076%_
                                            _%g234024234079%_))))
                                   (_%g234023234076%_ _%g234024234079%_))))
                           (_%g234023234076%_ _%g234024234079%_))
                       (_%g234023234076%_ _%g234024234079%_))))
               (_%g234023234076%_ _%g234024234079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g234023234076%_
                                                _%g234024234079%_))))
                                       (_%g234023234076%_ _%g234024234079%_))))
                               (_%g234023234076%_ _%g234024234079%_))
                           (_%g234023234076%_ _%g234024234079%_))
                       (_%g234023234076%_ _%g234024234079%_))))
               (_%g234023234076%_ _%g234024234079%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g234022235241%_
                                            _%g232415232477%_))
                                         _%stx232405%_))))))))
                  (_%__kont235468235469%_ (lambda () _%stx232405%_)))
              (let ((_%__match235497235498%_
                     (lambda (_%e232417232445%_
                              _%hd232418232448%_
                              _%tl232419232450%_
                              _%e232420232453%_
                              _%hd232421232456%_
                              _%tl232422232458%_
                              _%e232423232461%_
                              _%hd232424232464%_
                              _%tl232425232466%_
                              _%e232426232469%_
                              _%hd232427232472%_
                              _%tl232428232474%_)
                       (let ((_%g232415232477%_ _%hd232427232472%_)
                             (_%g232416232478%_ _%hd232424232464%_))
                         (if (let ((__tmp236702
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g232416232478%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp236702))
                             (_%__kont235466235467%_
                              _%g232415232477%_
                              _%g232416232478%_)
                             (_%__kont235468235469%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235464235465%_))
                    (let ((_%e232417232445%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235464235465%_))))
                      (let ((_%tl232419232450%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232417232445%_)))
                            (_%hd232418232448%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232417232445%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232419232450%_))
                            (let ((_%e232420232453%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232419232450%_))))
                              (let ((_%tl232422232458%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232420232453%_)))
                                    (_%hd232421232456%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232420232453%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232421232456%_))
                                    (let ((_%e232423232461%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232421232456%_))))
                                      (let ((_%tl232425232466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232423232461%_)))
                                            (_%hd232424232464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232423232461%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232425232466%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232422232458%_))
                                                (let ((_%e232426232469%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232422232458%_))))
                                                  (let ((_%tl232428232474%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232426232469%_)))
                                                        (_%hd232427232472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232426232469%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232428232474%_))
                                                        (_%__match235497235498%_
                                                         _%e232417232445%_
                                                         _%hd232418232448%_
                                                         _%tl232419232450%_
                                                         _%e232420232453%_
                                                         _%hd232421232456%_
                                                         _%tl232422232458%_
                                                         _%e232423232461%_
                                                         _%hd232424232464%_
                                                         _%tl232425232466%_
                                                         _%e232426232469%_
                                                         _%hd232427232472%_
                                                         _%tl232428232474%_)
                                                        (_%__kont235468235469%_))))
                                                (_%__kont235468235469%_))
                                            (_%__kont235468235469%_))))
                                    (_%__kont235468235469%_))))
                            (_%__kont235468235469%_))))
                    (_%__kont235468235469%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self232257%_ _%stx232258%_)
        (let* ((_%__stx235500235501%_ _%stx232258%_)
               (_%g232261232294%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235500235501%_)))))
          (let ((_%__kont235502235503%_
                 (lambda (_%g232263232384%_) _%g232263232384%_))
                (_%__kont235504235505%_
                 (lambda (_%g232279232323%_ _%g232280232324%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self232257%_ _%g232279232323%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx235500235501%_))
                (let ((_%e232264232344%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx235500235501%_))))
                  (let ((_%tl232266232349%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232264232344%_)))
                        (_%hd232265232347%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232264232344%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232266232349%_))
                        (let ((_%e232267232352%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232266232349%_))))
                          (let ((_%tl232269232357%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232267232352%_)))
                                (_%hd232268232355%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232267232352%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232268232355%_))
                                (let ((_%e232270232360%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232268232355%_))))
                                  (let ((_%tl232272232365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232270232360%_)))
                                        (_%hd232271232363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232270232360%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd232271232363%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd232271232363%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232272232365%_))
                                                (let ((_%e232273232368%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232272232365%_))))
                                                  (let ((_%tl232275232373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232273232368%_)))
                                                        (_%hd232274232371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232273232368%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232275232373%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl232269232357%_))
                                                            (let ((_%e232276232376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232269232357%_))))
                      (let ((_%tl232278232381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232276232376%_)))
                            (_%hd232277232379%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232276232376%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232278232381%_))
                            (_%__kont235502235503%_ _%hd232274232371%_)
                            (let ()
                              (declare (not safe))
                              (_%g232261232294%_)))))
                    (let () (declare (not safe)) (_%g232261232294%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl232269232357%_))
                    (let ((_%e232287232315%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232269232357%_))))
                      (let ((_%tl232289232320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232287232315%_)))
                            (_%hd232288232318%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232287232315%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232289232320%_))
                            (_%__kont235504235505%_
                             _%hd232288232318%_
                             _%hd232268232355%_)
                            (let ()
                              (declare (not safe))
                              (_%g232261232294%_)))))
                    (let () (declare (not safe)) (_%g232261232294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232269232357%_))
                                                    (let ((_%e232287232315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232269232357%_))))
                                                      (let ((_%tl232289232320%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e232287232315%_)))
                    (_%hd232288232318%_
                     (let () (declare (not safe)) (##car _%e232287232315%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232289232320%_))
                    (_%__kont235504235505%_
                     _%hd232288232318%_
                     _%hd232268232355%_)
                    (let () (declare (not safe)) (_%g232261232294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g232261232294%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl232269232357%_))
                                                (let ((_%e232287232315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl232269232357%_))))
                                                  (let ((_%tl232289232320%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e232287232315%_)))
                                                        (_%hd232288232318%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e232287232315%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl232289232320%_))
                                                        (_%__kont235504235505%_
                                                         _%hd232288232318%_
                                                         _%hd232268232355%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g232261232294%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g232261232294%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl232269232357%_))
                                            (let ((_%e232287232315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl232269232357%_))))
                                              (let ((_%tl232289232320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232287232315%_)))
                                                    (_%hd232288232318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232287232315%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl232289232320%_))
                                                    (_%__kont235504235505%_
                                                     _%hd232288232318%_
                                                     _%hd232268232355%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g232261232294%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g232261232294%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232269232357%_))
                                    (let ((_%e232287232315%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232269232357%_))))
                                      (let ((_%tl232289232320%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232287232315%_)))
                                            (_%hd232288232318%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232287232315%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl232289232320%_))
                                            (_%__kont235504235505%_
                                             _%hd232288232318%_
                                             _%hd232268232355%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g232261232294%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g232261232294%_))))))
                        (let () (declare (not safe)) (_%g232261232294%_)))))
                (let () (declare (not safe)) (_%g232261232294%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self232173%_ _%stx232174%_)
        (let* ((_%g232176232197%_
                (lambda (_%g232177232194%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g232177232194%_))))
               (_%g232175232254%_
                (lambda (_%g232177232200%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g232177232200%_))
                      (let ((_%e232181232202%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g232177232200%_))))
                        (let ((_%hd232182232205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232181232202%_)))
                              (_%tl232183232207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232181232202%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl232183232207%_))
                              (let ((_%e232184232210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl232183232207%_))))
                                (let ((_%hd232185232213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e232184232210%_)))
                                      (_%tl232186232215%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e232184232210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl232186232215%_))
                                      (let ((_%e232187232218%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl232186232215%_))))
                                        (let ((_%hd232188232221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232187232218%_)))
                                              (_%tl232189232223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232187232218%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl232189232223%_))
                                              (let ((_%e232190232226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl232189232223%_))))
                                                (let ((_%hd232191232229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e232190232226%_)))
                                                      (_%tl232192232231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e232190232226%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl232192232231%_))
                                                      ((lambda (_%g232178232234%_
                                                                _%g232179232235%_
                                                                _%g232180232236%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self232173%_
                                                            _%g232179232235%_)))
                                                       _%hd232191232229%_
                                                       _%hd232188232221%_
                                                       _%hd232185232213%_)
                                                      (_%g232176232197%_
                                                       _%g232177232200%_))))
                                              (_%g232176232197%_
                                               _%g232177232200%_))))
                                      (_%g232176232197%_ _%g232177232200%_))))
                              (_%g232176232197%_ _%g232177232200%_))))
                      (_%g232176232197%_ _%g232177232200%_)))))
          (_%g232175232254%_ _%stx232174%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self231138%_ _%stx231139%_)
        (let* ((_%__stx235566235567%_ _%stx231139%_)
               (_%g231147231369%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx235566235567%_)))))
          (let ((_%__kont235568235569%_
                 (lambda (_%g231149232122%_
                          _%g231150232123%_
                          _%g231151232124%_
                          _%g231152232125%_)
                   (let ((__tmp236704
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231138%_ 'methods)))
                         (__tmp236703
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231150232123%_))))
                     (declare (not safe))
                     (hash-put! __tmp236704 __tmp236703 '#t))
                   (for-each
                    (lambda (_%g232158232160%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self231138%_ _%g232158232160%_)))
                    (let ((__tmp236705
                           (lambda (_%g232162232165%_ _%g232163232167%_)
                             (cons _%g232162232165%_ _%g232163232167%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236705 '() _%g231149232122%_)))))
                (_%__kont235572235573%_
                 (lambda (_%g231192231959%_
                          _%g231193231960%_
                          _%g231194231961%_
                          _%g231195231962%_
                          _%g231196231963%_)
                   (let ((__tmp236707
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231138%_ 'methods)))
                         (__tmp236706
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231193231960%_))))
                     (declare (not safe))
                     (hash-put! __tmp236707 __tmp236706 '#t))
                   (for-each
                    (lambda (_%g232003232005%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self231138%_ _%g232003232005%_)))
                    (let ((__tmp236708
                           (lambda (_%g232007232010%_ _%g232008232012%_)
                             (cons _%g232007232010%_ _%g232008232012%_))))
                      (declare (not safe))
                      (foldr__0 __tmp236708 '() _%g231192231959%_)))))
                (_%__kont235576235577%_
                 (lambda (_%g231245231794%_
                          _%g231246231795%_
                          _%g231247231796%_)
                   (let ((__tmp236710
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231138%_ 'slots)))
                         (__tmp236709
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231245231794%_))))
                     (declare (not safe))
                     (hash-put! __tmp236710 __tmp236709 '#t))))
                (_%__kont235578235579%_
                 (lambda (_%g231278231671%_
                          _%g231279231672%_
                          _%g231280231673%_
                          _%g231281231674%_)
                   (let ((__tmp236712
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self231138%_ 'slots)))
                         (__tmp236711
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g231279231672%_))))
                     (declare (not safe))
                     (hash-put! __tmp236712 __tmp236711 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231138%_ _%g231278231671%_))))
                (_%__kont235580235581%_
                 (lambda (_%g231315231545%_ _%g231316231546%_)
                   (let* ((_%accessor231568%_
                           (let ((__tmp236713
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231316231546%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236713)))
                          (_%klass231570%_
                           (let ((__tmp236714
                                  (##structure-ref
                                   _%accessor231568%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx231139%_
                              __tmp236714)))
                          (_%slot231572%_
                           (##structure-ref
                            _%accessor231568%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor231568%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231570%_
                                    _%slot231572%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231570%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236716
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self231138%_ 'slots)))
                               (__tmp236715
                                (##structure-ref
                                 _%accessor231568%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp236716 __tmp236715 '#t))))))
                (_%__kont235582235583%_
                 (lambda (_%g231338231445%_
                          _%g231339231446%_
                          _%g231340231447%_)
                   (let* ((_%mutator231474%_
                           (let ((__tmp236717
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g231340231447%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp236717)))
                          (_%klass231476%_
                           (let ((__tmp236718
                                  (##structure-ref
                                   _%mutator231474%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx231139%_
                              __tmp236718)))
                          (_%slot231478%_
                           (##structure-ref
                            _%mutator231474%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator231474%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass231476%_
                                    _%slot231478%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass231476%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp236719
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self231138%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp236719 _%slot231478%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self231138%_ _%g231338231445%_)))))
                (_%__kont235584235585%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self231138%_ _%stx231139%_)))))
            (let* ((_%__match236065236066%_
                    (lambda (_%e231341231381%_
                             _%hd231342231384%_
                             _%tl231343231386%_
                             _%e231344231389%_
                             _%hd231345231392%_
                             _%tl231346231394%_
                             _%e231347231397%_
                             _%hd231348231400%_
                             _%tl231349231402%_
                             _%e231350231405%_
                             _%hd231351231408%_
                             _%tl231352231410%_
                             _%e231353231413%_
                             _%hd231354231416%_
                             _%tl231355231418%_
                             _%e231356231421%_
                             _%hd231357231424%_
                             _%tl231358231426%_
                             _%e231359231429%_
                             _%hd231360231432%_
                             _%tl231361231434%_
                             _%e231362231437%_
                             _%hd231363231440%_
                             _%tl231364231442%_)
                      (let ((_%g231338231445%_ _%hd231363231440%_)
                            (_%g231339231446%_ _%hd231360231432%_)
                            (_%g231340231447%_ _%hd231351231408%_))
                        (if (and (let ((__tmp236720
                                        (let ((__tmp236721
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231340231447%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236721))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236720
                                    'gxc#!mutator::t))
                                 (let ((__tmp236722
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231138%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231339231446%_
                                    __tmp236722)))
                            (_%__kont235582235583%_
                             _%g231338231445%_
                             _%g231339231446%_
                             _%g231340231447%_)
                            (_%__kont235584235585%_)))))
                   (_%__match236063236064%_
                    (lambda (_%e231341231381%_
                             _%hd231342231384%_
                             _%tl231343231386%_
                             _%e231344231389%_
                             _%hd231345231392%_
                             _%tl231346231394%_
                             _%e231347231397%_
                             _%hd231348231400%_
                             _%tl231349231402%_
                             _%e231350231405%_
                             _%hd231351231408%_
                             _%tl231352231410%_
                             _%e231353231413%_
                             _%hd231354231416%_
                             _%tl231355231418%_
                             _%e231356231421%_
                             _%hd231357231424%_
                             _%tl231358231426%_
                             _%e231359231429%_
                             _%hd231360231432%_
                             _%tl231361231434%_
                             _%e231362231437%_
                             _%hd231363231440%_
                             _%tl231364231442%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231364231442%_))
                          (_%__match236065236066%_
                           _%e231341231381%_
                           _%hd231342231384%_
                           _%tl231343231386%_
                           _%e231344231389%_
                           _%hd231345231392%_
                           _%tl231346231394%_
                           _%e231347231397%_
                           _%hd231348231400%_
                           _%tl231349231402%_
                           _%e231350231405%_
                           _%hd231351231408%_
                           _%tl231352231410%_
                           _%e231353231413%_
                           _%hd231354231416%_
                           _%tl231355231418%_
                           _%e231356231421%_
                           _%hd231357231424%_
                           _%tl231358231426%_
                           _%e231359231429%_
                           _%hd231360231432%_
                           _%tl231361231434%_
                           _%e231362231437%_
                           _%hd231363231440%_
                           _%tl231364231442%_)
                          (_%__kont235584235585%_))))
                   (_%__match236057236058%_
                    (lambda (_%e231341231381%_
                             _%hd231342231384%_
                             _%tl231343231386%_
                             _%e231344231389%_
                             _%hd231345231392%_
                             _%tl231346231394%_
                             _%e231347231397%_
                             _%hd231348231400%_
                             _%tl231349231402%_
                             _%e231350231405%_
                             _%hd231351231408%_
                             _%tl231352231410%_
                             _%e231353231413%_
                             _%hd231354231416%_
                             _%tl231355231418%_
                             _%e231356231421%_
                             _%hd231357231424%_
                             _%tl231358231426%_
                             _%e231359231429%_
                             _%hd231360231432%_
                             _%tl231361231434%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231355231418%_))
                          (let ((_%e231362231437%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231355231418%_))))
                            (let ((_%tl231364231442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231362231437%_)))
                                  (_%hd231363231440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231362231437%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231364231442%_))
                                  (_%__match236065236066%_
                                   _%e231341231381%_
                                   _%hd231342231384%_
                                   _%tl231343231386%_
                                   _%e231344231389%_
                                   _%hd231345231392%_
                                   _%tl231346231394%_
                                   _%e231347231397%_
                                   _%hd231348231400%_
                                   _%tl231349231402%_
                                   _%e231350231405%_
                                   _%hd231351231408%_
                                   _%tl231352231410%_
                                   _%e231353231413%_
                                   _%hd231354231416%_
                                   _%tl231355231418%_
                                   _%e231356231421%_
                                   _%hd231357231424%_
                                   _%tl231358231426%_
                                   _%e231359231429%_
                                   _%hd231360231432%_
                                   _%tl231361231434%_
                                   _%e231362231437%_
                                   _%hd231363231440%_
                                   _%tl231364231442%_)
                                  (_%__kont235584235585%_))))
                          (_%__kont235584235585%_))))
                   (_%__match236003236004%_
                    (lambda (_%e231317231489%_
                             _%hd231318231492%_
                             _%tl231319231494%_
                             _%e231320231497%_
                             _%hd231321231500%_
                             _%tl231322231502%_
                             _%e231323231505%_
                             _%hd231324231508%_
                             _%tl231325231510%_
                             _%e231326231513%_
                             _%hd231327231516%_
                             _%tl231328231518%_
                             _%e231329231521%_
                             _%hd231330231524%_
                             _%tl231331231526%_
                             _%e231332231529%_
                             _%hd231333231532%_
                             _%tl231334231534%_
                             _%e231335231537%_
                             _%hd231336231540%_
                             _%tl231337231542%_)
                      (let ((_%g231315231545%_ _%hd231336231540%_)
                            (_%g231316231546%_ _%hd231327231516%_))
                        (if (and (let ((__tmp236723
                                        (let ((__tmp236724
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g231316231546%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp236724))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp236723
                                    'gxc#!accessor::t))
                                 (let ((__tmp236725
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231138%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231315231545%_
                                    __tmp236725)))
                            (_%__kont235580235581%_
                             _%g231315231545%_
                             _%g231316231546%_)
                            (_%__kont235584235585%_)))))
                   (_%__match236001236002%_
                    (lambda (_%e231317231489%_
                             _%hd231318231492%_
                             _%tl231319231494%_
                             _%e231320231497%_
                             _%hd231321231500%_
                             _%tl231322231502%_
                             _%e231323231505%_
                             _%hd231324231508%_
                             _%tl231325231510%_
                             _%e231326231513%_
                             _%hd231327231516%_
                             _%tl231328231518%_
                             _%e231329231521%_
                             _%hd231330231524%_
                             _%tl231331231526%_
                             _%e231332231529%_
                             _%hd231333231532%_
                             _%tl231334231534%_
                             _%e231335231537%_
                             _%hd231336231540%_
                             _%tl231337231542%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231331231526%_))
                          (_%__match236003236004%_
                           _%e231317231489%_
                           _%hd231318231492%_
                           _%tl231319231494%_
                           _%e231320231497%_
                           _%hd231321231500%_
                           _%tl231322231502%_
                           _%e231323231505%_
                           _%hd231324231508%_
                           _%tl231325231510%_
                           _%e231326231513%_
                           _%hd231327231516%_
                           _%tl231328231518%_
                           _%e231329231521%_
                           _%hd231330231524%_
                           _%tl231331231526%_
                           _%e231332231529%_
                           _%hd231333231532%_
                           _%tl231334231534%_
                           _%e231335231537%_
                           _%hd231336231540%_
                           _%tl231337231542%_)
                          (_%__match236057236058%_
                           _%e231317231489%_
                           _%hd231318231492%_
                           _%tl231319231494%_
                           _%e231320231497%_
                           _%hd231321231500%_
                           _%tl231322231502%_
                           _%e231323231505%_
                           _%hd231324231508%_
                           _%tl231325231510%_
                           _%e231326231513%_
                           _%hd231327231516%_
                           _%tl231328231518%_
                           _%e231329231521%_
                           _%hd231330231524%_
                           _%tl231331231526%_
                           _%e231332231529%_
                           _%hd231333231532%_
                           _%tl231334231534%_
                           _%e231335231537%_
                           _%hd231336231540%_
                           _%tl231337231542%_))))
                   (_%__match235947235948%_
                    (lambda (_%e231282231583%_
                             _%hd231283231586%_
                             _%tl231284231588%_
                             _%e231285231591%_
                             _%hd231286231594%_
                             _%tl231287231596%_
                             _%e231288231599%_
                             _%hd231289231602%_
                             _%tl231290231604%_
                             _%e231291231607%_
                             _%hd231292231610%_
                             _%tl231293231612%_
                             _%e231294231615%_
                             _%hd231295231618%_
                             _%tl231296231620%_
                             _%e231297231623%_
                             _%hd231298231626%_
                             _%tl231299231628%_
                             _%e231300231631%_
                             _%hd231301231634%_
                             _%tl231302231636%_
                             _%e231303231639%_
                             _%hd231304231642%_
                             _%tl231305231644%_
                             _%e231306231647%_
                             _%hd231307231650%_
                             _%tl231308231652%_
                             _%e231309231655%_
                             _%hd231310231658%_
                             _%tl231311231660%_
                             _%e231312231663%_
                             _%hd231313231666%_
                             _%tl231314231668%_)
                      (let ((_%g231278231671%_ _%hd231313231666%_)
                            (_%g231279231672%_ _%hd231310231658%_)
                            (_%g231280231673%_ _%hd231301231634%_)
                            (_%g231281231674%_ _%hd231292231610%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231281231674%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231281231674%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp236726
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231138%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231280231673%_
                                    __tmp236726)))
                            (_%__kont235578235579%_
                             _%g231278231671%_
                             _%g231279231672%_
                             _%g231280231673%_
                             _%g231281231674%_)
                            (_%__kont235584235585%_)))))
                   (_%__match235939235940%_
                    (lambda (_%e231282231583%_
                             _%hd231283231586%_
                             _%tl231284231588%_
                             _%e231285231591%_
                             _%hd231286231594%_
                             _%tl231287231596%_
                             _%e231288231599%_
                             _%hd231289231602%_
                             _%tl231290231604%_
                             _%e231291231607%_
                             _%hd231292231610%_
                             _%tl231293231612%_
                             _%e231294231615%_
                             _%hd231295231618%_
                             _%tl231296231620%_
                             _%e231297231623%_
                             _%hd231298231626%_
                             _%tl231299231628%_
                             _%e231300231631%_
                             _%hd231301231634%_
                             _%tl231302231636%_
                             _%e231303231639%_
                             _%hd231304231642%_
                             _%tl231305231644%_
                             _%e231306231647%_
                             _%hd231307231650%_
                             _%tl231308231652%_
                             _%e231309231655%_
                             _%hd231310231658%_
                             _%tl231311231660%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231305231644%_))
                          (let ((_%e231312231663%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231305231644%_))))
                            (let ((_%tl231314231668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231312231663%_)))
                                  (_%hd231313231666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231312231663%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231314231668%_))
                                  (_%__match235947235948%_
                                   _%e231282231583%_
                                   _%hd231283231586%_
                                   _%tl231284231588%_
                                   _%e231285231591%_
                                   _%hd231286231594%_
                                   _%tl231287231596%_
                                   _%e231288231599%_
                                   _%hd231289231602%_
                                   _%tl231290231604%_
                                   _%e231291231607%_
                                   _%hd231292231610%_
                                   _%tl231293231612%_
                                   _%e231294231615%_
                                   _%hd231295231618%_
                                   _%tl231296231620%_
                                   _%e231297231623%_
                                   _%hd231298231626%_
                                   _%tl231299231628%_
                                   _%e231300231631%_
                                   _%hd231301231634%_
                                   _%tl231302231636%_
                                   _%e231303231639%_
                                   _%hd231304231642%_
                                   _%tl231305231644%_
                                   _%e231306231647%_
                                   _%hd231307231650%_
                                   _%tl231308231652%_
                                   _%e231309231655%_
                                   _%hd231310231658%_
                                   _%tl231311231660%_
                                   _%e231312231663%_
                                   _%hd231313231666%_
                                   _%tl231314231668%_)
                                  (_%__kont235584235585%_))))
                          (_%__match236063236064%_
                           _%e231282231583%_
                           _%hd231283231586%_
                           _%tl231284231588%_
                           _%e231285231591%_
                           _%hd231286231594%_
                           _%tl231287231596%_
                           _%e231288231599%_
                           _%hd231289231602%_
                           _%tl231290231604%_
                           _%e231291231607%_
                           _%hd231292231610%_
                           _%tl231293231612%_
                           _%e231294231615%_
                           _%hd231295231618%_
                           _%tl231296231620%_
                           _%e231297231623%_
                           _%hd231298231626%_
                           _%tl231299231628%_
                           _%e231300231631%_
                           _%hd231301231634%_
                           _%tl231302231636%_
                           _%e231303231639%_
                           _%hd231304231642%_
                           _%tl231305231644%_))))
                   (_%__match235861235862%_
                    (lambda (_%e231248231714%_
                             _%hd231249231717%_
                             _%tl231250231719%_
                             _%e231251231722%_
                             _%hd231252231725%_
                             _%tl231253231727%_
                             _%e231254231730%_
                             _%hd231255231733%_
                             _%tl231256231735%_
                             _%e231257231738%_
                             _%hd231258231741%_
                             _%tl231259231743%_
                             _%e231260231746%_
                             _%hd231261231749%_
                             _%tl231262231751%_
                             _%e231263231754%_
                             _%hd231264231757%_
                             _%tl231265231759%_
                             _%e231266231762%_
                             _%hd231267231765%_
                             _%tl231268231767%_
                             _%e231269231770%_
                             _%hd231270231773%_
                             _%tl231271231775%_
                             _%e231272231778%_
                             _%hd231273231781%_
                             _%tl231274231783%_
                             _%e231275231786%_
                             _%hd231276231789%_
                             _%tl231277231791%_)
                      (let ((_%g231245231794%_ _%hd231276231789%_)
                            (_%g231246231795%_ _%hd231267231765%_)
                            (_%g231247231796%_ _%hd231258231741%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231247231796%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g231247231796%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp236727
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self231138%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g231246231795%_
                                    __tmp236727)))
                            (_%__kont235576235577%_
                             _%g231245231794%_
                             _%g231246231795%_
                             _%g231247231796%_)
                            (_%__match236065236066%_
                             _%e231248231714%_
                             _%hd231249231717%_
                             _%tl231250231719%_
                             _%e231251231722%_
                             _%hd231252231725%_
                             _%tl231253231727%_
                             _%e231254231730%_
                             _%hd231255231733%_
                             _%tl231256231735%_
                             _%e231257231738%_
                             _%hd231258231741%_
                             _%tl231259231743%_
                             _%e231260231746%_
                             _%hd231261231749%_
                             _%tl231262231751%_
                             _%e231263231754%_
                             _%hd231264231757%_
                             _%tl231265231759%_
                             _%e231266231762%_
                             _%hd231267231765%_
                             _%tl231268231767%_
                             _%e231269231770%_
                             _%hd231270231773%_
                             _%tl231271231775%_)))))
                   (_%__match235859235860%_
                    (lambda (_%e231248231714%_
                             _%hd231249231717%_
                             _%tl231250231719%_
                             _%e231251231722%_
                             _%hd231252231725%_
                             _%tl231253231727%_
                             _%e231254231730%_
                             _%hd231255231733%_
                             _%tl231256231735%_
                             _%e231257231738%_
                             _%hd231258231741%_
                             _%tl231259231743%_
                             _%e231260231746%_
                             _%hd231261231749%_
                             _%tl231262231751%_
                             _%e231263231754%_
                             _%hd231264231757%_
                             _%tl231265231759%_
                             _%e231266231762%_
                             _%hd231267231765%_
                             _%tl231268231767%_
                             _%e231269231770%_
                             _%hd231270231773%_
                             _%tl231271231775%_
                             _%e231272231778%_
                             _%hd231273231781%_
                             _%tl231274231783%_
                             _%e231275231786%_
                             _%hd231276231789%_
                             _%tl231277231791%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl231271231775%_))
                          (_%__match235861235862%_
                           _%e231248231714%_
                           _%hd231249231717%_
                           _%tl231250231719%_
                           _%e231251231722%_
                           _%hd231252231725%_
                           _%tl231253231727%_
                           _%e231254231730%_
                           _%hd231255231733%_
                           _%tl231256231735%_
                           _%e231257231738%_
                           _%hd231258231741%_
                           _%tl231259231743%_
                           _%e231260231746%_
                           _%hd231261231749%_
                           _%tl231262231751%_
                           _%e231263231754%_
                           _%hd231264231757%_
                           _%tl231265231759%_
                           _%e231266231762%_
                           _%hd231267231765%_
                           _%tl231268231767%_
                           _%e231269231770%_
                           _%hd231270231773%_
                           _%tl231271231775%_
                           _%e231272231778%_
                           _%hd231273231781%_
                           _%tl231274231783%_
                           _%e231275231786%_
                           _%hd231276231789%_
                           _%tl231277231791%_)
                          (_%__match235939235940%_
                           _%e231248231714%_
                           _%hd231249231717%_
                           _%tl231250231719%_
                           _%e231251231722%_
                           _%hd231252231725%_
                           _%tl231253231727%_
                           _%e231254231730%_
                           _%hd231255231733%_
                           _%tl231256231735%_
                           _%e231257231738%_
                           _%hd231258231741%_
                           _%tl231259231743%_
                           _%e231260231746%_
                           _%hd231261231749%_
                           _%tl231262231751%_
                           _%e231263231754%_
                           _%hd231264231757%_
                           _%tl231265231759%_
                           _%e231266231762%_
                           _%hd231267231765%_
                           _%tl231268231767%_
                           _%e231269231770%_
                           _%hd231270231773%_
                           _%tl231271231775%_
                           _%e231272231778%_
                           _%hd231273231781%_
                           _%tl231274231783%_
                           _%e231275231786%_
                           _%hd231276231789%_
                           _%tl231277231791%_))))
                   (_%__match235849235850%_
                    (lambda (_%e231248231714%_
                             _%hd231249231717%_
                             _%tl231250231719%_
                             _%e231251231722%_
                             _%hd231252231725%_
                             _%tl231253231727%_
                             _%e231254231730%_
                             _%hd231255231733%_
                             _%tl231256231735%_
                             _%e231257231738%_
                             _%hd231258231741%_
                             _%tl231259231743%_
                             _%e231260231746%_
                             _%hd231261231749%_
                             _%tl231262231751%_
                             _%e231263231754%_
                             _%hd231264231757%_
                             _%tl231265231759%_
                             _%e231266231762%_
                             _%hd231267231765%_
                             _%tl231268231767%_
                             _%e231269231770%_
                             _%hd231270231773%_
                             _%tl231271231775%_
                             _%e231272231778%_
                             _%hd231273231781%_
                             _%tl231274231783%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd231273231781%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231274231783%_))
                              (let ((_%e231275231786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231274231783%_))))
                                (let ((_%tl231277231791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231275231786%_)))
                                      (_%hd231276231789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231275231786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231277231791%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl231271231775%_))
                                          (_%__match235861235862%_
                                           _%e231248231714%_
                                           _%hd231249231717%_
                                           _%tl231250231719%_
                                           _%e231251231722%_
                                           _%hd231252231725%_
                                           _%tl231253231727%_
                                           _%e231254231730%_
                                           _%hd231255231733%_
                                           _%tl231256231735%_
                                           _%e231257231738%_
                                           _%hd231258231741%_
                                           _%tl231259231743%_
                                           _%e231260231746%_
                                           _%hd231261231749%_
                                           _%tl231262231751%_
                                           _%e231263231754%_
                                           _%hd231264231757%_
                                           _%tl231265231759%_
                                           _%e231266231762%_
                                           _%hd231267231765%_
                                           _%tl231268231767%_
                                           _%e231269231770%_
                                           _%hd231270231773%_
                                           _%tl231271231775%_
                                           _%e231272231778%_
                                           _%hd231273231781%_
                                           _%tl231274231783%_
                                           _%e231275231786%_
                                           _%hd231276231789%_
                                           _%tl231277231791%_)
                                          (_%__match235939235940%_
                                           _%e231248231714%_
                                           _%hd231249231717%_
                                           _%tl231250231719%_
                                           _%e231251231722%_
                                           _%hd231252231725%_
                                           _%tl231253231727%_
                                           _%e231254231730%_
                                           _%hd231255231733%_
                                           _%tl231256231735%_
                                           _%e231257231738%_
                                           _%hd231258231741%_
                                           _%tl231259231743%_
                                           _%e231260231746%_
                                           _%hd231261231749%_
                                           _%tl231262231751%_
                                           _%e231263231754%_
                                           _%hd231264231757%_
                                           _%tl231265231759%_
                                           _%e231266231762%_
                                           _%hd231267231765%_
                                           _%tl231268231767%_
                                           _%e231269231770%_
                                           _%hd231270231773%_
                                           _%tl231271231775%_
                                           _%e231272231778%_
                                           _%hd231273231781%_
                                           _%tl231274231783%_
                                           _%e231275231786%_
                                           _%hd231276231789%_
                                           _%tl231277231791%_))
                                      (_%__match236063236064%_
                                       _%e231248231714%_
                                       _%hd231249231717%_
                                       _%tl231250231719%_
                                       _%e231251231722%_
                                       _%hd231252231725%_
                                       _%tl231253231727%_
                                       _%e231254231730%_
                                       _%hd231255231733%_
                                       _%tl231256231735%_
                                       _%e231257231738%_
                                       _%hd231258231741%_
                                       _%tl231259231743%_
                                       _%e231260231746%_
                                       _%hd231261231749%_
                                       _%tl231262231751%_
                                       _%e231263231754%_
                                       _%hd231264231757%_
                                       _%tl231265231759%_
                                       _%e231266231762%_
                                       _%hd231267231765%_
                                       _%tl231268231767%_
                                       _%e231269231770%_
                                       _%hd231270231773%_
                                       _%tl231271231775%_))))
                              (_%__match236063236064%_
                               _%e231248231714%_
                               _%hd231249231717%_
                               _%tl231250231719%_
                               _%e231251231722%_
                               _%hd231252231725%_
                               _%tl231253231727%_
                               _%e231254231730%_
                               _%hd231255231733%_
                               _%tl231256231735%_
                               _%e231257231738%_
                               _%hd231258231741%_
                               _%tl231259231743%_
                               _%e231260231746%_
                               _%hd231261231749%_
                               _%tl231262231751%_
                               _%e231263231754%_
                               _%hd231264231757%_
                               _%tl231265231759%_
                               _%e231266231762%_
                               _%hd231267231765%_
                               _%tl231268231767%_
                               _%e231269231770%_
                               _%hd231270231773%_
                               _%tl231271231775%_))
                          (_%__match236063236064%_
                           _%e231248231714%_
                           _%hd231249231717%_
                           _%tl231250231719%_
                           _%e231251231722%_
                           _%hd231252231725%_
                           _%tl231253231727%_
                           _%e231254231730%_
                           _%hd231255231733%_
                           _%tl231256231735%_
                           _%e231257231738%_
                           _%hd231258231741%_
                           _%tl231259231743%_
                           _%e231260231746%_
                           _%hd231261231749%_
                           _%tl231262231751%_
                           _%e231263231754%_
                           _%hd231264231757%_
                           _%tl231265231759%_
                           _%e231266231762%_
                           _%hd231267231765%_
                           _%tl231268231767%_
                           _%e231269231770%_
                           _%hd231270231773%_
                           _%tl231271231775%_))))
                   (_%__match235781235782%_
                    (lambda (_%e231197231833%_
                             _%hd231198231836%_
                             _%tl231199231838%_
                             _%e231200231841%_
                             _%hd231201231844%_
                             _%tl231202231846%_
                             _%e231203231849%_
                             _%hd231204231852%_
                             _%tl231205231854%_
                             _%e231206231857%_
                             _%hd231207231860%_
                             _%tl231208231862%_
                             _%e231209231865%_
                             _%hd231210231868%_
                             _%tl231211231870%_
                             _%e231212231873%_
                             _%hd231213231876%_
                             _%tl231214231878%_
                             _%e231215231881%_
                             _%hd231216231884%_
                             _%tl231217231886%_
                             _%e231218231889%_
                             _%hd231219231892%_
                             _%tl231220231894%_
                             _%e231221231897%_
                             _%hd231222231900%_
                             _%tl231223231902%_
                             _%e231224231905%_
                             _%hd231225231908%_
                             _%tl231226231910%_
                             _%e231227231913%_
                             _%hd231228231916%_
                             _%tl231229231918%_
                             _%e231230231921%_
                             _%hd231231231924%_
                             _%tl231232231926%_
                             _%e231233231929%_
                             _%hd231234231932%_
                             _%tl231235231934%_
                             _%__splice235574235575%_
                             _%target231236231937%_
                             _%tl231238231939%_)
                      (letrec ((_%loop231239231942%_
                                (lambda (_%hd231237231945%_
                                         _%args231243231947%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd231237231945%_))
                                      (let ((_%e231240231949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd231237231945%_))))
                                        (let ((_%lp-tl231242231954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231240231949%_)))
                                              (_%lp-hd231241231952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231240231949%_))))
                                          (_%loop231239231942%_
                                           _%lp-tl231242231954%_
                                           (cons _%lp-hd231241231952%_
                                                 _%args231243231947%_))))
                                      (let ((_%args231244231957%_
                                             (reverse _%args231243231947%_)))
                                        (let ((_%g231192231959%_
                                               _%args231244231957%_)
                                              (_%g231193231960%_
                                               _%hd231234231932%_)
                                              (_%g231194231961%_
                                               _%hd231225231908%_)
                                              (_%g231195231962%_
                                               _%hd231216231884%_)
                                              (_%g231196231963%_
                                               _%hd231207231860%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231196231963%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231195231962%_
                                                      'call-method))
                                                   (let ((__tmp236728
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self231138%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g231194231961%_
                                                      __tmp236728)))
                                              (_%__kont235572235573%_
                                               _%g231192231959%_
                                               _%g231193231960%_
                                               _%g231194231961%_
                                               _%g231195231962%_
                                               _%g231196231963%_)
                                              (_%__kont235584235585%_))))))))
                        (_%loop231239231942%_ _%target231236231937%_ '()))))
                   (_%__match235739235740%_
                    (lambda (_%e231197231833%_
                             _%hd231198231836%_
                             _%tl231199231838%_
                             _%e231200231841%_
                             _%hd231201231844%_
                             _%tl231202231846%_
                             _%e231203231849%_
                             _%hd231204231852%_
                             _%tl231205231854%_
                             _%e231206231857%_
                             _%hd231207231860%_
                             _%tl231208231862%_
                             _%e231209231865%_
                             _%hd231210231868%_
                             _%tl231211231870%_
                             _%e231212231873%_
                             _%hd231213231876%_
                             _%tl231214231878%_
                             _%e231215231881%_
                             _%hd231216231884%_
                             _%tl231217231886%_
                             _%e231218231889%_
                             _%hd231219231892%_
                             _%tl231220231894%_
                             _%e231221231897%_
                             _%hd231222231900%_
                             _%tl231223231902%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd231222231900%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231223231902%_))
                              (let ((_%e231224231905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231223231902%_))))
                                (let ((_%tl231226231910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231224231905%_)))
                                      (_%hd231225231908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231224231905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl231226231910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231220231894%_))
                                          (let ((_%e231227231913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl231220231894%_))))
                                            (let ((_%tl231229231918%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231227231913%_)))
                                                  (_%hd231228231916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231227231913%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd231228231916%_))
                                                  (let ((_%e231230231921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd231228231916%_))))
                                                    (let ((_%tl231232231926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231230231921%_)))
                                                          (_%hd231231231924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231230231921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd231231231924%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd231231231924%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231232231926%_))
                          (let ((_%e231233231929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231232231926%_))))
                            (let ((_%tl231235231934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231233231929%_)))
                                  (_%hd231234231932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231233231929%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231235231934%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl231229231918%_))
                                      (let ((_%__splice235574235575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl231229231918%_
                                                '0))))
                                        (let ((_%tl231238231939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235574235575%_
                                                  '1)))
                                              (_%target231236231937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice235574235575%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231238231939%_))
                                              (_%__match235781235782%_
                                               _%e231197231833%_
                                               _%hd231198231836%_
                                               _%tl231199231838%_
                                               _%e231200231841%_
                                               _%hd231201231844%_
                                               _%tl231202231846%_
                                               _%e231203231849%_
                                               _%hd231204231852%_
                                               _%tl231205231854%_
                                               _%e231206231857%_
                                               _%hd231207231860%_
                                               _%tl231208231862%_
                                               _%e231209231865%_
                                               _%hd231210231868%_
                                               _%tl231211231870%_
                                               _%e231212231873%_
                                               _%hd231213231876%_
                                               _%tl231214231878%_
                                               _%e231215231881%_
                                               _%hd231216231884%_
                                               _%tl231217231886%_
                                               _%e231218231889%_
                                               _%hd231219231892%_
                                               _%tl231220231894%_
                                               _%e231221231897%_
                                               _%hd231222231900%_
                                               _%tl231223231902%_
                                               _%e231224231905%_
                                               _%hd231225231908%_
                                               _%tl231226231910%_
                                               _%e231227231913%_
                                               _%hd231228231916%_
                                               _%tl231229231918%_
                                               _%e231230231921%_
                                               _%hd231231231924%_
                                               _%tl231232231926%_
                                               _%e231233231929%_
                                               _%hd231234231932%_
                                               _%tl231235231934%_
                                               _%__splice235574235575%_
                                               _%target231236231937%_
                                               _%tl231238231939%_)
                                              (_%__kont235584235585%_))))
                                      (_%__kont235584235585%_))
                                  (_%__kont235584235585%_))))
                          (_%__kont235584235585%_))
                      (_%__kont235584235585%_))
                  (_%__kont235584235585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235584235585%_))))
                                          (_%__match236063236064%_
                                           _%e231197231833%_
                                           _%hd231198231836%_
                                           _%tl231199231838%_
                                           _%e231200231841%_
                                           _%hd231201231844%_
                                           _%tl231202231846%_
                                           _%e231203231849%_
                                           _%hd231204231852%_
                                           _%tl231205231854%_
                                           _%e231206231857%_
                                           _%hd231207231860%_
                                           _%tl231208231862%_
                                           _%e231209231865%_
                                           _%hd231210231868%_
                                           _%tl231211231870%_
                                           _%e231212231873%_
                                           _%hd231213231876%_
                                           _%tl231214231878%_
                                           _%e231215231881%_
                                           _%hd231216231884%_
                                           _%tl231217231886%_
                                           _%e231218231889%_
                                           _%hd231219231892%_
                                           _%tl231220231894%_))
                                      (_%__match236063236064%_
                                       _%e231197231833%_
                                       _%hd231198231836%_
                                       _%tl231199231838%_
                                       _%e231200231841%_
                                       _%hd231201231844%_
                                       _%tl231202231846%_
                                       _%e231203231849%_
                                       _%hd231204231852%_
                                       _%tl231205231854%_
                                       _%e231206231857%_
                                       _%hd231207231860%_
                                       _%tl231208231862%_
                                       _%e231209231865%_
                                       _%hd231210231868%_
                                       _%tl231211231870%_
                                       _%e231212231873%_
                                       _%hd231213231876%_
                                       _%tl231214231878%_
                                       _%e231215231881%_
                                       _%hd231216231884%_
                                       _%tl231217231886%_
                                       _%e231218231889%_
                                       _%hd231219231892%_
                                       _%tl231220231894%_))))
                              (_%__match236063236064%_
                               _%e231197231833%_
                               _%hd231198231836%_
                               _%tl231199231838%_
                               _%e231200231841%_
                               _%hd231201231844%_
                               _%tl231202231846%_
                               _%e231203231849%_
                               _%hd231204231852%_
                               _%tl231205231854%_
                               _%e231206231857%_
                               _%hd231207231860%_
                               _%tl231208231862%_
                               _%e231209231865%_
                               _%hd231210231868%_
                               _%tl231211231870%_
                               _%e231212231873%_
                               _%hd231213231876%_
                               _%tl231214231878%_
                               _%e231215231881%_
                               _%hd231216231884%_
                               _%tl231217231886%_
                               _%e231218231889%_
                               _%hd231219231892%_
                               _%tl231220231894%_))
                          (_%__match235849235850%_
                           _%e231197231833%_
                           _%hd231198231836%_
                           _%tl231199231838%_
                           _%e231200231841%_
                           _%hd231201231844%_
                           _%tl231202231846%_
                           _%e231203231849%_
                           _%hd231204231852%_
                           _%tl231205231854%_
                           _%e231206231857%_
                           _%hd231207231860%_
                           _%tl231208231862%_
                           _%e231209231865%_
                           _%hd231210231868%_
                           _%tl231211231870%_
                           _%e231212231873%_
                           _%hd231213231876%_
                           _%tl231214231878%_
                           _%e231215231881%_
                           _%hd231216231884%_
                           _%tl231217231886%_
                           _%e231218231889%_
                           _%hd231219231892%_
                           _%tl231220231894%_
                           _%e231221231897%_
                           _%hd231222231900%_
                           _%tl231223231902%_))))
                   (_%__match235671235672%_
                    (lambda (_%e231153232020%_
                             _%hd231154232023%_
                             _%tl231155232025%_
                             _%e231156232028%_
                             _%hd231157232031%_
                             _%tl231158232033%_
                             _%e231159232036%_
                             _%hd231160232039%_
                             _%tl231161232041%_
                             _%e231162232044%_
                             _%hd231163232047%_
                             _%tl231164232049%_
                             _%e231165232052%_
                             _%hd231166232055%_
                             _%tl231167232057%_
                             _%e231168232060%_
                             _%hd231169232063%_
                             _%tl231170232065%_
                             _%e231171232068%_
                             _%hd231172232071%_
                             _%tl231173232073%_
                             _%e231174232076%_
                             _%hd231175232079%_
                             _%tl231176232081%_
                             _%e231177232084%_
                             _%hd231178232087%_
                             _%tl231179232089%_
                             _%e231180232092%_
                             _%hd231181232095%_
                             _%tl231182232097%_
                             _%__splice235570235571%_
                             _%target231183232100%_
                             _%tl231185232102%_)
                      (letrec ((_%loop231186232105%_
                                (lambda (_%hd231184232108%_
                                         _%args231190232110%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd231184232108%_))
                                      (let ((_%e231187232112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd231184232108%_))))
                                        (let ((_%lp-tl231189232117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231187232112%_)))
                                              (_%lp-hd231188232115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231187232112%_))))
                                          (_%loop231186232105%_
                                           _%lp-tl231189232117%_
                                           (cons _%lp-hd231188232115%_
                                                 _%args231190232110%_))))
                                      (let ((_%args231191232120%_
                                             (reverse _%args231190232110%_)))
                                        (let ((_%g231149232122%_
                                               _%args231191232120%_)
                                              (_%g231150232123%_
                                               _%hd231181232095%_)
                                              (_%g231151232124%_
                                               _%hd231172232071%_)
                                              (_%g231152232125%_
                                               _%hd231163232047%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g231152232125%_
                                                      'call-method))
                                                   (let ((__tmp236729
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self231138%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g231151232124%_
                                                      __tmp236729)))
                                              (_%__kont235568235569%_
                                               _%g231149232122%_
                                               _%g231150232123%_
                                               _%g231151232124%_
                                               _%g231152232125%_)
                                              (_%__match235859235860%_
                                               _%e231153232020%_
                                               _%hd231154232023%_
                                               _%tl231155232025%_
                                               _%e231156232028%_
                                               _%hd231157232031%_
                                               _%tl231158232033%_
                                               _%e231159232036%_
                                               _%hd231160232039%_
                                               _%tl231161232041%_
                                               _%e231162232044%_
                                               _%hd231163232047%_
                                               _%tl231164232049%_
                                               _%e231165232052%_
                                               _%hd231166232055%_
                                               _%tl231167232057%_
                                               _%e231168232060%_
                                               _%hd231169232063%_
                                               _%tl231170232065%_
                                               _%e231171232068%_
                                               _%hd231172232071%_
                                               _%tl231173232073%_
                                               _%e231174232076%_
                                               _%hd231175232079%_
                                               _%tl231176232081%_
                                               _%e231177232084%_
                                               _%hd231178232087%_
                                               _%tl231179232089%_
                                               _%e231180232092%_
                                               _%hd231181232095%_
                                               _%tl231182232097%_))))))))
                        (_%loop231186232105%_ _%target231183232100%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx235566235567%_))
                  (let ((_%e231153232020%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx235566235567%_))))
                    (let ((_%tl231155232025%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231153232020%_)))
                          (_%hd231154232023%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231153232020%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl231155232025%_))
                          (let ((_%e231156232028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl231155232025%_))))
                            (let ((_%tl231158232033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231156232028%_)))
                                  (_%hd231157232031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231156232028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd231157232031%_))
                                  (let ((_%e231159232036%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd231157232031%_))))
                                    (let ((_%tl231161232041%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e231159232036%_)))
                                          (_%hd231160232039%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e231159232036%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd231160232039%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd231160232039%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl231161232041%_))
                                                  (let ((_%e231162232044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl231161232041%_))))
                                                    (let ((_%tl231164232049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231162232044%_)))
                                                          (_%hd231163232047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231162232044%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl231164232049%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl231158232033%_))
                      (let ((_%e231165232052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl231158232033%_))))
                        (let ((_%tl231167232057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231165232052%_)))
                              (_%hd231166232055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231165232052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd231166232055%_))
                              (let ((_%e231168232060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd231166232055%_))))
                                (let ((_%tl231170232065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231168232060%_)))
                                      (_%hd231169232063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231168232060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd231169232063%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd231169232063%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231170232065%_))
                                              (let ((_%e231171232068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231170232065%_))))
                                                (let ((_%tl231173232073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231171232068%_)))
                                                      (_%hd231172232071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231171232068%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231173232073%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl231167232057%_))
                                                          (let ((_%e231174232076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl231167232057%_))))
                    (let ((_%tl231176232081%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231174232076%_)))
                          (_%hd231175232079%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231174232076%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd231175232079%_))
                          (let ((_%e231177232084%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd231175232079%_))))
                            (let ((_%tl231179232089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e231177232084%_)))
                                  (_%hd231178232087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e231177232084%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd231178232087%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd231178232087%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl231179232089%_))
                                          (let ((_%e231180232092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl231179232089%_))))
                                            (let ((_%tl231182232097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e231180232092%_)))
                                                  (_%hd231181232095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e231180232092%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl231182232097%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl231176232081%_))
                                                      (let ((_%__splice235570235571%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl231176232081%_
                        '0))))
                (let ((_%tl231185232102%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235570235571%_ '1)))
                      (_%target231183232100%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice235570235571%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl231185232102%_))
                      (_%__match235671235672%_
                       _%e231153232020%_
                       _%hd231154232023%_
                       _%tl231155232025%_
                       _%e231156232028%_
                       _%hd231157232031%_
                       _%tl231158232033%_
                       _%e231159232036%_
                       _%hd231160232039%_
                       _%tl231161232041%_
                       _%e231162232044%_
                       _%hd231163232047%_
                       _%tl231164232049%_
                       _%e231165232052%_
                       _%hd231166232055%_
                       _%tl231167232057%_
                       _%e231168232060%_
                       _%hd231169232063%_
                       _%tl231170232065%_
                       _%e231171232068%_
                       _%hd231172232071%_
                       _%tl231173232073%_
                       _%e231174232076%_
                       _%hd231175232079%_
                       _%tl231176232081%_
                       _%e231177232084%_
                       _%hd231178232087%_
                       _%tl231179232089%_
                       _%e231180232092%_
                       _%hd231181232095%_
                       _%tl231182232097%_
                       _%__splice235570235571%_
                       _%target231183232100%_
                       _%tl231185232102%_)
                      (_%__match235859235860%_
                       _%e231153232020%_
                       _%hd231154232023%_
                       _%tl231155232025%_
                       _%e231156232028%_
                       _%hd231157232031%_
                       _%tl231158232033%_
                       _%e231159232036%_
                       _%hd231160232039%_
                       _%tl231161232041%_
                       _%e231162232044%_
                       _%hd231163232047%_
                       _%tl231164232049%_
                       _%e231165232052%_
                       _%hd231166232055%_
                       _%tl231167232057%_
                       _%e231168232060%_
                       _%hd231169232063%_
                       _%tl231170232065%_
                       _%e231171232068%_
                       _%hd231172232071%_
                       _%tl231173232073%_
                       _%e231174232076%_
                       _%hd231175232079%_
                       _%tl231176232081%_
                       _%e231177232084%_
                       _%hd231178232087%_
                       _%tl231179232089%_
                       _%e231180232092%_
                       _%hd231181232095%_
                       _%tl231182232097%_))))
              (_%__match235859235860%_
               _%e231153232020%_
               _%hd231154232023%_
               _%tl231155232025%_
               _%e231156232028%_
               _%hd231157232031%_
               _%tl231158232033%_
               _%e231159232036%_
               _%hd231160232039%_
               _%tl231161232041%_
               _%e231162232044%_
               _%hd231163232047%_
               _%tl231164232049%_
               _%e231165232052%_
               _%hd231166232055%_
               _%tl231167232057%_
               _%e231168232060%_
               _%hd231169232063%_
               _%tl231170232065%_
               _%e231171232068%_
               _%hd231172232071%_
               _%tl231173232073%_
               _%e231174232076%_
               _%hd231175232079%_
               _%tl231176232081%_
               _%e231177232084%_
               _%hd231178232087%_
               _%tl231179232089%_
               _%e231180232092%_
               _%hd231181232095%_
               _%tl231182232097%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match236063236064%_
                                                   _%e231153232020%_
                                                   _%hd231154232023%_
                                                   _%tl231155232025%_
                                                   _%e231156232028%_
                                                   _%hd231157232031%_
                                                   _%tl231158232033%_
                                                   _%e231159232036%_
                                                   _%hd231160232039%_
                                                   _%tl231161232041%_
                                                   _%e231162232044%_
                                                   _%hd231163232047%_
                                                   _%tl231164232049%_
                                                   _%e231165232052%_
                                                   _%hd231166232055%_
                                                   _%tl231167232057%_
                                                   _%e231168232060%_
                                                   _%hd231169232063%_
                                                   _%tl231170232065%_
                                                   _%e231171232068%_
                                                   _%hd231172232071%_
                                                   _%tl231173232073%_
                                                   _%e231174232076%_
                                                   _%hd231175232079%_
                                                   _%tl231176232081%_))))
                                          (_%__match236063236064%_
                                           _%e231153232020%_
                                           _%hd231154232023%_
                                           _%tl231155232025%_
                                           _%e231156232028%_
                                           _%hd231157232031%_
                                           _%tl231158232033%_
                                           _%e231159232036%_
                                           _%hd231160232039%_
                                           _%tl231161232041%_
                                           _%e231162232044%_
                                           _%hd231163232047%_
                                           _%tl231164232049%_
                                           _%e231165232052%_
                                           _%hd231166232055%_
                                           _%tl231167232057%_
                                           _%e231168232060%_
                                           _%hd231169232063%_
                                           _%tl231170232065%_
                                           _%e231171232068%_
                                           _%hd231172232071%_
                                           _%tl231173232073%_
                                           _%e231174232076%_
                                           _%hd231175232079%_
                                           _%tl231176232081%_))
                                      (_%__match235739235740%_
                                       _%e231153232020%_
                                       _%hd231154232023%_
                                       _%tl231155232025%_
                                       _%e231156232028%_
                                       _%hd231157232031%_
                                       _%tl231158232033%_
                                       _%e231159232036%_
                                       _%hd231160232039%_
                                       _%tl231161232041%_
                                       _%e231162232044%_
                                       _%hd231163232047%_
                                       _%tl231164232049%_
                                       _%e231165232052%_
                                       _%hd231166232055%_
                                       _%tl231167232057%_
                                       _%e231168232060%_
                                       _%hd231169232063%_
                                       _%tl231170232065%_
                                       _%e231171232068%_
                                       _%hd231172232071%_
                                       _%tl231173232073%_
                                       _%e231174232076%_
                                       _%hd231175232079%_
                                       _%tl231176232081%_
                                       _%e231177232084%_
                                       _%hd231178232087%_
                                       _%tl231179232089%_))
                                  (_%__match236063236064%_
                                   _%e231153232020%_
                                   _%hd231154232023%_
                                   _%tl231155232025%_
                                   _%e231156232028%_
                                   _%hd231157232031%_
                                   _%tl231158232033%_
                                   _%e231159232036%_
                                   _%hd231160232039%_
                                   _%tl231161232041%_
                                   _%e231162232044%_
                                   _%hd231163232047%_
                                   _%tl231164232049%_
                                   _%e231165232052%_
                                   _%hd231166232055%_
                                   _%tl231167232057%_
                                   _%e231168232060%_
                                   _%hd231169232063%_
                                   _%tl231170232065%_
                                   _%e231171232068%_
                                   _%hd231172232071%_
                                   _%tl231173232073%_
                                   _%e231174232076%_
                                   _%hd231175232079%_
                                   _%tl231176232081%_))))
                          (_%__match236063236064%_
                           _%e231153232020%_
                           _%hd231154232023%_
                           _%tl231155232025%_
                           _%e231156232028%_
                           _%hd231157232031%_
                           _%tl231158232033%_
                           _%e231159232036%_
                           _%hd231160232039%_
                           _%tl231161232041%_
                           _%e231162232044%_
                           _%hd231163232047%_
                           _%tl231164232049%_
                           _%e231165232052%_
                           _%hd231166232055%_
                           _%tl231167232057%_
                           _%e231168232060%_
                           _%hd231169232063%_
                           _%tl231170232065%_
                           _%e231171232068%_
                           _%hd231172232071%_
                           _%tl231173232073%_
                           _%e231174232076%_
                           _%hd231175232079%_
                           _%tl231176232081%_))))
                  (_%__match236001236002%_
                   _%e231153232020%_
                   _%hd231154232023%_
                   _%tl231155232025%_
                   _%e231156232028%_
                   _%hd231157232031%_
                   _%tl231158232033%_
                   _%e231159232036%_
                   _%hd231160232039%_
                   _%tl231161232041%_
                   _%e231162232044%_
                   _%hd231163232047%_
                   _%tl231164232049%_
                   _%e231165232052%_
                   _%hd231166232055%_
                   _%tl231167232057%_
                   _%e231168232060%_
                   _%hd231169232063%_
                   _%tl231170232065%_
                   _%e231171232068%_
                   _%hd231172232071%_
                   _%tl231173232073%_))
              (_%__kont235584235585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont235584235585%_))
                                          (_%__kont235584235585%_))
                                      (_%__kont235584235585%_))))
                              (_%__kont235584235585%_))))
                      (_%__kont235584235585%_))
                  (_%__kont235584235585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont235584235585%_))
                                              (_%__kont235584235585%_))
                                          (_%__kont235584235585%_))))
                                  (_%__kont235584235585%_))))
                          (_%__kont235584235585%_))))
                  (_%__kont235584235585%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self230081%_ _%stx230082%_)
        (letrec ((_%force-e230084%_
                  (lambda (_%target231136%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target231136%_ '()))
                                      '()))))))
          (let* ((_%__stx236068236069%_ _%stx230082%_)
                 (_%g230092230314%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx236068236069%_)))))
            (let ((_%__kont236070236071%_
                   (lambda (_%g230094231082%_
                            _%g230095231083%_
                            _%g230096231084%_
                            _%g230097231085%_)
                     (let ((_%$method231130%_
                            (let ((__tmp236731
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230081%_ 'methods)))
                                  (__tmp236730
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230095231083%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236731 __tmp236730)))
                           (_%args231131%_
                            (map (lambda (_%g231118231120%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self230081%_
                                      _%g231118231120%_)))
                                 (let ((__tmp236732
                                        (lambda (_%g231122231125%_
                                                 _%g231123231127%_)
                                          (cons _%g231122231125%_
                                                _%g231123231127%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236732
                                    '()
                                    _%g230094231082%_)))))
                       (let ((__tmp236733
                              (cons '%#call
                                    (cons (_%force-e230084%_ _%$method231130%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230081%_
                                                               'receiver))
                                                            '()))
                                                _%args231131%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236733 _%stx230082%_)))))
                  (_%__kont236074236075%_
                   (lambda (_%g230137230916%_
                            _%g230138230917%_
                            _%g230139230918%_
                            _%g230140230919%_
                            _%g230141230920%_)
                     (let ((_%$method230972%_
                            (let ((__tmp236735
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230081%_ 'methods)))
                                  (__tmp236734
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230138230917%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236735 __tmp236734)))
                           (_%args230973%_
                            (map (lambda (_%g230960230962%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self230081%_
                                      _%g230960230962%_)))
                                 (let ((__tmp236736
                                        (lambda (_%g230964230967%_
                                                 _%g230965230969%_)
                                          (cons _%g230964230967%_
                                                _%g230965230969%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp236736
                                    '()
                                    _%g230137230916%_)))))
                       (let ((__tmp236737
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e230084%_
                                                 _%$method230972%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self230081%_ 'receiver))
                          '()))
              _%args230973%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236737 _%stx230082%_)))))
                  (_%__kont236078236079%_
                   (lambda (_%g230190230749%_
                            _%g230191230750%_
                            _%g230192230751%_)
                     (let* ((_%$field230783%_
                             (let ((__tmp236739
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self230081%_ 'slots)))
                                   (__tmp236738
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g230190230749%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp236739 __tmp236738)))
                            (__tmp236740
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self230081%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field230783%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self230081%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp236740 _%stx230082%_))))
                  (_%__kont236080236081%_
                   (lambda (_%g230223230623%_
                            _%g230224230624%_
                            _%g230225230625%_
                            _%g230226230626%_)
                     (let ((_%$field230661%_
                            (let ((__tmp236742
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self230081%_ 'slots)))
                                  (__tmp236741
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g230224230624%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp236742 __tmp236741)))
                           (_%expr230662%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self230081%_
                               _%g230223230623%_))))
                       (let ((__tmp236743
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self230081%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field230661%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self230081%_ 'receiver))
                          '()))
              (cons _%expr230662%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp236743 _%stx230082%_)))))
                  (_%__kont236082236083%_
                   (lambda (_%g230260230495%_ _%g230261230496%_)
                     (let* ((_%accessor230518%_
                             (let ((__tmp236744
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230261230496%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236744)))
                            (_%klass230520%_
                             (let ((__tmp236745
                                    (##structure-ref
                                     _%accessor230518%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx230082%_
                                __tmp236745)))
                            (_%slot230522%_
                             (##structure-ref
                              _%accessor230518%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor230518%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230520%_
                                      _%slot230522%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230520%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx230082%_
                           (let* ((_%$field230528%_
                                   (let ((__tmp236746
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236746 _%slot230522%_)))
                                  (__tmp236747
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self230081%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self230081%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236747
                              _%stx230082%_))))))
                  (_%__kont236084236085%_
                   (lambda (_%g230283230390%_
                            _%g230284230391%_
                            _%g230285230392%_)
                     (let* ((_%mutator230420%_
                             (let ((__tmp236748
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230285230392%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp236748)))
                            (_%klass230422%_
                             (let ((__tmp236749
                                    (##structure-ref
                                     _%mutator230420%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx230082%_
                                __tmp236749)))
                            (_%slot230424%_
                             (##structure-ref
                              _%mutator230420%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr230426%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self230081%_
                                _%g230283230390%_))))
                       (if (if (##structure-ref
                                _%mutator230420%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass230422%_
                                      _%slot230424%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass230422%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp236750
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g230285230392%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g230284230391%_
                                                                '()))
                                                    (cons _%expr230426%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp236750 _%stx230082%_))
                           (let* ((_%$field230432%_
                                   (let ((__tmp236751
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp236751 _%slot230424%_)))
                                  (__tmp236752
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self230081%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field230432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self230081%_ 'receiver))
                               '()))
                   (cons _%expr230426%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp236752
                              _%stx230082%_))))))
                  (_%__kont236086236087%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self230081%_ _%stx230082%_)))))
              (let* ((_%__match236567236568%_
                      (lambda (_%e230286230326%_
                               _%hd230287230329%_
                               _%tl230288230331%_
                               _%e230289230334%_
                               _%hd230290230337%_
                               _%tl230291230339%_
                               _%e230292230342%_
                               _%hd230293230345%_
                               _%tl230294230347%_
                               _%e230295230350%_
                               _%hd230296230353%_
                               _%tl230297230355%_
                               _%e230298230358%_
                               _%hd230299230361%_
                               _%tl230300230363%_
                               _%e230301230366%_
                               _%hd230302230369%_
                               _%tl230303230371%_
                               _%e230304230374%_
                               _%hd230305230377%_
                               _%tl230306230379%_
                               _%e230307230382%_
                               _%hd230308230385%_
                               _%tl230309230387%_)
                        (let ((_%g230283230390%_ _%hd230308230385%_)
                              (_%g230284230391%_ _%hd230305230377%_)
                              (_%g230285230392%_ _%hd230296230353%_))
                          (if (and (let ((__tmp236753
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230284230391%_
                                      __tmp236753))
                                   (let ((__tmp236754
                                          (let ((__tmp236755
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g230285230392%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236755))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236754
                                      'gxc#!mutator::t)))
                              (_%__kont236084236085%_
                               _%g230283230390%_
                               _%g230284230391%_
                               _%g230285230392%_)
                              (_%__kont236086236087%_)))))
                     (_%__match236565236566%_
                      (lambda (_%e230286230326%_
                               _%hd230287230329%_
                               _%tl230288230331%_
                               _%e230289230334%_
                               _%hd230290230337%_
                               _%tl230291230339%_
                               _%e230292230342%_
                               _%hd230293230345%_
                               _%tl230294230347%_
                               _%e230295230350%_
                               _%hd230296230353%_
                               _%tl230297230355%_
                               _%e230298230358%_
                               _%hd230299230361%_
                               _%tl230300230363%_
                               _%e230301230366%_
                               _%hd230302230369%_
                               _%tl230303230371%_
                               _%e230304230374%_
                               _%hd230305230377%_
                               _%tl230306230379%_
                               _%e230307230382%_
                               _%hd230308230385%_
                               _%tl230309230387%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230309230387%_))
                            (_%__match236567236568%_
                             _%e230286230326%_
                             _%hd230287230329%_
                             _%tl230288230331%_
                             _%e230289230334%_
                             _%hd230290230337%_
                             _%tl230291230339%_
                             _%e230292230342%_
                             _%hd230293230345%_
                             _%tl230294230347%_
                             _%e230295230350%_
                             _%hd230296230353%_
                             _%tl230297230355%_
                             _%e230298230358%_
                             _%hd230299230361%_
                             _%tl230300230363%_
                             _%e230301230366%_
                             _%hd230302230369%_
                             _%tl230303230371%_
                             _%e230304230374%_
                             _%hd230305230377%_
                             _%tl230306230379%_
                             _%e230307230382%_
                             _%hd230308230385%_
                             _%tl230309230387%_)
                            (_%__kont236086236087%_))))
                     (_%__match236559236560%_
                      (lambda (_%e230286230326%_
                               _%hd230287230329%_
                               _%tl230288230331%_
                               _%e230289230334%_
                               _%hd230290230337%_
                               _%tl230291230339%_
                               _%e230292230342%_
                               _%hd230293230345%_
                               _%tl230294230347%_
                               _%e230295230350%_
                               _%hd230296230353%_
                               _%tl230297230355%_
                               _%e230298230358%_
                               _%hd230299230361%_
                               _%tl230300230363%_
                               _%e230301230366%_
                               _%hd230302230369%_
                               _%tl230303230371%_
                               _%e230304230374%_
                               _%hd230305230377%_
                               _%tl230306230379%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230300230363%_))
                            (let ((_%e230307230382%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230300230363%_))))
                              (let ((_%tl230309230387%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230307230382%_)))
                                    (_%hd230308230385%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230307230382%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230309230387%_))
                                    (_%__match236567236568%_
                                     _%e230286230326%_
                                     _%hd230287230329%_
                                     _%tl230288230331%_
                                     _%e230289230334%_
                                     _%hd230290230337%_
                                     _%tl230291230339%_
                                     _%e230292230342%_
                                     _%hd230293230345%_
                                     _%tl230294230347%_
                                     _%e230295230350%_
                                     _%hd230296230353%_
                                     _%tl230297230355%_
                                     _%e230298230358%_
                                     _%hd230299230361%_
                                     _%tl230300230363%_
                                     _%e230301230366%_
                                     _%hd230302230369%_
                                     _%tl230303230371%_
                                     _%e230304230374%_
                                     _%hd230305230377%_
                                     _%tl230306230379%_
                                     _%e230307230382%_
                                     _%hd230308230385%_
                                     _%tl230309230387%_)
                                    (_%__kont236086236087%_))))
                            (_%__kont236086236087%_))))
                     (_%__match236505236506%_
                      (lambda (_%e230262230439%_
                               _%hd230263230442%_
                               _%tl230264230444%_
                               _%e230265230447%_
                               _%hd230266230450%_
                               _%tl230267230452%_
                               _%e230268230455%_
                               _%hd230269230458%_
                               _%tl230270230460%_
                               _%e230271230463%_
                               _%hd230272230466%_
                               _%tl230273230468%_
                               _%e230274230471%_
                               _%hd230275230474%_
                               _%tl230276230476%_
                               _%e230277230479%_
                               _%hd230278230482%_
                               _%tl230279230484%_
                               _%e230280230487%_
                               _%hd230281230490%_
                               _%tl230282230492%_)
                        (let ((_%g230260230495%_ _%hd230281230490%_)
                              (_%g230261230496%_ _%hd230272230466%_))
                          (if (and (let ((__tmp236756
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230260230495%_
                                      __tmp236756))
                                   (let ((__tmp236757
                                          (let ((__tmp236758
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g230261230496%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp236758))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp236757
                                      'gxc#!accessor::t)))
                              (_%__kont236082236083%_
                               _%g230260230495%_
                               _%g230261230496%_)
                              (_%__kont236086236087%_)))))
                     (_%__match236503236504%_
                      (lambda (_%e230262230439%_
                               _%hd230263230442%_
                               _%tl230264230444%_
                               _%e230265230447%_
                               _%hd230266230450%_
                               _%tl230267230452%_
                               _%e230268230455%_
                               _%hd230269230458%_
                               _%tl230270230460%_
                               _%e230271230463%_
                               _%hd230272230466%_
                               _%tl230273230468%_
                               _%e230274230471%_
                               _%hd230275230474%_
                               _%tl230276230476%_
                               _%e230277230479%_
                               _%hd230278230482%_
                               _%tl230279230484%_
                               _%e230280230487%_
                               _%hd230281230490%_
                               _%tl230282230492%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230276230476%_))
                            (_%__match236505236506%_
                             _%e230262230439%_
                             _%hd230263230442%_
                             _%tl230264230444%_
                             _%e230265230447%_
                             _%hd230266230450%_
                             _%tl230267230452%_
                             _%e230268230455%_
                             _%hd230269230458%_
                             _%tl230270230460%_
                             _%e230271230463%_
                             _%hd230272230466%_
                             _%tl230273230468%_
                             _%e230274230471%_
                             _%hd230275230474%_
                             _%tl230276230476%_
                             _%e230277230479%_
                             _%hd230278230482%_
                             _%tl230279230484%_
                             _%e230280230487%_
                             _%hd230281230490%_
                             _%tl230282230492%_)
                            (_%__match236559236560%_
                             _%e230262230439%_
                             _%hd230263230442%_
                             _%tl230264230444%_
                             _%e230265230447%_
                             _%hd230266230450%_
                             _%tl230267230452%_
                             _%e230268230455%_
                             _%hd230269230458%_
                             _%tl230270230460%_
                             _%e230271230463%_
                             _%hd230272230466%_
                             _%tl230273230468%_
                             _%e230274230471%_
                             _%hd230275230474%_
                             _%tl230276230476%_
                             _%e230277230479%_
                             _%hd230278230482%_
                             _%tl230279230484%_
                             _%e230280230487%_
                             _%hd230281230490%_
                             _%tl230282230492%_))))
                     (_%__match236449236450%_
                      (lambda (_%e230227230535%_
                               _%hd230228230538%_
                               _%tl230229230540%_
                               _%e230230230543%_
                               _%hd230231230546%_
                               _%tl230232230548%_
                               _%e230233230551%_
                               _%hd230234230554%_
                               _%tl230235230556%_
                               _%e230236230559%_
                               _%hd230237230562%_
                               _%tl230238230564%_
                               _%e230239230567%_
                               _%hd230240230570%_
                               _%tl230241230572%_
                               _%e230242230575%_
                               _%hd230243230578%_
                               _%tl230244230580%_
                               _%e230245230583%_
                               _%hd230246230586%_
                               _%tl230247230588%_
                               _%e230248230591%_
                               _%hd230249230594%_
                               _%tl230250230596%_
                               _%e230251230599%_
                               _%hd230252230602%_
                               _%tl230253230604%_
                               _%e230254230607%_
                               _%hd230255230610%_
                               _%tl230256230612%_
                               _%e230257230615%_
                               _%hd230258230618%_
                               _%tl230259230620%_)
                        (let ((_%g230223230623%_ _%hd230258230618%_)
                              (_%g230224230624%_ _%hd230255230610%_)
                              (_%g230225230625%_ _%hd230246230586%_)
                              (_%g230226230626%_ _%hd230237230562%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230226230626%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230226230626%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp236759
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230225230625%_
                                      __tmp236759)))
                              (_%__kont236080236081%_
                               _%g230223230623%_
                               _%g230224230624%_
                               _%g230225230625%_
                               _%g230226230626%_)
                              (_%__kont236086236087%_)))))
                     (_%__match236441236442%_
                      (lambda (_%e230227230535%_
                               _%hd230228230538%_
                               _%tl230229230540%_
                               _%e230230230543%_
                               _%hd230231230546%_
                               _%tl230232230548%_
                               _%e230233230551%_
                               _%hd230234230554%_
                               _%tl230235230556%_
                               _%e230236230559%_
                               _%hd230237230562%_
                               _%tl230238230564%_
                               _%e230239230567%_
                               _%hd230240230570%_
                               _%tl230241230572%_
                               _%e230242230575%_
                               _%hd230243230578%_
                               _%tl230244230580%_
                               _%e230245230583%_
                               _%hd230246230586%_
                               _%tl230247230588%_
                               _%e230248230591%_
                               _%hd230249230594%_
                               _%tl230250230596%_
                               _%e230251230599%_
                               _%hd230252230602%_
                               _%tl230253230604%_
                               _%e230254230607%_
                               _%hd230255230610%_
                               _%tl230256230612%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230250230596%_))
                            (let ((_%e230257230615%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230250230596%_))))
                              (let ((_%tl230259230620%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230257230615%_)))
                                    (_%hd230258230618%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230257230615%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230259230620%_))
                                    (_%__match236449236450%_
                                     _%e230227230535%_
                                     _%hd230228230538%_
                                     _%tl230229230540%_
                                     _%e230230230543%_
                                     _%hd230231230546%_
                                     _%tl230232230548%_
                                     _%e230233230551%_
                                     _%hd230234230554%_
                                     _%tl230235230556%_
                                     _%e230236230559%_
                                     _%hd230237230562%_
                                     _%tl230238230564%_
                                     _%e230239230567%_
                                     _%hd230240230570%_
                                     _%tl230241230572%_
                                     _%e230242230575%_
                                     _%hd230243230578%_
                                     _%tl230244230580%_
                                     _%e230245230583%_
                                     _%hd230246230586%_
                                     _%tl230247230588%_
                                     _%e230248230591%_
                                     _%hd230249230594%_
                                     _%tl230250230596%_
                                     _%e230251230599%_
                                     _%hd230252230602%_
                                     _%tl230253230604%_
                                     _%e230254230607%_
                                     _%hd230255230610%_
                                     _%tl230256230612%_
                                     _%e230257230615%_
                                     _%hd230258230618%_
                                     _%tl230259230620%_)
                                    (_%__kont236086236087%_))))
                            (_%__match236565236566%_
                             _%e230227230535%_
                             _%hd230228230538%_
                             _%tl230229230540%_
                             _%e230230230543%_
                             _%hd230231230546%_
                             _%tl230232230548%_
                             _%e230233230551%_
                             _%hd230234230554%_
                             _%tl230235230556%_
                             _%e230236230559%_
                             _%hd230237230562%_
                             _%tl230238230564%_
                             _%e230239230567%_
                             _%hd230240230570%_
                             _%tl230241230572%_
                             _%e230242230575%_
                             _%hd230243230578%_
                             _%tl230244230580%_
                             _%e230245230583%_
                             _%hd230246230586%_
                             _%tl230247230588%_
                             _%e230248230591%_
                             _%hd230249230594%_
                             _%tl230250230596%_))))
                     (_%__match236363236364%_
                      (lambda (_%e230193230669%_
                               _%hd230194230672%_
                               _%tl230195230674%_
                               _%e230196230677%_
                               _%hd230197230680%_
                               _%tl230198230682%_
                               _%e230199230685%_
                               _%hd230200230688%_
                               _%tl230201230690%_
                               _%e230202230693%_
                               _%hd230203230696%_
                               _%tl230204230698%_
                               _%e230205230701%_
                               _%hd230206230704%_
                               _%tl230207230706%_
                               _%e230208230709%_
                               _%hd230209230712%_
                               _%tl230210230714%_
                               _%e230211230717%_
                               _%hd230212230720%_
                               _%tl230213230722%_
                               _%e230214230725%_
                               _%hd230215230728%_
                               _%tl230216230730%_
                               _%e230217230733%_
                               _%hd230218230736%_
                               _%tl230219230738%_
                               _%e230220230741%_
                               _%hd230221230744%_
                               _%tl230222230746%_)
                        (let ((_%g230190230749%_ _%hd230221230744%_)
                              (_%g230191230750%_ _%hd230212230720%_)
                              (_%g230192230751%_ _%hd230203230696%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230192230751%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g230192230751%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp236760
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self230081%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g230191230750%_
                                      __tmp236760)))
                              (_%__kont236078236079%_
                               _%g230190230749%_
                               _%g230191230750%_
                               _%g230192230751%_)
                              (_%__match236567236568%_
                               _%e230193230669%_
                               _%hd230194230672%_
                               _%tl230195230674%_
                               _%e230196230677%_
                               _%hd230197230680%_
                               _%tl230198230682%_
                               _%e230199230685%_
                               _%hd230200230688%_
                               _%tl230201230690%_
                               _%e230202230693%_
                               _%hd230203230696%_
                               _%tl230204230698%_
                               _%e230205230701%_
                               _%hd230206230704%_
                               _%tl230207230706%_
                               _%e230208230709%_
                               _%hd230209230712%_
                               _%tl230210230714%_
                               _%e230211230717%_
                               _%hd230212230720%_
                               _%tl230213230722%_
                               _%e230214230725%_
                               _%hd230215230728%_
                               _%tl230216230730%_)))))
                     (_%__match236361236362%_
                      (lambda (_%e230193230669%_
                               _%hd230194230672%_
                               _%tl230195230674%_
                               _%e230196230677%_
                               _%hd230197230680%_
                               _%tl230198230682%_
                               _%e230199230685%_
                               _%hd230200230688%_
                               _%tl230201230690%_
                               _%e230202230693%_
                               _%hd230203230696%_
                               _%tl230204230698%_
                               _%e230205230701%_
                               _%hd230206230704%_
                               _%tl230207230706%_
                               _%e230208230709%_
                               _%hd230209230712%_
                               _%tl230210230714%_
                               _%e230211230717%_
                               _%hd230212230720%_
                               _%tl230213230722%_
                               _%e230214230725%_
                               _%hd230215230728%_
                               _%tl230216230730%_
                               _%e230217230733%_
                               _%hd230218230736%_
                               _%tl230219230738%_
                               _%e230220230741%_
                               _%hd230221230744%_
                               _%tl230222230746%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230216230730%_))
                            (_%__match236363236364%_
                             _%e230193230669%_
                             _%hd230194230672%_
                             _%tl230195230674%_
                             _%e230196230677%_
                             _%hd230197230680%_
                             _%tl230198230682%_
                             _%e230199230685%_
                             _%hd230200230688%_
                             _%tl230201230690%_
                             _%e230202230693%_
                             _%hd230203230696%_
                             _%tl230204230698%_
                             _%e230205230701%_
                             _%hd230206230704%_
                             _%tl230207230706%_
                             _%e230208230709%_
                             _%hd230209230712%_
                             _%tl230210230714%_
                             _%e230211230717%_
                             _%hd230212230720%_
                             _%tl230213230722%_
                             _%e230214230725%_
                             _%hd230215230728%_
                             _%tl230216230730%_
                             _%e230217230733%_
                             _%hd230218230736%_
                             _%tl230219230738%_
                             _%e230220230741%_
                             _%hd230221230744%_
                             _%tl230222230746%_)
                            (_%__match236441236442%_
                             _%e230193230669%_
                             _%hd230194230672%_
                             _%tl230195230674%_
                             _%e230196230677%_
                             _%hd230197230680%_
                             _%tl230198230682%_
                             _%e230199230685%_
                             _%hd230200230688%_
                             _%tl230201230690%_
                             _%e230202230693%_
                             _%hd230203230696%_
                             _%tl230204230698%_
                             _%e230205230701%_
                             _%hd230206230704%_
                             _%tl230207230706%_
                             _%e230208230709%_
                             _%hd230209230712%_
                             _%tl230210230714%_
                             _%e230211230717%_
                             _%hd230212230720%_
                             _%tl230213230722%_
                             _%e230214230725%_
                             _%hd230215230728%_
                             _%tl230216230730%_
                             _%e230217230733%_
                             _%hd230218230736%_
                             _%tl230219230738%_
                             _%e230220230741%_
                             _%hd230221230744%_
                             _%tl230222230746%_))))
                     (_%__match236351236352%_
                      (lambda (_%e230193230669%_
                               _%hd230194230672%_
                               _%tl230195230674%_
                               _%e230196230677%_
                               _%hd230197230680%_
                               _%tl230198230682%_
                               _%e230199230685%_
                               _%hd230200230688%_
                               _%tl230201230690%_
                               _%e230202230693%_
                               _%hd230203230696%_
                               _%tl230204230698%_
                               _%e230205230701%_
                               _%hd230206230704%_
                               _%tl230207230706%_
                               _%e230208230709%_
                               _%hd230209230712%_
                               _%tl230210230714%_
                               _%e230211230717%_
                               _%hd230212230720%_
                               _%tl230213230722%_
                               _%e230214230725%_
                               _%hd230215230728%_
                               _%tl230216230730%_
                               _%e230217230733%_
                               _%hd230218230736%_
                               _%tl230219230738%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd230218230736%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230219230738%_))
                                (let ((_%e230220230741%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl230219230738%_))))
                                  (let ((_%tl230222230746%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230220230741%_)))
                                        (_%hd230221230744%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230220230741%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230222230746%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230216230730%_))
                                            (_%__match236363236364%_
                                             _%e230193230669%_
                                             _%hd230194230672%_
                                             _%tl230195230674%_
                                             _%e230196230677%_
                                             _%hd230197230680%_
                                             _%tl230198230682%_
                                             _%e230199230685%_
                                             _%hd230200230688%_
                                             _%tl230201230690%_
                                             _%e230202230693%_
                                             _%hd230203230696%_
                                             _%tl230204230698%_
                                             _%e230205230701%_
                                             _%hd230206230704%_
                                             _%tl230207230706%_
                                             _%e230208230709%_
                                             _%hd230209230712%_
                                             _%tl230210230714%_
                                             _%e230211230717%_
                                             _%hd230212230720%_
                                             _%tl230213230722%_
                                             _%e230214230725%_
                                             _%hd230215230728%_
                                             _%tl230216230730%_
                                             _%e230217230733%_
                                             _%hd230218230736%_
                                             _%tl230219230738%_
                                             _%e230220230741%_
                                             _%hd230221230744%_
                                             _%tl230222230746%_)
                                            (_%__match236441236442%_
                                             _%e230193230669%_
                                             _%hd230194230672%_
                                             _%tl230195230674%_
                                             _%e230196230677%_
                                             _%hd230197230680%_
                                             _%tl230198230682%_
                                             _%e230199230685%_
                                             _%hd230200230688%_
                                             _%tl230201230690%_
                                             _%e230202230693%_
                                             _%hd230203230696%_
                                             _%tl230204230698%_
                                             _%e230205230701%_
                                             _%hd230206230704%_
                                             _%tl230207230706%_
                                             _%e230208230709%_
                                             _%hd230209230712%_
                                             _%tl230210230714%_
                                             _%e230211230717%_
                                             _%hd230212230720%_
                                             _%tl230213230722%_
                                             _%e230214230725%_
                                             _%hd230215230728%_
                                             _%tl230216230730%_
                                             _%e230217230733%_
                                             _%hd230218230736%_
                                             _%tl230219230738%_
                                             _%e230220230741%_
                                             _%hd230221230744%_
                                             _%tl230222230746%_))
                                        (_%__match236565236566%_
                                         _%e230193230669%_
                                         _%hd230194230672%_
                                         _%tl230195230674%_
                                         _%e230196230677%_
                                         _%hd230197230680%_
                                         _%tl230198230682%_
                                         _%e230199230685%_
                                         _%hd230200230688%_
                                         _%tl230201230690%_
                                         _%e230202230693%_
                                         _%hd230203230696%_
                                         _%tl230204230698%_
                                         _%e230205230701%_
                                         _%hd230206230704%_
                                         _%tl230207230706%_
                                         _%e230208230709%_
                                         _%hd230209230712%_
                                         _%tl230210230714%_
                                         _%e230211230717%_
                                         _%hd230212230720%_
                                         _%tl230213230722%_
                                         _%e230214230725%_
                                         _%hd230215230728%_
                                         _%tl230216230730%_))))
                                (_%__match236565236566%_
                                 _%e230193230669%_
                                 _%hd230194230672%_
                                 _%tl230195230674%_
                                 _%e230196230677%_
                                 _%hd230197230680%_
                                 _%tl230198230682%_
                                 _%e230199230685%_
                                 _%hd230200230688%_
                                 _%tl230201230690%_
                                 _%e230202230693%_
                                 _%hd230203230696%_
                                 _%tl230204230698%_
                                 _%e230205230701%_
                                 _%hd230206230704%_
                                 _%tl230207230706%_
                                 _%e230208230709%_
                                 _%hd230209230712%_
                                 _%tl230210230714%_
                                 _%e230211230717%_
                                 _%hd230212230720%_
                                 _%tl230213230722%_
                                 _%e230214230725%_
                                 _%hd230215230728%_
                                 _%tl230216230730%_))
                            (_%__match236565236566%_
                             _%e230193230669%_
                             _%hd230194230672%_
                             _%tl230195230674%_
                             _%e230196230677%_
                             _%hd230197230680%_
                             _%tl230198230682%_
                             _%e230199230685%_
                             _%hd230200230688%_
                             _%tl230201230690%_
                             _%e230202230693%_
                             _%hd230203230696%_
                             _%tl230204230698%_
                             _%e230205230701%_
                             _%hd230206230704%_
                             _%tl230207230706%_
                             _%e230208230709%_
                             _%hd230209230712%_
                             _%tl230210230714%_
                             _%e230211230717%_
                             _%hd230212230720%_
                             _%tl230213230722%_
                             _%e230214230725%_
                             _%hd230215230728%_
                             _%tl230216230730%_))))
                     (_%__match236283236284%_
                      (lambda (_%e230142230790%_
                               _%hd230143230793%_
                               _%tl230144230795%_
                               _%e230145230798%_
                               _%hd230146230801%_
                               _%tl230147230803%_
                               _%e230148230806%_
                               _%hd230149230809%_
                               _%tl230150230811%_
                               _%e230151230814%_
                               _%hd230152230817%_
                               _%tl230153230819%_
                               _%e230154230822%_
                               _%hd230155230825%_
                               _%tl230156230827%_
                               _%e230157230830%_
                               _%hd230158230833%_
                               _%tl230159230835%_
                               _%e230160230838%_
                               _%hd230161230841%_
                               _%tl230162230843%_
                               _%e230163230846%_
                               _%hd230164230849%_
                               _%tl230165230851%_
                               _%e230166230854%_
                               _%hd230167230857%_
                               _%tl230168230859%_
                               _%e230169230862%_
                               _%hd230170230865%_
                               _%tl230171230867%_
                               _%e230172230870%_
                               _%hd230173230873%_
                               _%tl230174230875%_
                               _%e230175230878%_
                               _%hd230176230881%_
                               _%tl230177230883%_
                               _%e230178230886%_
                               _%hd230179230889%_
                               _%tl230180230891%_
                               _%__splice236076236077%_
                               _%target230181230894%_
                               _%tl230183230896%_)
                        (letrec ((_%loop230184230899%_
                                  (lambda (_%hd230182230902%_
                                           _%args230188230904%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230182230902%_))
                                        (let ((_%e230185230906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230182230902%_))))
                                          (let ((_%lp-tl230187230911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230185230906%_)))
                                                (_%lp-hd230186230909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230185230906%_))))
                                            (_%loop230184230899%_
                                             _%lp-tl230187230911%_
                                             (cons _%lp-hd230186230909%_
                                                   _%args230188230904%_))))
                                        (let ((_%args230189230914%_
                                               (reverse _%args230188230904%_)))
                                          (let ((_%g230137230916%_
                                                 _%args230189230914%_)
                                                (_%g230138230917%_
                                                 _%hd230179230889%_)
                                                (_%g230139230918%_
                                                 _%hd230170230865%_)
                                                (_%g230140230919%_
                                                 _%hd230161230841%_)
                                                (_%g230141230920%_
                                                 _%hd230152230817%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230141230920%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230140230919%_
                                                        'call-method))
                                                     (let ((__tmp236761
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230081%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g230139230918%_
                                                        __tmp236761)))
                                                (_%__kont236074236075%_
                                                 _%g230137230916%_
                                                 _%g230138230917%_
                                                 _%g230139230918%_
                                                 _%g230140230919%_
                                                 _%g230141230920%_)
                                                (_%__kont236086236087%_))))))))
                          (_%loop230184230899%_ _%target230181230894%_ '()))))
                     (_%__match236241236242%_
                      (lambda (_%e230142230790%_
                               _%hd230143230793%_
                               _%tl230144230795%_
                               _%e230145230798%_
                               _%hd230146230801%_
                               _%tl230147230803%_
                               _%e230148230806%_
                               _%hd230149230809%_
                               _%tl230150230811%_
                               _%e230151230814%_
                               _%hd230152230817%_
                               _%tl230153230819%_
                               _%e230154230822%_
                               _%hd230155230825%_
                               _%tl230156230827%_
                               _%e230157230830%_
                               _%hd230158230833%_
                               _%tl230159230835%_
                               _%e230160230838%_
                               _%hd230161230841%_
                               _%tl230162230843%_
                               _%e230163230846%_
                               _%hd230164230849%_
                               _%tl230165230851%_
                               _%e230166230854%_
                               _%hd230167230857%_
                               _%tl230168230859%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd230167230857%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl230168230859%_))
                                (let ((_%e230169230862%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl230168230859%_))))
                                  (let ((_%tl230171230867%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230169230862%_)))
                                        (_%hd230170230865%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230169230862%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl230171230867%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230165230851%_))
                                            (let ((_%e230172230870%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230165230851%_))))
                                              (let ((_%tl230174230875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230172230870%_)))
                                                    (_%hd230173230873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230172230870%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd230173230873%_))
                                                    (let ((_%e230175230878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd230173230873%_))))
                                                      (let ((_%tl230177230883%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230175230878%_)))
                    (_%hd230176230881%_
                     (let () (declare (not safe)) (##car _%e230175230878%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd230176230881%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd230176230881%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230177230883%_))
                            (let ((_%e230178230886%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230177230883%_))))
                              (let ((_%tl230180230891%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230178230886%_)))
                                    (_%hd230179230889%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230178230886%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl230180230891%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl230174230875%_))
                                        (let ((_%__splice236076236077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl230174230875%_
                                                  '0))))
                                          (let ((_%tl230183230896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice236076236077%_
                                                    '1)))
                                                (_%target230181230894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice236076236077%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl230183230896%_))
                                                (_%__match236283236284%_
                                                 _%e230142230790%_
                                                 _%hd230143230793%_
                                                 _%tl230144230795%_
                                                 _%e230145230798%_
                                                 _%hd230146230801%_
                                                 _%tl230147230803%_
                                                 _%e230148230806%_
                                                 _%hd230149230809%_
                                                 _%tl230150230811%_
                                                 _%e230151230814%_
                                                 _%hd230152230817%_
                                                 _%tl230153230819%_
                                                 _%e230154230822%_
                                                 _%hd230155230825%_
                                                 _%tl230156230827%_
                                                 _%e230157230830%_
                                                 _%hd230158230833%_
                                                 _%tl230159230835%_
                                                 _%e230160230838%_
                                                 _%hd230161230841%_
                                                 _%tl230162230843%_
                                                 _%e230163230846%_
                                                 _%hd230164230849%_
                                                 _%tl230165230851%_
                                                 _%e230166230854%_
                                                 _%hd230167230857%_
                                                 _%tl230168230859%_
                                                 _%e230169230862%_
                                                 _%hd230170230865%_
                                                 _%tl230171230867%_
                                                 _%e230172230870%_
                                                 _%hd230173230873%_
                                                 _%tl230174230875%_
                                                 _%e230175230878%_
                                                 _%hd230176230881%_
                                                 _%tl230177230883%_
                                                 _%e230178230886%_
                                                 _%hd230179230889%_
                                                 _%tl230180230891%_
                                                 _%__splice236076236077%_
                                                 _%target230181230894%_
                                                 _%tl230183230896%_)
                                                (_%__kont236086236087%_))))
                                        (_%__kont236086236087%_))
                                    (_%__kont236086236087%_))))
                            (_%__kont236086236087%_))
                        (_%__kont236086236087%_))
                    (_%__kont236086236087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236086236087%_))))
                                            (_%__match236565236566%_
                                             _%e230142230790%_
                                             _%hd230143230793%_
                                             _%tl230144230795%_
                                             _%e230145230798%_
                                             _%hd230146230801%_
                                             _%tl230147230803%_
                                             _%e230148230806%_
                                             _%hd230149230809%_
                                             _%tl230150230811%_
                                             _%e230151230814%_
                                             _%hd230152230817%_
                                             _%tl230153230819%_
                                             _%e230154230822%_
                                             _%hd230155230825%_
                                             _%tl230156230827%_
                                             _%e230157230830%_
                                             _%hd230158230833%_
                                             _%tl230159230835%_
                                             _%e230160230838%_
                                             _%hd230161230841%_
                                             _%tl230162230843%_
                                             _%e230163230846%_
                                             _%hd230164230849%_
                                             _%tl230165230851%_))
                                        (_%__match236565236566%_
                                         _%e230142230790%_
                                         _%hd230143230793%_
                                         _%tl230144230795%_
                                         _%e230145230798%_
                                         _%hd230146230801%_
                                         _%tl230147230803%_
                                         _%e230148230806%_
                                         _%hd230149230809%_
                                         _%tl230150230811%_
                                         _%e230151230814%_
                                         _%hd230152230817%_
                                         _%tl230153230819%_
                                         _%e230154230822%_
                                         _%hd230155230825%_
                                         _%tl230156230827%_
                                         _%e230157230830%_
                                         _%hd230158230833%_
                                         _%tl230159230835%_
                                         _%e230160230838%_
                                         _%hd230161230841%_
                                         _%tl230162230843%_
                                         _%e230163230846%_
                                         _%hd230164230849%_
                                         _%tl230165230851%_))))
                                (_%__match236565236566%_
                                 _%e230142230790%_
                                 _%hd230143230793%_
                                 _%tl230144230795%_
                                 _%e230145230798%_
                                 _%hd230146230801%_
                                 _%tl230147230803%_
                                 _%e230148230806%_
                                 _%hd230149230809%_
                                 _%tl230150230811%_
                                 _%e230151230814%_
                                 _%hd230152230817%_
                                 _%tl230153230819%_
                                 _%e230154230822%_
                                 _%hd230155230825%_
                                 _%tl230156230827%_
                                 _%e230157230830%_
                                 _%hd230158230833%_
                                 _%tl230159230835%_
                                 _%e230160230838%_
                                 _%hd230161230841%_
                                 _%tl230162230843%_
                                 _%e230163230846%_
                                 _%hd230164230849%_
                                 _%tl230165230851%_))
                            (_%__match236351236352%_
                             _%e230142230790%_
                             _%hd230143230793%_
                             _%tl230144230795%_
                             _%e230145230798%_
                             _%hd230146230801%_
                             _%tl230147230803%_
                             _%e230148230806%_
                             _%hd230149230809%_
                             _%tl230150230811%_
                             _%e230151230814%_
                             _%hd230152230817%_
                             _%tl230153230819%_
                             _%e230154230822%_
                             _%hd230155230825%_
                             _%tl230156230827%_
                             _%e230157230830%_
                             _%hd230158230833%_
                             _%tl230159230835%_
                             _%e230160230838%_
                             _%hd230161230841%_
                             _%tl230162230843%_
                             _%e230163230846%_
                             _%hd230164230849%_
                             _%tl230165230851%_
                             _%e230166230854%_
                             _%hd230167230857%_
                             _%tl230168230859%_))))
                     (_%__match236173236174%_
                      (lambda (_%e230098230980%_
                               _%hd230099230983%_
                               _%tl230100230985%_
                               _%e230101230988%_
                               _%hd230102230991%_
                               _%tl230103230993%_
                               _%e230104230996%_
                               _%hd230105230999%_
                               _%tl230106231001%_
                               _%e230107231004%_
                               _%hd230108231007%_
                               _%tl230109231009%_
                               _%e230110231012%_
                               _%hd230111231015%_
                               _%tl230112231017%_
                               _%e230113231020%_
                               _%hd230114231023%_
                               _%tl230115231025%_
                               _%e230116231028%_
                               _%hd230117231031%_
                               _%tl230118231033%_
                               _%e230119231036%_
                               _%hd230120231039%_
                               _%tl230121231041%_
                               _%e230122231044%_
                               _%hd230123231047%_
                               _%tl230124231049%_
                               _%e230125231052%_
                               _%hd230126231055%_
                               _%tl230127231057%_
                               _%__splice236072236073%_
                               _%target230128231060%_
                               _%tl230130231062%_)
                        (letrec ((_%loop230131231065%_
                                  (lambda (_%hd230129231068%_
                                           _%args230135231070%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd230129231068%_))
                                        (let ((_%e230132231072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd230129231068%_))))
                                          (let ((_%lp-tl230134231077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e230132231072%_)))
                                                (_%lp-hd230133231075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e230132231072%_))))
                                            (_%loop230131231065%_
                                             _%lp-tl230134231077%_
                                             (cons _%lp-hd230133231075%_
                                                   _%args230135231070%_))))
                                        (let ((_%args230136231080%_
                                               (reverse _%args230135231070%_)))
                                          (let ((_%g230094231082%_
                                                 _%args230136231080%_)
                                                (_%g230095231083%_
                                                 _%hd230126231055%_)
                                                (_%g230096231084%_
                                                 _%hd230117231031%_)
                                                (_%g230097231085%_
                                                 _%hd230108231007%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g230097231085%_
                                                        'call-method))
                                                     (let ((__tmp236762
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self230081%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g230096231084%_
                                                        __tmp236762)))
                                                (_%__kont236070236071%_
                                                 _%g230094231082%_
                                                 _%g230095231083%_
                                                 _%g230096231084%_
                                                 _%g230097231085%_)
                                                (_%__match236361236362%_
                                                 _%e230098230980%_
                                                 _%hd230099230983%_
                                                 _%tl230100230985%_
                                                 _%e230101230988%_
                                                 _%hd230102230991%_
                                                 _%tl230103230993%_
                                                 _%e230104230996%_
                                                 _%hd230105230999%_
                                                 _%tl230106231001%_
                                                 _%e230107231004%_
                                                 _%hd230108231007%_
                                                 _%tl230109231009%_
                                                 _%e230110231012%_
                                                 _%hd230111231015%_
                                                 _%tl230112231017%_
                                                 _%e230113231020%_
                                                 _%hd230114231023%_
                                                 _%tl230115231025%_
                                                 _%e230116231028%_
                                                 _%hd230117231031%_
                                                 _%tl230118231033%_
                                                 _%e230119231036%_
                                                 _%hd230120231039%_
                                                 _%tl230121231041%_
                                                 _%e230122231044%_
                                                 _%hd230123231047%_
                                                 _%tl230124231049%_
                                                 _%e230125231052%_
                                                 _%hd230126231055%_
                                                 _%tl230127231057%_))))))))
                          (_%loop230131231065%_ _%target230128231060%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx236068236069%_))
                    (let ((_%e230098230980%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx236068236069%_))))
                      (let ((_%tl230100230985%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230098230980%_)))
                            (_%hd230099230983%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230098230980%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230100230985%_))
                            (let ((_%e230101230988%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230100230985%_))))
                              (let ((_%tl230103230993%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230101230988%_)))
                                    (_%hd230102230991%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230101230988%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd230102230991%_))
                                    (let ((_%e230104230996%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd230102230991%_))))
                                      (let ((_%tl230106231001%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230104230996%_)))
                                            (_%hd230105230999%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230104230996%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd230105230999%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd230105230999%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl230106231001%_))
                                                    (let ((_%e230107231004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl230106231001%_))))
                                                      (let ((_%tl230109231009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230107231004%_)))
                    (_%hd230108231007%_
                     (let () (declare (not safe)) (##car _%e230107231004%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl230109231009%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230103230993%_))
                        (let ((_%e230110231012%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230103230993%_))))
                          (let ((_%tl230112231017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230110231012%_)))
                                (_%hd230111231015%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230110231012%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230111231015%_))
                                (let ((_%e230113231020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230111231015%_))))
                                  (let ((_%tl230115231025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230113231020%_)))
                                        (_%hd230114231023%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230113231020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd230114231023%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd230114231023%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230115231025%_))
                                                (let ((_%e230116231028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230115231025%_))))
                                                  (let ((_%tl230118231033%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230116231028%_)))
                                                        (_%hd230117231031%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230116231028%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230118231033%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl230112231017%_))
                                                            (let ((_%e230119231036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230112231017%_))))
                      (let ((_%tl230121231041%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230119231036%_)))
                            (_%hd230120231039%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230119231036%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd230120231039%_))
                            (let ((_%e230122231044%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd230120231039%_))))
                              (let ((_%tl230124231049%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230122231044%_)))
                                    (_%hd230123231047%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230122231044%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd230123231047%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd230123231047%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230124231049%_))
                                            (let ((_%e230125231052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230124231049%_))))
                                              (let ((_%tl230127231057%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230125231052%_)))
                                                    (_%hd230126231055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230125231052%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl230127231057%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl230121231041%_))
                                                        (let ((_%__splice236072236073%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl230121231041%_
                          '0))))
                  (let ((_%tl230130231062%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice236072236073%_ '1)))
                        (_%target230128231060%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice236072236073%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl230130231062%_))
                        (_%__match236173236174%_
                         _%e230098230980%_
                         _%hd230099230983%_
                         _%tl230100230985%_
                         _%e230101230988%_
                         _%hd230102230991%_
                         _%tl230103230993%_
                         _%e230104230996%_
                         _%hd230105230999%_
                         _%tl230106231001%_
                         _%e230107231004%_
                         _%hd230108231007%_
                         _%tl230109231009%_
                         _%e230110231012%_
                         _%hd230111231015%_
                         _%tl230112231017%_
                         _%e230113231020%_
                         _%hd230114231023%_
                         _%tl230115231025%_
                         _%e230116231028%_
                         _%hd230117231031%_
                         _%tl230118231033%_
                         _%e230119231036%_
                         _%hd230120231039%_
                         _%tl230121231041%_
                         _%e230122231044%_
                         _%hd230123231047%_
                         _%tl230124231049%_
                         _%e230125231052%_
                         _%hd230126231055%_
                         _%tl230127231057%_
                         _%__splice236072236073%_
                         _%target230128231060%_
                         _%tl230130231062%_)
                        (_%__match236361236362%_
                         _%e230098230980%_
                         _%hd230099230983%_
                         _%tl230100230985%_
                         _%e230101230988%_
                         _%hd230102230991%_
                         _%tl230103230993%_
                         _%e230104230996%_
                         _%hd230105230999%_
                         _%tl230106231001%_
                         _%e230107231004%_
                         _%hd230108231007%_
                         _%tl230109231009%_
                         _%e230110231012%_
                         _%hd230111231015%_
                         _%tl230112231017%_
                         _%e230113231020%_
                         _%hd230114231023%_
                         _%tl230115231025%_
                         _%e230116231028%_
                         _%hd230117231031%_
                         _%tl230118231033%_
                         _%e230119231036%_
                         _%hd230120231039%_
                         _%tl230121231041%_
                         _%e230122231044%_
                         _%hd230123231047%_
                         _%tl230124231049%_
                         _%e230125231052%_
                         _%hd230126231055%_
                         _%tl230127231057%_))))
                (_%__match236361236362%_
                 _%e230098230980%_
                 _%hd230099230983%_
                 _%tl230100230985%_
                 _%e230101230988%_
                 _%hd230102230991%_
                 _%tl230103230993%_
                 _%e230104230996%_
                 _%hd230105230999%_
                 _%tl230106231001%_
                 _%e230107231004%_
                 _%hd230108231007%_
                 _%tl230109231009%_
                 _%e230110231012%_
                 _%hd230111231015%_
                 _%tl230112231017%_
                 _%e230113231020%_
                 _%hd230114231023%_
                 _%tl230115231025%_
                 _%e230116231028%_
                 _%hd230117231031%_
                 _%tl230118231033%_
                 _%e230119231036%_
                 _%hd230120231039%_
                 _%tl230121231041%_
                 _%e230122231044%_
                 _%hd230123231047%_
                 _%tl230124231049%_
                 _%e230125231052%_
                 _%hd230126231055%_
                 _%tl230127231057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match236565236566%_
                                                     _%e230098230980%_
                                                     _%hd230099230983%_
                                                     _%tl230100230985%_
                                                     _%e230101230988%_
                                                     _%hd230102230991%_
                                                     _%tl230103230993%_
                                                     _%e230104230996%_
                                                     _%hd230105230999%_
                                                     _%tl230106231001%_
                                                     _%e230107231004%_
                                                     _%hd230108231007%_
                                                     _%tl230109231009%_
                                                     _%e230110231012%_
                                                     _%hd230111231015%_
                                                     _%tl230112231017%_
                                                     _%e230113231020%_
                                                     _%hd230114231023%_
                                                     _%tl230115231025%_
                                                     _%e230116231028%_
                                                     _%hd230117231031%_
                                                     _%tl230118231033%_
                                                     _%e230119231036%_
                                                     _%hd230120231039%_
                                                     _%tl230121231041%_))))
                                            (_%__match236565236566%_
                                             _%e230098230980%_
                                             _%hd230099230983%_
                                             _%tl230100230985%_
                                             _%e230101230988%_
                                             _%hd230102230991%_
                                             _%tl230103230993%_
                                             _%e230104230996%_
                                             _%hd230105230999%_
                                             _%tl230106231001%_
                                             _%e230107231004%_
                                             _%hd230108231007%_
                                             _%tl230109231009%_
                                             _%e230110231012%_
                                             _%hd230111231015%_
                                             _%tl230112231017%_
                                             _%e230113231020%_
                                             _%hd230114231023%_
                                             _%tl230115231025%_
                                             _%e230116231028%_
                                             _%hd230117231031%_
                                             _%tl230118231033%_
                                             _%e230119231036%_
                                             _%hd230120231039%_
                                             _%tl230121231041%_))
                                        (_%__match236241236242%_
                                         _%e230098230980%_
                                         _%hd230099230983%_
                                         _%tl230100230985%_
                                         _%e230101230988%_
                                         _%hd230102230991%_
                                         _%tl230103230993%_
                                         _%e230104230996%_
                                         _%hd230105230999%_
                                         _%tl230106231001%_
                                         _%e230107231004%_
                                         _%hd230108231007%_
                                         _%tl230109231009%_
                                         _%e230110231012%_
                                         _%hd230111231015%_
                                         _%tl230112231017%_
                                         _%e230113231020%_
                                         _%hd230114231023%_
                                         _%tl230115231025%_
                                         _%e230116231028%_
                                         _%hd230117231031%_
                                         _%tl230118231033%_
                                         _%e230119231036%_
                                         _%hd230120231039%_
                                         _%tl230121231041%_
                                         _%e230122231044%_
                                         _%hd230123231047%_
                                         _%tl230124231049%_))
                                    (_%__match236565236566%_
                                     _%e230098230980%_
                                     _%hd230099230983%_
                                     _%tl230100230985%_
                                     _%e230101230988%_
                                     _%hd230102230991%_
                                     _%tl230103230993%_
                                     _%e230104230996%_
                                     _%hd230105230999%_
                                     _%tl230106231001%_
                                     _%e230107231004%_
                                     _%hd230108231007%_
                                     _%tl230109231009%_
                                     _%e230110231012%_
                                     _%hd230111231015%_
                                     _%tl230112231017%_
                                     _%e230113231020%_
                                     _%hd230114231023%_
                                     _%tl230115231025%_
                                     _%e230116231028%_
                                     _%hd230117231031%_
                                     _%tl230118231033%_
                                     _%e230119231036%_
                                     _%hd230120231039%_
                                     _%tl230121231041%_))))
                            (_%__match236565236566%_
                             _%e230098230980%_
                             _%hd230099230983%_
                             _%tl230100230985%_
                             _%e230101230988%_
                             _%hd230102230991%_
                             _%tl230103230993%_
                             _%e230104230996%_
                             _%hd230105230999%_
                             _%tl230106231001%_
                             _%e230107231004%_
                             _%hd230108231007%_
                             _%tl230109231009%_
                             _%e230110231012%_
                             _%hd230111231015%_
                             _%tl230112231017%_
                             _%e230113231020%_
                             _%hd230114231023%_
                             _%tl230115231025%_
                             _%e230116231028%_
                             _%hd230117231031%_
                             _%tl230118231033%_
                             _%e230119231036%_
                             _%hd230120231039%_
                             _%tl230121231041%_))))
                    (_%__match236503236504%_
                     _%e230098230980%_
                     _%hd230099230983%_
                     _%tl230100230985%_
                     _%e230101230988%_
                     _%hd230102230991%_
                     _%tl230103230993%_
                     _%e230104230996%_
                     _%hd230105230999%_
                     _%tl230106231001%_
                     _%e230107231004%_
                     _%hd230108231007%_
                     _%tl230109231009%_
                     _%e230110231012%_
                     _%hd230111231015%_
                     _%tl230112231017%_
                     _%e230113231020%_
                     _%hd230114231023%_
                     _%tl230115231025%_
                     _%e230116231028%_
                     _%hd230117231031%_
                     _%tl230118231033%_))
                (_%__kont236086236087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont236086236087%_))
                                            (_%__kont236086236087%_))
                                        (_%__kont236086236087%_))))
                                (_%__kont236086236087%_))))
                        (_%__kont236086236087%_))
                    (_%__kont236086236087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont236086236087%_))
                                                (_%__kont236086236087%_))
                                            (_%__kont236086236087%_))))
                                    (_%__kont236086236087%_))))
                            (_%__kont236086236087%_))))
                    (_%__kont236086236087%_))))))))))
