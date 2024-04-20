(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713631270)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp177811 (list gxc#::identity::t))
            (__tmp177810 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp177811
         '()
         __tmp177810
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args176608%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args176608%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp177812
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
        (__make-promise __tmp177812)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx176600%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self176603%_
                (let ((__obj177803
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj177803))
               (__tmp177813
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176603%_ _%stx176600%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177813
           gxc#current-compile-method
           _%self176603%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp177815 (list gxc#::false::t))
            (__tmp177814 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp177815
         '()
         __tmp177814
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args176597%_
        (apply make-instance gxc#::extract-receiver::t _%$args176597%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp177816
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
        (__make-promise __tmp177816)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176589%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176592%_
                (let ((__obj177805
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj177805))
               (__tmp177817
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176592%_ _%stx176589%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177817
           gxc#current-compile-method
           _%self176592%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp177819 (list gxc#::void::t))
            (__tmp177818 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp177819
         '(receiver methods slots)
         __tmp177818
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176586%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176586%_)))
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
      (let ((__tmp177820
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
        (__make-promise __tmp177820)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176552%_
               _%receiver176547176553%_
               _%methods176548176555%_
               _%slots176549176557%_
               _%stx176559%_)
        (let* ((_%receiver176562%_
                (if (eq? _%receiver176547176553%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176547176553%_))
               (_%methods176564%_
                (if (eq? _%methods176548176555%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176548176555%_))
               (_%slots176566%_
                (if (eq? _%slots176549176557%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176549176557%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176568%_
                  (let ((__obj177807
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
                       __obj177807
                       _%receiver176562%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177807
                       _%methods176564%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177807
                       _%slots176566%_
                       '3
                       '#f
                       '#f))
                    __obj177807))
                 (__tmp177821
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176568%_ _%stx176559%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177821
             gxc#current-compile-method
             _%self176568%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176575%_ . _%args176576%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176575%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176575%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176575%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176575%_
                  'slots:
                  absent-value))
               _%args176576%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176550176582%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176550176582%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp177823 (list gxc#::basic-xform-expression::t))
            (__tmp177822 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp177823
         '(receiver klass methods slots)
         __tmp177822
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176543%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176543%_)))
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
      (let ((__tmp177824
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
        (__make-promise __tmp177824)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176505%_
               _%receiver176499176506%_
               _%klass176500176508%_
               _%methods176501176510%_
               _%slots176502176512%_
               _%stx176514%_)
        (let* ((_%receiver176517%_
                (if (eq? _%receiver176499176506%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176499176506%_))
               (_%klass176519%_
                (if (eq? _%klass176500176508%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176500176508%_))
               (_%methods176521%_
                (if (eq? _%methods176501176510%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176501176510%_))
               (_%slots176523%_
                (if (eq? _%slots176502176512%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176502176512%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176525%_
                  (let ((__obj177809
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
                       __obj177809
                       _%receiver176517%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177809
                       _%klass176519%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177809
                       _%methods176521%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177809
                       _%slots176523%_
                       '4
                       '#f
                       '#f))
                    __obj177809))
                 (__tmp177825
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176525%_ _%stx176514%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177825
             gxc#current-compile-method
             _%self176525%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176532%_ . _%args176533%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176532%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176532%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176532%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176532%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176532%_
                  'slots:
                  absent-value))
               _%args176533%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176503176539%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176503176539%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self173614%_ _%stx173615%_)
        (letrec ((_%generate-method-bind173617%_
                  (lambda (_%$klass176491%_
                           _%$method-table176492%_
                           _%id176493%_
                           _%$id176494%_)
                    (let ((_%$tmp176496%_
                           (let ((__tmp177826
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177826))))
                      (cons (cons _%$id176494%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176496%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176492%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176493%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176496%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176496%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176493%_
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
                 (_%generate-slot-bind173618%_
                  (lambda (_%$klass176485%_ _%id176486%_ _%$id176487%_)
                    (let ((_%$tmp176489%_
                           (let ((__tmp177827
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177827))))
                      (cons (cons _%$id176487%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176489%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176485%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176486%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176489%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176489%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176486%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl173619%_
                  (lambda (_%$klass176479%_
                           _%$method-table176480%_
                           _%methods-bind176481%_
                           _%slots-bind176482%_
                           _%specializer-impl176483%_)
                    (let ((__tmp177828
                           (cons '%#lambda
                                 (cons (cons _%$klass176479%_
                                             (cons _%$method-table176480%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176482%_
                                                            _%methods-bind176481%_))
                                                         (cons _%specializer-impl176483%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177828 _%stx173615%_))))
                 (_%generate-specializer-def173620%_
                  (lambda (_%id176475%_
                           _%specializer-id176476%_
                           _%specializer-impl176477%_)
                    (let ((__tmp177829
                           (cons '%#begin
                                 (cons _%stx173615%_
                                       (cons (let ((__tmp177830
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176477%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177830
                                                _%stx173615%_))
                                             (cons (let ((__tmp177831
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176475%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176476%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177831
                                                      _%stx173615%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177829 _%stx173615%_)))))
          (let* ((_%__stx176697176698%_ _%stx173615%_)
                 (_%g173623173643%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176697176698%_)))))
            (let ((_%__kont176699176700%_
                   (lambda (_%L173687%_ _%L173688%_)
                     (let ((_%method-calls173707%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs173708%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty173709%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?173711%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls173707%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs173708%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L173687%_))
                             (let* ((_%__stx176611176612%_ _%L173687%_)
                                    (_%g174099174117%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx176611176612%_)))))
                               (let ((_%__kont176613176614%_
                                      (lambda (_%L174153%_
                                               _%L174154%_
                                               _%L174155%_)
                                        (let ((_%receiver174175%_
                                               (let ((_%$e174172%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L174153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e174172%_
                                                     _%$e174172%_
                                                     _%L174155%_))))
                                          (for-each
                                           (lambda (_%g174176174178%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver174175%_
                                              _%method-calls173707%_
                                              _%slot-refs173708%_
                                              _%g174176174178%_))
                                           _%L174153%_)
                                          (if (_%no-specializer?173711%_)
                                              _%stx173615%_
                                              (let* ((_%specializer-id174187%_
                                                      (let* ((_%id174181%_
                                                              (let ((__tmp177832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173688%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp177832 '"::specialize")))
                     (_%specializer-id174184%_
                      (let ((__tmp177833
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173615%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174181%_ __tmp177833))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174184%_))
                _%specializer-id174184%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174189%_
                                                      (let ((__tmp177834
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp177834)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174191%_
                                                      (let ((__tmp177835
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp177835)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174193%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173707%_)))
                                                     (_%$methods174197%_
                                                      (map (lambda (_%id174195%_)
                                                             (let ((__tmp177836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174195%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177836)))
                   _%methods174193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174206%_
                                                      (for-each
                                                       (lambda (_%g174198174201%_
                                                                _%g174199174203%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173707%_
                                                            _%g174198174201%_
                                                            _%g174199174203%_)))
                                                       _%methods174193%_
                                                       _%$methods174197%_))
                                                     (_%methods-bind174216%_
                                                      (map (lambda (_%g174208174211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174209174213%_)
                     (_%generate-method-bind173617%_
                      _%$klass174189%_
                      _%$method-table174191%_
                      _%g174208174211%_
                      _%g174209174213%_))
                   _%methods174193%_
                   _%$methods174197%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174218%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173708%_)))
                                                     (_%$slots174222%_
                                                      (map (lambda (_%id174220%_)
                                                             (let ((__tmp177837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174220%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177837)))
                   _%slots174218%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174231%_
                                                      (for-each
                                                       (lambda (_%g174223174226%_
                                                                _%g174224174228%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173708%_
                                                            _%g174223174226%_
                                                            _%g174224174228%_)))
                                                       _%slots174218%_
                                                       _%$slots174222%_))
                                                     (_%slots-bind174240%_
                                                      (map (lambda (_%g174232174235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174233174237%_)
                     (_%generate-slot-bind173618%_
                      _%$klass174189%_
                      _%g174232174235%_
                      _%g174233174237%_))
                   _%slots174218%_
                   _%$slots174222%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body174246%_
                                                      (map (lambda (_%g174241174243%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver174175%_
                                                              _%$klass174189%_
                                                              _%method-calls173707%_
                                                              _%slot-refs173708%_
                                                              _%g174241174243%_))
                                                           _%L174153%_))
                                                     (_%specializer-impl174248%_
                                                      (let ((__tmp177838
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L174155%_ _%L174154%_)
                                 _%specializer-body174246%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp177838 _%stx173615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174250%_
                                                      (_%generate-specializer-impl173619%_
                                                       _%$klass174189%_
                                                       _%$method-table174191%_
                                                       _%methods-bind174216%_
                                                       _%slots-bind174240%_
                                                       _%specializer-impl174248%_)))
                                                (let ((__tmp177840
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173688%_)))
                                                      (__tmp177839
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174187%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp177840
                                                   '" => "
                                                   __tmp177839))
                                                (_%generate-specializer-def173620%_
                                                 _%L173688%_
                                                 _%specializer-id174187%_
                                                 _%specializer-impl174250%_))))))
                                     (_%__kont176615176616%_
                                      (lambda () _%stx173615%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx176611176612%_))
                                     (let ((_%e174104174129%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx176611176612%_))))
                                       (let ((_%tl174106174134%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e174104174129%_)))
                                             (_%hd174105174132%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e174104174129%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl174106174134%_))
                                             (let ((_%e174107174137%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl174106174134%_))))
                                               (let ((_%tl174109174142%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e174107174137%_)))
                                                     (_%hd174108174140%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e174107174137%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd174108174140%_))
                                                     (let ((_%e174110174145%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd174108174140%_))))
                                                       (let ((_%tl174112174150%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e174110174145%_)))
                     (_%hd174111174148%_
                      (let () (declare (not safe)) (##car _%e174110174145%_))))
                 (_%__kont176613176614%_
                  _%tl174109174142%_
                  _%tl174112174150%_
                  _%hd174111174148%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176615176616%_))))
                                             (_%__kont176615176616%_))))
                                     (_%__kont176615176616%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L173687%_))
                                 (let* ((_%g174257174276%_
                                         (lambda (_%g174258174273%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g174258174273%_))))
                                        (_%g174256174574%_
                                         (lambda (_%g174258174279%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g174258174279%_))
                                               (let ((_%e174260174281%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g174258174279%_))))
                                                 (let ((_%hd174261174284%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174260174281%_)))
                                                       (_%tl174262174286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174260174281%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl174262174286%_))
                                                       (let ((_g177841_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl174262174286%_ '0))))
                 (begin
                   (let ((_g177842_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g177841_)
                                (##vector-length _g177841_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g177842_ 2)))
                         (error "Context expects 2 values" _g177842_)))
                   (let ((_%target174263174289%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g177841_ 0)))
                         (_%tl174265174291%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g177841_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl174265174291%_))
                         (letrec ((_%loop174266174294%_
                                   (lambda (_%hd174264174297%_
                                            _%clause174270174299%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174264174297%_))
                                         (let ((_%e174267174302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174264174297%_))))
                                           (let ((_%lp-hd174268174305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174267174302%_)))
                                                 (_%lp-tl174269174307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174267174302%_))))
                                             (_%loop174266174294%_
                                              _%lp-tl174269174307%_
                                              (cons _%lp-hd174268174305%_
                                                    _%clause174270174299%_))))
                                         (let ((_%clause174271174310%_
                                                (reverse _%clause174270174299%_)))
                                           ((lambda (_%L174313%_)
                                              (for-each
                                               (lambda (_%clause174327%_)
                                                 (let* ((_%__stx176637176638%_
                                                         _%clause174327%_)
                                                        (_%g174330174345%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx176637176638%_)))))
                                                   (let ((_%__kont176639176640%_
                                                          (lambda (_%L174373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L174374%_
                           _%L174375%_)
                    (let ((_%receiver174394%_
                           (let ((_%$e174391%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L174373%_))))
                             (if _%$e174391%_ _%$e174391%_ _%L174375%_))))
                      (for-each
                       (lambda (_%g174395174397%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver174394%_
                          _%method-calls173707%_
                          _%slot-refs173708%_
                          _%g174395174397%_))
                       _%L174373%_))))
                 (_%__kont176641176642%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx176637176638%_))
                                                         (let ((_%e174335174357%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx176637176638%_))))
                   (let ((_%tl174337174362%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e174335174357%_)))
                         (_%hd174336174360%_
                          (let ()
                            (declare (not safe))
                            (##car _%e174335174357%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd174336174360%_))
                         (let ((_%e174338174365%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd174336174360%_))))
                           (let ((_%tl174340174370%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e174338174365%_)))
                                 (_%hd174339174368%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e174338174365%_))))
                             (_%__kont176639176640%_
                              _%tl174337174362%_
                              _%tl174340174370%_
                              _%hd174339174368%_)))
                         (_%__kont176641176642%_))))
                 (_%__kont176641176642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp177843
                                                      (lambda (_%g174402174405%_
                                                               _%g174403174407%_)
                                                        (cons _%g174402174405%_
                                                              _%g174403174407%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp177843
                                                  '()
                                                  _%L174313%_)))
                                              (if (_%no-specializer?173711%_)
                                                  _%stx173615%_
                                                  (let* ((_%specializer-id174416%_
                                                          (let* ((_%id174410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp177844
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173688%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp177844 '"::specialize")))
                         (_%specializer-id174413%_
                          (let ((__tmp177845
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173615%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174410%_
                             __tmp177845))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174413%_))
                    _%specializer-id174413%_))
                 (_%$klass174418%_
                  (let ((__tmp177846
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177846)))
                 (_%$method-table174420%_
                  (let ((__tmp177847
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177847)))
                 (_%methods174422%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173707%_)))
                 (_%$methods174426%_
                  (map (lambda (_%id174424%_)
                         (let ((__tmp177848 (gensym _%id174424%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177848)))
                       _%methods174422%_))
                 (_%_174435%_
                  (for-each
                   (lambda (_%g174427174430%_ _%g174428174432%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173707%_
                        _%g174427174430%_
                        _%g174428174432%_)))
                   _%methods174422%_
                   _%$methods174426%_))
                 (_%methods-bind174445%_
                  (map (lambda (_%g174437174440%_ _%g174438174442%_)
                         (_%generate-method-bind173617%_
                          _%$klass174418%_
                          _%$method-table174420%_
                          _%g174437174440%_
                          _%g174438174442%_))
                       _%methods174422%_
                       _%$methods174426%_))
                 (_%slots174447%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173708%_)))
                 (_%$slots174451%_
                  (map (lambda (_%id174449%_)
                         (let ((__tmp177849 (gensym _%id174449%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177849)))
                       _%slots174447%_))
                 (_%_174460%_
                  (for-each
                   (lambda (_%g174452174455%_ _%g174453174457%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173708%_
                        _%g174452174455%_
                        _%g174453174457%_)))
                   _%slots174447%_
                   _%$slots174451%_))
                 (_%slots-bind174469%_
                  (map (lambda (_%g174461174464%_ _%g174462174466%_)
                         (_%generate-slot-bind173618%_
                          _%$klass174418%_
                          _%g174461174464%_
                          _%g174462174466%_))
                       _%slots174447%_
                       _%$slots174451%_))
                 (_%specializer-clauses174567%_
                  (map (lambda (_%clause174471%_)
                         (let* ((_%__stx176657176658%_ _%clause174471%_)
                                (_%g174474174489%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx176657176658%_)))))
                           (let ((_%__kont176659176660%_
                                  (lambda (_%L174517%_ _%L174518%_ _%L174519%_)
                                    (let* ((_%receiver174548%_
                                            (let ((_%$e174545%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174517%_))))
                                              (if _%$e174545%_
                                                  _%$e174545%_
                                                  _%L174519%_)))
                                           (_%body174554%_
                                            (map (lambda (_%g174549174551%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174548%_
                                                    _%$klass174418%_
                                                    _%method-calls173707%_
                                                    _%slot-refs173708%_
                                                    _%g174549174551%_))
                                                 _%L174517%_)))
                                      (cons (cons _%L174519%_ _%L174518%_)
                                            _%body174554%_))))
                                 (_%__kont176661176662%_
                                  (lambda () _%clause174471%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx176657176658%_))
                                 (let ((_%e174479174501%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx176657176658%_))))
                                   (let ((_%tl174481174506%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174479174501%_)))
                                         (_%hd174480174504%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174479174501%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174480174504%_))
                                         (let ((_%e174482174509%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174480174504%_))))
                                           (let ((_%tl174484174514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174482174509%_)))
                                                 (_%hd174483174512%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174482174509%_))))
                                             (_%__kont176659176660%_
                                              _%tl174481174506%_
                                              _%tl174484174514%_
                                              _%hd174483174512%_)))
                                         (_%__kont176661176662%_))))
                                 (_%__kont176661176662%_)))))
                       (let ((__tmp177850
                              (lambda (_%g174559174562%_ _%g174560174564%_)
                                (cons _%g174559174562%_ _%g174560174564%_))))
                         (declare (not safe))
                         (__foldr1 __tmp177850 '() _%L174313%_))))
                 (_%specializer-impl174569%_
                  (let ((__tmp177851
                         (cons '%#case-lambda _%specializer-clauses174567%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp177851 _%stx173615%_)))
                 (_%specializer-impl174571%_
                  (_%generate-specializer-impl173619%_
                   _%$klass174418%_
                   _%$method-table174420%_
                   _%methods-bind174445%_
                   _%slots-bind174469%_
                   _%specializer-impl174569%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp177853
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173688%_)))
                                                          (__tmp177852
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174416%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp177853
                                                       '" => "
                                                       __tmp177852))
                                                    (_%generate-specializer-def173620%_
                                                     _%L173688%_
                                                     _%specializer-id174416%_
                                                     _%specializer-impl174571%_))))
                                            _%clause174271174310%_))))))
                           (_%loop174266174294%_ _%target174263174289%_ '()))
                         (_%g174257174276%_ _%g174258174279%_)))))
               (_%g174257174276%_ _%g174258174279%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174257174276%_
                                                _%g174258174279%_)))))
                                   (_%g174256174574%_ _%L173687%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L173687%_))
                                     (let* ((_%g174578174608%_
                                             (lambda (_%g174579174605%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174579174605%_))))
                                            (_%g174577175239%_
                                             (lambda (_%g174579174611%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174579174611%_))
                                                   (let ((_%e174583174613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174579174611%_))))
                                                     (let ((_%hd174584174616%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174583174613%_)))
                                                           (_%tl174585174618%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174583174613%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174585174618%_))
                                                           (let ((_%e174586174621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174585174618%_))))
                     (let ((_%hd174587174624%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174586174621%_)))
                           (_%tl174588174626%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174586174621%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174587174624%_))
                           (let ((_%e174589174629%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174587174624%_))))
                             (let ((_%hd174590174632%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174589174629%_)))
                                   (_%tl174591174634%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174589174629%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174590174632%_))
                                   (let ((_%e174592174637%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174590174632%_))))
                                     (let ((_%hd174593174640%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174592174637%_)))
                                           (_%tl174594174642%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174592174637%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174593174640%_))
                                           (let ((_%e174595174645%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174593174640%_))))
                                             (let ((_%hd174596174648%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174595174645%_)))
                                                   (_%tl174597174650%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174595174645%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174597174650%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174594174642%_))
                                                       (let ((_%e174598174653%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174594174642%_))))
                 (let ((_%hd174599174656%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174598174653%_)))
                       (_%tl174600174658%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174598174653%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174600174658%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174591174634%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174588174626%_))
                               (let ((_%e174601174661%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174588174626%_))))
                                 (let ((_%hd174602174664%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174601174661%_)))
                                       (_%tl174603174666%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174601174661%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174603174666%_))
                                       ((lambda (_%L174669%_
                                                 _%L174670%_
                                                 _%L174671%_)
                                          (let* ((_%g174695174713%_
                                                  (lambda (_%g174696174710%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174696174710%_))))
                                                 (_%g174694174769%_
                                                  (lambda (_%g174696174716%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174696174716%_))
                                                        (let ((_%e174700174718%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174696174716%_))))
                  (let ((_%hd174701174721%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174700174718%_)))
                        (_%tl174702174723%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174700174718%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174702174723%_))
                        (let ((_%e174703174726%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174702174723%_))))
                          (let ((_%hd174704174729%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174703174726%_)))
                                (_%tl174705174731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174703174726%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174704174729%_))
                                (let ((_%e174706174734%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174704174729%_))))
                                  (let ((_%hd174707174737%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174706174734%_)))
                                        (_%tl174708174739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174706174734%_))))
                                    ((lambda (_%L174742%_
                                              _%L174743%_
                                              _%L174744%_)
                                       (let ((_%receiver174763%_
                                              (let ((_%$e174760%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L174742%_))))
                                                (if _%$e174760%_
                                                    _%$e174760%_
                                                    _%L174744%_))))
                                         (for-each
                                          (lambda (_%g174764174766%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver174763%_
                                             _%method-calls173707%_
                                             _%slot-refs173708%_
                                             _%g174764174766%_))
                                          _%L174742%_)))
                                     _%tl174705174731%_
                                     _%tl174708174739%_
                                     _%hd174707174737%_)))
                                (_%g174695174713%_ _%g174696174716%_))))
                        (_%g174695174713%_ _%g174696174716%_))))
                (_%g174695174713%_ _%g174696174716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174694174769%_ _%L174670%_))
                                          (let* ((_%g174772174791%_
                                                  (lambda (_%g174773174788%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174773174788%_))))
                                                 (_%g174771174915%_
                                                  (lambda (_%g174773174794%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174773174794%_))
                                                        (let ((_%e174775174796%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174773174794%_))))
                  (let ((_%hd174776174799%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174775174796%_)))
                        (_%tl174777174801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174775174796%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174777174801%_))
                        (let ((_g177854_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl174777174801%_
                                  '0))))
                          (begin
                            (let ((_g177855_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g177854_)
                                         (##vector-length _g177854_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g177855_ 2)))
                                  (error "Context expects 2 values"
                                         _g177855_)))
                            (let ((_%target174778174804%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g177854_ 0)))
                                  (_%tl174780174806%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g177854_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl174780174806%_))
                                  (letrec ((_%loop174781174809%_
                                            (lambda (_%hd174779174812%_
                                                     _%clause174785174814%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd174779174812%_))
                                                  (let ((_%e174782174817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd174779174812%_))))
                                                    (let ((_%lp-hd174783174820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174782174817%_)))
                                                          (_%lp-tl174784174822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174782174817%_))))
                                                      (_%loop174781174809%_
                                                       _%lp-tl174784174822%_
                                                       (cons _%lp-hd174783174820%_
                                                             _%clause174785174814%_))))
                                                  (let ((_%clause174786174825%_
                                                         (reverse _%clause174785174814%_)))
                                                    ((lambda (_%L174828%_)
                                                       (for-each
                                                        (lambda (_%clause174841%_)
                                                          (let* ((_%g174843174858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g174844174855%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174844174855%_))))
                         (_%g174842174905%_
                          (lambda (_%g174844174861%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174844174861%_))
                                (let ((_%e174848174863%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174844174861%_))))
                                  (let ((_%hd174849174866%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174848174863%_)))
                                        (_%tl174850174868%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174848174863%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174849174866%_))
                                        (let ((_%e174851174871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174849174866%_))))
                                          (let ((_%hd174852174874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174851174871%_)))
                                                (_%tl174853174876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174851174871%_))))
                                            ((lambda (_%L174879%_
                                                      _%L174880%_
                                                      _%L174881%_)
                                               (let ((_%receiver174899%_
                                                      (let ((_%$e174896%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L174879%_))))
                (if _%$e174896%_ _%$e174896%_ _%L174881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g174900174902%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver174899%_
                                                     _%method-calls173707%_
                                                     _%slot-refs173708%_
                                                     _%g174900174902%_))
                                                  _%L174879%_)))
                                             _%tl174850174868%_
                                             _%tl174853174876%_
                                             _%hd174852174874%_)))
                                        (_%g174843174858%_
                                         _%g174844174861%_))))
                                (_%g174843174858%_ _%g174844174861%_)))))
                    (_%g174842174905%_ _%clause174841%_)))
                (let ((__tmp177856
                       (lambda (_%g174907174910%_ _%g174908174912%_)
                         (cons _%g174907174910%_ _%g174908174912%_))))
                  (declare (not safe))
                  (__foldr1 __tmp177856 '() _%L174828%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause174786174825%_))))))
                                    (_%loop174781174809%_
                                     _%target174778174804%_
                                     '()))
                                  (_%g174772174791%_ _%g174773174794%_)))))
                        (_%g174772174791%_ _%g174773174794%_))))
                (_%g174772174791%_ _%g174773174794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174771174915%_ _%L174669%_))
                                          (if (_%no-specializer?173711%_)
                                              _%stx173615%_
                                              (let* ((_%specializer-id174924%_
                                                      (let* ((_%id174918%_
                                                              (let ((__tmp177857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173688%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp177857 '"::specialize")))
                     (_%specializer-id174921%_
                      (let ((__tmp177858
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173615%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174918%_ __tmp177858))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174921%_))
                _%specializer-id174921%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174926%_
                                                      (let ((__tmp177859
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp177859)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174928%_
                                                      (let ((__tmp177860
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp177860)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174930%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173707%_)))
                                                     (_%$methods174934%_
                                                      (map (lambda (_%id174932%_)
                                                             (let ((__tmp177861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174932%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177861)))
                   _%methods174930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174943%_
                                                      (for-each
                                                       (lambda (_%g174935174938%_
                                                                _%g174936174940%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173707%_
                                                            _%g174935174938%_
                                                            _%g174936174940%_)))
                                                       _%methods174930%_
                                                       _%$methods174934%_))
                                                     (_%methods-bind174953%_
                                                      (map (lambda (_%g174945174948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174946174950%_)
                     (_%generate-method-bind173617%_
                      _%$klass174926%_
                      _%$method-table174928%_
                      _%g174945174948%_
                      _%g174946174950%_))
                   _%methods174930%_
                   _%$methods174934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174955%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173708%_)))
                                                     (_%$slots174959%_
                                                      (map (lambda (_%id174957%_)
                                                             (let ((__tmp177862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174957%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177862)))
                   _%slots174955%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174968%_
                                                      (for-each
                                                       (lambda (_%g174960174963%_
                                                                _%g174961174965%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173708%_
                                                            _%g174960174963%_
                                                            _%g174961174965%_)))
                                                       _%slots174955%_
                                                       _%$slots174959%_))
                                                     (_%slots-bind174977%_
                                                      (map (lambda (_%g174969174972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174970174974%_)
                     (_%generate-slot-bind173618%_
                      _%$klass174926%_
                      _%g174969174972%_
                      _%g174970174974%_))
                   _%slots174955%_
                   _%$slots174959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr175069%_
                                                      (let* ((_%g174979174997%_
                                                              (lambda (_%g174980174994%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174980174994%_))))
                     (_%g174978175066%_
                      (lambda (_%g174980175000%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174980175000%_))
                            (let ((_%e174984175002%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174980175000%_))))
                              (let ((_%hd174985175005%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174984175002%_)))
                                    (_%tl174986175007%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174984175002%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174986175007%_))
                                    (let ((_%e174987175010%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174986175007%_))))
                                      (let ((_%hd174988175013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174987175010%_)))
                                            (_%tl174989175015%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174987175010%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174988175013%_))
                                            (let ((_%e174990175018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174988175013%_))))
                                              (let ((_%hd174991175021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174990175018%_)))
                                                    (_%tl174992175023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174990175018%_))))
                                                ((lambda (_%L175026%_
                                                          _%L175027%_
                                                          _%L175028%_)
                                                   (let* ((_%receiver175057%_
                                                           (let ((_%$e175054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L175026%_))))
                     (if _%$e175054%_ _%$e175054%_ _%L175028%_)))
                  (_%body175063%_
                   (map (lambda (_%g175058175060%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver175057%_
                           _%$klass174926%_
                           _%method-calls173707%_
                           _%slot-refs173708%_
                           _%g175058175060%_))
                        _%L175026%_))
                  (__tmp177863
                   (cons '%#lambda
                         (cons (cons _%L175028%_ _%L175027%_)
                               _%body175063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177863
                                                      _%L174670%_)))
                                                 _%tl174989175015%_
                                                 _%tl174992175023%_
                                                 _%hd174991175021%_)))
                                            (_%g174979174997%_
                                             _%g174980175000%_))))
                                    (_%g174979174997%_ _%g174980175000%_))))
                            (_%g174979174997%_ _%g174980175000%_)))))
                (_%g174978175066%_ _%L174670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr175232%_
                                                      (let* ((_%g175071175090%_
                                                              (lambda (_%g175072175087%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175072175087%_))))
                     (_%g175070175229%_
                      (lambda (_%g175072175093%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175072175093%_))
                            (let ((_%e175074175095%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175072175093%_))))
                              (let ((_%hd175075175098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175074175095%_)))
                                    (_%tl175076175100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175074175095%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl175076175100%_))
                                    (let ((_g177864_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl175076175100%_
                                              '0))))
                                      (begin
                                        (let ((_g177865_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g177864_)
                                                     (##vector-length
                                                      _g177864_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g177865_ 2)))
                                              (error "Context expects 2 values"
                                                     _g177865_)))
                                        (let ((_%target175077175103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g177864_ 0)))
                                              (_%tl175079175105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g177864_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175079175105%_))
                                              (letrec ((_%loop175080175108%_
                                                        (lambda (_%hd175078175111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause175084175113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175078175111%_))
                      (let ((_%e175081175116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175078175111%_))))
                        (let ((_%lp-hd175082175119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175081175116%_)))
                              (_%lp-tl175083175121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175081175116%_))))
                          (_%loop175080175108%_
                           _%lp-tl175083175121%_
                           (cons _%lp-hd175082175119%_
                                 _%clause175084175113%_))))
                      (let ((_%clause175085175124%_
                             (reverse _%clause175084175113%_)))
                        ((lambda (_%L175127%_)
                           (let* ((_%clauses175227%_
                                   (map (lambda (_%clause175141%_)
                                          (let* ((_%__stx176677176678%_
                                                  _%clause175141%_)
                                                 (_%g175144175159%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176677176678%_)))))
                                            (let ((_%__kont176679176680%_
                                                   (lambda (_%L175187%_
                                                            _%L175188%_
                                                            _%L175189%_)
                                                     (let* ((_%receiver175208%_
                                                             (let ((_%$e175205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L175187%_))))
                       (if _%$e175205%_ _%$e175205%_ _%L175189%_)))
                    (_%body175214%_
                     (map (lambda (_%g175209175211%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver175208%_
                             _%$klass174926%_
                             _%method-calls173707%_
                             _%slot-refs173708%_
                             _%g175209175211%_))
                          _%L175187%_)))
               (cons (cons _%L175189%_ _%L175188%_) _%body175214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176681176682%_
                                                   (lambda ()
                                                     _%clause175141%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx176677176678%_))
                                                  (let ((_%e175149175171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx176677176678%_))))
                                                    (let ((_%tl175151175176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175149175171%_)))
                                                          (_%hd175150175174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175149175171%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd175150175174%_))
                                                          (let ((_%e175152175179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd175150175174%_))))
                    (let ((_%tl175154175184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e175152175179%_)))
                          (_%hd175153175182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e175152175179%_))))
                      (_%__kont176679176680%_
                       _%tl175151175176%_
                       _%tl175154175184%_
                       _%hd175153175182%_)))
                  (_%__kont176681176682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176681176682%_)))))
                                        (let ((__tmp177866
                                               (lambda (_%g175219175222%_
                                                        _%g175220175224%_)
                                                 (cons _%g175219175222%_
                                                       _%g175220175224%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp177866
                                           '()
                                           _%L175127%_))))
                                  (__tmp177867
                                   (cons '%#case-lambda _%clauses175227%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp177867 _%L174669%_)))
                         _%clause175085175124%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175080175108%_
                                                 _%target175077175103%_
                                                 '()))
                                              (_%g175071175090%_
                                               _%g175072175093%_)))))
                                    (_%g175071175090%_ _%g175072175093%_))))
                            (_%g175071175090%_ _%g175072175093%_)))))
                (_%g175070175229%_ _%L174669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175234%_
                                                      (let ((__tmp177868
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L174671%_ '())
                                             (cons _%specializer-lambda-expr175069%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr175232%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp177868 _%stx173615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175236%_
                                                      (_%generate-specializer-impl173619%_
                                                       _%$klass174926%_
                                                       _%$method-table174928%_
                                                       _%methods-bind174953%_
                                                       _%slots-bind174977%_
                                                       _%specializer-impl175234%_)))
                                                (let ((__tmp177870
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173688%_)))
                                                      (__tmp177869
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174924%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp177870
                                                   '" => "
                                                   __tmp177869))
                                                (_%generate-specializer-def173620%_
                                                 _%L173688%_
                                                 _%specializer-id174924%_
                                                 _%specializer-impl175236%_))))
                                        _%hd174602174664%_
                                        _%hd174599174656%_
                                        _%hd174596174648%_)
                                       (_%g174578174608%_ _%g174579174611%_))))
                               (_%g174578174608%_ _%g174579174611%_))
                           (_%g174578174608%_ _%g174579174611%_))
                       (_%g174578174608%_ _%g174579174611%_))))
               (_%g174578174608%_ _%g174579174611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174578174608%_
                                                    _%g174579174611%_))))
                                           (_%g174578174608%_
                                            _%g174579174611%_))))
                                   (_%g174578174608%_ _%g174579174611%_))))
                           (_%g174578174608%_ _%g174579174611%_))))
                   (_%g174578174608%_ _%g174579174611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174578174608%_
                                                    _%g174579174611%_)))))
                                       (_%g174577175239%_ _%L173687%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L173687%_))
                                         (let* ((_%g175243175296%_
                                                 (lambda (_%g175244175293%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175244175293%_))))
                                                (_%g175242176467%_
                                                 (lambda (_%g175244175299%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175244175299%_))
                                                       (let ((_%e175250175301%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175244175299%_))))
                 (let ((_%hd175251175304%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175250175301%_)))
                       (_%tl175252175306%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175250175301%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd175251175304%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd175251175304%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175252175306%_))
                               (let ((_%e175253175309%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175252175306%_))))
                                 (let ((_%hd175254175312%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175253175309%_)))
                                       (_%tl175255175314%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175253175309%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175254175312%_))
                                       (let ((_%e175256175317%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175254175312%_))))
                                         (let ((_%hd175257175320%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175256175317%_)))
                                               (_%tl175258175322%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175256175317%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175257175320%_))
                                               (let ((_%e175259175325%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175257175320%_))))
                                                 (let ((_%hd175260175328%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175259175325%_)))
                                                       (_%tl175261175330%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175259175325%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd175260175328%_))
                                                       (let ((_%e175262175333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd175260175328%_))))
                 (let ((_%hd175263175336%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175262175333%_)))
                       (_%tl175264175338%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175262175333%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175264175338%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl175261175330%_))
                           (let ((_%e175265175341%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl175261175330%_))))
                             (let ((_%hd175266175344%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175265175341%_)))
                                   (_%tl175267175346%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175265175341%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175266175344%_))
                                   (let ((_%e175268175349%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175266175344%_))))
                                     (let ((_%hd175269175352%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175268175349%_)))
                                           (_%tl175270175354%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175268175349%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd175269175352%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd175269175352%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl175270175354%_))
                                                   (let ((_%e175271175357%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl175270175354%_))))
                                                     (let ((_%hd175272175360%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175271175357%_)))
                                                           (_%tl175273175362%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175271175357%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd175272175360%_))
                                                           (let ((_%e175274175365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd175272175360%_))))
                     (let ((_%hd175275175368%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175274175365%_)))
                           (_%tl175276175370%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175274175365%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175275175368%_))
                           (let ((_%e175277175373%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175275175368%_))))
                             (let ((_%hd175278175376%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175277175373%_)))
                                   (_%tl175279175378%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175277175373%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175278175376%_))
                                   (let ((_%e175280175381%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175278175376%_))))
                                     (let ((_%hd175281175384%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175280175381%_)))
                                           (_%tl175282175386%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175280175381%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175282175386%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl175279175378%_))
                                               (let ((_%e175283175389%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl175279175378%_))))
                                                 (let ((_%hd175284175392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175283175389%_)))
                                                       (_%tl175285175394%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175283175389%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175285175394%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl175276175370%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl175273175362%_))
                       (let ((_%e175286175397%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175273175362%_))))
                         (let ((_%hd175287175400%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175286175397%_)))
                               (_%tl175288175402%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175286175397%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175288175402%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl175267175346%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175258175322%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl175255175314%_))
                                           (let ((_%e175289175405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl175255175314%_))))
                                             (let ((_%hd175290175408%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175289175405%_)))
                                                   (_%tl175291175410%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175289175405%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175291175410%_))
                                                   ((lambda (_%L175413%_
                                                             _%L175414%_
                                                             _%L175415%_
                                                             _%L175416%_
                                                             _%L175417%_)
                                                      (let* ((_%g175457175519%_
                                                              (lambda (_%g175458175516%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175458175516%_))))
                     (_%g175456176464%_
                      (lambda (_%g175458175522%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175458175522%_))
                            (let ((_%e175464175524%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175458175522%_))))
                              (let ((_%hd175465175527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175464175524%_)))
                                    (_%tl175466175529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175464175524%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175465175527%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175465175527%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175466175529%_))
                                            (let ((_%e175467175532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175466175529%_))))
                                              (let ((_%hd175468175535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175467175532%_)))
                                                    (_%tl175469175537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175467175532%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175469175537%_))
                                                    (let ((_%e175470175540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175469175537%_))))
                                                      (let ((_%hd175471175543%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175470175540%_)))
                    (_%tl175472175545%_
                     (let () (declare (not safe)) (##cdr _%e175470175540%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175471175543%_))
                    (let ((_%e175473175548%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175471175543%_))))
                      (let ((_%hd175474175551%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175473175548%_)))
                            (_%tl175475175553%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175473175548%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175474175551%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175474175551%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175475175553%_))
                                    (let ((_%e175476175556%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175475175553%_))))
                                      (let ((_%hd175477175559%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175476175556%_)))
                                            (_%tl175478175561%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175476175556%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175477175559%_))
                                            (let ((_%e175479175564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175477175559%_))))
                                              (let ((_%hd175480175567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175479175564%_)))
                                                    (_%tl175481175569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175479175564%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175480175567%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175480175567%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175481175569%_))
                                                            (let ((_%e175482175572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175481175569%_))))
                      (let ((_%hd175483175575%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175482175572%_)))
                            (_%tl175484175577%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175482175572%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175484175577%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175478175561%_))
                                (let ((_%e175485175580%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175478175561%_))))
                                  (let ((_%hd175486175583%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175485175580%_)))
                                        (_%tl175487175585%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175485175580%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175486175583%_))
                                        (let ((_%e175488175588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175486175583%_))))
                                          (let ((_%hd175489175591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175488175588%_)))
                                                (_%tl175490175593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175488175588%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175489175591%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175489175591%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175490175593%_))
                                                        (let ((_%e175491175596%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175490175593%_))))
                  (let ((_%hd175492175599%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175491175596%_)))
                        (_%tl175493175601%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175491175596%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175493175601%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175487175585%_))
                            (let ((_%e175494175604%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175487175585%_))))
                              (let ((_%hd175495175607%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175494175604%_)))
                                    (_%tl175496175609%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175494175604%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175495175607%_))
                                    (let ((_%e175497175612%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175495175607%_))))
                                      (let ((_%hd175498175615%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175497175612%_)))
                                            (_%tl175499175617%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175497175612%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175498175615%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175498175615%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175499175617%_))
                                                    (let ((_%e175500175620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175499175617%_))))
                                                      (let ((_%hd175501175623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175500175620%_)))
                    (_%tl175502175625%_
                     (let () (declare (not safe)) (##cdr _%e175500175620%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175502175625%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175496175609%_))
                        (if (let ((__tmp177871
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175496175609%_))))
                              (declare (not safe))
                              (##fx>= __tmp177871 '1))
                            (let ((_g177872_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175496175609%_
                                      '1))))
                              (begin
                                (let ((_g177873_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g177872_)
                                             (##vector-length _g177872_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g177873_ 2)))
                                      (error "Context expects 2 values"
                                             _g177873_)))
                                (let ((_%target175503175628%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177872_ 0)))
                                      (_%tl175505175630%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177872_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175505175630%_))
                                      (let ((_%e175512175633%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175505175630%_))))
                                        (let ((_%hd175513175636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175512175633%_)))
                                              (_%tl175514175638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175512175633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175514175638%_))
                                              (letrec ((_%loop175506175641%_
                                                        (lambda (_%hd175504175644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175510175646%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175504175644%_))
                      (let ((_%e175507175649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175504175644%_))))
                        (let ((_%lp-hd175508175652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175507175649%_)))
                              (_%lp-tl175509175654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175507175649%_))))
                          (_%loop175506175641%_
                           _%lp-tl175509175654%_
                           (cons _%lp-hd175508175652%_
                                 _%kw-ref175510175646%_))))
                      (let ((_%kw-ref175511175657%_
                             (reverse _%kw-ref175510175646%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175472175545%_))
                            ((lambda (_%L175660%_
                                      _%L175661%_
                                      _%L175662%_
                                      _%L175663%_
                                      _%L175664%_)
                               (let* ((_%kw-count175715%_
                                       (length (let ((__tmp177874
                                                      (lambda (_%g175707175710%_
                                                               _%g175708175712%_)
                                                        (cons _%g175707175710%_
                                                              _%g175708175712%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp177874
                                                  '()
                                                  _%L175661%_))))
                                      (_%self-index175717%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count175715%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L175415%_))
                                     (let* ((_%g175721175735%_
                                             (lambda (_%g175722175732%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175722175732%_))))
                                            (_%g175720175858%_
                                             (lambda (_%g175722175738%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175722175738%_))
                                                   (let ((_%e175725175740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175722175738%_))))
                                                     (let ((_%hd175726175743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175725175740%_)))
                                                           (_%tl175727175745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175725175740%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175727175745%_))
                                                           (let ((_%e175728175748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175727175745%_))))
                     (let ((_%hd175729175751%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175728175748%_)))
                           (_%tl175730175753%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175728175748%_))))
                       ((lambda (_%L175756%_ _%L175757%_)
                          (let* ((_%self175774%_
                                  (list-ref _%L175757%_ _%self-index175717%_))
                                 (_%receiver175779%_
                                  (let ((_%$e175776%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L175756%_))))
                                    (if _%$e175776%_
                                        _%$e175776%_
                                        _%self175774%_))))
                            (for-each
                             (lambda (_%g175781175783%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver175779%_
                                _%method-calls173707%_
                                _%slot-refs173708%_
                                _%g175781175783%_))
                             _%L175756%_)
                            (if (_%no-specializer?173711%_)
                                _%stx173615%_
                                (let* ((_%specializer-id175792%_
                                        (let* ((_%id175786%_
                                                (let ((__tmp177875
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173688%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp177875
                                                   '"::specialize")))
                                               (_%specializer-id175789%_
                                                (let ((__tmp177876
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx173615%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id175786%_
                                                   __tmp177876))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id175789%_))
                                          _%specializer-id175789%_))
                                       (_%$klass175794%_
                                        (let ((__tmp177877
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp177877)))
                                       (_%$method-table175796%_
                                        (let ((__tmp177878
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp177878)))
                                       (_%methods175798%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls173707%_)))
                                       (_%$methods175802%_
                                        (map (lambda (_%id175800%_)
                                               (let ((__tmp177879
                                                      (gensym _%id175800%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp177879)))
                                             _%methods175798%_))
                                       (_%_175811%_
                                        (for-each
                                         (lambda (_%g175803175806%_
                                                  _%g175804175808%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls173707%_
                                              _%g175803175806%_
                                              _%g175804175808%_)))
                                         _%methods175798%_
                                         _%$methods175802%_))
                                       (_%methods-bind175821%_
                                        (map (lambda (_%g175813175816%_
                                                      _%g175814175818%_)
                                               (_%generate-method-bind173617%_
                                                _%$klass175794%_
                                                _%$method-table175796%_
                                                _%g175813175816%_
                                                _%g175814175818%_))
                                             _%methods175798%_
                                             _%$methods175802%_))
                                       (_%slots175823%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs173708%_)))
                                       (_%$slots175827%_
                                        (map (lambda (_%id175825%_)
                                               (let ((__tmp177880
                                                      (gensym _%id175825%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp177880)))
                                             _%slots175823%_))
                                       (_%_175836%_
                                        (for-each
                                         (lambda (_%g175828175831%_
                                                  _%g175829175833%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs173708%_
                                              _%g175828175831%_
                                              _%g175829175833%_)))
                                         _%slots175823%_
                                         _%$slots175827%_))
                                       (_%slots-bind175845%_
                                        (map (lambda (_%g175837175840%_
                                                      _%g175838175842%_)
                                               (_%generate-slot-bind173618%_
                                                _%$klass175794%_
                                                _%g175837175840%_
                                                _%g175838175842%_))
                                             _%slots175823%_
                                             _%$slots175827%_))
                                       (_%specializer-impl175853%_
                                        (let* ((_%specializer-body175851%_
                                                (map (lambda (_%g175846175848%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver175779%_
                                                        _%$klass175794%_
                                                        _%method-calls173707%_
                                                        _%slot-refs173708%_
                                                        _%g175846175848%_))
                                                     _%L175756%_))
                                               (__tmp177881
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L175417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L175416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp177882
                                   (cons '%#lambda
                                         (cons _%L175757%_
                                               _%specializer-body175851%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp177882 _%L175415%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L175414%_ '())))
                                      '()))
                          '())
                    (cons _%L175413%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp177881
                                           _%stx173615%_)))
                                       (_%specializer-impl175855%_
                                        (_%generate-specializer-impl173619%_
                                         _%$klass175794%_
                                         _%$method-table175796%_
                                         _%methods-bind175821%_
                                         _%slots-bind175845%_
                                         _%specializer-impl175853%_)))
                                  (let ((__tmp177884
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L173688%_)))
                                        (__tmp177883
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id175792%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp177884
                                     '" => "
                                     __tmp177883))
                                  (_%generate-specializer-def173620%_
                                   _%L173688%_
                                   _%specializer-id175792%_
                                   _%specializer-impl175855%_)))))
                        _%tl175730175753%_
                        _%hd175729175751%_)))
                   (_%g175721175735%_ _%g175722175738%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175721175735%_
                                                    _%g175722175738%_)))))
                                       (_%g175720175858%_ _%L175415%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L175415%_))
                                         (let* ((_%g175862175892%_
                                                 (lambda (_%g175863175889%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175863175889%_))))
                                                (_%g175861176460%_
                                                 (lambda (_%g175863175895%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175863175895%_))
                                                       (let ((_%e175867175897%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175863175895%_))))
                 (let ((_%hd175868175900%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175867175897%_)))
                       (_%tl175869175902%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175867175897%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl175869175902%_))
                       (let ((_%e175870175905%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175869175902%_))))
                         (let ((_%hd175871175908%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175870175905%_)))
                               (_%tl175872175910%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175870175905%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd175871175908%_))
                               (let ((_%e175873175913%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd175871175908%_))))
                                 (let ((_%hd175874175916%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175873175913%_)))
                                       (_%tl175875175918%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175873175913%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175874175916%_))
                                       (let ((_%e175876175921%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175874175916%_))))
                                         (let ((_%hd175877175924%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175876175921%_)))
                                               (_%tl175878175926%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175876175921%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175877175924%_))
                                               (let ((_%e175879175929%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175877175924%_))))
                                                 (let ((_%hd175880175932%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175879175929%_)))
                                                       (_%tl175881175934%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175879175929%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175881175934%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175878175926%_))
                                                           (let ((_%e175882175937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175878175926%_))))
                     (let ((_%hd175883175940%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175882175937%_)))
                           (_%tl175884175942%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175882175937%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl175884175942%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175875175918%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl175872175910%_))
                                   (let ((_%e175885175945%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl175872175910%_))))
                                     (let ((_%hd175886175948%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175885175945%_)))
                                           (_%tl175887175950%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175885175945%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175887175950%_))
                                           ((lambda (_%L175953%_
                                                     _%L175954%_
                                                     _%L175955%_)
                                              (let* ((_%g175979175993%_
                                                      (lambda (_%g175980175990%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175980175990%_))))
                                                     (_%g175978176040%_
                                                      (lambda (_%g175980175996%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175980175996%_))
                                                            (let ((_%e175983175998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175980175996%_))))
                      (let ((_%hd175984176001%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175983175998%_)))
                            (_%tl175985176003%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175983175998%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175985176003%_))
                            (let ((_%e175986176006%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175985176003%_))))
                              (let ((_%hd175987176009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175986176006%_)))
                                    (_%tl175988176011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175986176006%_))))
                                ((lambda (_%L176014%_ _%L176015%_)
                                   (let* ((_%self176028%_
                                           (list-ref
                                            _%L176015%_
                                            _%self-index175717%_))
                                          (_%receiver176033%_
                                           (let ((_%$e176030%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L176014%_))))
                                             (if _%$e176030%_
                                                 _%$e176030%_
                                                 _%self176028%_))))
                                     (for-each
                                      (lambda (_%g176035176037%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver176033%_
                                         _%method-calls173707%_
                                         _%slot-refs173708%_
                                         _%g176035176037%_))
                                      _%L176014%_)))
                                 _%tl175988176011%_
                                 _%hd175987176009%_)))
                            (_%g175979175993%_ _%g175980175996%_))))
                    (_%g175979175993%_ _%g175980175996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175978176040%_
                                                 _%L175954%_))
                                              (let* ((_%g176043176062%_
                                                      (lambda (_%g176044176059%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176044176059%_))))
                                                     (_%g176042176173%_
                                                      (lambda (_%g176044176065%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176044176065%_))
                                                            (let ((_%e176046176067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176044176065%_))))
                      (let ((_%hd176047176070%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176046176067%_)))
                            (_%tl176048176072%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176046176067%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl176048176072%_))
                            (let ((_g177885_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176048176072%_
                                      '0))))
                              (begin
                                (let ((_g177886_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g177885_)
                                             (##vector-length _g177885_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g177886_ 2)))
                                      (error "Context expects 2 values"
                                             _g177886_)))
                                (let ((_%target176049176075%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177885_ 0)))
                                      (_%tl176051176077%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g177885_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176051176077%_))
                                      (letrec ((_%loop176052176080%_
                                                (lambda (_%hd176050176083%_
                                                         _%clause176056176085%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd176050176083%_))
                                                      (let ((_%e176053176088%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd176050176083%_))))
                (let ((_%lp-hd176054176091%_
                       (let () (declare (not safe)) (##car _%e176053176088%_)))
                      (_%lp-tl176055176093%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e176053176088%_))))
                  (_%loop176052176080%_
                   _%lp-tl176055176093%_
                   (cons _%lp-hd176054176091%_ _%clause176056176085%_))))
              (let ((_%clause176057176096%_ (reverse _%clause176056176085%_)))
                ((lambda (_%L176099%_)
                   (for-each
                    (lambda (_%clause176112%_)
                      (let* ((_%g176114176125%_
                              (lambda (_%g176115176122%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g176115176122%_))))
                             (_%g176113176163%_
                              (lambda (_%g176115176128%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g176115176128%_))
                                    (let ((_%e176118176130%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g176115176128%_))))
                                      (let ((_%hd176119176133%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176118176130%_)))
                                            (_%tl176120176135%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176118176130%_))))
                                        ((lambda (_%L176138%_ _%L176139%_)
                                           (let* ((_%self176151%_
                                                   (list-ref
                                                    _%L176139%_
                                                    _%self-index175717%_))
                                                  (_%receiver176156%_
                                                   (let ((_%$e176153%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L176138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e176153%_
                                                         _%$e176153%_
                                                         _%self176151%_))))
                                             (for-each
                                              (lambda (_%g176158176160%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver176156%_
                                                 _%method-calls173707%_
                                                 _%slot-refs173708%_
                                                 _%g176158176160%_))
                                              _%L176138%_)))
                                         _%tl176120176135%_
                                         _%hd176119176133%_)))
                                    (_%g176114176125%_ _%g176115176128%_)))))
                        (_%g176113176163%_ _%clause176112%_)))
                    (let ((__tmp177887
                           (lambda (_%g176165176168%_ _%g176166176170%_)
                             (cons _%g176165176168%_ _%g176166176170%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177887 '() _%L176099%_))))
                 _%clause176057176096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop176052176080%_
                                         _%target176049176075%_
                                         '()))
                                      (_%g176043176062%_ _%g176044176065%_)))))
                            (_%g176043176062%_ _%g176044176065%_))))
                    (_%g176043176062%_ _%g176044176065%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176042176173%_
                                                 _%L175953%_))
                                              (if (_%no-specializer?173711%_)
                                                  _%stx173615%_
                                                  (let* ((_%specializer-id176182%_
                                                          (let* ((_%id176176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp177888
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173688%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp177888 '"::specialize")))
                         (_%specializer-id176179%_
                          (let ((__tmp177889
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173615%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id176176%_
                             __tmp177889))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id176179%_))
                    _%specializer-id176179%_))
                 (_%$klass176184%_
                  (let ((__tmp177890
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177890)))
                 (_%$method-table176186%_
                  (let ((__tmp177891
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp177891)))
                 (_%methods176188%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173707%_)))
                 (_%$methods176192%_
                  (map (lambda (_%id176190%_)
                         (let ((__tmp177892 (gensym _%id176190%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177892)))
                       _%methods176188%_))
                 (_%_176201%_
                  (for-each
                   (lambda (_%g176193176196%_ _%g176194176198%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173707%_
                        _%g176193176196%_
                        _%g176194176198%_)))
                   _%methods176188%_
                   _%$methods176192%_))
                 (_%methods-bind176211%_
                  (map (lambda (_%g176203176206%_ _%g176204176208%_)
                         (_%generate-method-bind173617%_
                          _%$klass176184%_
                          _%$method-table176186%_
                          _%g176203176206%_
                          _%g176204176208%_))
                       _%methods176188%_
                       _%$methods176192%_))
                 (_%slots176213%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173708%_)))
                 (_%$slots176217%_
                  (map (lambda (_%id176215%_)
                         (let ((__tmp177893 (gensym _%id176215%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp177893)))
                       _%slots176213%_))
                 (_%_176226%_
                  (for-each
                   (lambda (_%g176218176221%_ _%g176219176223%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173708%_
                        _%g176218176221%_
                        _%g176219176223%_)))
                   _%slots176213%_
                   _%$slots176217%_))
                 (_%slots-bind176235%_
                  (map (lambda (_%g176227176230%_ _%g176228176232%_)
                         (_%generate-slot-bind173618%_
                          _%$klass176184%_
                          _%g176227176230%_
                          _%g176228176232%_))
                       _%slots176213%_
                       _%$slots176217%_))
                 (_%specializer-lambda-expr176313%_
                  (let* ((_%g176237176251%_
                          (lambda (_%g176238176248%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176238176248%_))))
                         (_%g176236176310%_
                          (lambda (_%g176238176254%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176238176254%_))
                                (let ((_%e176241176256%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176238176254%_))))
                                  (let ((_%hd176242176259%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176241176256%_)))
                                        (_%tl176243176261%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176241176256%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176243176261%_))
                                        (let ((_%e176244176264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176243176261%_))))
                                          (let ((_%hd176245176267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176244176264%_)))
                                                (_%tl176246176269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176244176264%_))))
                                            ((lambda (_%L176272%_ _%L176273%_)
                                               (let* ((_%self176296%_
                                                       (list-ref
                                                        _%L176273%_
                                                        _%self-index175717%_))
                                                      (_%receiver176301%_
                                                       (let ((_%$e176298%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L176272%_))))
                 (if _%$e176298%_ _%$e176298%_ _%self176296%_)))
              (_%body176307%_
               (map (lambda (_%g176302176304%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver176301%_
                       _%$klass176184%_
                       _%method-calls173707%_
                       _%slot-refs173708%_
                       _%g176302176304%_))
                    _%L176272%_))
              (__tmp177894 (cons '%#lambda (cons _%L176273%_ _%body176307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp177894
                                                  _%L175954%_)))
                                             _%tl176246176269%_
                                             _%hd176245176267%_)))
                                        (_%g176237176251%_
                                         _%g176238176254%_))))
                                (_%g176237176251%_ _%g176238176254%_)))))
                    (_%g176236176310%_ _%L175954%_)))
                 (_%specializer-case-lambda-expr176453%_
                  (let* ((_%g176315176334%_
                          (lambda (_%g176316176331%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176316176331%_))))
                         (_%g176314176450%_
                          (lambda (_%g176316176337%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176316176337%_))
                                (let ((_%e176318176339%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176316176337%_))))
                                  (let ((_%hd176319176342%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176318176339%_)))
                                        (_%tl176320176344%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176318176339%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176320176344%_))
                                        (let ((_g177895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl176320176344%_
                                                  '0))))
                                          (begin
                                            (let ((_g177896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g177895_)
                                                         (##vector-length
                                                          _g177895_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g177896_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g177896_)))
                                            (let ((_%target176321176347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g177895_
                                                      0)))
                                                  (_%tl176323176349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g177895_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl176323176349%_))
                                                  (letrec ((_%loop176324176352%_
                                                            (lambda (_%hd176322176355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause176328176357%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd176322176355%_))
                          (let ((_%e176325176360%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd176322176355%_))))
                            (let ((_%lp-hd176326176363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e176325176360%_)))
                                  (_%lp-tl176327176365%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e176325176360%_))))
                              (_%loop176324176352%_
                               _%lp-tl176327176365%_
                               (cons _%lp-hd176326176363%_
                                     _%clause176328176357%_))))
                          (let ((_%clause176329176368%_
                                 (reverse _%clause176328176357%_)))
                            ((lambda (_%L176371%_)
                               (let* ((_%clauses176448%_
                                       (map (lambda (_%clause176385%_)
                                              (let* ((_%g176387176398%_
                                                      (lambda (_%g176388176395%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176388176395%_))))
                                                     (_%g176386176438%_
                                                      (lambda (_%g176388176401%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176388176401%_))
                                                            (let ((_%e176391176403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176388176401%_))))
                      (let ((_%hd176392176406%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176391176403%_)))
                            (_%tl176393176408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176391176403%_))))
                        ((lambda (_%L176411%_ _%L176412%_)
                           (let* ((_%self176424%_
                                   (list-ref _%L176412%_ _%self-index175717%_))
                                  (_%receiver176429%_
                                   (let ((_%$e176426%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L176411%_))))
                                     (if _%$e176426%_
                                         _%$e176426%_
                                         _%self176424%_)))
                                  (_%body176435%_
                                   (map (lambda (_%g176430176432%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver176429%_
                                           _%$klass176184%_
                                           _%method-calls173707%_
                                           _%slot-refs173708%_
                                           _%g176430176432%_))
                                        _%L176411%_)))
                             (cons _%L176412%_ _%body176435%_)))
                         _%tl176393176408%_
                         _%hd176392176406%_)))
                    (_%g176387176398%_ _%g176388176401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176386176438%_
                                                 _%clause176385%_)))
                                            (let ((__tmp177897
                                                   (lambda (_%g176440176443%_
                                                            _%g176441176445%_)
                                                     (cons _%g176440176443%_
                                                           _%g176441176445%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp177897
                                               '()
                                               _%L176371%_))))
                                      (__tmp177898
                                       (cons '%#case-lambda
                                             _%clauses176448%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp177898
                                  _%L175953%_)))
                             _%clause176329176368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop176324176352%_
                                                     _%target176321176347%_
                                                     '()))
                                                  (_%g176315176334%_
                                                   _%g176316176337%_)))))
                                        (_%g176315176334%_
                                         _%g176316176337%_))))
                                (_%g176315176334%_ _%g176316176337%_)))))
                    (_%g176314176450%_ _%L175953%_)))
                 (_%specializer-impl176455%_
                  (let ((__tmp177899
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L175417%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L175416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp177900
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L175955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr176313%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176453%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177900
                                                _%stx173615%_))
                                             '()))
                                 '())
                           (cons _%L175414%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L175413%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp177899 _%stx173615%_)))
                 (_%specializer-impl176457%_
                  (_%generate-specializer-impl173619%_
                   _%$klass176184%_
                   _%$method-table176186%_
                   _%methods-bind176211%_
                   _%slots-bind176235%_
                   _%specializer-impl176455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp177902
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173688%_)))
                                                          (__tmp177901
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id176182%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp177902
                                                       '" => "
                                                       __tmp177901))
                                                    (_%generate-specializer-def173620%_
                                                     _%L173688%_
                                                     _%specializer-id176182%_
                                                     _%specializer-impl176457%_))))
                                            _%hd175886175948%_
                                            _%hd175883175940%_
                                            _%hd175880175932%_)
                                           (_%g175862175892%_
                                            _%g175863175895%_))))
                                   (_%g175862175892%_ _%g175863175895%_))
                               (_%g175862175892%_ _%g175863175895%_))
                           (_%g175862175892%_ _%g175863175895%_))))
                   (_%g175862175892%_ _%g175863175895%_))
               (_%g175862175892%_ _%g175863175895%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175862175892%_
                                                _%g175863175895%_))))
                                       (_%g175862175892%_ _%g175863175895%_))))
                               (_%g175862175892%_ _%g175863175895%_))))
                       (_%g175862175892%_ _%g175863175895%_))))
               (_%g175862175892%_ _%g175863175895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175861176460%_ _%L175415%_))
                                         _%stx173615%_))))
                             _%hd175513175636%_
                             _%kw-ref175511175657%_
                             _%hd175501175623%_
                             _%hd175492175599%_
                             _%hd175483175575%_)
                            (_%g175457175519%_ _%g175458175522%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175506175641%_
                                                 _%target175503175628%_
                                                 '()))
                                              (_%g175457175519%_
                                               _%g175458175522%_))))
                                      (_%g175457175519%_ _%g175458175522%_)))))
                            (_%g175457175519%_ _%g175458175522%_))
                        (_%g175457175519%_ _%g175458175522%_))
                    (_%g175457175519%_ _%g175458175522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175457175519%_
                                                     _%g175458175522%_))
                                                (_%g175457175519%_
                                                 _%g175458175522%_))
                                            (_%g175457175519%_
                                             _%g175458175522%_))))
                                    (_%g175457175519%_ _%g175458175522%_))))
                            (_%g175457175519%_ _%g175458175522%_))
                        (_%g175457175519%_ _%g175458175522%_))))
                (_%g175457175519%_ _%g175458175522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175457175519%_
                                                     _%g175458175522%_))
                                                (_%g175457175519%_
                                                 _%g175458175522%_))))
                                        (_%g175457175519%_
                                         _%g175458175522%_))))
                                (_%g175457175519%_ _%g175458175522%_))
                            (_%g175457175519%_ _%g175458175522%_))))
                    (_%g175457175519%_ _%g175458175522%_))
                (_%g175457175519%_ _%g175458175522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175457175519%_
                                                     _%g175458175522%_))))
                                            (_%g175457175519%_
                                             _%g175458175522%_))))
                                    (_%g175457175519%_ _%g175458175522%_))
                                (_%g175457175519%_ _%g175458175522%_))
                            (_%g175457175519%_ _%g175458175522%_))))
                    (_%g175457175519%_ _%g175458175522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175457175519%_
                                                     _%g175458175522%_))))
                                            (_%g175457175519%_
                                             _%g175458175522%_))
                                        (_%g175457175519%_ _%g175458175522%_))
                                    (_%g175457175519%_ _%g175458175522%_))))
                            (_%g175457175519%_ _%g175458175522%_)))))
                (_%g175456176464%_ _%L175414%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd175290175408%_
                                                    _%hd175287175400%_
                                                    _%hd175284175392%_
                                                    _%hd175281175384%_
                                                    _%hd175263175336%_)
                                                   (_%g175243175296%_
                                                    _%g175244175299%_))))
                                           (_%g175243175296%_
                                            _%g175244175299%_))
                                       (_%g175243175296%_ _%g175244175299%_))
                                   (_%g175243175296%_ _%g175244175299%_))
                               (_%g175243175296%_ _%g175244175299%_))))
                       (_%g175243175296%_ _%g175244175299%_))
                   (_%g175243175296%_ _%g175244175299%_))
               (_%g175243175296%_ _%g175244175299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175243175296%_
                                                _%g175244175299%_))
                                           (_%g175243175296%_
                                            _%g175244175299%_))))
                                   (_%g175243175296%_ _%g175244175299%_))))
                           (_%g175243175296%_ _%g175244175299%_))))
                   (_%g175243175296%_ _%g175244175299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175243175296%_
                                                    _%g175244175299%_))
                                               (_%g175243175296%_
                                                _%g175244175299%_))
                                           (_%g175243175296%_
                                            _%g175244175299%_))))
                                   (_%g175243175296%_ _%g175244175299%_))))
                           (_%g175243175296%_ _%g175244175299%_))
                       (_%g175243175296%_ _%g175244175299%_))))
               (_%g175243175296%_ _%g175244175299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175243175296%_
                                                _%g175244175299%_))))
                                       (_%g175243175296%_ _%g175244175299%_))))
                               (_%g175243175296%_ _%g175244175299%_))
                           (_%g175243175296%_ _%g175244175299%_))
                       (_%g175243175296%_ _%g175244175299%_))))
               (_%g175243175296%_ _%g175244175299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175242176467%_ _%L173687%_))
                                         _%stx173615%_))))))))
                  (_%__kont176701176702%_ (lambda () _%stx173615%_)))
              (let ((_%__match176730176731%_
                     (lambda (_%e173627173655%_
                              _%hd173628173658%_
                              _%tl173629173660%_
                              _%e173630173663%_
                              _%hd173631173666%_
                              _%tl173632173668%_
                              _%e173633173671%_
                              _%hd173634173674%_
                              _%tl173635173676%_
                              _%e173636173679%_
                              _%hd173637173682%_
                              _%tl173638173684%_)
                       (let ((_%L173687%_ _%hd173637173682%_)
                             (_%L173688%_ _%hd173634173674%_))
                         (if (let ((__tmp177903
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173688%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp177903))
                             (_%__kont176699176700%_ _%L173687%_ _%L173688%_)
                             (_%__kont176701176702%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176697176698%_))
                    (let ((_%e173627173655%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176697176698%_))))
                      (let ((_%tl173629173660%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173627173655%_)))
                            (_%hd173628173658%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173627173655%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173629173660%_))
                            (let ((_%e173630173663%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173629173660%_))))
                              (let ((_%tl173632173668%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173630173663%_)))
                                    (_%hd173631173666%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173630173663%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173631173666%_))
                                    (let ((_%e173633173671%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173631173666%_))))
                                      (let ((_%tl173635173676%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173633173671%_)))
                                            (_%hd173634173674%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173633173671%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173635173676%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173632173668%_))
                                                (let ((_%e173636173679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173632173668%_))))
                                                  (let ((_%tl173638173684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173636173679%_)))
                                                        (_%hd173637173682%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173636173679%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173638173684%_))
                                                        (_%__match176730176731%_
                                                         _%e173627173655%_
                                                         _%hd173628173658%_
                                                         _%tl173629173660%_
                                                         _%e173630173663%_
                                                         _%hd173631173666%_
                                                         _%tl173632173668%_
                                                         _%e173633173671%_
                                                         _%hd173634173674%_
                                                         _%tl173635173676%_
                                                         _%e173636173679%_
                                                         _%hd173637173682%_
                                                         _%tl173638173684%_)
                                                        (_%__kont176701176702%_))))
                                                (_%__kont176701176702%_))
                                            (_%__kont176701176702%_))))
                                    (_%__kont176701176702%_))))
                            (_%__kont176701176702%_))))
                    (_%__kont176701176702%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173467%_ _%stx173468%_)
        (let* ((_%__stx176733176734%_ _%stx173468%_)
               (_%g173471173504%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176733176734%_)))))
          (let ((_%__kont176735176736%_ (lambda (_%L173594%_) _%L173594%_))
                (_%__kont176737176738%_
                 (lambda (_%L173533%_ _%L173534%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173467%_ _%L173533%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx176733176734%_))
                (let ((_%e173474173554%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx176733176734%_))))
                  (let ((_%tl173476173559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173474173554%_)))
                        (_%hd173475173557%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173474173554%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173476173559%_))
                        (let ((_%e173477173562%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173476173559%_))))
                          (let ((_%tl173479173567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173477173562%_)))
                                (_%hd173478173565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173477173562%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173478173565%_))
                                (let ((_%e173480173570%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173478173565%_))))
                                  (let ((_%tl173482173575%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173480173570%_)))
                                        (_%hd173481173573%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173480173570%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173481173573%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173481173573%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173482173575%_))
                                                (let ((_%e173483173578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173482173575%_))))
                                                  (let ((_%tl173485173583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173483173578%_)))
                                                        (_%hd173484173581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173483173578%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173485173583%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173479173567%_))
                                                            (let ((_%e173486173586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173479173567%_))))
                      (let ((_%tl173488173591%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173486173586%_)))
                            (_%hd173487173589%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173486173586%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173488173591%_))
                            (_%__kont176735176736%_ _%hd173484173581%_)
                            (let ()
                              (declare (not safe))
                              (_%g173471173504%_)))))
                    (let () (declare (not safe)) (_%g173471173504%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173479173567%_))
                    (let ((_%e173497173525%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173479173567%_))))
                      (let ((_%tl173499173530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173497173525%_)))
                            (_%hd173498173528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173497173525%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173499173530%_))
                            (_%__kont176737176738%_
                             _%hd173498173528%_
                             _%hd173478173565%_)
                            (let ()
                              (declare (not safe))
                              (_%g173471173504%_)))))
                    (let () (declare (not safe)) (_%g173471173504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173479173567%_))
                                                    (let ((_%e173497173525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173479173567%_))))
                                                      (let ((_%tl173499173530%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173497173525%_)))
                    (_%hd173498173528%_
                     (let () (declare (not safe)) (##car _%e173497173525%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173499173530%_))
                    (_%__kont176737176738%_
                     _%hd173498173528%_
                     _%hd173478173565%_)
                    (let () (declare (not safe)) (_%g173471173504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173471173504%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173479173567%_))
                                                (let ((_%e173497173525%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173479173567%_))))
                                                  (let ((_%tl173499173530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173497173525%_)))
                                                        (_%hd173498173528%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173497173525%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173499173530%_))
                                                        (_%__kont176737176738%_
                                                         _%hd173498173528%_
                                                         _%hd173478173565%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173471173504%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173471173504%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173479173567%_))
                                            (let ((_%e173497173525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173479173567%_))))
                                              (let ((_%tl173499173530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173497173525%_)))
                                                    (_%hd173498173528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173497173525%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173499173530%_))
                                                    (_%__kont176737176738%_
                                                     _%hd173498173528%_
                                                     _%hd173478173565%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173471173504%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173471173504%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173479173567%_))
                                    (let ((_%e173497173525%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173479173567%_))))
                                      (let ((_%tl173499173530%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173497173525%_)))
                                            (_%hd173498173528%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173497173525%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173499173530%_))
                                            (_%__kont176737176738%_
                                             _%hd173498173528%_
                                             _%hd173478173565%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173471173504%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173471173504%_))))))
                        (let () (declare (not safe)) (_%g173471173504%_)))))
                (let () (declare (not safe)) (_%g173471173504%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self173383%_ _%stx173384%_)
        (let* ((_%g173386173407%_
                (lambda (_%g173387173404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g173387173404%_))))
               (_%g173385173464%_
                (lambda (_%g173387173410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g173387173410%_))
                      (let ((_%e173391173412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g173387173410%_))))
                        (let ((_%hd173392173415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173391173412%_)))
                              (_%tl173393173417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173391173412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173393173417%_))
                              (let ((_%e173394173420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173393173417%_))))
                                (let ((_%hd173395173423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173394173420%_)))
                                      (_%tl173396173425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173394173420%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173396173425%_))
                                      (let ((_%e173397173428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173396173425%_))))
                                        (let ((_%hd173398173431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173397173428%_)))
                                              (_%tl173399173433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173397173428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173399173433%_))
                                              (let ((_%e173400173436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173399173433%_))))
                                                (let ((_%hd173401173439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173400173436%_)))
                                                      (_%tl173402173441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173400173436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173402173441%_))
                                                      ((lambda (_%L173444%_
                                                                _%L173445%_
                                                                _%L173446%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self173383%_
                                                            _%L173445%_)))
                                                       _%hd173401173439%_
                                                       _%hd173398173431%_
                                                       _%hd173395173423%_)
                                                      (_%g173386173407%_
                                                       _%g173387173410%_))))
                                              (_%g173386173407%_
                                               _%g173387173410%_))))
                                      (_%g173386173407%_ _%g173387173410%_))))
                              (_%g173386173407%_ _%g173387173410%_))))
                      (_%g173386173407%_ _%g173387173410%_)))))
          (_%g173385173464%_ _%stx173384%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self172344%_ _%stx172345%_)
        (let* ((_%__stx176799176800%_ _%stx172345%_)
               (_%g172353172575%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176799176800%_)))))
          (let ((_%__kont176801176802%_
                 (lambda (_%L173332%_ _%L173333%_ _%L173334%_ _%L173335%_)
                   (let ((__tmp177905
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172344%_ 'methods)))
                         (__tmp177904
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173333%_))))
                     (declare (not safe))
                     (hash-put! __tmp177905 __tmp177904 '#t))
                   (for-each
                    (lambda (_%g173368173370%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172344%_ _%g173368173370%_)))
                    (let ((__tmp177906
                           (lambda (_%g173372173375%_ _%g173373173377%_)
                             (cons _%g173372173375%_ _%g173373173377%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177906 '() _%L173332%_)))))
                (_%__kont176805176806%_
                 (lambda (_%L173167%_
                          _%L173168%_
                          _%L173169%_
                          _%L173170%_
                          _%L173171%_)
                   (let ((__tmp177908
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172344%_ 'methods)))
                         (__tmp177907
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173168%_))))
                     (declare (not safe))
                     (hash-put! __tmp177908 __tmp177907 '#t))
                   (for-each
                    (lambda (_%g173211173213%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172344%_ _%g173211173213%_)))
                    (let ((__tmp177909
                           (lambda (_%g173215173218%_ _%g173216173220%_)
                             (cons _%g173215173218%_ _%g173216173220%_))))
                      (declare (not safe))
                      (__foldr1 __tmp177909 '() _%L173167%_)))))
                (_%__kont176809176810%_
                 (lambda (_%L173000%_ _%L173001%_ _%L173002%_)
                   (let ((__tmp177911
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172344%_ 'slots)))
                         (__tmp177910
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173000%_))))
                     (declare (not safe))
                     (hash-put! __tmp177911 __tmp177910 '#t))))
                (_%__kont176811176812%_
                 (lambda (_%L172877%_ _%L172878%_ _%L172879%_ _%L172880%_)
                   (let ((__tmp177913
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172344%_ 'slots)))
                         (__tmp177912
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L172878%_))))
                     (declare (not safe))
                     (hash-put! __tmp177913 __tmp177912 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172344%_ _%L172877%_))))
                (_%__kont176813176814%_
                 (lambda (_%L172751%_ _%L172752%_)
                   (let* ((_%accessor172774%_
                           (let ((__tmp177914
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172752%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp177914)))
                          (_%klass172776%_
                           (let ((__tmp177915
                                  (##structure-ref
                                   _%accessor172774%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172345%_
                              __tmp177915)))
                          (_%slot172778%_
                           (##structure-ref
                            _%accessor172774%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor172774%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172776%_
                                    _%slot172778%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172776%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp177917
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172344%_ 'slots)))
                               (__tmp177916
                                (##structure-ref
                                 _%accessor172774%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp177917 __tmp177916 '#t))))))
                (_%__kont176815176816%_
                 (lambda (_%L172651%_ _%L172652%_ _%L172653%_)
                   (let* ((_%mutator172680%_
                           (let ((__tmp177918
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172653%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp177918)))
                          (_%klass172682%_
                           (let ((__tmp177919
                                  (##structure-ref
                                   _%mutator172680%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172345%_
                              __tmp177919)))
                          (_%slot172684%_
                           (##structure-ref
                            _%mutator172680%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator172680%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172682%_
                                    _%slot172684%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172682%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp177920
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172344%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp177920 _%slot172684%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self172344%_ _%L172651%_)))))
                (_%__kont176817176818%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self172344%_ _%stx172345%_)))))
            (let* ((_%__match177298177299%_
                    (lambda (_%e172547172587%_
                             _%hd172548172590%_
                             _%tl172549172592%_
                             _%e172550172595%_
                             _%hd172551172598%_
                             _%tl172552172600%_
                             _%e172553172603%_
                             _%hd172554172606%_
                             _%tl172555172608%_
                             _%e172556172611%_
                             _%hd172557172614%_
                             _%tl172558172616%_
                             _%e172559172619%_
                             _%hd172560172622%_
                             _%tl172561172624%_
                             _%e172562172627%_
                             _%hd172563172630%_
                             _%tl172564172632%_
                             _%e172565172635%_
                             _%hd172566172638%_
                             _%tl172567172640%_
                             _%e172568172643%_
                             _%hd172569172646%_
                             _%tl172570172648%_)
                      (let ((_%L172651%_ _%hd172569172646%_)
                            (_%L172652%_ _%hd172566172638%_)
                            (_%L172653%_ _%hd172557172614%_))
                        (if (and (let ((__tmp177921
                                        (let ((__tmp177922
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172653%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp177922))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp177921
                                    'gxc#!mutator::t))
                                 (let ((__tmp177923
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172344%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172652%_
                                    __tmp177923)))
                            (_%__kont176815176816%_
                             _%L172651%_
                             _%L172652%_
                             _%L172653%_)
                            (_%__kont176817176818%_)))))
                   (_%__match177296177297%_
                    (lambda (_%e172547172587%_
                             _%hd172548172590%_
                             _%tl172549172592%_
                             _%e172550172595%_
                             _%hd172551172598%_
                             _%tl172552172600%_
                             _%e172553172603%_
                             _%hd172554172606%_
                             _%tl172555172608%_
                             _%e172556172611%_
                             _%hd172557172614%_
                             _%tl172558172616%_
                             _%e172559172619%_
                             _%hd172560172622%_
                             _%tl172561172624%_
                             _%e172562172627%_
                             _%hd172563172630%_
                             _%tl172564172632%_
                             _%e172565172635%_
                             _%hd172566172638%_
                             _%tl172567172640%_
                             _%e172568172643%_
                             _%hd172569172646%_
                             _%tl172570172648%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172570172648%_))
                          (_%__match177298177299%_
                           _%e172547172587%_
                           _%hd172548172590%_
                           _%tl172549172592%_
                           _%e172550172595%_
                           _%hd172551172598%_
                           _%tl172552172600%_
                           _%e172553172603%_
                           _%hd172554172606%_
                           _%tl172555172608%_
                           _%e172556172611%_
                           _%hd172557172614%_
                           _%tl172558172616%_
                           _%e172559172619%_
                           _%hd172560172622%_
                           _%tl172561172624%_
                           _%e172562172627%_
                           _%hd172563172630%_
                           _%tl172564172632%_
                           _%e172565172635%_
                           _%hd172566172638%_
                           _%tl172567172640%_
                           _%e172568172643%_
                           _%hd172569172646%_
                           _%tl172570172648%_)
                          (_%__kont176817176818%_))))
                   (_%__match177290177291%_
                    (lambda (_%e172547172587%_
                             _%hd172548172590%_
                             _%tl172549172592%_
                             _%e172550172595%_
                             _%hd172551172598%_
                             _%tl172552172600%_
                             _%e172553172603%_
                             _%hd172554172606%_
                             _%tl172555172608%_
                             _%e172556172611%_
                             _%hd172557172614%_
                             _%tl172558172616%_
                             _%e172559172619%_
                             _%hd172560172622%_
                             _%tl172561172624%_
                             _%e172562172627%_
                             _%hd172563172630%_
                             _%tl172564172632%_
                             _%e172565172635%_
                             _%hd172566172638%_
                             _%tl172567172640%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172561172624%_))
                          (let ((_%e172568172643%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172561172624%_))))
                            (let ((_%tl172570172648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172568172643%_)))
                                  (_%hd172569172646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172568172643%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172570172648%_))
                                  (_%__match177298177299%_
                                   _%e172547172587%_
                                   _%hd172548172590%_
                                   _%tl172549172592%_
                                   _%e172550172595%_
                                   _%hd172551172598%_
                                   _%tl172552172600%_
                                   _%e172553172603%_
                                   _%hd172554172606%_
                                   _%tl172555172608%_
                                   _%e172556172611%_
                                   _%hd172557172614%_
                                   _%tl172558172616%_
                                   _%e172559172619%_
                                   _%hd172560172622%_
                                   _%tl172561172624%_
                                   _%e172562172627%_
                                   _%hd172563172630%_
                                   _%tl172564172632%_
                                   _%e172565172635%_
                                   _%hd172566172638%_
                                   _%tl172567172640%_
                                   _%e172568172643%_
                                   _%hd172569172646%_
                                   _%tl172570172648%_)
                                  (_%__kont176817176818%_))))
                          (_%__kont176817176818%_))))
                   (_%__match177236177237%_
                    (lambda (_%e172523172695%_
                             _%hd172524172698%_
                             _%tl172525172700%_
                             _%e172526172703%_
                             _%hd172527172706%_
                             _%tl172528172708%_
                             _%e172529172711%_
                             _%hd172530172714%_
                             _%tl172531172716%_
                             _%e172532172719%_
                             _%hd172533172722%_
                             _%tl172534172724%_
                             _%e172535172727%_
                             _%hd172536172730%_
                             _%tl172537172732%_
                             _%e172538172735%_
                             _%hd172539172738%_
                             _%tl172540172740%_
                             _%e172541172743%_
                             _%hd172542172746%_
                             _%tl172543172748%_)
                      (let ((_%L172751%_ _%hd172542172746%_)
                            (_%L172752%_ _%hd172533172722%_))
                        (if (and (let ((__tmp177924
                                        (let ((__tmp177925
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172752%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp177925))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp177924
                                    'gxc#!accessor::t))
                                 (let ((__tmp177926
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172344%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172751%_
                                    __tmp177926)))
                            (_%__kont176813176814%_ _%L172751%_ _%L172752%_)
                            (_%__kont176817176818%_)))))
                   (_%__match177234177235%_
                    (lambda (_%e172523172695%_
                             _%hd172524172698%_
                             _%tl172525172700%_
                             _%e172526172703%_
                             _%hd172527172706%_
                             _%tl172528172708%_
                             _%e172529172711%_
                             _%hd172530172714%_
                             _%tl172531172716%_
                             _%e172532172719%_
                             _%hd172533172722%_
                             _%tl172534172724%_
                             _%e172535172727%_
                             _%hd172536172730%_
                             _%tl172537172732%_
                             _%e172538172735%_
                             _%hd172539172738%_
                             _%tl172540172740%_
                             _%e172541172743%_
                             _%hd172542172746%_
                             _%tl172543172748%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172537172732%_))
                          (_%__match177236177237%_
                           _%e172523172695%_
                           _%hd172524172698%_
                           _%tl172525172700%_
                           _%e172526172703%_
                           _%hd172527172706%_
                           _%tl172528172708%_
                           _%e172529172711%_
                           _%hd172530172714%_
                           _%tl172531172716%_
                           _%e172532172719%_
                           _%hd172533172722%_
                           _%tl172534172724%_
                           _%e172535172727%_
                           _%hd172536172730%_
                           _%tl172537172732%_
                           _%e172538172735%_
                           _%hd172539172738%_
                           _%tl172540172740%_
                           _%e172541172743%_
                           _%hd172542172746%_
                           _%tl172543172748%_)
                          (_%__match177290177291%_
                           _%e172523172695%_
                           _%hd172524172698%_
                           _%tl172525172700%_
                           _%e172526172703%_
                           _%hd172527172706%_
                           _%tl172528172708%_
                           _%e172529172711%_
                           _%hd172530172714%_
                           _%tl172531172716%_
                           _%e172532172719%_
                           _%hd172533172722%_
                           _%tl172534172724%_
                           _%e172535172727%_
                           _%hd172536172730%_
                           _%tl172537172732%_
                           _%e172538172735%_
                           _%hd172539172738%_
                           _%tl172540172740%_
                           _%e172541172743%_
                           _%hd172542172746%_
                           _%tl172543172748%_))))
                   (_%__match177180177181%_
                    (lambda (_%e172488172789%_
                             _%hd172489172792%_
                             _%tl172490172794%_
                             _%e172491172797%_
                             _%hd172492172800%_
                             _%tl172493172802%_
                             _%e172494172805%_
                             _%hd172495172808%_
                             _%tl172496172810%_
                             _%e172497172813%_
                             _%hd172498172816%_
                             _%tl172499172818%_
                             _%e172500172821%_
                             _%hd172501172824%_
                             _%tl172502172826%_
                             _%e172503172829%_
                             _%hd172504172832%_
                             _%tl172505172834%_
                             _%e172506172837%_
                             _%hd172507172840%_
                             _%tl172508172842%_
                             _%e172509172845%_
                             _%hd172510172848%_
                             _%tl172511172850%_
                             _%e172512172853%_
                             _%hd172513172856%_
                             _%tl172514172858%_
                             _%e172515172861%_
                             _%hd172516172864%_
                             _%tl172517172866%_
                             _%e172518172869%_
                             _%hd172519172872%_
                             _%tl172520172874%_)
                      (let ((_%L172877%_ _%hd172519172872%_)
                            (_%L172878%_ _%hd172516172864%_)
                            (_%L172879%_ _%hd172507172840%_)
                            (_%L172880%_ _%hd172498172816%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172880%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L172880%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp177927
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172344%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172879%_
                                    __tmp177927)))
                            (_%__kont176811176812%_
                             _%L172877%_
                             _%L172878%_
                             _%L172879%_
                             _%L172880%_)
                            (_%__kont176817176818%_)))))
                   (_%__match177172177173%_
                    (lambda (_%e172488172789%_
                             _%hd172489172792%_
                             _%tl172490172794%_
                             _%e172491172797%_
                             _%hd172492172800%_
                             _%tl172493172802%_
                             _%e172494172805%_
                             _%hd172495172808%_
                             _%tl172496172810%_
                             _%e172497172813%_
                             _%hd172498172816%_
                             _%tl172499172818%_
                             _%e172500172821%_
                             _%hd172501172824%_
                             _%tl172502172826%_
                             _%e172503172829%_
                             _%hd172504172832%_
                             _%tl172505172834%_
                             _%e172506172837%_
                             _%hd172507172840%_
                             _%tl172508172842%_
                             _%e172509172845%_
                             _%hd172510172848%_
                             _%tl172511172850%_
                             _%e172512172853%_
                             _%hd172513172856%_
                             _%tl172514172858%_
                             _%e172515172861%_
                             _%hd172516172864%_
                             _%tl172517172866%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172511172850%_))
                          (let ((_%e172518172869%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172511172850%_))))
                            (let ((_%tl172520172874%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172518172869%_)))
                                  (_%hd172519172872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172518172869%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172520172874%_))
                                  (_%__match177180177181%_
                                   _%e172488172789%_
                                   _%hd172489172792%_
                                   _%tl172490172794%_
                                   _%e172491172797%_
                                   _%hd172492172800%_
                                   _%tl172493172802%_
                                   _%e172494172805%_
                                   _%hd172495172808%_
                                   _%tl172496172810%_
                                   _%e172497172813%_
                                   _%hd172498172816%_
                                   _%tl172499172818%_
                                   _%e172500172821%_
                                   _%hd172501172824%_
                                   _%tl172502172826%_
                                   _%e172503172829%_
                                   _%hd172504172832%_
                                   _%tl172505172834%_
                                   _%e172506172837%_
                                   _%hd172507172840%_
                                   _%tl172508172842%_
                                   _%e172509172845%_
                                   _%hd172510172848%_
                                   _%tl172511172850%_
                                   _%e172512172853%_
                                   _%hd172513172856%_
                                   _%tl172514172858%_
                                   _%e172515172861%_
                                   _%hd172516172864%_
                                   _%tl172517172866%_
                                   _%e172518172869%_
                                   _%hd172519172872%_
                                   _%tl172520172874%_)
                                  (_%__kont176817176818%_))))
                          (_%__match177296177297%_
                           _%e172488172789%_
                           _%hd172489172792%_
                           _%tl172490172794%_
                           _%e172491172797%_
                           _%hd172492172800%_
                           _%tl172493172802%_
                           _%e172494172805%_
                           _%hd172495172808%_
                           _%tl172496172810%_
                           _%e172497172813%_
                           _%hd172498172816%_
                           _%tl172499172818%_
                           _%e172500172821%_
                           _%hd172501172824%_
                           _%tl172502172826%_
                           _%e172503172829%_
                           _%hd172504172832%_
                           _%tl172505172834%_
                           _%e172506172837%_
                           _%hd172507172840%_
                           _%tl172508172842%_
                           _%e172509172845%_
                           _%hd172510172848%_
                           _%tl172511172850%_))))
                   (_%__match177094177095%_
                    (lambda (_%e172454172920%_
                             _%hd172455172923%_
                             _%tl172456172925%_
                             _%e172457172928%_
                             _%hd172458172931%_
                             _%tl172459172933%_
                             _%e172460172936%_
                             _%hd172461172939%_
                             _%tl172462172941%_
                             _%e172463172944%_
                             _%hd172464172947%_
                             _%tl172465172949%_
                             _%e172466172952%_
                             _%hd172467172955%_
                             _%tl172468172957%_
                             _%e172469172960%_
                             _%hd172470172963%_
                             _%tl172471172965%_
                             _%e172472172968%_
                             _%hd172473172971%_
                             _%tl172474172973%_
                             _%e172475172976%_
                             _%hd172476172979%_
                             _%tl172477172981%_
                             _%e172478172984%_
                             _%hd172479172987%_
                             _%tl172480172989%_
                             _%e172481172992%_
                             _%hd172482172995%_
                             _%tl172483172997%_)
                      (let ((_%L173000%_ _%hd172482172995%_)
                            (_%L173001%_ _%hd172473172971%_)
                            (_%L173002%_ _%hd172464172947%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173002%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173002%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp177928
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172344%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173001%_
                                    __tmp177928)))
                            (_%__kont176809176810%_
                             _%L173000%_
                             _%L173001%_
                             _%L173002%_)
                            (_%__match177298177299%_
                             _%e172454172920%_
                             _%hd172455172923%_
                             _%tl172456172925%_
                             _%e172457172928%_
                             _%hd172458172931%_
                             _%tl172459172933%_
                             _%e172460172936%_
                             _%hd172461172939%_
                             _%tl172462172941%_
                             _%e172463172944%_
                             _%hd172464172947%_
                             _%tl172465172949%_
                             _%e172466172952%_
                             _%hd172467172955%_
                             _%tl172468172957%_
                             _%e172469172960%_
                             _%hd172470172963%_
                             _%tl172471172965%_
                             _%e172472172968%_
                             _%hd172473172971%_
                             _%tl172474172973%_
                             _%e172475172976%_
                             _%hd172476172979%_
                             _%tl172477172981%_)))))
                   (_%__match177092177093%_
                    (lambda (_%e172454172920%_
                             _%hd172455172923%_
                             _%tl172456172925%_
                             _%e172457172928%_
                             _%hd172458172931%_
                             _%tl172459172933%_
                             _%e172460172936%_
                             _%hd172461172939%_
                             _%tl172462172941%_
                             _%e172463172944%_
                             _%hd172464172947%_
                             _%tl172465172949%_
                             _%e172466172952%_
                             _%hd172467172955%_
                             _%tl172468172957%_
                             _%e172469172960%_
                             _%hd172470172963%_
                             _%tl172471172965%_
                             _%e172472172968%_
                             _%hd172473172971%_
                             _%tl172474172973%_
                             _%e172475172976%_
                             _%hd172476172979%_
                             _%tl172477172981%_
                             _%e172478172984%_
                             _%hd172479172987%_
                             _%tl172480172989%_
                             _%e172481172992%_
                             _%hd172482172995%_
                             _%tl172483172997%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172477172981%_))
                          (_%__match177094177095%_
                           _%e172454172920%_
                           _%hd172455172923%_
                           _%tl172456172925%_
                           _%e172457172928%_
                           _%hd172458172931%_
                           _%tl172459172933%_
                           _%e172460172936%_
                           _%hd172461172939%_
                           _%tl172462172941%_
                           _%e172463172944%_
                           _%hd172464172947%_
                           _%tl172465172949%_
                           _%e172466172952%_
                           _%hd172467172955%_
                           _%tl172468172957%_
                           _%e172469172960%_
                           _%hd172470172963%_
                           _%tl172471172965%_
                           _%e172472172968%_
                           _%hd172473172971%_
                           _%tl172474172973%_
                           _%e172475172976%_
                           _%hd172476172979%_
                           _%tl172477172981%_
                           _%e172478172984%_
                           _%hd172479172987%_
                           _%tl172480172989%_
                           _%e172481172992%_
                           _%hd172482172995%_
                           _%tl172483172997%_)
                          (_%__match177172177173%_
                           _%e172454172920%_
                           _%hd172455172923%_
                           _%tl172456172925%_
                           _%e172457172928%_
                           _%hd172458172931%_
                           _%tl172459172933%_
                           _%e172460172936%_
                           _%hd172461172939%_
                           _%tl172462172941%_
                           _%e172463172944%_
                           _%hd172464172947%_
                           _%tl172465172949%_
                           _%e172466172952%_
                           _%hd172467172955%_
                           _%tl172468172957%_
                           _%e172469172960%_
                           _%hd172470172963%_
                           _%tl172471172965%_
                           _%e172472172968%_
                           _%hd172473172971%_
                           _%tl172474172973%_
                           _%e172475172976%_
                           _%hd172476172979%_
                           _%tl172477172981%_
                           _%e172478172984%_
                           _%hd172479172987%_
                           _%tl172480172989%_
                           _%e172481172992%_
                           _%hd172482172995%_
                           _%tl172483172997%_))))
                   (_%__match177082177083%_
                    (lambda (_%e172454172920%_
                             _%hd172455172923%_
                             _%tl172456172925%_
                             _%e172457172928%_
                             _%hd172458172931%_
                             _%tl172459172933%_
                             _%e172460172936%_
                             _%hd172461172939%_
                             _%tl172462172941%_
                             _%e172463172944%_
                             _%hd172464172947%_
                             _%tl172465172949%_
                             _%e172466172952%_
                             _%hd172467172955%_
                             _%tl172468172957%_
                             _%e172469172960%_
                             _%hd172470172963%_
                             _%tl172471172965%_
                             _%e172472172968%_
                             _%hd172473172971%_
                             _%tl172474172973%_
                             _%e172475172976%_
                             _%hd172476172979%_
                             _%tl172477172981%_
                             _%e172478172984%_
                             _%hd172479172987%_
                             _%tl172480172989%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172479172987%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172480172989%_))
                              (let ((_%e172481172992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172480172989%_))))
                                (let ((_%tl172483172997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172481172992%_)))
                                      (_%hd172482172995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172481172992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172483172997%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172477172981%_))
                                          (_%__match177094177095%_
                                           _%e172454172920%_
                                           _%hd172455172923%_
                                           _%tl172456172925%_
                                           _%e172457172928%_
                                           _%hd172458172931%_
                                           _%tl172459172933%_
                                           _%e172460172936%_
                                           _%hd172461172939%_
                                           _%tl172462172941%_
                                           _%e172463172944%_
                                           _%hd172464172947%_
                                           _%tl172465172949%_
                                           _%e172466172952%_
                                           _%hd172467172955%_
                                           _%tl172468172957%_
                                           _%e172469172960%_
                                           _%hd172470172963%_
                                           _%tl172471172965%_
                                           _%e172472172968%_
                                           _%hd172473172971%_
                                           _%tl172474172973%_
                                           _%e172475172976%_
                                           _%hd172476172979%_
                                           _%tl172477172981%_
                                           _%e172478172984%_
                                           _%hd172479172987%_
                                           _%tl172480172989%_
                                           _%e172481172992%_
                                           _%hd172482172995%_
                                           _%tl172483172997%_)
                                          (_%__match177172177173%_
                                           _%e172454172920%_
                                           _%hd172455172923%_
                                           _%tl172456172925%_
                                           _%e172457172928%_
                                           _%hd172458172931%_
                                           _%tl172459172933%_
                                           _%e172460172936%_
                                           _%hd172461172939%_
                                           _%tl172462172941%_
                                           _%e172463172944%_
                                           _%hd172464172947%_
                                           _%tl172465172949%_
                                           _%e172466172952%_
                                           _%hd172467172955%_
                                           _%tl172468172957%_
                                           _%e172469172960%_
                                           _%hd172470172963%_
                                           _%tl172471172965%_
                                           _%e172472172968%_
                                           _%hd172473172971%_
                                           _%tl172474172973%_
                                           _%e172475172976%_
                                           _%hd172476172979%_
                                           _%tl172477172981%_
                                           _%e172478172984%_
                                           _%hd172479172987%_
                                           _%tl172480172989%_
                                           _%e172481172992%_
                                           _%hd172482172995%_
                                           _%tl172483172997%_))
                                      (_%__match177296177297%_
                                       _%e172454172920%_
                                       _%hd172455172923%_
                                       _%tl172456172925%_
                                       _%e172457172928%_
                                       _%hd172458172931%_
                                       _%tl172459172933%_
                                       _%e172460172936%_
                                       _%hd172461172939%_
                                       _%tl172462172941%_
                                       _%e172463172944%_
                                       _%hd172464172947%_
                                       _%tl172465172949%_
                                       _%e172466172952%_
                                       _%hd172467172955%_
                                       _%tl172468172957%_
                                       _%e172469172960%_
                                       _%hd172470172963%_
                                       _%tl172471172965%_
                                       _%e172472172968%_
                                       _%hd172473172971%_
                                       _%tl172474172973%_
                                       _%e172475172976%_
                                       _%hd172476172979%_
                                       _%tl172477172981%_))))
                              (_%__match177296177297%_
                               _%e172454172920%_
                               _%hd172455172923%_
                               _%tl172456172925%_
                               _%e172457172928%_
                               _%hd172458172931%_
                               _%tl172459172933%_
                               _%e172460172936%_
                               _%hd172461172939%_
                               _%tl172462172941%_
                               _%e172463172944%_
                               _%hd172464172947%_
                               _%tl172465172949%_
                               _%e172466172952%_
                               _%hd172467172955%_
                               _%tl172468172957%_
                               _%e172469172960%_
                               _%hd172470172963%_
                               _%tl172471172965%_
                               _%e172472172968%_
                               _%hd172473172971%_
                               _%tl172474172973%_
                               _%e172475172976%_
                               _%hd172476172979%_
                               _%tl172477172981%_))
                          (_%__match177296177297%_
                           _%e172454172920%_
                           _%hd172455172923%_
                           _%tl172456172925%_
                           _%e172457172928%_
                           _%hd172458172931%_
                           _%tl172459172933%_
                           _%e172460172936%_
                           _%hd172461172939%_
                           _%tl172462172941%_
                           _%e172463172944%_
                           _%hd172464172947%_
                           _%tl172465172949%_
                           _%e172466172952%_
                           _%hd172467172955%_
                           _%tl172468172957%_
                           _%e172469172960%_
                           _%hd172470172963%_
                           _%tl172471172965%_
                           _%e172472172968%_
                           _%hd172473172971%_
                           _%tl172474172973%_
                           _%e172475172976%_
                           _%hd172476172979%_
                           _%tl172477172981%_))))
                   (_%__match177014177015%_
                    (lambda (_%e172403173039%_
                             _%hd172404173042%_
                             _%tl172405173044%_
                             _%e172406173047%_
                             _%hd172407173050%_
                             _%tl172408173052%_
                             _%e172409173055%_
                             _%hd172410173058%_
                             _%tl172411173060%_
                             _%e172412173063%_
                             _%hd172413173066%_
                             _%tl172414173068%_
                             _%e172415173071%_
                             _%hd172416173074%_
                             _%tl172417173076%_
                             _%e172418173079%_
                             _%hd172419173082%_
                             _%tl172420173084%_
                             _%e172421173087%_
                             _%hd172422173090%_
                             _%tl172423173092%_
                             _%e172424173095%_
                             _%hd172425173098%_
                             _%tl172426173100%_
                             _%e172427173103%_
                             _%hd172428173106%_
                             _%tl172429173108%_
                             _%e172430173111%_
                             _%hd172431173114%_
                             _%tl172432173116%_
                             _%e172433173119%_
                             _%hd172434173122%_
                             _%tl172435173124%_
                             _%e172436173127%_
                             _%hd172437173130%_
                             _%tl172438173132%_
                             _%e172439173135%_
                             _%hd172440173138%_
                             _%tl172441173140%_
                             _%__splice176807176808%_
                             _%target172442173143%_
                             _%tl172444173145%_)
                      (letrec ((_%loop172445173148%_
                                (lambda (_%hd172443173151%_
                                         _%args172449173153%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172443173151%_))
                                      (let ((_%e172446173156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172443173151%_))))
                                        (let ((_%lp-tl172448173161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172446173156%_)))
                                              (_%lp-hd172447173159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172446173156%_))))
                                          (_%loop172445173148%_
                                           _%lp-tl172448173161%_
                                           (cons _%lp-hd172447173159%_
                                                 _%args172449173153%_))))
                                      (let ((_%args172450173164%_
                                             (reverse _%args172449173153%_)))
                                        (let ((_%L173167%_
                                               _%args172450173164%_)
                                              (_%L173168%_ _%hd172440173138%_)
                                              (_%L173169%_ _%hd172431173114%_)
                                              (_%L173170%_ _%hd172422173090%_)
                                              (_%L173171%_ _%hd172413173066%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173171%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173170%_
                                                      'call-method))
                                                   (let ((__tmp177929
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172344%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173169%_
                                                      __tmp177929)))
                                              (_%__kont176805176806%_
                                               _%L173167%_
                                               _%L173168%_
                                               _%L173169%_
                                               _%L173170%_
                                               _%L173171%_)
                                              (_%__kont176817176818%_))))))))
                        (_%loop172445173148%_ _%target172442173143%_ '()))))
                   (_%__match176972176973%_
                    (lambda (_%e172403173039%_
                             _%hd172404173042%_
                             _%tl172405173044%_
                             _%e172406173047%_
                             _%hd172407173050%_
                             _%tl172408173052%_
                             _%e172409173055%_
                             _%hd172410173058%_
                             _%tl172411173060%_
                             _%e172412173063%_
                             _%hd172413173066%_
                             _%tl172414173068%_
                             _%e172415173071%_
                             _%hd172416173074%_
                             _%tl172417173076%_
                             _%e172418173079%_
                             _%hd172419173082%_
                             _%tl172420173084%_
                             _%e172421173087%_
                             _%hd172422173090%_
                             _%tl172423173092%_
                             _%e172424173095%_
                             _%hd172425173098%_
                             _%tl172426173100%_
                             _%e172427173103%_
                             _%hd172428173106%_
                             _%tl172429173108%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd172428173106%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172429173108%_))
                              (let ((_%e172430173111%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172429173108%_))))
                                (let ((_%tl172432173116%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172430173111%_)))
                                      (_%hd172431173114%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172430173111%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172432173116%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172426173100%_))
                                          (let ((_%e172433173119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172426173100%_))))
                                            (let ((_%tl172435173124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172433173119%_)))
                                                  (_%hd172434173122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172433173119%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172434173122%_))
                                                  (let ((_%e172436173127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172434173122%_))))
                                                    (let ((_%tl172438173132%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172436173127%_)))
                                                          (_%hd172437173130%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172436173127%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd172437173130%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd172437173130%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172438173132%_))
                          (let ((_%e172439173135%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172438173132%_))))
                            (let ((_%tl172441173140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172439173135%_)))
                                  (_%hd172440173138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172439173135%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172441173140%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl172435173124%_))
                                      (let ((_%__splice176807176808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl172435173124%_
                                                '0))))
                                        (let ((_%tl172444173145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176807176808%_
                                                  '1)))
                                              (_%target172442173143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176807176808%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172444173145%_))
                                              (_%__match177014177015%_
                                               _%e172403173039%_
                                               _%hd172404173042%_
                                               _%tl172405173044%_
                                               _%e172406173047%_
                                               _%hd172407173050%_
                                               _%tl172408173052%_
                                               _%e172409173055%_
                                               _%hd172410173058%_
                                               _%tl172411173060%_
                                               _%e172412173063%_
                                               _%hd172413173066%_
                                               _%tl172414173068%_
                                               _%e172415173071%_
                                               _%hd172416173074%_
                                               _%tl172417173076%_
                                               _%e172418173079%_
                                               _%hd172419173082%_
                                               _%tl172420173084%_
                                               _%e172421173087%_
                                               _%hd172422173090%_
                                               _%tl172423173092%_
                                               _%e172424173095%_
                                               _%hd172425173098%_
                                               _%tl172426173100%_
                                               _%e172427173103%_
                                               _%hd172428173106%_
                                               _%tl172429173108%_
                                               _%e172430173111%_
                                               _%hd172431173114%_
                                               _%tl172432173116%_
                                               _%e172433173119%_
                                               _%hd172434173122%_
                                               _%tl172435173124%_
                                               _%e172436173127%_
                                               _%hd172437173130%_
                                               _%tl172438173132%_
                                               _%e172439173135%_
                                               _%hd172440173138%_
                                               _%tl172441173140%_
                                               _%__splice176807176808%_
                                               _%target172442173143%_
                                               _%tl172444173145%_)
                                              (_%__kont176817176818%_))))
                                      (_%__kont176817176818%_))
                                  (_%__kont176817176818%_))))
                          (_%__kont176817176818%_))
                      (_%__kont176817176818%_))
                  (_%__kont176817176818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176817176818%_))))
                                          (_%__match177296177297%_
                                           _%e172403173039%_
                                           _%hd172404173042%_
                                           _%tl172405173044%_
                                           _%e172406173047%_
                                           _%hd172407173050%_
                                           _%tl172408173052%_
                                           _%e172409173055%_
                                           _%hd172410173058%_
                                           _%tl172411173060%_
                                           _%e172412173063%_
                                           _%hd172413173066%_
                                           _%tl172414173068%_
                                           _%e172415173071%_
                                           _%hd172416173074%_
                                           _%tl172417173076%_
                                           _%e172418173079%_
                                           _%hd172419173082%_
                                           _%tl172420173084%_
                                           _%e172421173087%_
                                           _%hd172422173090%_
                                           _%tl172423173092%_
                                           _%e172424173095%_
                                           _%hd172425173098%_
                                           _%tl172426173100%_))
                                      (_%__match177296177297%_
                                       _%e172403173039%_
                                       _%hd172404173042%_
                                       _%tl172405173044%_
                                       _%e172406173047%_
                                       _%hd172407173050%_
                                       _%tl172408173052%_
                                       _%e172409173055%_
                                       _%hd172410173058%_
                                       _%tl172411173060%_
                                       _%e172412173063%_
                                       _%hd172413173066%_
                                       _%tl172414173068%_
                                       _%e172415173071%_
                                       _%hd172416173074%_
                                       _%tl172417173076%_
                                       _%e172418173079%_
                                       _%hd172419173082%_
                                       _%tl172420173084%_
                                       _%e172421173087%_
                                       _%hd172422173090%_
                                       _%tl172423173092%_
                                       _%e172424173095%_
                                       _%hd172425173098%_
                                       _%tl172426173100%_))))
                              (_%__match177296177297%_
                               _%e172403173039%_
                               _%hd172404173042%_
                               _%tl172405173044%_
                               _%e172406173047%_
                               _%hd172407173050%_
                               _%tl172408173052%_
                               _%e172409173055%_
                               _%hd172410173058%_
                               _%tl172411173060%_
                               _%e172412173063%_
                               _%hd172413173066%_
                               _%tl172414173068%_
                               _%e172415173071%_
                               _%hd172416173074%_
                               _%tl172417173076%_
                               _%e172418173079%_
                               _%hd172419173082%_
                               _%tl172420173084%_
                               _%e172421173087%_
                               _%hd172422173090%_
                               _%tl172423173092%_
                               _%e172424173095%_
                               _%hd172425173098%_
                               _%tl172426173100%_))
                          (_%__match177082177083%_
                           _%e172403173039%_
                           _%hd172404173042%_
                           _%tl172405173044%_
                           _%e172406173047%_
                           _%hd172407173050%_
                           _%tl172408173052%_
                           _%e172409173055%_
                           _%hd172410173058%_
                           _%tl172411173060%_
                           _%e172412173063%_
                           _%hd172413173066%_
                           _%tl172414173068%_
                           _%e172415173071%_
                           _%hd172416173074%_
                           _%tl172417173076%_
                           _%e172418173079%_
                           _%hd172419173082%_
                           _%tl172420173084%_
                           _%e172421173087%_
                           _%hd172422173090%_
                           _%tl172423173092%_
                           _%e172424173095%_
                           _%hd172425173098%_
                           _%tl172426173100%_
                           _%e172427173103%_
                           _%hd172428173106%_
                           _%tl172429173108%_))))
                   (_%__match176904176905%_
                    (lambda (_%e172359173228%_
                             _%hd172360173231%_
                             _%tl172361173233%_
                             _%e172362173236%_
                             _%hd172363173239%_
                             _%tl172364173241%_
                             _%e172365173244%_
                             _%hd172366173247%_
                             _%tl172367173249%_
                             _%e172368173252%_
                             _%hd172369173255%_
                             _%tl172370173257%_
                             _%e172371173260%_
                             _%hd172372173263%_
                             _%tl172373173265%_
                             _%e172374173268%_
                             _%hd172375173271%_
                             _%tl172376173273%_
                             _%e172377173276%_
                             _%hd172378173279%_
                             _%tl172379173281%_
                             _%e172380173284%_
                             _%hd172381173287%_
                             _%tl172382173289%_
                             _%e172383173292%_
                             _%hd172384173295%_
                             _%tl172385173297%_
                             _%e172386173300%_
                             _%hd172387173303%_
                             _%tl172388173305%_
                             _%__splice176803176804%_
                             _%target172389173308%_
                             _%tl172391173310%_)
                      (letrec ((_%loop172392173313%_
                                (lambda (_%hd172390173316%_
                                         _%args172396173318%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172390173316%_))
                                      (let ((_%e172393173321%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172390173316%_))))
                                        (let ((_%lp-tl172395173326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172393173321%_)))
                                              (_%lp-hd172394173324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172393173321%_))))
                                          (_%loop172392173313%_
                                           _%lp-tl172395173326%_
                                           (cons _%lp-hd172394173324%_
                                                 _%args172396173318%_))))
                                      (let ((_%args172397173329%_
                                             (reverse _%args172396173318%_)))
                                        (let ((_%L173332%_
                                               _%args172397173329%_)
                                              (_%L173333%_ _%hd172387173303%_)
                                              (_%L173334%_ _%hd172378173279%_)
                                              (_%L173335%_ _%hd172369173255%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173335%_
                                                      'call-method))
                                                   (let ((__tmp177930
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172344%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173334%_
                                                      __tmp177930)))
                                              (_%__kont176801176802%_
                                               _%L173332%_
                                               _%L173333%_
                                               _%L173334%_
                                               _%L173335%_)
                                              (_%__match177092177093%_
                                               _%e172359173228%_
                                               _%hd172360173231%_
                                               _%tl172361173233%_
                                               _%e172362173236%_
                                               _%hd172363173239%_
                                               _%tl172364173241%_
                                               _%e172365173244%_
                                               _%hd172366173247%_
                                               _%tl172367173249%_
                                               _%e172368173252%_
                                               _%hd172369173255%_
                                               _%tl172370173257%_
                                               _%e172371173260%_
                                               _%hd172372173263%_
                                               _%tl172373173265%_
                                               _%e172374173268%_
                                               _%hd172375173271%_
                                               _%tl172376173273%_
                                               _%e172377173276%_
                                               _%hd172378173279%_
                                               _%tl172379173281%_
                                               _%e172380173284%_
                                               _%hd172381173287%_
                                               _%tl172382173289%_
                                               _%e172383173292%_
                                               _%hd172384173295%_
                                               _%tl172385173297%_
                                               _%e172386173300%_
                                               _%hd172387173303%_
                                               _%tl172388173305%_))))))))
                        (_%loop172392173313%_ _%target172389173308%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx176799176800%_))
                  (let ((_%e172359173228%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx176799176800%_))))
                    (let ((_%tl172361173233%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172359173228%_)))
                          (_%hd172360173231%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172359173228%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172361173233%_))
                          (let ((_%e172362173236%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172361173233%_))))
                            (let ((_%tl172364173241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172362173236%_)))
                                  (_%hd172363173239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172362173236%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd172363173239%_))
                                  (let ((_%e172365173244%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd172363173239%_))))
                                    (let ((_%tl172367173249%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e172365173244%_)))
                                          (_%hd172366173247%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e172365173244%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd172366173247%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd172366173247%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl172367173249%_))
                                                  (let ((_%e172368173252%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl172367173249%_))))
                                                    (let ((_%tl172370173257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172368173252%_)))
                                                          (_%hd172369173255%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172368173252%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl172370173257%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl172364173241%_))
                      (let ((_%e172371173260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl172364173241%_))))
                        (let ((_%tl172373173265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172371173260%_)))
                              (_%hd172372173263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172371173260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd172372173263%_))
                              (let ((_%e172374173268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd172372173263%_))))
                                (let ((_%tl172376173273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172374173268%_)))
                                      (_%hd172375173271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172374173268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd172375173271%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd172375173271%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172376173273%_))
                                              (let ((_%e172377173276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172376173273%_))))
                                                (let ((_%tl172379173281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172377173276%_)))
                                                      (_%hd172378173279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172377173276%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172379173281%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl172373173265%_))
                                                          (let ((_%e172380173284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl172373173265%_))))
                    (let ((_%tl172382173289%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172380173284%_)))
                          (_%hd172381173287%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172380173284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172381173287%_))
                          (let ((_%e172383173292%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172381173287%_))))
                            (let ((_%tl172385173297%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172383173292%_)))
                                  (_%hd172384173295%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172383173292%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd172384173295%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd172384173295%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172385173297%_))
                                          (let ((_%e172386173300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172385173297%_))))
                                            (let ((_%tl172388173305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172386173300%_)))
                                                  (_%hd172387173303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172386173300%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172388173305%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl172382173289%_))
                                                      (let ((_%__splice176803176804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl172382173289%_ '0))))
                (let ((_%tl172391173310%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176803176804%_ '1)))
                      (_%target172389173308%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176803176804%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl172391173310%_))
                      (_%__match176904176905%_
                       _%e172359173228%_
                       _%hd172360173231%_
                       _%tl172361173233%_
                       _%e172362173236%_
                       _%hd172363173239%_
                       _%tl172364173241%_
                       _%e172365173244%_
                       _%hd172366173247%_
                       _%tl172367173249%_
                       _%e172368173252%_
                       _%hd172369173255%_
                       _%tl172370173257%_
                       _%e172371173260%_
                       _%hd172372173263%_
                       _%tl172373173265%_
                       _%e172374173268%_
                       _%hd172375173271%_
                       _%tl172376173273%_
                       _%e172377173276%_
                       _%hd172378173279%_
                       _%tl172379173281%_
                       _%e172380173284%_
                       _%hd172381173287%_
                       _%tl172382173289%_
                       _%e172383173292%_
                       _%hd172384173295%_
                       _%tl172385173297%_
                       _%e172386173300%_
                       _%hd172387173303%_
                       _%tl172388173305%_
                       _%__splice176803176804%_
                       _%target172389173308%_
                       _%tl172391173310%_)
                      (_%__match177092177093%_
                       _%e172359173228%_
                       _%hd172360173231%_
                       _%tl172361173233%_
                       _%e172362173236%_
                       _%hd172363173239%_
                       _%tl172364173241%_
                       _%e172365173244%_
                       _%hd172366173247%_
                       _%tl172367173249%_
                       _%e172368173252%_
                       _%hd172369173255%_
                       _%tl172370173257%_
                       _%e172371173260%_
                       _%hd172372173263%_
                       _%tl172373173265%_
                       _%e172374173268%_
                       _%hd172375173271%_
                       _%tl172376173273%_
                       _%e172377173276%_
                       _%hd172378173279%_
                       _%tl172379173281%_
                       _%e172380173284%_
                       _%hd172381173287%_
                       _%tl172382173289%_
                       _%e172383173292%_
                       _%hd172384173295%_
                       _%tl172385173297%_
                       _%e172386173300%_
                       _%hd172387173303%_
                       _%tl172388173305%_))))
              (_%__match177092177093%_
               _%e172359173228%_
               _%hd172360173231%_
               _%tl172361173233%_
               _%e172362173236%_
               _%hd172363173239%_
               _%tl172364173241%_
               _%e172365173244%_
               _%hd172366173247%_
               _%tl172367173249%_
               _%e172368173252%_
               _%hd172369173255%_
               _%tl172370173257%_
               _%e172371173260%_
               _%hd172372173263%_
               _%tl172373173265%_
               _%e172374173268%_
               _%hd172375173271%_
               _%tl172376173273%_
               _%e172377173276%_
               _%hd172378173279%_
               _%tl172379173281%_
               _%e172380173284%_
               _%hd172381173287%_
               _%tl172382173289%_
               _%e172383173292%_
               _%hd172384173295%_
               _%tl172385173297%_
               _%e172386173300%_
               _%hd172387173303%_
               _%tl172388173305%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match177296177297%_
                                                   _%e172359173228%_
                                                   _%hd172360173231%_
                                                   _%tl172361173233%_
                                                   _%e172362173236%_
                                                   _%hd172363173239%_
                                                   _%tl172364173241%_
                                                   _%e172365173244%_
                                                   _%hd172366173247%_
                                                   _%tl172367173249%_
                                                   _%e172368173252%_
                                                   _%hd172369173255%_
                                                   _%tl172370173257%_
                                                   _%e172371173260%_
                                                   _%hd172372173263%_
                                                   _%tl172373173265%_
                                                   _%e172374173268%_
                                                   _%hd172375173271%_
                                                   _%tl172376173273%_
                                                   _%e172377173276%_
                                                   _%hd172378173279%_
                                                   _%tl172379173281%_
                                                   _%e172380173284%_
                                                   _%hd172381173287%_
                                                   _%tl172382173289%_))))
                                          (_%__match177296177297%_
                                           _%e172359173228%_
                                           _%hd172360173231%_
                                           _%tl172361173233%_
                                           _%e172362173236%_
                                           _%hd172363173239%_
                                           _%tl172364173241%_
                                           _%e172365173244%_
                                           _%hd172366173247%_
                                           _%tl172367173249%_
                                           _%e172368173252%_
                                           _%hd172369173255%_
                                           _%tl172370173257%_
                                           _%e172371173260%_
                                           _%hd172372173263%_
                                           _%tl172373173265%_
                                           _%e172374173268%_
                                           _%hd172375173271%_
                                           _%tl172376173273%_
                                           _%e172377173276%_
                                           _%hd172378173279%_
                                           _%tl172379173281%_
                                           _%e172380173284%_
                                           _%hd172381173287%_
                                           _%tl172382173289%_))
                                      (_%__match176972176973%_
                                       _%e172359173228%_
                                       _%hd172360173231%_
                                       _%tl172361173233%_
                                       _%e172362173236%_
                                       _%hd172363173239%_
                                       _%tl172364173241%_
                                       _%e172365173244%_
                                       _%hd172366173247%_
                                       _%tl172367173249%_
                                       _%e172368173252%_
                                       _%hd172369173255%_
                                       _%tl172370173257%_
                                       _%e172371173260%_
                                       _%hd172372173263%_
                                       _%tl172373173265%_
                                       _%e172374173268%_
                                       _%hd172375173271%_
                                       _%tl172376173273%_
                                       _%e172377173276%_
                                       _%hd172378173279%_
                                       _%tl172379173281%_
                                       _%e172380173284%_
                                       _%hd172381173287%_
                                       _%tl172382173289%_
                                       _%e172383173292%_
                                       _%hd172384173295%_
                                       _%tl172385173297%_))
                                  (_%__match177296177297%_
                                   _%e172359173228%_
                                   _%hd172360173231%_
                                   _%tl172361173233%_
                                   _%e172362173236%_
                                   _%hd172363173239%_
                                   _%tl172364173241%_
                                   _%e172365173244%_
                                   _%hd172366173247%_
                                   _%tl172367173249%_
                                   _%e172368173252%_
                                   _%hd172369173255%_
                                   _%tl172370173257%_
                                   _%e172371173260%_
                                   _%hd172372173263%_
                                   _%tl172373173265%_
                                   _%e172374173268%_
                                   _%hd172375173271%_
                                   _%tl172376173273%_
                                   _%e172377173276%_
                                   _%hd172378173279%_
                                   _%tl172379173281%_
                                   _%e172380173284%_
                                   _%hd172381173287%_
                                   _%tl172382173289%_))))
                          (_%__match177296177297%_
                           _%e172359173228%_
                           _%hd172360173231%_
                           _%tl172361173233%_
                           _%e172362173236%_
                           _%hd172363173239%_
                           _%tl172364173241%_
                           _%e172365173244%_
                           _%hd172366173247%_
                           _%tl172367173249%_
                           _%e172368173252%_
                           _%hd172369173255%_
                           _%tl172370173257%_
                           _%e172371173260%_
                           _%hd172372173263%_
                           _%tl172373173265%_
                           _%e172374173268%_
                           _%hd172375173271%_
                           _%tl172376173273%_
                           _%e172377173276%_
                           _%hd172378173279%_
                           _%tl172379173281%_
                           _%e172380173284%_
                           _%hd172381173287%_
                           _%tl172382173289%_))))
                  (_%__match177234177235%_
                   _%e172359173228%_
                   _%hd172360173231%_
                   _%tl172361173233%_
                   _%e172362173236%_
                   _%hd172363173239%_
                   _%tl172364173241%_
                   _%e172365173244%_
                   _%hd172366173247%_
                   _%tl172367173249%_
                   _%e172368173252%_
                   _%hd172369173255%_
                   _%tl172370173257%_
                   _%e172371173260%_
                   _%hd172372173263%_
                   _%tl172373173265%_
                   _%e172374173268%_
                   _%hd172375173271%_
                   _%tl172376173273%_
                   _%e172377173276%_
                   _%hd172378173279%_
                   _%tl172379173281%_))
              (_%__kont176817176818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont176817176818%_))
                                          (_%__kont176817176818%_))
                                      (_%__kont176817176818%_))))
                              (_%__kont176817176818%_))))
                      (_%__kont176817176818%_))
                  (_%__kont176817176818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176817176818%_))
                                              (_%__kont176817176818%_))
                                          (_%__kont176817176818%_))))
                                  (_%__kont176817176818%_))))
                          (_%__kont176817176818%_))))
                  (_%__kont176817176818%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self171283%_ _%stx171284%_)
        (letrec ((_%force-e171286%_
                  (lambda (_%target172342%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target172342%_ '()))
                                      '()))))))
          (let* ((_%__stx177301177302%_ _%stx171284%_)
                 (_%g171294171516%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177301177302%_)))))
            (let ((_%__kont177303177304%_
                   (lambda (_%L172288%_ _%L172289%_ _%L172290%_ _%L172291%_)
                     (let ((_%$method172336%_
                            (let ((__tmp177932
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171283%_ 'methods)))
                                  (__tmp177931
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172289%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177932 __tmp177931)))
                           (_%args172337%_
                            (map (lambda (_%g172324172326%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171283%_
                                      _%g172324172326%_)))
                                 (let ((__tmp177933
                                        (lambda (_%g172328172331%_
                                                 _%g172329172333%_)
                                          (cons _%g172328172331%_
                                                _%g172329172333%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp177933 '() _%L172288%_)))))
                       (let ((__tmp177934
                              (cons '%#call
                                    (cons (_%force-e171286%_ _%$method172336%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171283%_
                                                               'receiver))
                                                            '()))
                                                _%args172337%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177934 _%stx171284%_)))))
                  (_%__kont177307177308%_
                   (lambda (_%L172120%_
                            _%L172121%_
                            _%L172122%_
                            _%L172123%_
                            _%L172124%_)
                     (let ((_%$method172176%_
                            (let ((__tmp177936
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171283%_ 'methods)))
                                  (__tmp177935
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172121%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177936 __tmp177935)))
                           (_%args172177%_
                            (map (lambda (_%g172164172166%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171283%_
                                      _%g172164172166%_)))
                                 (let ((__tmp177937
                                        (lambda (_%g172168172171%_
                                                 _%g172169172173%_)
                                          (cons _%g172168172171%_
                                                _%g172169172173%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp177937 '() _%L172120%_)))))
                       (let ((__tmp177938
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e171286%_
                                                 _%$method172176%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171283%_ 'receiver))
                          '()))
              _%args172177%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177938 _%stx171284%_)))))
                  (_%__kont177311177312%_
                   (lambda (_%L171951%_ _%L171952%_ _%L171953%_)
                     (let* ((_%$field171985%_
                             (let ((__tmp177940
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self171283%_ 'slots)))
                                   (__tmp177939
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L171951%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp177940 __tmp177939)))
                            (__tmp177941
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171283%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field171985%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self171283%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp177941 _%stx171284%_))))
                  (_%__kont177313177314%_
                   (lambda (_%L171825%_ _%L171826%_ _%L171827%_ _%L171828%_)
                     (let ((_%$field171863%_
                            (let ((__tmp177943
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171283%_ 'slots)))
                                  (__tmp177942
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171826%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp177943 __tmp177942)))
                           (_%expr171864%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self171283%_ _%L171825%_))))
                       (let ((__tmp177944
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self171283%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field171863%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171283%_ 'receiver))
                          '()))
              (cons _%expr171864%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp177944 _%stx171284%_)))))
                  (_%__kont177315177316%_
                   (lambda (_%L171697%_ _%L171698%_)
                     (let* ((_%accessor171720%_
                             (let ((__tmp177945
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171698%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp177945)))
                            (_%klass171722%_
                             (let ((__tmp177946
                                    (##structure-ref
                                     _%accessor171720%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171284%_
                                __tmp177946)))
                            (_%slot171724%_
                             (##structure-ref
                              _%accessor171720%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor171720%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171722%_
                                      _%slot171724%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171722%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx171284%_
                           (let* ((_%$field171730%_
                                   (let ((__tmp177947
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp177947 _%slot171724%_)))
                                  (__tmp177948
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171283%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171283%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp177948
                              _%stx171284%_))))))
                  (_%__kont177317177318%_
                   (lambda (_%L171592%_ _%L171593%_ _%L171594%_)
                     (let* ((_%mutator171622%_
                             (let ((__tmp177949
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171594%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp177949)))
                            (_%klass171624%_
                             (let ((__tmp177950
                                    (##structure-ref
                                     _%mutator171622%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171284%_
                                __tmp177950)))
                            (_%slot171626%_
                             (##structure-ref
                              _%mutator171622%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr171628%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self171283%_ _%L171592%_))))
                       (if (if (##structure-ref
                                _%mutator171622%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171624%_
                                      _%slot171626%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171624%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp177951
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171594%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171593%_
                                                                '()))
                                                    (cons _%expr171628%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp177951 _%stx171284%_))
                           (let* ((_%$field171634%_
                                   (let ((__tmp177952
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp177952 _%slot171626%_)))
                                  (__tmp177953
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171283%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171283%_ 'receiver))
                               '()))
                   (cons _%expr171628%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp177953
                              _%stx171284%_))))))
                  (_%__kont177319177320%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self171283%_ _%stx171284%_)))))
              (let* ((_%__match177800177801%_
                      (lambda (_%e171488171528%_
                               _%hd171489171531%_
                               _%tl171490171533%_
                               _%e171491171536%_
                               _%hd171492171539%_
                               _%tl171493171541%_
                               _%e171494171544%_
                               _%hd171495171547%_
                               _%tl171496171549%_
                               _%e171497171552%_
                               _%hd171498171555%_
                               _%tl171499171557%_
                               _%e171500171560%_
                               _%hd171501171563%_
                               _%tl171502171565%_
                               _%e171503171568%_
                               _%hd171504171571%_
                               _%tl171505171573%_
                               _%e171506171576%_
                               _%hd171507171579%_
                               _%tl171508171581%_
                               _%e171509171584%_
                               _%hd171510171587%_
                               _%tl171511171589%_)
                        (let ((_%L171592%_ _%hd171510171587%_)
                              (_%L171593%_ _%hd171507171579%_)
                              (_%L171594%_ _%hd171498171555%_))
                          (if (and (let ((__tmp177954
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171593%_
                                      __tmp177954))
                                   (let ((__tmp177955
                                          (let ((__tmp177956
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171594%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp177956))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp177955
                                      'gxc#!mutator::t)))
                              (_%__kont177317177318%_
                               _%L171592%_
                               _%L171593%_
                               _%L171594%_)
                              (_%__kont177319177320%_)))))
                     (_%__match177798177799%_
                      (lambda (_%e171488171528%_
                               _%hd171489171531%_
                               _%tl171490171533%_
                               _%e171491171536%_
                               _%hd171492171539%_
                               _%tl171493171541%_
                               _%e171494171544%_
                               _%hd171495171547%_
                               _%tl171496171549%_
                               _%e171497171552%_
                               _%hd171498171555%_
                               _%tl171499171557%_
                               _%e171500171560%_
                               _%hd171501171563%_
                               _%tl171502171565%_
                               _%e171503171568%_
                               _%hd171504171571%_
                               _%tl171505171573%_
                               _%e171506171576%_
                               _%hd171507171579%_
                               _%tl171508171581%_
                               _%e171509171584%_
                               _%hd171510171587%_
                               _%tl171511171589%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171511171589%_))
                            (_%__match177800177801%_
                             _%e171488171528%_
                             _%hd171489171531%_
                             _%tl171490171533%_
                             _%e171491171536%_
                             _%hd171492171539%_
                             _%tl171493171541%_
                             _%e171494171544%_
                             _%hd171495171547%_
                             _%tl171496171549%_
                             _%e171497171552%_
                             _%hd171498171555%_
                             _%tl171499171557%_
                             _%e171500171560%_
                             _%hd171501171563%_
                             _%tl171502171565%_
                             _%e171503171568%_
                             _%hd171504171571%_
                             _%tl171505171573%_
                             _%e171506171576%_
                             _%hd171507171579%_
                             _%tl171508171581%_
                             _%e171509171584%_
                             _%hd171510171587%_
                             _%tl171511171589%_)
                            (_%__kont177319177320%_))))
                     (_%__match177792177793%_
                      (lambda (_%e171488171528%_
                               _%hd171489171531%_
                               _%tl171490171533%_
                               _%e171491171536%_
                               _%hd171492171539%_
                               _%tl171493171541%_
                               _%e171494171544%_
                               _%hd171495171547%_
                               _%tl171496171549%_
                               _%e171497171552%_
                               _%hd171498171555%_
                               _%tl171499171557%_
                               _%e171500171560%_
                               _%hd171501171563%_
                               _%tl171502171565%_
                               _%e171503171568%_
                               _%hd171504171571%_
                               _%tl171505171573%_
                               _%e171506171576%_
                               _%hd171507171579%_
                               _%tl171508171581%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171502171565%_))
                            (let ((_%e171509171584%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171502171565%_))))
                              (let ((_%tl171511171589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171509171584%_)))
                                    (_%hd171510171587%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171509171584%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171511171589%_))
                                    (_%__match177800177801%_
                                     _%e171488171528%_
                                     _%hd171489171531%_
                                     _%tl171490171533%_
                                     _%e171491171536%_
                                     _%hd171492171539%_
                                     _%tl171493171541%_
                                     _%e171494171544%_
                                     _%hd171495171547%_
                                     _%tl171496171549%_
                                     _%e171497171552%_
                                     _%hd171498171555%_
                                     _%tl171499171557%_
                                     _%e171500171560%_
                                     _%hd171501171563%_
                                     _%tl171502171565%_
                                     _%e171503171568%_
                                     _%hd171504171571%_
                                     _%tl171505171573%_
                                     _%e171506171576%_
                                     _%hd171507171579%_
                                     _%tl171508171581%_
                                     _%e171509171584%_
                                     _%hd171510171587%_
                                     _%tl171511171589%_)
                                    (_%__kont177319177320%_))))
                            (_%__kont177319177320%_))))
                     (_%__match177738177739%_
                      (lambda (_%e171464171641%_
                               _%hd171465171644%_
                               _%tl171466171646%_
                               _%e171467171649%_
                               _%hd171468171652%_
                               _%tl171469171654%_
                               _%e171470171657%_
                               _%hd171471171660%_
                               _%tl171472171662%_
                               _%e171473171665%_
                               _%hd171474171668%_
                               _%tl171475171670%_
                               _%e171476171673%_
                               _%hd171477171676%_
                               _%tl171478171678%_
                               _%e171479171681%_
                               _%hd171480171684%_
                               _%tl171481171686%_
                               _%e171482171689%_
                               _%hd171483171692%_
                               _%tl171484171694%_)
                        (let ((_%L171697%_ _%hd171483171692%_)
                              (_%L171698%_ _%hd171474171668%_))
                          (if (and (let ((__tmp177957
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171697%_
                                      __tmp177957))
                                   (let ((__tmp177958
                                          (let ((__tmp177959
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171698%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp177959))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp177958
                                      'gxc#!accessor::t)))
                              (_%__kont177315177316%_ _%L171697%_ _%L171698%_)
                              (_%__kont177319177320%_)))))
                     (_%__match177736177737%_
                      (lambda (_%e171464171641%_
                               _%hd171465171644%_
                               _%tl171466171646%_
                               _%e171467171649%_
                               _%hd171468171652%_
                               _%tl171469171654%_
                               _%e171470171657%_
                               _%hd171471171660%_
                               _%tl171472171662%_
                               _%e171473171665%_
                               _%hd171474171668%_
                               _%tl171475171670%_
                               _%e171476171673%_
                               _%hd171477171676%_
                               _%tl171478171678%_
                               _%e171479171681%_
                               _%hd171480171684%_
                               _%tl171481171686%_
                               _%e171482171689%_
                               _%hd171483171692%_
                               _%tl171484171694%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171478171678%_))
                            (_%__match177738177739%_
                             _%e171464171641%_
                             _%hd171465171644%_
                             _%tl171466171646%_
                             _%e171467171649%_
                             _%hd171468171652%_
                             _%tl171469171654%_
                             _%e171470171657%_
                             _%hd171471171660%_
                             _%tl171472171662%_
                             _%e171473171665%_
                             _%hd171474171668%_
                             _%tl171475171670%_
                             _%e171476171673%_
                             _%hd171477171676%_
                             _%tl171478171678%_
                             _%e171479171681%_
                             _%hd171480171684%_
                             _%tl171481171686%_
                             _%e171482171689%_
                             _%hd171483171692%_
                             _%tl171484171694%_)
                            (_%__match177792177793%_
                             _%e171464171641%_
                             _%hd171465171644%_
                             _%tl171466171646%_
                             _%e171467171649%_
                             _%hd171468171652%_
                             _%tl171469171654%_
                             _%e171470171657%_
                             _%hd171471171660%_
                             _%tl171472171662%_
                             _%e171473171665%_
                             _%hd171474171668%_
                             _%tl171475171670%_
                             _%e171476171673%_
                             _%hd171477171676%_
                             _%tl171478171678%_
                             _%e171479171681%_
                             _%hd171480171684%_
                             _%tl171481171686%_
                             _%e171482171689%_
                             _%hd171483171692%_
                             _%tl171484171694%_))))
                     (_%__match177682177683%_
                      (lambda (_%e171429171737%_
                               _%hd171430171740%_
                               _%tl171431171742%_
                               _%e171432171745%_
                               _%hd171433171748%_
                               _%tl171434171750%_
                               _%e171435171753%_
                               _%hd171436171756%_
                               _%tl171437171758%_
                               _%e171438171761%_
                               _%hd171439171764%_
                               _%tl171440171766%_
                               _%e171441171769%_
                               _%hd171442171772%_
                               _%tl171443171774%_
                               _%e171444171777%_
                               _%hd171445171780%_
                               _%tl171446171782%_
                               _%e171447171785%_
                               _%hd171448171788%_
                               _%tl171449171790%_
                               _%e171450171793%_
                               _%hd171451171796%_
                               _%tl171452171798%_
                               _%e171453171801%_
                               _%hd171454171804%_
                               _%tl171455171806%_
                               _%e171456171809%_
                               _%hd171457171812%_
                               _%tl171458171814%_
                               _%e171459171817%_
                               _%hd171460171820%_
                               _%tl171461171822%_)
                        (let ((_%L171825%_ _%hd171460171820%_)
                              (_%L171826%_ _%hd171457171812%_)
                              (_%L171827%_ _%hd171448171788%_)
                              (_%L171828%_ _%hd171439171764%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171828%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171828%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp177960
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171827%_
                                      __tmp177960)))
                              (_%__kont177313177314%_
                               _%L171825%_
                               _%L171826%_
                               _%L171827%_
                               _%L171828%_)
                              (_%__kont177319177320%_)))))
                     (_%__match177674177675%_
                      (lambda (_%e171429171737%_
                               _%hd171430171740%_
                               _%tl171431171742%_
                               _%e171432171745%_
                               _%hd171433171748%_
                               _%tl171434171750%_
                               _%e171435171753%_
                               _%hd171436171756%_
                               _%tl171437171758%_
                               _%e171438171761%_
                               _%hd171439171764%_
                               _%tl171440171766%_
                               _%e171441171769%_
                               _%hd171442171772%_
                               _%tl171443171774%_
                               _%e171444171777%_
                               _%hd171445171780%_
                               _%tl171446171782%_
                               _%e171447171785%_
                               _%hd171448171788%_
                               _%tl171449171790%_
                               _%e171450171793%_
                               _%hd171451171796%_
                               _%tl171452171798%_
                               _%e171453171801%_
                               _%hd171454171804%_
                               _%tl171455171806%_
                               _%e171456171809%_
                               _%hd171457171812%_
                               _%tl171458171814%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171452171798%_))
                            (let ((_%e171459171817%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171452171798%_))))
                              (let ((_%tl171461171822%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171459171817%_)))
                                    (_%hd171460171820%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171459171817%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171461171822%_))
                                    (_%__match177682177683%_
                                     _%e171429171737%_
                                     _%hd171430171740%_
                                     _%tl171431171742%_
                                     _%e171432171745%_
                                     _%hd171433171748%_
                                     _%tl171434171750%_
                                     _%e171435171753%_
                                     _%hd171436171756%_
                                     _%tl171437171758%_
                                     _%e171438171761%_
                                     _%hd171439171764%_
                                     _%tl171440171766%_
                                     _%e171441171769%_
                                     _%hd171442171772%_
                                     _%tl171443171774%_
                                     _%e171444171777%_
                                     _%hd171445171780%_
                                     _%tl171446171782%_
                                     _%e171447171785%_
                                     _%hd171448171788%_
                                     _%tl171449171790%_
                                     _%e171450171793%_
                                     _%hd171451171796%_
                                     _%tl171452171798%_
                                     _%e171453171801%_
                                     _%hd171454171804%_
                                     _%tl171455171806%_
                                     _%e171456171809%_
                                     _%hd171457171812%_
                                     _%tl171458171814%_
                                     _%e171459171817%_
                                     _%hd171460171820%_
                                     _%tl171461171822%_)
                                    (_%__kont177319177320%_))))
                            (_%__match177798177799%_
                             _%e171429171737%_
                             _%hd171430171740%_
                             _%tl171431171742%_
                             _%e171432171745%_
                             _%hd171433171748%_
                             _%tl171434171750%_
                             _%e171435171753%_
                             _%hd171436171756%_
                             _%tl171437171758%_
                             _%e171438171761%_
                             _%hd171439171764%_
                             _%tl171440171766%_
                             _%e171441171769%_
                             _%hd171442171772%_
                             _%tl171443171774%_
                             _%e171444171777%_
                             _%hd171445171780%_
                             _%tl171446171782%_
                             _%e171447171785%_
                             _%hd171448171788%_
                             _%tl171449171790%_
                             _%e171450171793%_
                             _%hd171451171796%_
                             _%tl171452171798%_))))
                     (_%__match177596177597%_
                      (lambda (_%e171395171871%_
                               _%hd171396171874%_
                               _%tl171397171876%_
                               _%e171398171879%_
                               _%hd171399171882%_
                               _%tl171400171884%_
                               _%e171401171887%_
                               _%hd171402171890%_
                               _%tl171403171892%_
                               _%e171404171895%_
                               _%hd171405171898%_
                               _%tl171406171900%_
                               _%e171407171903%_
                               _%hd171408171906%_
                               _%tl171409171908%_
                               _%e171410171911%_
                               _%hd171411171914%_
                               _%tl171412171916%_
                               _%e171413171919%_
                               _%hd171414171922%_
                               _%tl171415171924%_
                               _%e171416171927%_
                               _%hd171417171930%_
                               _%tl171418171932%_
                               _%e171419171935%_
                               _%hd171420171938%_
                               _%tl171421171940%_
                               _%e171422171943%_
                               _%hd171423171946%_
                               _%tl171424171948%_)
                        (let ((_%L171951%_ _%hd171423171946%_)
                              (_%L171952%_ _%hd171414171922%_)
                              (_%L171953%_ _%hd171405171898%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171953%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171953%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp177961
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171283%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171952%_
                                      __tmp177961)))
                              (_%__kont177311177312%_
                               _%L171951%_
                               _%L171952%_
                               _%L171953%_)
                              (_%__match177800177801%_
                               _%e171395171871%_
                               _%hd171396171874%_
                               _%tl171397171876%_
                               _%e171398171879%_
                               _%hd171399171882%_
                               _%tl171400171884%_
                               _%e171401171887%_
                               _%hd171402171890%_
                               _%tl171403171892%_
                               _%e171404171895%_
                               _%hd171405171898%_
                               _%tl171406171900%_
                               _%e171407171903%_
                               _%hd171408171906%_
                               _%tl171409171908%_
                               _%e171410171911%_
                               _%hd171411171914%_
                               _%tl171412171916%_
                               _%e171413171919%_
                               _%hd171414171922%_
                               _%tl171415171924%_
                               _%e171416171927%_
                               _%hd171417171930%_
                               _%tl171418171932%_)))))
                     (_%__match177594177595%_
                      (lambda (_%e171395171871%_
                               _%hd171396171874%_
                               _%tl171397171876%_
                               _%e171398171879%_
                               _%hd171399171882%_
                               _%tl171400171884%_
                               _%e171401171887%_
                               _%hd171402171890%_
                               _%tl171403171892%_
                               _%e171404171895%_
                               _%hd171405171898%_
                               _%tl171406171900%_
                               _%e171407171903%_
                               _%hd171408171906%_
                               _%tl171409171908%_
                               _%e171410171911%_
                               _%hd171411171914%_
                               _%tl171412171916%_
                               _%e171413171919%_
                               _%hd171414171922%_
                               _%tl171415171924%_
                               _%e171416171927%_
                               _%hd171417171930%_
                               _%tl171418171932%_
                               _%e171419171935%_
                               _%hd171420171938%_
                               _%tl171421171940%_
                               _%e171422171943%_
                               _%hd171423171946%_
                               _%tl171424171948%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171418171932%_))
                            (_%__match177596177597%_
                             _%e171395171871%_
                             _%hd171396171874%_
                             _%tl171397171876%_
                             _%e171398171879%_
                             _%hd171399171882%_
                             _%tl171400171884%_
                             _%e171401171887%_
                             _%hd171402171890%_
                             _%tl171403171892%_
                             _%e171404171895%_
                             _%hd171405171898%_
                             _%tl171406171900%_
                             _%e171407171903%_
                             _%hd171408171906%_
                             _%tl171409171908%_
                             _%e171410171911%_
                             _%hd171411171914%_
                             _%tl171412171916%_
                             _%e171413171919%_
                             _%hd171414171922%_
                             _%tl171415171924%_
                             _%e171416171927%_
                             _%hd171417171930%_
                             _%tl171418171932%_
                             _%e171419171935%_
                             _%hd171420171938%_
                             _%tl171421171940%_
                             _%e171422171943%_
                             _%hd171423171946%_
                             _%tl171424171948%_)
                            (_%__match177674177675%_
                             _%e171395171871%_
                             _%hd171396171874%_
                             _%tl171397171876%_
                             _%e171398171879%_
                             _%hd171399171882%_
                             _%tl171400171884%_
                             _%e171401171887%_
                             _%hd171402171890%_
                             _%tl171403171892%_
                             _%e171404171895%_
                             _%hd171405171898%_
                             _%tl171406171900%_
                             _%e171407171903%_
                             _%hd171408171906%_
                             _%tl171409171908%_
                             _%e171410171911%_
                             _%hd171411171914%_
                             _%tl171412171916%_
                             _%e171413171919%_
                             _%hd171414171922%_
                             _%tl171415171924%_
                             _%e171416171927%_
                             _%hd171417171930%_
                             _%tl171418171932%_
                             _%e171419171935%_
                             _%hd171420171938%_
                             _%tl171421171940%_
                             _%e171422171943%_
                             _%hd171423171946%_
                             _%tl171424171948%_))))
                     (_%__match177584177585%_
                      (lambda (_%e171395171871%_
                               _%hd171396171874%_
                               _%tl171397171876%_
                               _%e171398171879%_
                               _%hd171399171882%_
                               _%tl171400171884%_
                               _%e171401171887%_
                               _%hd171402171890%_
                               _%tl171403171892%_
                               _%e171404171895%_
                               _%hd171405171898%_
                               _%tl171406171900%_
                               _%e171407171903%_
                               _%hd171408171906%_
                               _%tl171409171908%_
                               _%e171410171911%_
                               _%hd171411171914%_
                               _%tl171412171916%_
                               _%e171413171919%_
                               _%hd171414171922%_
                               _%tl171415171924%_
                               _%e171416171927%_
                               _%hd171417171930%_
                               _%tl171418171932%_
                               _%e171419171935%_
                               _%hd171420171938%_
                               _%tl171421171940%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd171420171938%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171421171940%_))
                                (let ((_%e171422171943%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171421171940%_))))
                                  (let ((_%tl171424171948%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171422171943%_)))
                                        (_%hd171423171946%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171422171943%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171424171948%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171418171932%_))
                                            (_%__match177596177597%_
                                             _%e171395171871%_
                                             _%hd171396171874%_
                                             _%tl171397171876%_
                                             _%e171398171879%_
                                             _%hd171399171882%_
                                             _%tl171400171884%_
                                             _%e171401171887%_
                                             _%hd171402171890%_
                                             _%tl171403171892%_
                                             _%e171404171895%_
                                             _%hd171405171898%_
                                             _%tl171406171900%_
                                             _%e171407171903%_
                                             _%hd171408171906%_
                                             _%tl171409171908%_
                                             _%e171410171911%_
                                             _%hd171411171914%_
                                             _%tl171412171916%_
                                             _%e171413171919%_
                                             _%hd171414171922%_
                                             _%tl171415171924%_
                                             _%e171416171927%_
                                             _%hd171417171930%_
                                             _%tl171418171932%_
                                             _%e171419171935%_
                                             _%hd171420171938%_
                                             _%tl171421171940%_
                                             _%e171422171943%_
                                             _%hd171423171946%_
                                             _%tl171424171948%_)
                                            (_%__match177674177675%_
                                             _%e171395171871%_
                                             _%hd171396171874%_
                                             _%tl171397171876%_
                                             _%e171398171879%_
                                             _%hd171399171882%_
                                             _%tl171400171884%_
                                             _%e171401171887%_
                                             _%hd171402171890%_
                                             _%tl171403171892%_
                                             _%e171404171895%_
                                             _%hd171405171898%_
                                             _%tl171406171900%_
                                             _%e171407171903%_
                                             _%hd171408171906%_
                                             _%tl171409171908%_
                                             _%e171410171911%_
                                             _%hd171411171914%_
                                             _%tl171412171916%_
                                             _%e171413171919%_
                                             _%hd171414171922%_
                                             _%tl171415171924%_
                                             _%e171416171927%_
                                             _%hd171417171930%_
                                             _%tl171418171932%_
                                             _%e171419171935%_
                                             _%hd171420171938%_
                                             _%tl171421171940%_
                                             _%e171422171943%_
                                             _%hd171423171946%_
                                             _%tl171424171948%_))
                                        (_%__match177798177799%_
                                         _%e171395171871%_
                                         _%hd171396171874%_
                                         _%tl171397171876%_
                                         _%e171398171879%_
                                         _%hd171399171882%_
                                         _%tl171400171884%_
                                         _%e171401171887%_
                                         _%hd171402171890%_
                                         _%tl171403171892%_
                                         _%e171404171895%_
                                         _%hd171405171898%_
                                         _%tl171406171900%_
                                         _%e171407171903%_
                                         _%hd171408171906%_
                                         _%tl171409171908%_
                                         _%e171410171911%_
                                         _%hd171411171914%_
                                         _%tl171412171916%_
                                         _%e171413171919%_
                                         _%hd171414171922%_
                                         _%tl171415171924%_
                                         _%e171416171927%_
                                         _%hd171417171930%_
                                         _%tl171418171932%_))))
                                (_%__match177798177799%_
                                 _%e171395171871%_
                                 _%hd171396171874%_
                                 _%tl171397171876%_
                                 _%e171398171879%_
                                 _%hd171399171882%_
                                 _%tl171400171884%_
                                 _%e171401171887%_
                                 _%hd171402171890%_
                                 _%tl171403171892%_
                                 _%e171404171895%_
                                 _%hd171405171898%_
                                 _%tl171406171900%_
                                 _%e171407171903%_
                                 _%hd171408171906%_
                                 _%tl171409171908%_
                                 _%e171410171911%_
                                 _%hd171411171914%_
                                 _%tl171412171916%_
                                 _%e171413171919%_
                                 _%hd171414171922%_
                                 _%tl171415171924%_
                                 _%e171416171927%_
                                 _%hd171417171930%_
                                 _%tl171418171932%_))
                            (_%__match177798177799%_
                             _%e171395171871%_
                             _%hd171396171874%_
                             _%tl171397171876%_
                             _%e171398171879%_
                             _%hd171399171882%_
                             _%tl171400171884%_
                             _%e171401171887%_
                             _%hd171402171890%_
                             _%tl171403171892%_
                             _%e171404171895%_
                             _%hd171405171898%_
                             _%tl171406171900%_
                             _%e171407171903%_
                             _%hd171408171906%_
                             _%tl171409171908%_
                             _%e171410171911%_
                             _%hd171411171914%_
                             _%tl171412171916%_
                             _%e171413171919%_
                             _%hd171414171922%_
                             _%tl171415171924%_
                             _%e171416171927%_
                             _%hd171417171930%_
                             _%tl171418171932%_))))
                     (_%__match177516177517%_
                      (lambda (_%e171344171992%_
                               _%hd171345171995%_
                               _%tl171346171997%_
                               _%e171347172000%_
                               _%hd171348172003%_
                               _%tl171349172005%_
                               _%e171350172008%_
                               _%hd171351172011%_
                               _%tl171352172013%_
                               _%e171353172016%_
                               _%hd171354172019%_
                               _%tl171355172021%_
                               _%e171356172024%_
                               _%hd171357172027%_
                               _%tl171358172029%_
                               _%e171359172032%_
                               _%hd171360172035%_
                               _%tl171361172037%_
                               _%e171362172040%_
                               _%hd171363172043%_
                               _%tl171364172045%_
                               _%e171365172048%_
                               _%hd171366172051%_
                               _%tl171367172053%_
                               _%e171368172056%_
                               _%hd171369172059%_
                               _%tl171370172061%_
                               _%e171371172064%_
                               _%hd171372172067%_
                               _%tl171373172069%_
                               _%e171374172072%_
                               _%hd171375172075%_
                               _%tl171376172077%_
                               _%e171377172080%_
                               _%hd171378172083%_
                               _%tl171379172085%_
                               _%e171380172088%_
                               _%hd171381172091%_
                               _%tl171382172093%_
                               _%__splice177309177310%_
                               _%target171383172096%_
                               _%tl171385172098%_)
                        (letrec ((_%loop171386172101%_
                                  (lambda (_%hd171384172104%_
                                           _%args171390172106%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171384172104%_))
                                        (let ((_%e171387172109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171384172104%_))))
                                          (let ((_%lp-tl171389172114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171387172109%_)))
                                                (_%lp-hd171388172112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171387172109%_))))
                                            (_%loop171386172101%_
                                             _%lp-tl171389172114%_
                                             (cons _%lp-hd171388172112%_
                                                   _%args171390172106%_))))
                                        (let ((_%args171391172117%_
                                               (reverse _%args171390172106%_)))
                                          (let ((_%L172120%_
                                                 _%args171391172117%_)
                                                (_%L172121%_
                                                 _%hd171381172091%_)
                                                (_%L172122%_
                                                 _%hd171372172067%_)
                                                (_%L172123%_
                                                 _%hd171363172043%_)
                                                (_%L172124%_
                                                 _%hd171354172019%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172124%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172123%_
                                                        'call-method))
                                                     (let ((__tmp177962
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171283%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172122%_
                                                        __tmp177962)))
                                                (_%__kont177307177308%_
                                                 _%L172120%_
                                                 _%L172121%_
                                                 _%L172122%_
                                                 _%L172123%_
                                                 _%L172124%_)
                                                (_%__kont177319177320%_))))))))
                          (_%loop171386172101%_ _%target171383172096%_ '()))))
                     (_%__match177474177475%_
                      (lambda (_%e171344171992%_
                               _%hd171345171995%_
                               _%tl171346171997%_
                               _%e171347172000%_
                               _%hd171348172003%_
                               _%tl171349172005%_
                               _%e171350172008%_
                               _%hd171351172011%_
                               _%tl171352172013%_
                               _%e171353172016%_
                               _%hd171354172019%_
                               _%tl171355172021%_
                               _%e171356172024%_
                               _%hd171357172027%_
                               _%tl171358172029%_
                               _%e171359172032%_
                               _%hd171360172035%_
                               _%tl171361172037%_
                               _%e171362172040%_
                               _%hd171363172043%_
                               _%tl171364172045%_
                               _%e171365172048%_
                               _%hd171366172051%_
                               _%tl171367172053%_
                               _%e171368172056%_
                               _%hd171369172059%_
                               _%tl171370172061%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd171369172059%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171370172061%_))
                                (let ((_%e171371172064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171370172061%_))))
                                  (let ((_%tl171373172069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171371172064%_)))
                                        (_%hd171372172067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171371172064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171373172069%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171367172053%_))
                                            (let ((_%e171374172072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171367172053%_))))
                                              (let ((_%tl171376172077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171374172072%_)))
                                                    (_%hd171375172075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171374172072%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd171375172075%_))
                                                    (let ((_%e171377172080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd171375172075%_))))
                                                      (let ((_%tl171379172085%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171377172080%_)))
                    (_%hd171378172083%_
                     (let () (declare (not safe)) (##car _%e171377172080%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd171378172083%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd171378172083%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171379172085%_))
                            (let ((_%e171380172088%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171379172085%_))))
                              (let ((_%tl171382172093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171380172088%_)))
                                    (_%hd171381172091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171380172088%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171382172093%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171376172077%_))
                                        (let ((_%__splice177309177310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171376172077%_
                                                  '0))))
                                          (let ((_%tl171385172098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177309177310%_
                                                    '1)))
                                                (_%target171383172096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177309177310%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl171385172098%_))
                                                (_%__match177516177517%_
                                                 _%e171344171992%_
                                                 _%hd171345171995%_
                                                 _%tl171346171997%_
                                                 _%e171347172000%_
                                                 _%hd171348172003%_
                                                 _%tl171349172005%_
                                                 _%e171350172008%_
                                                 _%hd171351172011%_
                                                 _%tl171352172013%_
                                                 _%e171353172016%_
                                                 _%hd171354172019%_
                                                 _%tl171355172021%_
                                                 _%e171356172024%_
                                                 _%hd171357172027%_
                                                 _%tl171358172029%_
                                                 _%e171359172032%_
                                                 _%hd171360172035%_
                                                 _%tl171361172037%_
                                                 _%e171362172040%_
                                                 _%hd171363172043%_
                                                 _%tl171364172045%_
                                                 _%e171365172048%_
                                                 _%hd171366172051%_
                                                 _%tl171367172053%_
                                                 _%e171368172056%_
                                                 _%hd171369172059%_
                                                 _%tl171370172061%_
                                                 _%e171371172064%_
                                                 _%hd171372172067%_
                                                 _%tl171373172069%_
                                                 _%e171374172072%_
                                                 _%hd171375172075%_
                                                 _%tl171376172077%_
                                                 _%e171377172080%_
                                                 _%hd171378172083%_
                                                 _%tl171379172085%_
                                                 _%e171380172088%_
                                                 _%hd171381172091%_
                                                 _%tl171382172093%_
                                                 _%__splice177309177310%_
                                                 _%target171383172096%_
                                                 _%tl171385172098%_)
                                                (_%__kont177319177320%_))))
                                        (_%__kont177319177320%_))
                                    (_%__kont177319177320%_))))
                            (_%__kont177319177320%_))
                        (_%__kont177319177320%_))
                    (_%__kont177319177320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177319177320%_))))
                                            (_%__match177798177799%_
                                             _%e171344171992%_
                                             _%hd171345171995%_
                                             _%tl171346171997%_
                                             _%e171347172000%_
                                             _%hd171348172003%_
                                             _%tl171349172005%_
                                             _%e171350172008%_
                                             _%hd171351172011%_
                                             _%tl171352172013%_
                                             _%e171353172016%_
                                             _%hd171354172019%_
                                             _%tl171355172021%_
                                             _%e171356172024%_
                                             _%hd171357172027%_
                                             _%tl171358172029%_
                                             _%e171359172032%_
                                             _%hd171360172035%_
                                             _%tl171361172037%_
                                             _%e171362172040%_
                                             _%hd171363172043%_
                                             _%tl171364172045%_
                                             _%e171365172048%_
                                             _%hd171366172051%_
                                             _%tl171367172053%_))
                                        (_%__match177798177799%_
                                         _%e171344171992%_
                                         _%hd171345171995%_
                                         _%tl171346171997%_
                                         _%e171347172000%_
                                         _%hd171348172003%_
                                         _%tl171349172005%_
                                         _%e171350172008%_
                                         _%hd171351172011%_
                                         _%tl171352172013%_
                                         _%e171353172016%_
                                         _%hd171354172019%_
                                         _%tl171355172021%_
                                         _%e171356172024%_
                                         _%hd171357172027%_
                                         _%tl171358172029%_
                                         _%e171359172032%_
                                         _%hd171360172035%_
                                         _%tl171361172037%_
                                         _%e171362172040%_
                                         _%hd171363172043%_
                                         _%tl171364172045%_
                                         _%e171365172048%_
                                         _%hd171366172051%_
                                         _%tl171367172053%_))))
                                (_%__match177798177799%_
                                 _%e171344171992%_
                                 _%hd171345171995%_
                                 _%tl171346171997%_
                                 _%e171347172000%_
                                 _%hd171348172003%_
                                 _%tl171349172005%_
                                 _%e171350172008%_
                                 _%hd171351172011%_
                                 _%tl171352172013%_
                                 _%e171353172016%_
                                 _%hd171354172019%_
                                 _%tl171355172021%_
                                 _%e171356172024%_
                                 _%hd171357172027%_
                                 _%tl171358172029%_
                                 _%e171359172032%_
                                 _%hd171360172035%_
                                 _%tl171361172037%_
                                 _%e171362172040%_
                                 _%hd171363172043%_
                                 _%tl171364172045%_
                                 _%e171365172048%_
                                 _%hd171366172051%_
                                 _%tl171367172053%_))
                            (_%__match177584177585%_
                             _%e171344171992%_
                             _%hd171345171995%_
                             _%tl171346171997%_
                             _%e171347172000%_
                             _%hd171348172003%_
                             _%tl171349172005%_
                             _%e171350172008%_
                             _%hd171351172011%_
                             _%tl171352172013%_
                             _%e171353172016%_
                             _%hd171354172019%_
                             _%tl171355172021%_
                             _%e171356172024%_
                             _%hd171357172027%_
                             _%tl171358172029%_
                             _%e171359172032%_
                             _%hd171360172035%_
                             _%tl171361172037%_
                             _%e171362172040%_
                             _%hd171363172043%_
                             _%tl171364172045%_
                             _%e171365172048%_
                             _%hd171366172051%_
                             _%tl171367172053%_
                             _%e171368172056%_
                             _%hd171369172059%_
                             _%tl171370172061%_))))
                     (_%__match177406177407%_
                      (lambda (_%e171300172184%_
                               _%hd171301172187%_
                               _%tl171302172189%_
                               _%e171303172192%_
                               _%hd171304172195%_
                               _%tl171305172197%_
                               _%e171306172200%_
                               _%hd171307172203%_
                               _%tl171308172205%_
                               _%e171309172208%_
                               _%hd171310172211%_
                               _%tl171311172213%_
                               _%e171312172216%_
                               _%hd171313172219%_
                               _%tl171314172221%_
                               _%e171315172224%_
                               _%hd171316172227%_
                               _%tl171317172229%_
                               _%e171318172232%_
                               _%hd171319172235%_
                               _%tl171320172237%_
                               _%e171321172240%_
                               _%hd171322172243%_
                               _%tl171323172245%_
                               _%e171324172248%_
                               _%hd171325172251%_
                               _%tl171326172253%_
                               _%e171327172256%_
                               _%hd171328172259%_
                               _%tl171329172261%_
                               _%__splice177305177306%_
                               _%target171330172264%_
                               _%tl171332172266%_)
                        (letrec ((_%loop171333172269%_
                                  (lambda (_%hd171331172272%_
                                           _%args171337172274%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171331172272%_))
                                        (let ((_%e171334172277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171331172272%_))))
                                          (let ((_%lp-tl171336172282%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171334172277%_)))
                                                (_%lp-hd171335172280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171334172277%_))))
                                            (_%loop171333172269%_
                                             _%lp-tl171336172282%_
                                             (cons _%lp-hd171335172280%_
                                                   _%args171337172274%_))))
                                        (let ((_%args171338172285%_
                                               (reverse _%args171337172274%_)))
                                          (let ((_%L172288%_
                                                 _%args171338172285%_)
                                                (_%L172289%_
                                                 _%hd171328172259%_)
                                                (_%L172290%_
                                                 _%hd171319172235%_)
                                                (_%L172291%_
                                                 _%hd171310172211%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172291%_
                                                        'call-method))
                                                     (let ((__tmp177963
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171283%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172290%_
                                                        __tmp177963)))
                                                (_%__kont177303177304%_
                                                 _%L172288%_
                                                 _%L172289%_
                                                 _%L172290%_
                                                 _%L172291%_)
                                                (_%__match177594177595%_
                                                 _%e171300172184%_
                                                 _%hd171301172187%_
                                                 _%tl171302172189%_
                                                 _%e171303172192%_
                                                 _%hd171304172195%_
                                                 _%tl171305172197%_
                                                 _%e171306172200%_
                                                 _%hd171307172203%_
                                                 _%tl171308172205%_
                                                 _%e171309172208%_
                                                 _%hd171310172211%_
                                                 _%tl171311172213%_
                                                 _%e171312172216%_
                                                 _%hd171313172219%_
                                                 _%tl171314172221%_
                                                 _%e171315172224%_
                                                 _%hd171316172227%_
                                                 _%tl171317172229%_
                                                 _%e171318172232%_
                                                 _%hd171319172235%_
                                                 _%tl171320172237%_
                                                 _%e171321172240%_
                                                 _%hd171322172243%_
                                                 _%tl171323172245%_
                                                 _%e171324172248%_
                                                 _%hd171325172251%_
                                                 _%tl171326172253%_
                                                 _%e171327172256%_
                                                 _%hd171328172259%_
                                                 _%tl171329172261%_))))))))
                          (_%loop171333172269%_ _%target171330172264%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177301177302%_))
                    (let ((_%e171300172184%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177301177302%_))))
                      (let ((_%tl171302172189%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171300172184%_)))
                            (_%hd171301172187%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171300172184%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171302172189%_))
                            (let ((_%e171303172192%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171302172189%_))))
                              (let ((_%tl171305172197%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171303172192%_)))
                                    (_%hd171304172195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171303172192%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171304172195%_))
                                    (let ((_%e171306172200%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171304172195%_))))
                                      (let ((_%tl171308172205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171306172200%_)))
                                            (_%hd171307172203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171306172200%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171307172203%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171307172203%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171308172205%_))
                                                    (let ((_%e171309172208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171308172205%_))))
                                                      (let ((_%tl171311172213%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171309172208%_)))
                    (_%hd171310172211%_
                     (let () (declare (not safe)) (##car _%e171309172208%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171311172213%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171305172197%_))
                        (let ((_%e171312172216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171305172197%_))))
                          (let ((_%tl171314172221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171312172216%_)))
                                (_%hd171313172219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171312172216%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171313172219%_))
                                (let ((_%e171315172224%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171313172219%_))))
                                  (let ((_%tl171317172229%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171315172224%_)))
                                        (_%hd171316172227%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171315172224%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171316172227%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd171316172227%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171317172229%_))
                                                (let ((_%e171318172232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171317172229%_))))
                                                  (let ((_%tl171320172237%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171318172232%_)))
                                                        (_%hd171319172235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171318172232%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171320172237%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171314172221%_))
                                                            (let ((_%e171321172240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171314172221%_))))
                      (let ((_%tl171323172245%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171321172240%_)))
                            (_%hd171322172243%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171321172240%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd171322172243%_))
                            (let ((_%e171324172248%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd171322172243%_))))
                              (let ((_%tl171326172253%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171324172248%_)))
                                    (_%hd171325172251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171324172248%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171325172251%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd171325172251%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171326172253%_))
                                            (let ((_%e171327172256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171326172253%_))))
                                              (let ((_%tl171329172261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171327172256%_)))
                                                    (_%hd171328172259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171327172256%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171329172261%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl171323172245%_))
                                                        (let ((_%__splice177305177306%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl171323172245%_ '0))))
                  (let ((_%tl171332172266%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177305177306%_ '1)))
                        (_%target171330172264%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177305177306%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171332172266%_))
                        (_%__match177406177407%_
                         _%e171300172184%_
                         _%hd171301172187%_
                         _%tl171302172189%_
                         _%e171303172192%_
                         _%hd171304172195%_
                         _%tl171305172197%_
                         _%e171306172200%_
                         _%hd171307172203%_
                         _%tl171308172205%_
                         _%e171309172208%_
                         _%hd171310172211%_
                         _%tl171311172213%_
                         _%e171312172216%_
                         _%hd171313172219%_
                         _%tl171314172221%_
                         _%e171315172224%_
                         _%hd171316172227%_
                         _%tl171317172229%_
                         _%e171318172232%_
                         _%hd171319172235%_
                         _%tl171320172237%_
                         _%e171321172240%_
                         _%hd171322172243%_
                         _%tl171323172245%_
                         _%e171324172248%_
                         _%hd171325172251%_
                         _%tl171326172253%_
                         _%e171327172256%_
                         _%hd171328172259%_
                         _%tl171329172261%_
                         _%__splice177305177306%_
                         _%target171330172264%_
                         _%tl171332172266%_)
                        (_%__match177594177595%_
                         _%e171300172184%_
                         _%hd171301172187%_
                         _%tl171302172189%_
                         _%e171303172192%_
                         _%hd171304172195%_
                         _%tl171305172197%_
                         _%e171306172200%_
                         _%hd171307172203%_
                         _%tl171308172205%_
                         _%e171309172208%_
                         _%hd171310172211%_
                         _%tl171311172213%_
                         _%e171312172216%_
                         _%hd171313172219%_
                         _%tl171314172221%_
                         _%e171315172224%_
                         _%hd171316172227%_
                         _%tl171317172229%_
                         _%e171318172232%_
                         _%hd171319172235%_
                         _%tl171320172237%_
                         _%e171321172240%_
                         _%hd171322172243%_
                         _%tl171323172245%_
                         _%e171324172248%_
                         _%hd171325172251%_
                         _%tl171326172253%_
                         _%e171327172256%_
                         _%hd171328172259%_
                         _%tl171329172261%_))))
                (_%__match177594177595%_
                 _%e171300172184%_
                 _%hd171301172187%_
                 _%tl171302172189%_
                 _%e171303172192%_
                 _%hd171304172195%_
                 _%tl171305172197%_
                 _%e171306172200%_
                 _%hd171307172203%_
                 _%tl171308172205%_
                 _%e171309172208%_
                 _%hd171310172211%_
                 _%tl171311172213%_
                 _%e171312172216%_
                 _%hd171313172219%_
                 _%tl171314172221%_
                 _%e171315172224%_
                 _%hd171316172227%_
                 _%tl171317172229%_
                 _%e171318172232%_
                 _%hd171319172235%_
                 _%tl171320172237%_
                 _%e171321172240%_
                 _%hd171322172243%_
                 _%tl171323172245%_
                 _%e171324172248%_
                 _%hd171325172251%_
                 _%tl171326172253%_
                 _%e171327172256%_
                 _%hd171328172259%_
                 _%tl171329172261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match177798177799%_
                                                     _%e171300172184%_
                                                     _%hd171301172187%_
                                                     _%tl171302172189%_
                                                     _%e171303172192%_
                                                     _%hd171304172195%_
                                                     _%tl171305172197%_
                                                     _%e171306172200%_
                                                     _%hd171307172203%_
                                                     _%tl171308172205%_
                                                     _%e171309172208%_
                                                     _%hd171310172211%_
                                                     _%tl171311172213%_
                                                     _%e171312172216%_
                                                     _%hd171313172219%_
                                                     _%tl171314172221%_
                                                     _%e171315172224%_
                                                     _%hd171316172227%_
                                                     _%tl171317172229%_
                                                     _%e171318172232%_
                                                     _%hd171319172235%_
                                                     _%tl171320172237%_
                                                     _%e171321172240%_
                                                     _%hd171322172243%_
                                                     _%tl171323172245%_))))
                                            (_%__match177798177799%_
                                             _%e171300172184%_
                                             _%hd171301172187%_
                                             _%tl171302172189%_
                                             _%e171303172192%_
                                             _%hd171304172195%_
                                             _%tl171305172197%_
                                             _%e171306172200%_
                                             _%hd171307172203%_
                                             _%tl171308172205%_
                                             _%e171309172208%_
                                             _%hd171310172211%_
                                             _%tl171311172213%_
                                             _%e171312172216%_
                                             _%hd171313172219%_
                                             _%tl171314172221%_
                                             _%e171315172224%_
                                             _%hd171316172227%_
                                             _%tl171317172229%_
                                             _%e171318172232%_
                                             _%hd171319172235%_
                                             _%tl171320172237%_
                                             _%e171321172240%_
                                             _%hd171322172243%_
                                             _%tl171323172245%_))
                                        (_%__match177474177475%_
                                         _%e171300172184%_
                                         _%hd171301172187%_
                                         _%tl171302172189%_
                                         _%e171303172192%_
                                         _%hd171304172195%_
                                         _%tl171305172197%_
                                         _%e171306172200%_
                                         _%hd171307172203%_
                                         _%tl171308172205%_
                                         _%e171309172208%_
                                         _%hd171310172211%_
                                         _%tl171311172213%_
                                         _%e171312172216%_
                                         _%hd171313172219%_
                                         _%tl171314172221%_
                                         _%e171315172224%_
                                         _%hd171316172227%_
                                         _%tl171317172229%_
                                         _%e171318172232%_
                                         _%hd171319172235%_
                                         _%tl171320172237%_
                                         _%e171321172240%_
                                         _%hd171322172243%_
                                         _%tl171323172245%_
                                         _%e171324172248%_
                                         _%hd171325172251%_
                                         _%tl171326172253%_))
                                    (_%__match177798177799%_
                                     _%e171300172184%_
                                     _%hd171301172187%_
                                     _%tl171302172189%_
                                     _%e171303172192%_
                                     _%hd171304172195%_
                                     _%tl171305172197%_
                                     _%e171306172200%_
                                     _%hd171307172203%_
                                     _%tl171308172205%_
                                     _%e171309172208%_
                                     _%hd171310172211%_
                                     _%tl171311172213%_
                                     _%e171312172216%_
                                     _%hd171313172219%_
                                     _%tl171314172221%_
                                     _%e171315172224%_
                                     _%hd171316172227%_
                                     _%tl171317172229%_
                                     _%e171318172232%_
                                     _%hd171319172235%_
                                     _%tl171320172237%_
                                     _%e171321172240%_
                                     _%hd171322172243%_
                                     _%tl171323172245%_))))
                            (_%__match177798177799%_
                             _%e171300172184%_
                             _%hd171301172187%_
                             _%tl171302172189%_
                             _%e171303172192%_
                             _%hd171304172195%_
                             _%tl171305172197%_
                             _%e171306172200%_
                             _%hd171307172203%_
                             _%tl171308172205%_
                             _%e171309172208%_
                             _%hd171310172211%_
                             _%tl171311172213%_
                             _%e171312172216%_
                             _%hd171313172219%_
                             _%tl171314172221%_
                             _%e171315172224%_
                             _%hd171316172227%_
                             _%tl171317172229%_
                             _%e171318172232%_
                             _%hd171319172235%_
                             _%tl171320172237%_
                             _%e171321172240%_
                             _%hd171322172243%_
                             _%tl171323172245%_))))
                    (_%__match177736177737%_
                     _%e171300172184%_
                     _%hd171301172187%_
                     _%tl171302172189%_
                     _%e171303172192%_
                     _%hd171304172195%_
                     _%tl171305172197%_
                     _%e171306172200%_
                     _%hd171307172203%_
                     _%tl171308172205%_
                     _%e171309172208%_
                     _%hd171310172211%_
                     _%tl171311172213%_
                     _%e171312172216%_
                     _%hd171313172219%_
                     _%tl171314172221%_
                     _%e171315172224%_
                     _%hd171316172227%_
                     _%tl171317172229%_
                     _%e171318172232%_
                     _%hd171319172235%_
                     _%tl171320172237%_))
                (_%__kont177319177320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont177319177320%_))
                                            (_%__kont177319177320%_))
                                        (_%__kont177319177320%_))))
                                (_%__kont177319177320%_))))
                        (_%__kont177319177320%_))
                    (_%__kont177319177320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177319177320%_))
                                                (_%__kont177319177320%_))
                                            (_%__kont177319177320%_))))
                                    (_%__kont177319177320%_))))
                            (_%__kont177319177320%_))))
                    (_%__kont177319177320%_))))))))))
