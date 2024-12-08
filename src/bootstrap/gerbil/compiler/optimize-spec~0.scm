(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1733687563)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp177970 (list gxc#::identity::t))
            (__tmp177969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp177970
         '()
         __tmp177969
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args176767%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args176767%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp177971
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
        (__make-promise __tmp177971)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx176759%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self176762%_
                (let ((__obj177962
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj177962))
               (__tmp177972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176762%_ _%stx176759%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177972
           gxc#current-compile-method
           _%self176762%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp177974 (list gxc#::false::t))
            (__tmp177973 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp177974
         '()
         __tmp177973
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args176756%_
        (apply make-instance gxc#::extract-receiver::t _%$args176756%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp177975
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
        (__make-promise __tmp177975)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx176748%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self176751%_
                (let ((__obj177964
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj177964))
               (__tmp177976
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self176751%_ _%stx176748%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp177976
           gxc#current-compile-method
           _%self176751%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp177978 (list gxc#::void::t))
            (__tmp177977 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp177978
         '(receiver methods slots)
         __tmp177977
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args176745%_
        (apply make-instance gxc#::collect-object-refs::t _%$args176745%_)))
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
      (let ((__tmp177979
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
        (__make-promise __tmp177979)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords176711%_
               _%receiver176706176712%_
               _%methods176707176714%_
               _%slots176708176716%_
               _%stx176718%_)
        (let* ((_%receiver176721%_
                (if (eq? _%receiver176706176712%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176706176712%_))
               (_%methods176723%_
                (if (eq? _%methods176707176714%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176707176714%_))
               (_%slots176725%_
                (if (eq? _%slots176708176716%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176708176716%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self176727%_
                  (let ((__obj177966
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
                       __obj177966
                       _%receiver176721%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177966
                       _%methods176723%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177966
                       _%slots176725%_
                       '3
                       '#f
                       '#f))
                    __obj177966))
                 (__tmp177980
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176727%_ _%stx176718%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177980
             gxc#current-compile-method
             _%self176727%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords176734%_ . _%args176735%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords176734%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176734%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176734%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176734%_
                  'slots:
                  absent-value))
               _%args176735%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args176709176741%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args176709176741%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp177982 (list gxc#::basic-xform-expression::t))
            (__tmp177981 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp177982
         '(receiver klass methods slots)
         __tmp177981
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args176702%_
        (apply make-instance gxc#::subst-object-refs::t _%$args176702%_)))
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
      (let ((__tmp177983
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
        (__make-promise __tmp177983)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords176664%_
               _%receiver176658176665%_
               _%klass176659176667%_
               _%methods176660176669%_
               _%slots176661176671%_
               _%stx176673%_)
        (let* ((_%receiver176676%_
                (if (eq? _%receiver176658176665%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver176658176665%_))
               (_%klass176678%_
                (if (eq? _%klass176659176667%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass176659176667%_))
               (_%methods176680%_
                (if (eq? _%methods176660176669%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods176660176669%_))
               (_%slots176682%_
                (if (eq? _%slots176661176671%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots176661176671%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self176684%_
                  (let ((__obj177968
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
                       __obj177968
                       _%receiver176676%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177968
                       _%klass176678%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177968
                       _%methods176680%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj177968
                       _%slots176682%_
                       '4
                       '#f
                       '#f))
                    __obj177968))
                 (__tmp177984
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self176684%_ _%stx176673%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp177984
             gxc#current-compile-method
             _%self176684%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords176691%_ . _%args176692%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords176691%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176691%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176691%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176691%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords176691%_
                  'slots:
                  absent-value))
               _%args176692%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args176662176698%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args176662176698%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self173773%_ _%stx173774%_)
        (letrec ((_%generate-method-bind173776%_
                  (lambda (_%$klass176650%_
                           _%$method-table176651%_
                           _%id176652%_
                           _%$id176653%_)
                    (let ((_%$tmp176655%_
                           (let ((__tmp177985
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177985))))
                      (cons (cons _%$id176653%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp176655%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table176651%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id176652%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp176655%_ '()))
                    (cons (cons '%#ref (cons _%$tmp176655%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id176652%_
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
                 (_%generate-slot-bind173777%_
                  (lambda (_%$klass176644%_ _%id176645%_ _%$id176646%_)
                    (let ((_%$tmp176648%_
                           (let ((__tmp177986
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp177986))))
                      (cons (cons _%$id176646%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp176648%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass176644%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id176645%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp176648%_ '()))
                        (cons (cons '%#ref (cons _%$tmp176648%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id176645%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl173778%_
                  (lambda (_%$klass176638%_
                           _%$method-table176639%_
                           _%methods-bind176640%_
                           _%slots-bind176641%_
                           _%specializer-impl176642%_)
                    (let ((__tmp177987
                           (cons '%#lambda
                                 (cons (cons _%$klass176638%_
                                             (cons _%$method-table176639%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind176641%_
                                                            _%methods-bind176640%_))
                                                         (cons _%specializer-impl176642%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177987 _%stx173774%_))))
                 (_%generate-specializer-def173779%_
                  (lambda (_%id176634%_
                           _%specializer-id176635%_
                           _%specializer-impl176636%_)
                    (let ((__tmp177988
                           (cons '%#begin
                                 (cons _%stx173774%_
                                       (cons (let ((__tmp177989
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id176635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl176636%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp177989
                                                _%stx173774%_))
                                             (cons (let ((__tmp177990
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id176634%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id176635%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp177990
                                                      _%stx173774%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp177988 _%stx173774%_)))))
          (let* ((_%__stx176856176857%_ _%stx173774%_)
                 (_%g173782173802%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx176856176857%_)))))
            (let ((_%__kont176858176859%_
                   (lambda (_%L173846%_ _%L173847%_)
                     (let ((_%method-calls173866%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs173867%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty173868%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?173870%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls173866%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs173867%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L173846%_))
                             (let* ((_%__stx176770176771%_ _%L173846%_)
                                    (_%g174258174276%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx176770176771%_)))))
                               (let ((_%__kont176772176773%_
                                      (lambda (_%L174312%_
                                               _%L174313%_
                                               _%L174314%_)
                                        (let ((_%receiver174334%_
                                               (let ((_%$e174331%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L174312%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e174331%_
                                                     _%$e174331%_
                                                     _%L174314%_))))
                                          (for-each
                                           (lambda (_%g174335174337%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver174334%_
                                              _%method-calls173866%_
                                              _%slot-refs173867%_
                                              _%g174335174337%_))
                                           _%L174312%_)
                                          (if (_%no-specializer?173870%_)
                                              _%stx173774%_
                                              (let* ((_%specializer-id174346%_
                                                      (let* ((_%id174340%_
                                                              (let ((__tmp177991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173847%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp177991 '"::specialize")))
                     (_%specializer-id174343%_
                      (let ((__tmp177992
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173774%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id174340%_ __tmp177992))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id174343%_))
                _%specializer-id174343%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass174348%_
                                                      (let ((__tmp177993
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp177993)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table174350%_
                                                      (let ((__tmp177994
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp177994)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods174352%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173866%_)))
                                                     (_%$methods174356%_
                                                      (map (lambda (_%id174354%_)
                                                             (let ((__tmp177995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174354%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177995)))
                   _%methods174352%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174365%_
                                                      (for-each
                                                       (lambda (_%g174357174360%_
                                                                _%g174358174362%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173866%_
                                                            _%g174357174360%_
                                                            _%g174358174362%_)))
                                                       _%methods174352%_
                                                       _%$methods174356%_))
                                                     (_%methods-bind174375%_
                                                      (map (lambda (_%g174367174370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174368174372%_)
                     (_%generate-method-bind173776%_
                      _%$klass174348%_
                      _%$method-table174350%_
                      _%g174367174370%_
                      _%g174368174372%_))
                   _%methods174352%_
                   _%$methods174356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots174377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173867%_)))
                                                     (_%$slots174381%_
                                                      (map (lambda (_%id174379%_)
                                                             (let ((__tmp177996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id174379%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp177996)))
                   _%slots174377%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_174390%_
                                                      (for-each
                                                       (lambda (_%g174382174385%_
                                                                _%g174383174387%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173867%_
                                                            _%g174382174385%_
                                                            _%g174383174387%_)))
                                                       _%slots174377%_
                                                       _%$slots174381%_))
                                                     (_%slots-bind174399%_
                                                      (map (lambda (_%g174391174394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g174392174396%_)
                     (_%generate-slot-bind173777%_
                      _%$klass174348%_
                      _%g174391174394%_
                      _%g174392174396%_))
                   _%slots174377%_
                   _%$slots174381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body174405%_
                                                      (map (lambda (_%g174400174402%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver174334%_
                                                              _%$klass174348%_
                                                              _%method-calls173866%_
                                                              _%slot-refs173867%_
                                                              _%g174400174402%_))
                                                           _%L174312%_))
                                                     (_%specializer-impl174407%_
                                                      (let ((__tmp177997
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L174314%_ _%L174313%_)
                                 _%specializer-body174405%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp177997 _%stx173774%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl174409%_
                                                      (_%generate-specializer-impl173778%_
                                                       _%$klass174348%_
                                                       _%$method-table174350%_
                                                       _%methods-bind174375%_
                                                       _%slots-bind174399%_
                                                       _%specializer-impl174407%_)))
                                                (let ((__tmp177999
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173847%_)))
                                                      (__tmp177998
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id174346%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp177999
                                                   '" => "
                                                   __tmp177998))
                                                (_%generate-specializer-def173779%_
                                                 _%L173847%_
                                                 _%specializer-id174346%_
                                                 _%specializer-impl174409%_))))))
                                     (_%__kont176774176775%_
                                      (lambda () _%stx173774%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx176770176771%_))
                                     (let ((_%e174263174288%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx176770176771%_))))
                                       (let ((_%tl174265174293%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e174263174288%_)))
                                             (_%hd174264174291%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e174263174288%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl174265174293%_))
                                             (let ((_%e174266174296%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl174265174293%_))))
                                               (let ((_%tl174268174301%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e174266174296%_)))
                                                     (_%hd174267174299%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e174266174296%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd174267174299%_))
                                                     (let ((_%e174269174304%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd174267174299%_))))
                                                       (let ((_%tl174271174309%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e174269174304%_)))
                     (_%hd174270174307%_
                      (let () (declare (not safe)) (##car _%e174269174304%_))))
                 (_%__kont176772176773%_
                  _%tl174268174301%_
                  _%tl174271174309%_
                  _%hd174270174307%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont176774176775%_))))
                                             (_%__kont176774176775%_))))
                                     (_%__kont176774176775%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L173846%_))
                                 (let* ((_%g174416174435%_
                                         (lambda (_%g174417174432%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g174417174432%_))))
                                        (_%g174415174733%_
                                         (lambda (_%g174417174438%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g174417174438%_))
                                               (let ((_%e174419174440%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g174417174438%_))))
                                                 (let ((_%hd174420174443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174419174440%_)))
                                                       (_%tl174421174445%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174419174440%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl174421174445%_))
                                                       (let ((_g178000_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl174421174445%_ '0))))
                 (begin
                   (let ((_g178001_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g178000_)
                                (##vector-length _g178000_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g178001_ 2)))
                         (error "Context expects 2 values" _g178001_)))
                   (let ((_%target174422174448%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g178000_ 0)))
                         (_%tl174424174450%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g178000_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl174424174450%_))
                         (letrec ((_%loop174425174453%_
                                   (lambda (_%hd174423174456%_
                                            _%clause174429174458%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174423174456%_))
                                         (let ((_%e174426174461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174423174456%_))))
                                           (let ((_%lp-hd174427174464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174426174461%_)))
                                                 (_%lp-tl174428174466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174426174461%_))))
                                             (_%loop174425174453%_
                                              _%lp-tl174428174466%_
                                              (cons _%lp-hd174427174464%_
                                                    _%clause174429174458%_))))
                                         (let ((_%clause174430174469%_
                                                (reverse _%clause174429174458%_)))
                                           ((lambda (_%L174472%_)
                                              (for-each
                                               (lambda (_%clause174486%_)
                                                 (let* ((_%__stx176796176797%_
                                                         _%clause174486%_)
                                                        (_%g174489174504%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx176796176797%_)))))
                                                   (let ((_%__kont176798176799%_
                                                          (lambda (_%L174532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L174533%_
                           _%L174534%_)
                    (let ((_%receiver174553%_
                           (let ((_%$e174550%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L174532%_))))
                             (if _%$e174550%_ _%$e174550%_ _%L174534%_))))
                      (for-each
                       (lambda (_%g174554174556%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver174553%_
                          _%method-calls173866%_
                          _%slot-refs173867%_
                          _%g174554174556%_))
                       _%L174532%_))))
                 (_%__kont176800176801%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx176796176797%_))
                                                         (let ((_%e174494174516%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx176796176797%_))))
                   (let ((_%tl174496174521%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e174494174516%_)))
                         (_%hd174495174519%_
                          (let ()
                            (declare (not safe))
                            (##car _%e174494174516%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd174495174519%_))
                         (let ((_%e174497174524%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd174495174519%_))))
                           (let ((_%tl174499174529%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e174497174524%_)))
                                 (_%hd174498174527%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e174497174524%_))))
                             (_%__kont176798176799%_
                              _%tl174496174521%_
                              _%tl174499174529%_
                              _%hd174498174527%_)))
                         (_%__kont176800176801%_))))
                 (_%__kont176800176801%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp178002
                                                      (lambda (_%g174561174564%_
                                                               _%g174562174566%_)
                                                        (cons _%g174561174564%_
                                                              _%g174562174566%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178002
                                                  '()
                                                  _%L174472%_)))
                                              (if (_%no-specializer?173870%_)
                                                  _%stx173774%_
                                                  (let* ((_%specializer-id174575%_
                                                          (let* ((_%id174569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178003
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173847%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178003 '"::specialize")))
                         (_%specializer-id174572%_
                          (let ((__tmp178004
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173774%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174569%_
                             __tmp178004))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174572%_))
                    _%specializer-id174572%_))
                 (_%$klass174577%_
                  (let ((__tmp178005
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178005)))
                 (_%$method-table174579%_
                  (let ((__tmp178006
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178006)))
                 (_%methods174581%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173866%_)))
                 (_%$methods174585%_
                  (map (lambda (_%id174583%_)
                         (let ((__tmp178007 (gensym _%id174583%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178007)))
                       _%methods174581%_))
                 (_%_174594%_
                  (for-each
                   (lambda (_%g174586174589%_ _%g174587174591%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173866%_
                        _%g174586174589%_
                        _%g174587174591%_)))
                   _%methods174581%_
                   _%$methods174585%_))
                 (_%methods-bind174604%_
                  (map (lambda (_%g174596174599%_ _%g174597174601%_)
                         (_%generate-method-bind173776%_
                          _%$klass174577%_
                          _%$method-table174579%_
                          _%g174596174599%_
                          _%g174597174601%_))
                       _%methods174581%_
                       _%$methods174585%_))
                 (_%slots174606%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173867%_)))
                 (_%$slots174610%_
                  (map (lambda (_%id174608%_)
                         (let ((__tmp178008 (gensym _%id174608%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178008)))
                       _%slots174606%_))
                 (_%_174619%_
                  (for-each
                   (lambda (_%g174611174614%_ _%g174612174616%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173867%_
                        _%g174611174614%_
                        _%g174612174616%_)))
                   _%slots174606%_
                   _%$slots174610%_))
                 (_%slots-bind174628%_
                  (map (lambda (_%g174620174623%_ _%g174621174625%_)
                         (_%generate-slot-bind173777%_
                          _%$klass174577%_
                          _%g174620174623%_
                          _%g174621174625%_))
                       _%slots174606%_
                       _%$slots174610%_))
                 (_%specializer-clauses174726%_
                  (map (lambda (_%clause174630%_)
                         (let* ((_%__stx176816176817%_ _%clause174630%_)
                                (_%g174633174648%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx176816176817%_)))))
                           (let ((_%__kont176818176819%_
                                  (lambda (_%L174676%_ _%L174677%_ _%L174678%_)
                                    (let* ((_%receiver174707%_
                                            (let ((_%$e174704%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L174676%_))))
                                              (if _%$e174704%_
                                                  _%$e174704%_
                                                  _%L174678%_)))
                                           (_%body174713%_
                                            (map (lambda (_%g174708174710%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver174707%_
                                                    _%$klass174577%_
                                                    _%method-calls173866%_
                                                    _%slot-refs173867%_
                                                    _%g174708174710%_))
                                                 _%L174676%_)))
                                      (cons (cons _%L174678%_ _%L174677%_)
                                            _%body174713%_))))
                                 (_%__kont176820176821%_
                                  (lambda () _%clause174630%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx176816176817%_))
                                 (let ((_%e174638174660%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx176816176817%_))))
                                   (let ((_%tl174640174665%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e174638174660%_)))
                                         (_%hd174639174663%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e174638174660%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd174639174663%_))
                                         (let ((_%e174641174668%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd174639174663%_))))
                                           (let ((_%tl174643174673%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e174641174668%_)))
                                                 (_%hd174642174671%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e174641174668%_))))
                                             (_%__kont176818176819%_
                                              _%tl174640174665%_
                                              _%tl174643174673%_
                                              _%hd174642174671%_)))
                                         (_%__kont176820176821%_))))
                                 (_%__kont176820176821%_)))))
                       (let ((__tmp178009
                              (lambda (_%g174718174721%_ _%g174719174723%_)
                                (cons _%g174718174721%_ _%g174719174723%_))))
                         (declare (not safe))
                         (__foldr1 __tmp178009 '() _%L174472%_))))
                 (_%specializer-impl174728%_
                  (let ((__tmp178010
                         (cons '%#case-lambda _%specializer-clauses174726%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178010 _%stx173774%_)))
                 (_%specializer-impl174730%_
                  (_%generate-specializer-impl173778%_
                   _%$klass174577%_
                   _%$method-table174579%_
                   _%methods-bind174604%_
                   _%slots-bind174628%_
                   _%specializer-impl174728%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173847%_)))
                                                          (__tmp178011
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174575%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178012
                                                       '" => "
                                                       __tmp178011))
                                                    (_%generate-specializer-def173779%_
                                                     _%L173847%_
                                                     _%specializer-id174575%_
                                                     _%specializer-impl174730%_))))
                                            _%clause174430174469%_))))))
                           (_%loop174425174453%_ _%target174422174448%_ '()))
                         (_%g174416174435%_ _%g174417174438%_)))))
               (_%g174416174435%_ _%g174417174438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174416174435%_
                                                _%g174417174438%_)))))
                                   (_%g174415174733%_ _%L173846%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L173846%_))
                                     (let* ((_%g174737174767%_
                                             (lambda (_%g174738174764%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174738174764%_))))
                                            (_%g174736175398%_
                                             (lambda (_%g174738174770%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174738174770%_))
                                                   (let ((_%e174742174772%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174738174770%_))))
                                                     (let ((_%hd174743174775%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174742174772%_)))
                                                           (_%tl174744174777%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174742174772%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174744174777%_))
                                                           (let ((_%e174745174780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174744174777%_))))
                     (let ((_%hd174746174783%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174745174780%_)))
                           (_%tl174747174785%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174745174780%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd174746174783%_))
                           (let ((_%e174748174788%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd174746174783%_))))
                             (let ((_%hd174749174791%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e174748174788%_)))
                                   (_%tl174750174793%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e174748174788%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd174749174791%_))
                                   (let ((_%e174751174796%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd174749174791%_))))
                                     (let ((_%hd174752174799%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174751174796%_)))
                                           (_%tl174753174801%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174751174796%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd174752174799%_))
                                           (let ((_%e174754174804%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd174752174799%_))))
                                             (let ((_%hd174755174807%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e174754174804%_)))
                                                   (_%tl174756174809%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e174754174804%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl174756174809%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl174753174801%_))
                                                       (let ((_%e174757174812%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl174753174801%_))))
                 (let ((_%hd174758174815%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174757174812%_)))
                       (_%tl174759174817%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174757174812%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl174759174817%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174750174793%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl174747174785%_))
                               (let ((_%e174760174820%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl174747174785%_))))
                                 (let ((_%hd174761174823%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174760174820%_)))
                                       (_%tl174762174825%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174760174820%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl174762174825%_))
                                       ((lambda (_%L174828%_
                                                 _%L174829%_
                                                 _%L174830%_)
                                          (let* ((_%g174854174872%_
                                                  (lambda (_%g174855174869%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174855174869%_))))
                                                 (_%g174853174928%_
                                                  (lambda (_%g174855174875%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174855174875%_))
                                                        (let ((_%e174859174877%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174855174875%_))))
                  (let ((_%hd174860174880%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174859174877%_)))
                        (_%tl174861174882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174859174877%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl174861174882%_))
                        (let ((_%e174862174885%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl174861174882%_))))
                          (let ((_%hd174863174888%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e174862174885%_)))
                                (_%tl174864174890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e174862174885%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd174863174888%_))
                                (let ((_%e174865174893%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd174863174888%_))))
                                  (let ((_%hd174866174896%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174865174893%_)))
                                        (_%tl174867174898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174865174893%_))))
                                    ((lambda (_%L174901%_
                                              _%L174902%_
                                              _%L174903%_)
                                       (let ((_%receiver174922%_
                                              (let ((_%$e174919%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L174901%_))))
                                                (if _%$e174919%_
                                                    _%$e174919%_
                                                    _%L174903%_))))
                                         (for-each
                                          (lambda (_%g174923174925%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver174922%_
                                             _%method-calls173866%_
                                             _%slot-refs173867%_
                                             _%g174923174925%_))
                                          _%L174901%_)))
                                     _%tl174864174890%_
                                     _%tl174867174898%_
                                     _%hd174866174896%_)))
                                (_%g174854174872%_ _%g174855174875%_))))
                        (_%g174854174872%_ _%g174855174875%_))))
                (_%g174854174872%_ _%g174855174875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174853174928%_ _%L174829%_))
                                          (let* ((_%g174931174950%_
                                                  (lambda (_%g174932174947%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g174932174947%_))))
                                                 (_%g174930175074%_
                                                  (lambda (_%g174932174953%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g174932174953%_))
                                                        (let ((_%e174934174955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g174932174953%_))))
                  (let ((_%hd174935174958%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174934174955%_)))
                        (_%tl174936174960%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174934174955%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174936174960%_))
                        (let ((_g178013_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl174936174960%_
                                  '0))))
                          (begin
                            (let ((_g178014_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g178013_)
                                         (##vector-length _g178013_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g178014_ 2)))
                                  (error "Context expects 2 values"
                                         _g178014_)))
                            (let ((_%target174937174963%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g178013_ 0)))
                                  (_%tl174939174965%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g178013_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl174939174965%_))
                                  (letrec ((_%loop174940174968%_
                                            (lambda (_%hd174938174971%_
                                                     _%clause174944174973%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd174938174971%_))
                                                  (let ((_%e174941174976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd174938174971%_))))
                                                    (let ((_%lp-hd174942174979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e174941174976%_)))
                                                          (_%lp-tl174943174981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e174941174976%_))))
                                                      (_%loop174940174968%_
                                                       _%lp-tl174943174981%_
                                                       (cons _%lp-hd174942174979%_
                                                             _%clause174944174973%_))))
                                                  (let ((_%clause174945174984%_
                                                         (reverse _%clause174944174973%_)))
                                                    ((lambda (_%L174987%_)
                                                       (for-each
                                                        (lambda (_%clause175000%_)
                                                          (let* ((_%g175002175017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g175003175014%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g175003175014%_))))
                         (_%g175001175064%_
                          (lambda (_%g175003175020%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g175003175020%_))
                                (let ((_%e175007175022%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g175003175020%_))))
                                  (let ((_%hd175008175025%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175007175022%_)))
                                        (_%tl175009175027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175007175022%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175008175025%_))
                                        (let ((_%e175010175030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175008175025%_))))
                                          (let ((_%hd175011175033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175010175030%_)))
                                                (_%tl175012175035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175010175030%_))))
                                            ((lambda (_%L175038%_
                                                      _%L175039%_
                                                      _%L175040%_)
                                               (let ((_%receiver175058%_
                                                      (let ((_%$e175055%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L175038%_))))
                (if _%$e175055%_ _%$e175055%_ _%L175040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g175059175061%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver175058%_
                                                     _%method-calls173866%_
                                                     _%slot-refs173867%_
                                                     _%g175059175061%_))
                                                  _%L175038%_)))
                                             _%tl175009175027%_
                                             _%tl175012175035%_
                                             _%hd175011175033%_)))
                                        (_%g175002175017%_
                                         _%g175003175020%_))))
                                (_%g175002175017%_ _%g175003175020%_)))))
                    (_%g175001175064%_ _%clause175000%_)))
                (let ((__tmp178015
                       (lambda (_%g175066175069%_ _%g175067175071%_)
                         (cons _%g175066175069%_ _%g175067175071%_))))
                  (declare (not safe))
                  (__foldr1 __tmp178015 '() _%L174987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause174945174984%_))))))
                                    (_%loop174940174968%_
                                     _%target174937174963%_
                                     '()))
                                  (_%g174931174950%_ _%g174932174953%_)))))
                        (_%g174931174950%_ _%g174932174953%_))))
                (_%g174931174950%_ _%g174932174953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g174930175074%_ _%L174828%_))
                                          (if (_%no-specializer?173870%_)
                                              _%stx173774%_
                                              (let* ((_%specializer-id175083%_
                                                      (let* ((_%id175077%_
                                                              (let ((__tmp178016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L173847%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp178016 '"::specialize")))
                     (_%specializer-id175080%_
                      (let ((__tmp178017
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx173774%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id175077%_ __tmp178017))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id175080%_))
                _%specializer-id175080%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass175085%_
                                                      (let ((__tmp178018
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp178018)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table175087%_
                                                      (let ((__tmp178019
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp178019)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods175089%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls173866%_)))
                                                     (_%$methods175093%_
                                                      (map (lambda (_%id175091%_)
                                                             (let ((__tmp178020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175091%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178020)))
                   _%methods175089%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175102%_
                                                      (for-each
                                                       (lambda (_%g175094175097%_
                                                                _%g175095175099%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls173866%_
                                                            _%g175094175097%_
                                                            _%g175095175099%_)))
                                                       _%methods175089%_
                                                       _%$methods175093%_))
                                                     (_%methods-bind175112%_
                                                      (map (lambda (_%g175104175107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175105175109%_)
                     (_%generate-method-bind173776%_
                      _%$klass175085%_
                      _%$method-table175087%_
                      _%g175104175107%_
                      _%g175105175109%_))
                   _%methods175089%_
                   _%$methods175093%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots175114%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs173867%_)))
                                                     (_%$slots175118%_
                                                      (map (lambda (_%id175116%_)
                                                             (let ((__tmp178021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id175116%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp178021)))
                   _%slots175114%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_175127%_
                                                      (for-each
                                                       (lambda (_%g175119175122%_
                                                                _%g175120175124%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs173867%_
                                                            _%g175119175122%_
                                                            _%g175120175124%_)))
                                                       _%slots175114%_
                                                       _%$slots175118%_))
                                                     (_%slots-bind175136%_
                                                      (map (lambda (_%g175128175131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g175129175133%_)
                     (_%generate-slot-bind173777%_
                      _%$klass175085%_
                      _%g175128175131%_
                      _%g175129175133%_))
                   _%slots175114%_
                   _%$slots175118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr175228%_
                                                      (let* ((_%g175138175156%_
                                                              (lambda (_%g175139175153%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175139175153%_))))
                     (_%g175137175225%_
                      (lambda (_%g175139175159%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175139175159%_))
                            (let ((_%e175143175161%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175139175159%_))))
                              (let ((_%hd175144175164%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175143175161%_)))
                                    (_%tl175145175166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175143175161%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175145175166%_))
                                    (let ((_%e175146175169%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175145175166%_))))
                                      (let ((_%hd175147175172%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175146175169%_)))
                                            (_%tl175148175174%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175146175169%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175147175172%_))
                                            (let ((_%e175149175177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175147175172%_))))
                                              (let ((_%hd175150175180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175149175177%_)))
                                                    (_%tl175151175182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175149175177%_))))
                                                ((lambda (_%L175185%_
                                                          _%L175186%_
                                                          _%L175187%_)
                                                   (let* ((_%receiver175216%_
                                                           (let ((_%$e175213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L175185%_))))
                     (if _%$e175213%_ _%$e175213%_ _%L175187%_)))
                  (_%body175222%_
                   (map (lambda (_%g175217175219%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver175216%_
                           _%$klass175085%_
                           _%method-calls173866%_
                           _%slot-refs173867%_
                           _%g175217175219%_))
                        _%L175185%_))
                  (__tmp178022
                   (cons '%#lambda
                         (cons (cons _%L175187%_ _%L175186%_)
                               _%body175222%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp178022
                                                      _%L174829%_)))
                                                 _%tl175148175174%_
                                                 _%tl175151175182%_
                                                 _%hd175150175180%_)))
                                            (_%g175138175156%_
                                             _%g175139175159%_))))
                                    (_%g175138175156%_ _%g175139175159%_))))
                            (_%g175138175156%_ _%g175139175159%_)))))
                (_%g175137175225%_ _%L174829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr175391%_
                                                      (let* ((_%g175230175249%_
                                                              (lambda (_%g175231175246%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175231175246%_))))
                     (_%g175229175388%_
                      (lambda (_%g175231175252%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175231175252%_))
                            (let ((_%e175233175254%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175231175252%_))))
                              (let ((_%hd175234175257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175233175254%_)))
                                    (_%tl175235175259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175233175254%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl175235175259%_))
                                    (let ((_g178023_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl175235175259%_
                                              '0))))
                                      (begin
                                        (let ((_g178024_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178023_)
                                                     (##vector-length
                                                      _g178023_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178024_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178024_)))
                                        (let ((_%target175236175262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g178023_ 0)))
                                              (_%tl175238175264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g178023_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175238175264%_))
                                              (letrec ((_%loop175239175267%_
                                                        (lambda (_%hd175237175270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause175243175272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175237175270%_))
                      (let ((_%e175240175275%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175237175270%_))))
                        (let ((_%lp-hd175241175278%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175240175275%_)))
                              (_%lp-tl175242175280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175240175275%_))))
                          (_%loop175239175267%_
                           _%lp-tl175242175280%_
                           (cons _%lp-hd175241175278%_
                                 _%clause175243175272%_))))
                      (let ((_%clause175244175283%_
                             (reverse _%clause175243175272%_)))
                        ((lambda (_%L175286%_)
                           (let* ((_%clauses175386%_
                                   (map (lambda (_%clause175300%_)
                                          (let* ((_%__stx176836176837%_
                                                  _%clause175300%_)
                                                 (_%g175303175318%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx176836176837%_)))))
                                            (let ((_%__kont176838176839%_
                                                   (lambda (_%L175346%_
                                                            _%L175347%_
                                                            _%L175348%_)
                                                     (let* ((_%receiver175367%_
                                                             (let ((_%$e175364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L175346%_))))
                       (if _%$e175364%_ _%$e175364%_ _%L175348%_)))
                    (_%body175373%_
                     (map (lambda (_%g175368175370%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver175367%_
                             _%$klass175085%_
                             _%method-calls173866%_
                             _%slot-refs173867%_
                             _%g175368175370%_))
                          _%L175346%_)))
               (cons (cons _%L175348%_ _%L175347%_) _%body175373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176840176841%_
                                                   (lambda ()
                                                     _%clause175300%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx176836176837%_))
                                                  (let ((_%e175308175330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx176836176837%_))))
                                                    (let ((_%tl175310175335%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e175308175330%_)))
                                                          (_%hd175309175333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e175308175330%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd175309175333%_))
                                                          (let ((_%e175311175338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd175309175333%_))))
                    (let ((_%tl175313175343%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e175311175338%_)))
                          (_%hd175312175341%_
                           (let ()
                             (declare (not safe))
                             (##car _%e175311175338%_))))
                      (_%__kont176838176839%_
                       _%tl175310175335%_
                       _%tl175313175343%_
                       _%hd175312175341%_)))
                  (_%__kont176840176841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176840176841%_)))))
                                        (let ((__tmp178025
                                               (lambda (_%g175378175381%_
                                                        _%g175379175383%_)
                                                 (cons _%g175378175381%_
                                                       _%g175379175383%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp178025
                                           '()
                                           _%L175286%_))))
                                  (__tmp178026
                                   (cons '%#case-lambda _%clauses175386%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178026 _%L174828%_)))
                         _%clause175244175283%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175239175267%_
                                                 _%target175236175262%_
                                                 '()))
                                              (_%g175230175249%_
                                               _%g175231175252%_)))))
                                    (_%g175230175249%_ _%g175231175252%_))))
                            (_%g175230175249%_ _%g175231175252%_)))))
                (_%g175229175388%_ _%L174828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175393%_
                                                      (let ((__tmp178027
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L174830%_ '())
                                             (cons _%specializer-lambda-expr175228%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr175391%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp178027 _%stx173774%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl175395%_
                                                      (_%generate-specializer-impl173778%_
                                                       _%$klass175085%_
                                                       _%$method-table175087%_
                                                       _%methods-bind175112%_
                                                       _%slots-bind175136%_
                                                       _%specializer-impl175393%_)))
                                                (let ((__tmp178029
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173847%_)))
                                                      (__tmp178028
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id175083%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp178029
                                                   '" => "
                                                   __tmp178028))
                                                (_%generate-specializer-def173779%_
                                                 _%L173847%_
                                                 _%specializer-id175083%_
                                                 _%specializer-impl175395%_))))
                                        _%hd174761174823%_
                                        _%hd174758174815%_
                                        _%hd174755174807%_)
                                       (_%g174737174767%_ _%g174738174770%_))))
                               (_%g174737174767%_ _%g174738174770%_))
                           (_%g174737174767%_ _%g174738174770%_))
                       (_%g174737174767%_ _%g174738174770%_))))
               (_%g174737174767%_ _%g174738174770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174737174767%_
                                                    _%g174738174770%_))))
                                           (_%g174737174767%_
                                            _%g174738174770%_))))
                                   (_%g174737174767%_ _%g174738174770%_))))
                           (_%g174737174767%_ _%g174738174770%_))))
                   (_%g174737174767%_ _%g174738174770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174737174767%_
                                                    _%g174738174770%_)))))
                                       (_%g174736175398%_ _%L173846%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L173846%_))
                                         (let* ((_%g175402175455%_
                                                 (lambda (_%g175403175452%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g175403175452%_))))
                                                (_%g175401176626%_
                                                 (lambda (_%g175403175458%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g175403175458%_))
                                                       (let ((_%e175409175460%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g175403175458%_))))
                 (let ((_%hd175410175463%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175409175460%_)))
                       (_%tl175411175465%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175409175460%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd175410175463%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd175410175463%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl175411175465%_))
                               (let ((_%e175412175468%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl175411175465%_))))
                                 (let ((_%hd175413175471%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e175412175468%_)))
                                       (_%tl175414175473%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e175412175468%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd175413175471%_))
                                       (let ((_%e175415175476%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd175413175471%_))))
                                         (let ((_%hd175416175479%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e175415175476%_)))
                                               (_%tl175417175481%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e175415175476%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd175416175479%_))
                                               (let ((_%e175418175484%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd175416175479%_))))
                                                 (let ((_%hd175419175487%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175418175484%_)))
                                                       (_%tl175420175489%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175418175484%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd175419175487%_))
                                                       (let ((_%e175421175492%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd175419175487%_))))
                 (let ((_%hd175422175495%_
                        (let ()
                          (declare (not safe))
                          (##car _%e175421175492%_)))
                       (_%tl175423175497%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e175421175492%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl175423175497%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl175420175489%_))
                           (let ((_%e175424175500%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl175420175489%_))))
                             (let ((_%hd175425175503%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175424175500%_)))
                                   (_%tl175426175505%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175424175500%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175425175503%_))
                                   (let ((_%e175427175508%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175425175503%_))))
                                     (let ((_%hd175428175511%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175427175508%_)))
                                           (_%tl175429175513%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175427175508%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd175428175511%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd175428175511%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl175429175513%_))
                                                   (let ((_%e175430175516%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl175429175513%_))))
                                                     (let ((_%hd175431175519%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175430175516%_)))
                                                           (_%tl175432175521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175430175516%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd175431175519%_))
                                                           (let ((_%e175433175524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd175431175519%_))))
                     (let ((_%hd175434175527%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175433175524%_)))
                           (_%tl175435175529%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175433175524%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd175434175527%_))
                           (let ((_%e175436175532%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd175434175527%_))))
                             (let ((_%hd175437175535%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e175436175532%_)))
                                   (_%tl175438175537%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e175436175532%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd175437175535%_))
                                   (let ((_%e175439175540%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd175437175535%_))))
                                     (let ((_%hd175440175543%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e175439175540%_)))
                                           (_%tl175441175545%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e175439175540%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl175441175545%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl175438175537%_))
                                               (let ((_%e175442175548%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl175438175537%_))))
                                                 (let ((_%hd175443175551%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e175442175548%_)))
                                                       (_%tl175444175553%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e175442175548%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl175444175553%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl175435175529%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl175432175521%_))
                       (let ((_%e175445175556%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl175432175521%_))))
                         (let ((_%hd175446175559%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e175445175556%_)))
                               (_%tl175447175561%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e175445175556%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl175447175561%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl175426175505%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl175417175481%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl175414175473%_))
                                           (let ((_%e175448175564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl175414175473%_))))
                                             (let ((_%hd175449175567%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e175448175564%_)))
                                                   (_%tl175450175569%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e175448175564%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl175450175569%_))
                                                   ((lambda (_%L175572%_
                                                             _%L175573%_
                                                             _%L175574%_
                                                             _%L175575%_
                                                             _%L175576%_)
                                                      (let* ((_%g175616175678%_
                                                              (lambda (_%g175617175675%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g175617175675%_))))
                     (_%g175615176623%_
                      (lambda (_%g175617175681%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g175617175681%_))
                            (let ((_%e175623175683%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g175617175681%_))))
                              (let ((_%hd175624175686%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175623175683%_)))
                                    (_%tl175625175688%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175623175683%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd175624175686%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd175624175686%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl175625175688%_))
                                            (let ((_%e175626175691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl175625175688%_))))
                                              (let ((_%hd175627175694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175626175691%_)))
                                                    (_%tl175628175696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175626175691%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175628175696%_))
                                                    (let ((_%e175629175699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175628175696%_))))
                                                      (let ((_%hd175630175702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175629175699%_)))
                    (_%tl175631175704%_
                     (let () (declare (not safe)) (##cdr _%e175629175699%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd175630175702%_))
                    (let ((_%e175632175707%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd175630175702%_))))
                      (let ((_%hd175633175710%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175632175707%_)))
                            (_%tl175634175712%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175632175707%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd175633175710%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd175633175710%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl175634175712%_))
                                    (let ((_%e175635175715%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl175634175712%_))))
                                      (let ((_%hd175636175718%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175635175715%_)))
                                            (_%tl175637175720%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175635175715%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd175636175718%_))
                                            (let ((_%e175638175723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd175636175718%_))))
                                              (let ((_%hd175639175726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e175638175723%_)))
                                                    (_%tl175640175728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e175638175723%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd175639175726%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd175639175726%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl175640175728%_))
                                                            (let ((_%e175641175731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl175640175728%_))))
                      (let ((_%hd175642175734%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175641175731%_)))
                            (_%tl175643175736%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175641175731%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175643175736%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl175637175720%_))
                                (let ((_%e175644175739%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl175637175720%_))))
                                  (let ((_%hd175645175742%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e175644175739%_)))
                                        (_%tl175646175744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e175644175739%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd175645175742%_))
                                        (let ((_%e175647175747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd175645175742%_))))
                                          (let ((_%hd175648175750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e175647175747%_)))
                                                (_%tl175649175752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e175647175747%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd175648175750%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd175648175750%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl175649175752%_))
                                                        (let ((_%e175650175755%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl175649175752%_))))
                  (let ((_%hd175651175758%_
                         (let ()
                           (declare (not safe))
                           (##car _%e175650175755%_)))
                        (_%tl175652175760%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e175650175755%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl175652175760%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl175646175744%_))
                            (let ((_%e175653175763%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl175646175744%_))))
                              (let ((_%hd175654175766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e175653175763%_)))
                                    (_%tl175655175768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e175653175763%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd175654175766%_))
                                    (let ((_%e175656175771%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd175654175766%_))))
                                      (let ((_%hd175657175774%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e175656175771%_)))
                                            (_%tl175658175776%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e175656175771%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd175657175774%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd175657175774%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl175658175776%_))
                                                    (let ((_%e175659175779%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl175658175776%_))))
                                                      (let ((_%hd175660175782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e175659175779%_)))
                    (_%tl175661175784%_
                     (let () (declare (not safe)) (##cdr _%e175659175779%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl175661175784%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl175655175768%_))
                        (if (let ((__tmp178030
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl175655175768%_))))
                              (declare (not safe))
                              (##fx>= __tmp178030 '1))
                            (let ((_g178031_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl175655175768%_
                                      '1))))
                              (begin
                                (let ((_g178032_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178031_)
                                             (##vector-length _g178031_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178032_ 2)))
                                      (error "Context expects 2 values"
                                             _g178032_)))
                                (let ((_%target175662175787%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178031_ 0)))
                                      (_%tl175664175789%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178031_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl175664175789%_))
                                      (let ((_%e175671175792%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl175664175789%_))))
                                        (let ((_%hd175672175795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e175671175792%_)))
                                              (_%tl175673175797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e175671175792%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl175673175797%_))
                                              (letrec ((_%loop175665175800%_
                                                        (lambda (_%hd175663175803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref175669175805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd175663175803%_))
                      (let ((_%e175666175808%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd175663175803%_))))
                        (let ((_%lp-hd175667175811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e175666175808%_)))
                              (_%lp-tl175668175813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e175666175808%_))))
                          (_%loop175665175800%_
                           _%lp-tl175668175813%_
                           (cons _%lp-hd175667175811%_
                                 _%kw-ref175669175805%_))))
                      (let ((_%kw-ref175670175816%_
                             (reverse _%kw-ref175669175805%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl175631175704%_))
                            ((lambda (_%L175819%_
                                      _%L175820%_
                                      _%L175821%_
                                      _%L175822%_
                                      _%L175823%_)
                               (let* ((_%kw-count175874%_
                                       (length (let ((__tmp178033
                                                      (lambda (_%g175866175869%_
                                                               _%g175867175871%_)
                                                        (cons _%g175866175869%_
                                                              _%g175867175871%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp178033
                                                  '()
                                                  _%L175820%_))))
                                      (_%self-index175876%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count175874%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L175574%_))
                                     (let* ((_%g175880175894%_
                                             (lambda (_%g175881175891%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g175881175891%_))))
                                            (_%g175879176017%_
                                             (lambda (_%g175881175897%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g175881175897%_))
                                                   (let ((_%e175884175899%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g175881175897%_))))
                                                     (let ((_%hd175885175902%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e175884175899%_)))
                                                           (_%tl175886175904%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e175884175899%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl175886175904%_))
                                                           (let ((_%e175887175907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl175886175904%_))))
                     (let ((_%hd175888175910%_
                            (let ()
                              (declare (not safe))
                              (##car _%e175887175907%_)))
                           (_%tl175889175912%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e175887175907%_))))
                       ((lambda (_%L175915%_ _%L175916%_)
                          (let* ((_%self175933%_
                                  (list-ref _%L175916%_ _%self-index175876%_))
                                 (_%receiver175938%_
                                  (let ((_%$e175935%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L175915%_))))
                                    (if _%$e175935%_
                                        _%$e175935%_
                                        _%self175933%_))))
                            (for-each
                             (lambda (_%g175940175942%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver175938%_
                                _%method-calls173866%_
                                _%slot-refs173867%_
                                _%g175940175942%_))
                             _%L175915%_)
                            (if (_%no-specializer?173870%_)
                                _%stx173774%_
                                (let* ((_%specializer-id175951%_
                                        (let* ((_%id175945%_
                                                (let ((__tmp178034
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L173847%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp178034
                                                   '"::specialize")))
                                               (_%specializer-id175948%_
                                                (let ((__tmp178035
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx173774%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id175945%_
                                                   __tmp178035))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id175948%_))
                                          _%specializer-id175948%_))
                                       (_%$klass175953%_
                                        (let ((__tmp178036
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178036)))
                                       (_%$method-table175955%_
                                        (let ((__tmp178037
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp178037)))
                                       (_%methods175957%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls173866%_)))
                                       (_%$methods175961%_
                                        (map (lambda (_%id175959%_)
                                               (let ((__tmp178038
                                                      (gensym _%id175959%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178038)))
                                             _%methods175957%_))
                                       (_%_175970%_
                                        (for-each
                                         (lambda (_%g175962175965%_
                                                  _%g175963175967%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls173866%_
                                              _%g175962175965%_
                                              _%g175963175967%_)))
                                         _%methods175957%_
                                         _%$methods175961%_))
                                       (_%methods-bind175980%_
                                        (map (lambda (_%g175972175975%_
                                                      _%g175973175977%_)
                                               (_%generate-method-bind173776%_
                                                _%$klass175953%_
                                                _%$method-table175955%_
                                                _%g175972175975%_
                                                _%g175973175977%_))
                                             _%methods175957%_
                                             _%$methods175961%_))
                                       (_%slots175982%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs173867%_)))
                                       (_%$slots175986%_
                                        (map (lambda (_%id175984%_)
                                               (let ((__tmp178039
                                                      (gensym _%id175984%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp178039)))
                                             _%slots175982%_))
                                       (_%_175995%_
                                        (for-each
                                         (lambda (_%g175987175990%_
                                                  _%g175988175992%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs173867%_
                                              _%g175987175990%_
                                              _%g175988175992%_)))
                                         _%slots175982%_
                                         _%$slots175986%_))
                                       (_%slots-bind176004%_
                                        (map (lambda (_%g175996175999%_
                                                      _%g175997176001%_)
                                               (_%generate-slot-bind173777%_
                                                _%$klass175953%_
                                                _%g175996175999%_
                                                _%g175997176001%_))
                                             _%slots175982%_
                                             _%$slots175986%_))
                                       (_%specializer-impl176012%_
                                        (let* ((_%specializer-body176010%_
                                                (map (lambda (_%g176005176007%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver175938%_
                                                        _%$klass175953%_
                                                        _%method-calls173866%_
                                                        _%slot-refs173867%_
                                                        _%g176005176007%_))
                                                     _%L175915%_))
                                               (__tmp178040
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L175576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L175575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp178041
                                   (cons '%#lambda
                                         (cons _%L175916%_
                                               _%specializer-body176010%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp178041 _%L175574%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L175573%_ '())))
                                      '()))
                          '())
                    (cons _%L175572%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp178040
                                           _%stx173774%_)))
                                       (_%specializer-impl176014%_
                                        (_%generate-specializer-impl173778%_
                                         _%$klass175953%_
                                         _%$method-table175955%_
                                         _%methods-bind175980%_
                                         _%slots-bind176004%_
                                         _%specializer-impl176012%_)))
                                  (let ((__tmp178043
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L173847%_)))
                                        (__tmp178042
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id175951%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp178043
                                     '" => "
                                     __tmp178042))
                                  (_%generate-specializer-def173779%_
                                   _%L173847%_
                                   _%specializer-id175951%_
                                   _%specializer-impl176014%_)))))
                        _%tl175889175912%_
                        _%hd175888175910%_)))
                   (_%g175880175894%_ _%g175881175897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175880175894%_
                                                    _%g175881175897%_)))))
                                       (_%g175879176017%_ _%L175574%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L175574%_))
                                         (let* ((_%g176021176051%_
                                                 (lambda (_%g176022176048%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g176022176048%_))))
                                                (_%g176020176619%_
                                                 (lambda (_%g176022176054%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g176022176054%_))
                                                       (let ((_%e176026176056%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g176022176054%_))))
                 (let ((_%hd176027176059%_
                        (let ()
                          (declare (not safe))
                          (##car _%e176026176056%_)))
                       (_%tl176028176061%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e176026176056%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl176028176061%_))
                       (let ((_%e176029176064%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl176028176061%_))))
                         (let ((_%hd176030176067%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e176029176064%_)))
                               (_%tl176031176069%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e176029176064%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd176030176067%_))
                               (let ((_%e176032176072%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd176030176067%_))))
                                 (let ((_%hd176033176075%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e176032176072%_)))
                                       (_%tl176034176077%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e176032176072%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd176033176075%_))
                                       (let ((_%e176035176080%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd176033176075%_))))
                                         (let ((_%hd176036176083%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e176035176080%_)))
                                               (_%tl176037176085%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e176035176080%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd176036176083%_))
                                               (let ((_%e176038176088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd176036176083%_))))
                                                 (let ((_%hd176039176091%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e176038176088%_)))
                                                       (_%tl176040176093%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e176038176088%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl176040176093%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl176037176085%_))
                                                           (let ((_%e176041176096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl176037176085%_))))
                     (let ((_%hd176042176099%_
                            (let ()
                              (declare (not safe))
                              (##car _%e176041176096%_)))
                           (_%tl176043176101%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e176041176096%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl176043176101%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl176034176077%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl176031176069%_))
                                   (let ((_%e176044176104%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl176031176069%_))))
                                     (let ((_%hd176045176107%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e176044176104%_)))
                                           (_%tl176046176109%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e176044176104%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl176046176109%_))
                                           ((lambda (_%L176112%_
                                                     _%L176113%_
                                                     _%L176114%_)
                                              (let* ((_%g176138176152%_
                                                      (lambda (_%g176139176149%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176139176149%_))))
                                                     (_%g176137176199%_
                                                      (lambda (_%g176139176155%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176139176155%_))
                                                            (let ((_%e176142176157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176139176155%_))))
                      (let ((_%hd176143176160%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176142176157%_)))
                            (_%tl176144176162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176142176157%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl176144176162%_))
                            (let ((_%e176145176165%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl176144176162%_))))
                              (let ((_%hd176146176168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e176145176165%_)))
                                    (_%tl176147176170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e176145176165%_))))
                                ((lambda (_%L176173%_ _%L176174%_)
                                   (let* ((_%self176187%_
                                           (list-ref
                                            _%L176174%_
                                            _%self-index175876%_))
                                          (_%receiver176192%_
                                           (let ((_%$e176189%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L176173%_))))
                                             (if _%$e176189%_
                                                 _%$e176189%_
                                                 _%self176187%_))))
                                     (for-each
                                      (lambda (_%g176194176196%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver176192%_
                                         _%method-calls173866%_
                                         _%slot-refs173867%_
                                         _%g176194176196%_))
                                      _%L176173%_)))
                                 _%tl176147176170%_
                                 _%hd176146176168%_)))
                            (_%g176138176152%_ _%g176139176155%_))))
                    (_%g176138176152%_ _%g176139176155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176137176199%_
                                                 _%L176113%_))
                                              (let* ((_%g176202176221%_
                                                      (lambda (_%g176203176218%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176203176218%_))))
                                                     (_%g176201176332%_
                                                      (lambda (_%g176203176224%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176203176224%_))
                                                            (let ((_%e176205176226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176203176224%_))))
                      (let ((_%hd176206176229%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176205176226%_)))
                            (_%tl176207176231%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176205176226%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl176207176231%_))
                            (let ((_g178044_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl176207176231%_
                                      '0))))
                              (begin
                                (let ((_g178045_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g178044_)
                                             (##vector-length _g178044_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g178045_ 2)))
                                      (error "Context expects 2 values"
                                             _g178045_)))
                                (let ((_%target176208176234%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178044_ 0)))
                                      (_%tl176210176236%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g178044_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl176210176236%_))
                                      (letrec ((_%loop176211176239%_
                                                (lambda (_%hd176209176242%_
                                                         _%clause176215176244%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd176209176242%_))
                                                      (let ((_%e176212176247%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd176209176242%_))))
                (let ((_%lp-hd176213176250%_
                       (let () (declare (not safe)) (##car _%e176212176247%_)))
                      (_%lp-tl176214176252%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e176212176247%_))))
                  (_%loop176211176239%_
                   _%lp-tl176214176252%_
                   (cons _%lp-hd176213176250%_ _%clause176215176244%_))))
              (let ((_%clause176216176255%_ (reverse _%clause176215176244%_)))
                ((lambda (_%L176258%_)
                   (for-each
                    (lambda (_%clause176271%_)
                      (let* ((_%g176273176284%_
                              (lambda (_%g176274176281%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g176274176281%_))))
                             (_%g176272176322%_
                              (lambda (_%g176274176287%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g176274176287%_))
                                    (let ((_%e176277176289%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g176274176287%_))))
                                      (let ((_%hd176278176292%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e176277176289%_)))
                                            (_%tl176279176294%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e176277176289%_))))
                                        ((lambda (_%L176297%_ _%L176298%_)
                                           (let* ((_%self176310%_
                                                   (list-ref
                                                    _%L176298%_
                                                    _%self-index175876%_))
                                                  (_%receiver176315%_
                                                   (let ((_%$e176312%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L176297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e176312%_
                                                         _%$e176312%_
                                                         _%self176310%_))))
                                             (for-each
                                              (lambda (_%g176317176319%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver176315%_
                                                 _%method-calls173866%_
                                                 _%slot-refs173867%_
                                                 _%g176317176319%_))
                                              _%L176297%_)))
                                         _%tl176279176294%_
                                         _%hd176278176292%_)))
                                    (_%g176273176284%_ _%g176274176287%_)))))
                        (_%g176272176322%_ _%clause176271%_)))
                    (let ((__tmp178046
                           (lambda (_%g176324176327%_ _%g176325176329%_)
                             (cons _%g176324176327%_ _%g176325176329%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178046 '() _%L176258%_))))
                 _%clause176216176255%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop176211176239%_
                                         _%target176208176234%_
                                         '()))
                                      (_%g176202176221%_ _%g176203176224%_)))))
                            (_%g176202176221%_ _%g176203176224%_))))
                    (_%g176202176221%_ _%g176203176224%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176201176332%_
                                                 _%L176112%_))
                                              (if (_%no-specializer?173870%_)
                                                  _%stx173774%_
                                                  (let* ((_%specializer-id176341%_
                                                          (let* ((_%id176335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp178047
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L173847%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp178047 '"::specialize")))
                         (_%specializer-id176338%_
                          (let ((__tmp178048
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx173774%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id176335%_
                             __tmp178048))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id176338%_))
                    _%specializer-id176338%_))
                 (_%$klass176343%_
                  (let ((__tmp178049
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178049)))
                 (_%$method-table176345%_
                  (let ((__tmp178050
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp178050)))
                 (_%methods176347%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls173866%_)))
                 (_%$methods176351%_
                  (map (lambda (_%id176349%_)
                         (let ((__tmp178051 (gensym _%id176349%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178051)))
                       _%methods176347%_))
                 (_%_176360%_
                  (for-each
                   (lambda (_%g176352176355%_ _%g176353176357%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls173866%_
                        _%g176352176355%_
                        _%g176353176357%_)))
                   _%methods176347%_
                   _%$methods176351%_))
                 (_%methods-bind176370%_
                  (map (lambda (_%g176362176365%_ _%g176363176367%_)
                         (_%generate-method-bind173776%_
                          _%$klass176343%_
                          _%$method-table176345%_
                          _%g176362176365%_
                          _%g176363176367%_))
                       _%methods176347%_
                       _%$methods176351%_))
                 (_%slots176372%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs173867%_)))
                 (_%$slots176376%_
                  (map (lambda (_%id176374%_)
                         (let ((__tmp178052 (gensym _%id176374%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp178052)))
                       _%slots176372%_))
                 (_%_176385%_
                  (for-each
                   (lambda (_%g176377176380%_ _%g176378176382%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs173867%_
                        _%g176377176380%_
                        _%g176378176382%_)))
                   _%slots176372%_
                   _%$slots176376%_))
                 (_%slots-bind176394%_
                  (map (lambda (_%g176386176389%_ _%g176387176391%_)
                         (_%generate-slot-bind173777%_
                          _%$klass176343%_
                          _%g176386176389%_
                          _%g176387176391%_))
                       _%slots176372%_
                       _%$slots176376%_))
                 (_%specializer-lambda-expr176472%_
                  (let* ((_%g176396176410%_
                          (lambda (_%g176397176407%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176397176407%_))))
                         (_%g176395176469%_
                          (lambda (_%g176397176413%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176397176413%_))
                                (let ((_%e176400176415%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176397176413%_))))
                                  (let ((_%hd176401176418%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176400176415%_)))
                                        (_%tl176402176420%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176400176415%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl176402176420%_))
                                        (let ((_%e176403176423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl176402176420%_))))
                                          (let ((_%hd176404176426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e176403176423%_)))
                                                (_%tl176405176428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e176403176423%_))))
                                            ((lambda (_%L176431%_ _%L176432%_)
                                               (let* ((_%self176455%_
                                                       (list-ref
                                                        _%L176432%_
                                                        _%self-index175876%_))
                                                      (_%receiver176460%_
                                                       (let ((_%$e176457%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L176431%_))))
                 (if _%$e176457%_ _%$e176457%_ _%self176455%_)))
              (_%body176466%_
               (map (lambda (_%g176461176463%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver176460%_
                       _%$klass176343%_
                       _%method-calls173866%_
                       _%slot-refs173867%_
                       _%g176461176463%_))
                    _%L176431%_))
              (__tmp178053 (cons '%#lambda (cons _%L176432%_ _%body176466%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp178053
                                                  _%L176113%_)))
                                             _%tl176405176428%_
                                             _%hd176404176426%_)))
                                        (_%g176396176410%_
                                         _%g176397176413%_))))
                                (_%g176396176410%_ _%g176397176413%_)))))
                    (_%g176395176469%_ _%L176113%_)))
                 (_%specializer-case-lambda-expr176612%_
                  (let* ((_%g176474176493%_
                          (lambda (_%g176475176490%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g176475176490%_))))
                         (_%g176473176609%_
                          (lambda (_%g176475176496%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g176475176496%_))
                                (let ((_%e176477176498%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g176475176496%_))))
                                  (let ((_%hd176478176501%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e176477176498%_)))
                                        (_%tl176479176503%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e176477176498%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl176479176503%_))
                                        (let ((_g178054_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl176479176503%_
                                                  '0))))
                                          (begin
                                            (let ((_g178055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g178054_)
                                                         (##vector-length
                                                          _g178054_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g178055_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g178055_)))
                                            (let ((_%target176480176506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g178054_
                                                      0)))
                                                  (_%tl176482176508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g178054_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl176482176508%_))
                                                  (letrec ((_%loop176483176511%_
                                                            (lambda (_%hd176481176514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause176487176516%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd176481176514%_))
                          (let ((_%e176484176519%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd176481176514%_))))
                            (let ((_%lp-hd176485176522%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e176484176519%_)))
                                  (_%lp-tl176486176524%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e176484176519%_))))
                              (_%loop176483176511%_
                               _%lp-tl176486176524%_
                               (cons _%lp-hd176485176522%_
                                     _%clause176487176516%_))))
                          (let ((_%clause176488176527%_
                                 (reverse _%clause176487176516%_)))
                            ((lambda (_%L176530%_)
                               (let* ((_%clauses176607%_
                                       (map (lambda (_%clause176544%_)
                                              (let* ((_%g176546176557%_
                                                      (lambda (_%g176547176554%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g176547176554%_))))
                                                     (_%g176545176597%_
                                                      (lambda (_%g176547176560%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g176547176560%_))
                                                            (let ((_%e176550176562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g176547176560%_))))
                      (let ((_%hd176551176565%_
                             (let ()
                               (declare (not safe))
                               (##car _%e176550176562%_)))
                            (_%tl176552176567%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e176550176562%_))))
                        ((lambda (_%L176570%_ _%L176571%_)
                           (let* ((_%self176583%_
                                   (list-ref _%L176571%_ _%self-index175876%_))
                                  (_%receiver176588%_
                                   (let ((_%$e176585%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L176570%_))))
                                     (if _%$e176585%_
                                         _%$e176585%_
                                         _%self176583%_)))
                                  (_%body176594%_
                                   (map (lambda (_%g176589176591%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver176588%_
                                           _%$klass176343%_
                                           _%method-calls173866%_
                                           _%slot-refs173867%_
                                           _%g176589176591%_))
                                        _%L176570%_)))
                             (cons _%L176571%_ _%body176594%_)))
                         _%tl176552176567%_
                         _%hd176551176565%_)))
                    (_%g176546176557%_ _%g176547176560%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g176545176597%_
                                                 _%clause176544%_)))
                                            (let ((__tmp178056
                                                   (lambda (_%g176599176602%_
                                                            _%g176600176604%_)
                                                     (cons _%g176599176602%_
                                                           _%g176600176604%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp178056
                                               '()
                                               _%L176530%_))))
                                      (__tmp178057
                                       (cons '%#case-lambda
                                             _%clauses176607%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp178057
                                  _%L176112%_)))
                             _%clause176488176527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop176483176511%_
                                                     _%target176480176506%_
                                                     '()))
                                                  (_%g176474176493%_
                                                   _%g176475176496%_)))))
                                        (_%g176474176493%_
                                         _%g176475176496%_))))
                                (_%g176474176493%_ _%g176475176496%_)))))
                    (_%g176473176609%_ _%L176112%_)))
                 (_%specializer-impl176614%_
                  (let ((__tmp178058
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L175576%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L175575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp178059
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L176114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr176472%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr176612%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp178059
                                                _%stx173774%_))
                                             '()))
                                 '())
                           (cons _%L175573%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L175572%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp178058 _%stx173774%_)))
                 (_%specializer-impl176616%_
                  (_%generate-specializer-impl173778%_
                   _%$klass176343%_
                   _%$method-table176345%_
                   _%methods-bind176370%_
                   _%slots-bind176394%_
                   _%specializer-impl176614%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp178061
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L173847%_)))
                                                          (__tmp178060
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id176341%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp178061
                                                       '" => "
                                                       __tmp178060))
                                                    (_%generate-specializer-def173779%_
                                                     _%L173847%_
                                                     _%specializer-id176341%_
                                                     _%specializer-impl176616%_))))
                                            _%hd176045176107%_
                                            _%hd176042176099%_
                                            _%hd176039176091%_)
                                           (_%g176021176051%_
                                            _%g176022176054%_))))
                                   (_%g176021176051%_ _%g176022176054%_))
                               (_%g176021176051%_ _%g176022176054%_))
                           (_%g176021176051%_ _%g176022176054%_))))
                   (_%g176021176051%_ _%g176022176054%_))
               (_%g176021176051%_ _%g176022176054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g176021176051%_
                                                _%g176022176054%_))))
                                       (_%g176021176051%_ _%g176022176054%_))))
                               (_%g176021176051%_ _%g176022176054%_))))
                       (_%g176021176051%_ _%g176022176054%_))))
               (_%g176021176051%_ _%g176022176054%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g176020176619%_ _%L175574%_))
                                         _%stx173774%_))))
                             _%hd175672175795%_
                             _%kw-ref175670175816%_
                             _%hd175660175782%_
                             _%hd175651175758%_
                             _%hd175642175734%_)
                            (_%g175616175678%_ _%g175617175681%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop175665175800%_
                                                 _%target175662175787%_
                                                 '()))
                                              (_%g175616175678%_
                                               _%g175617175681%_))))
                                      (_%g175616175678%_ _%g175617175681%_)))))
                            (_%g175616175678%_ _%g175617175681%_))
                        (_%g175616175678%_ _%g175617175681%_))
                    (_%g175616175678%_ _%g175617175681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175616175678%_
                                                     _%g175617175681%_))
                                                (_%g175616175678%_
                                                 _%g175617175681%_))
                                            (_%g175616175678%_
                                             _%g175617175681%_))))
                                    (_%g175616175678%_ _%g175617175681%_))))
                            (_%g175616175678%_ _%g175617175681%_))
                        (_%g175616175678%_ _%g175617175681%_))))
                (_%g175616175678%_ _%g175617175681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175616175678%_
                                                     _%g175617175681%_))
                                                (_%g175616175678%_
                                                 _%g175617175681%_))))
                                        (_%g175616175678%_
                                         _%g175617175681%_))))
                                (_%g175616175678%_ _%g175617175681%_))
                            (_%g175616175678%_ _%g175617175681%_))))
                    (_%g175616175678%_ _%g175617175681%_))
                (_%g175616175678%_ _%g175617175681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175616175678%_
                                                     _%g175617175681%_))))
                                            (_%g175616175678%_
                                             _%g175617175681%_))))
                                    (_%g175616175678%_ _%g175617175681%_))
                                (_%g175616175678%_ _%g175617175681%_))
                            (_%g175616175678%_ _%g175617175681%_))))
                    (_%g175616175678%_ _%g175617175681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g175616175678%_
                                                     _%g175617175681%_))))
                                            (_%g175616175678%_
                                             _%g175617175681%_))
                                        (_%g175616175678%_ _%g175617175681%_))
                                    (_%g175616175678%_ _%g175617175681%_))))
                            (_%g175616175678%_ _%g175617175681%_)))))
                (_%g175615176623%_ _%L175573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd175449175567%_
                                                    _%hd175446175559%_
                                                    _%hd175443175551%_
                                                    _%hd175440175543%_
                                                    _%hd175422175495%_)
                                                   (_%g175402175455%_
                                                    _%g175403175458%_))))
                                           (_%g175402175455%_
                                            _%g175403175458%_))
                                       (_%g175402175455%_ _%g175403175458%_))
                                   (_%g175402175455%_ _%g175403175458%_))
                               (_%g175402175455%_ _%g175403175458%_))))
                       (_%g175402175455%_ _%g175403175458%_))
                   (_%g175402175455%_ _%g175403175458%_))
               (_%g175402175455%_ _%g175403175458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175402175455%_
                                                _%g175403175458%_))
                                           (_%g175402175455%_
                                            _%g175403175458%_))))
                                   (_%g175402175455%_ _%g175403175458%_))))
                           (_%g175402175455%_ _%g175403175458%_))))
                   (_%g175402175455%_ _%g175403175458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g175402175455%_
                                                    _%g175403175458%_))
                                               (_%g175402175455%_
                                                _%g175403175458%_))
                                           (_%g175402175455%_
                                            _%g175403175458%_))))
                                   (_%g175402175455%_ _%g175403175458%_))))
                           (_%g175402175455%_ _%g175403175458%_))
                       (_%g175402175455%_ _%g175403175458%_))))
               (_%g175402175455%_ _%g175403175458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g175402175455%_
                                                _%g175403175458%_))))
                                       (_%g175402175455%_ _%g175403175458%_))))
                               (_%g175402175455%_ _%g175403175458%_))
                           (_%g175402175455%_ _%g175403175458%_))
                       (_%g175402175455%_ _%g175403175458%_))))
               (_%g175402175455%_ _%g175403175458%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g175401176626%_ _%L173846%_))
                                         _%stx173774%_))))))))
                  (_%__kont176860176861%_ (lambda () _%stx173774%_)))
              (let ((_%__match176889176890%_
                     (lambda (_%e173786173814%_
                              _%hd173787173817%_
                              _%tl173788173819%_
                              _%e173789173822%_
                              _%hd173790173825%_
                              _%tl173791173827%_
                              _%e173792173830%_
                              _%hd173793173833%_
                              _%tl173794173835%_
                              _%e173795173838%_
                              _%hd173796173841%_
                              _%tl173797173843%_)
                       (let ((_%L173846%_ _%hd173796173841%_)
                             (_%L173847%_ _%hd173793173833%_))
                         (if (let ((__tmp178062
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L173847%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp178062))
                             (_%__kont176858176859%_ _%L173846%_ _%L173847%_)
                             (_%__kont176860176861%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx176856176857%_))
                    (let ((_%e173786173814%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx176856176857%_))))
                      (let ((_%tl173788173819%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173786173814%_)))
                            (_%hd173787173817%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173786173814%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173788173819%_))
                            (let ((_%e173789173822%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173788173819%_))))
                              (let ((_%tl173791173827%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173789173822%_)))
                                    (_%hd173790173825%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173789173822%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173790173825%_))
                                    (let ((_%e173792173830%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173790173825%_))))
                                      (let ((_%tl173794173835%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173792173830%_)))
                                            (_%hd173793173833%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173792173830%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173794173835%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173791173827%_))
                                                (let ((_%e173795173838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173791173827%_))))
                                                  (let ((_%tl173797173843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173795173838%_)))
                                                        (_%hd173796173841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173795173838%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173797173843%_))
                                                        (_%__match176889176890%_
                                                         _%e173786173814%_
                                                         _%hd173787173817%_
                                                         _%tl173788173819%_
                                                         _%e173789173822%_
                                                         _%hd173790173825%_
                                                         _%tl173791173827%_
                                                         _%e173792173830%_
                                                         _%hd173793173833%_
                                                         _%tl173794173835%_
                                                         _%e173795173838%_
                                                         _%hd173796173841%_
                                                         _%tl173797173843%_)
                                                        (_%__kont176860176861%_))))
                                                (_%__kont176860176861%_))
                                            (_%__kont176860176861%_))))
                                    (_%__kont176860176861%_))))
                            (_%__kont176860176861%_))))
                    (_%__kont176860176861%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self173626%_ _%stx173627%_)
        (let* ((_%__stx176892176893%_ _%stx173627%_)
               (_%g173630173663%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176892176893%_)))))
          (let ((_%__kont176894176895%_ (lambda (_%L173753%_) _%L173753%_))
                (_%__kont176896176897%_
                 (lambda (_%L173692%_ _%L173693%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self173626%_ _%L173692%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx176892176893%_))
                (let ((_%e173633173713%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx176892176893%_))))
                  (let ((_%tl173635173718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173633173713%_)))
                        (_%hd173634173716%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173633173713%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173635173718%_))
                        (let ((_%e173636173721%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173635173718%_))))
                          (let ((_%tl173638173726%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173636173721%_)))
                                (_%hd173637173724%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173636173721%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173637173724%_))
                                (let ((_%e173639173729%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173637173724%_))))
                                  (let ((_%tl173641173734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173639173729%_)))
                                        (_%hd173640173732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173639173729%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd173640173732%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd173640173732%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173641173734%_))
                                                (let ((_%e173642173737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173641173734%_))))
                                                  (let ((_%tl173644173742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173642173737%_)))
                                                        (_%hd173643173740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173642173737%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173644173742%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173638173726%_))
                                                            (let ((_%e173645173745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173638173726%_))))
                      (let ((_%tl173647173750%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173645173745%_)))
                            (_%hd173646173748%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173645173745%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173647173750%_))
                            (_%__kont176894176895%_ _%hd173643173740%_)
                            (let ()
                              (declare (not safe))
                              (_%g173630173663%_)))))
                    (let () (declare (not safe)) (_%g173630173663%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl173638173726%_))
                    (let ((_%e173656173684%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173638173726%_))))
                      (let ((_%tl173658173689%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173656173684%_)))
                            (_%hd173657173687%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173656173684%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173658173689%_))
                            (_%__kont176896176897%_
                             _%hd173657173687%_
                             _%hd173637173724%_)
                            (let ()
                              (declare (not safe))
                              (_%g173630173663%_)))))
                    (let () (declare (not safe)) (_%g173630173663%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173638173726%_))
                                                    (let ((_%e173656173684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173638173726%_))))
                                                      (let ((_%tl173658173689%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e173656173684%_)))
                    (_%hd173657173687%_
                     (let () (declare (not safe)) (##car _%e173656173684%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173658173689%_))
                    (_%__kont176896176897%_
                     _%hd173657173687%_
                     _%hd173637173724%_)
                    (let () (declare (not safe)) (_%g173630173663%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173630173663%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl173638173726%_))
                                                (let ((_%e173656173684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl173638173726%_))))
                                                  (let ((_%tl173658173689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e173656173684%_)))
                                                        (_%hd173657173687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e173656173684%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl173658173689%_))
                                                        (_%__kont176896176897%_
                                                         _%hd173657173687%_
                                                         _%hd173637173724%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g173630173663%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g173630173663%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173638173726%_))
                                            (let ((_%e173656173684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173638173726%_))))
                                              (let ((_%tl173658173689%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173656173684%_)))
                                                    (_%hd173657173687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173656173684%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl173658173689%_))
                                                    (_%__kont176896176897%_
                                                     _%hd173657173687%_
                                                     _%hd173637173724%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g173630173663%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g173630173663%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173638173726%_))
                                    (let ((_%e173656173684%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173638173726%_))))
                                      (let ((_%tl173658173689%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173656173684%_)))
                                            (_%hd173657173687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173656173684%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl173658173689%_))
                                            (_%__kont176896176897%_
                                             _%hd173657173687%_
                                             _%hd173637173724%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g173630173663%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g173630173663%_))))))
                        (let () (declare (not safe)) (_%g173630173663%_)))))
                (let () (declare (not safe)) (_%g173630173663%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self173542%_ _%stx173543%_)
        (let* ((_%g173545173566%_
                (lambda (_%g173546173563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g173546173563%_))))
               (_%g173544173623%_
                (lambda (_%g173546173569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g173546173569%_))
                      (let ((_%e173550173571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g173546173569%_))))
                        (let ((_%hd173551173574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173550173571%_)))
                              (_%tl173552173576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173550173571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl173552173576%_))
                              (let ((_%e173553173579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl173552173576%_))))
                                (let ((_%hd173554173582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e173553173579%_)))
                                      (_%tl173555173584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e173553173579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173555173584%_))
                                      (let ((_%e173556173587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173555173584%_))))
                                        (let ((_%hd173557173590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173556173587%_)))
                                              (_%tl173558173592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173556173587%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl173558173592%_))
                                              (let ((_%e173559173595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl173558173592%_))))
                                                (let ((_%hd173560173598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e173559173595%_)))
                                                      (_%tl173561173600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e173559173595%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl173561173600%_))
                                                      ((lambda (_%L173603%_
                                                                _%L173604%_
                                                                _%L173605%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self173542%_
                                                            _%L173604%_)))
                                                       _%hd173560173598%_
                                                       _%hd173557173590%_
                                                       _%hd173554173582%_)
                                                      (_%g173545173566%_
                                                       _%g173546173569%_))))
                                              (_%g173545173566%_
                                               _%g173546173569%_))))
                                      (_%g173545173566%_ _%g173546173569%_))))
                              (_%g173545173566%_ _%g173546173569%_))))
                      (_%g173545173566%_ _%g173546173569%_)))))
          (_%g173544173623%_ _%stx173543%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self172503%_ _%stx172504%_)
        (let* ((_%__stx176958176959%_ _%stx172504%_)
               (_%g172512172734%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx176958176959%_)))))
          (let ((_%__kont176960176961%_
                 (lambda (_%L173491%_ _%L173492%_ _%L173493%_ _%L173494%_)
                   (let ((__tmp178064
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172503%_ 'methods)))
                         (__tmp178063
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173492%_))))
                     (declare (not safe))
                     (hash-put! __tmp178064 __tmp178063 '#t))
                   (for-each
                    (lambda (_%g173527173529%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172503%_ _%g173527173529%_)))
                    (let ((__tmp178065
                           (lambda (_%g173531173534%_ _%g173532173536%_)
                             (cons _%g173531173534%_ _%g173532173536%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178065 '() _%L173491%_)))))
                (_%__kont176964176965%_
                 (lambda (_%L173326%_
                          _%L173327%_
                          _%L173328%_
                          _%L173329%_
                          _%L173330%_)
                   (let ((__tmp178067
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172503%_ 'methods)))
                         (__tmp178066
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173327%_))))
                     (declare (not safe))
                     (hash-put! __tmp178067 __tmp178066 '#t))
                   (for-each
                    (lambda (_%g173370173372%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self172503%_ _%g173370173372%_)))
                    (let ((__tmp178068
                           (lambda (_%g173374173377%_ _%g173375173379%_)
                             (cons _%g173374173377%_ _%g173375173379%_))))
                      (declare (not safe))
                      (__foldr1 __tmp178068 '() _%L173326%_)))))
                (_%__kont176968176969%_
                 (lambda (_%L173159%_ _%L173160%_ _%L173161%_)
                   (let ((__tmp178070
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172503%_ 'slots)))
                         (__tmp178069
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173159%_))))
                     (declare (not safe))
                     (hash-put! __tmp178070 __tmp178069 '#t))))
                (_%__kont176970176971%_
                 (lambda (_%L173036%_ _%L173037%_ _%L173038%_ _%L173039%_)
                   (let ((__tmp178072
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self172503%_ 'slots)))
                         (__tmp178071
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L173037%_))))
                     (declare (not safe))
                     (hash-put! __tmp178072 __tmp178071 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172503%_ _%L173036%_))))
                (_%__kont176972176973%_
                 (lambda (_%L172910%_ _%L172911%_)
                   (let* ((_%accessor172933%_
                           (let ((__tmp178073
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172911%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178073)))
                          (_%klass172935%_
                           (let ((__tmp178074
                                  (##structure-ref
                                   _%accessor172933%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172504%_
                              __tmp178074)))
                          (_%slot172937%_
                           (##structure-ref
                            _%accessor172933%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor172933%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172935%_
                                    _%slot172937%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172935%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178076
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172503%_ 'slots)))
                               (__tmp178075
                                (##structure-ref
                                 _%accessor172933%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp178076 __tmp178075 '#t))))))
                (_%__kont176974176975%_
                 (lambda (_%L172810%_ _%L172811%_ _%L172812%_)
                   (let* ((_%mutator172839%_
                           (let ((__tmp178077
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L172812%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp178077)))
                          (_%klass172841%_
                           (let ((__tmp178078
                                  (##structure-ref
                                   _%mutator172839%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx172504%_
                              __tmp178078)))
                          (_%slot172843%_
                           (##structure-ref
                            _%mutator172839%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator172839%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass172841%_
                                    _%slot172843%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass172841%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp178079
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self172503%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp178079 _%slot172843%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self172503%_ _%L172810%_)))))
                (_%__kont176976176977%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self172503%_ _%stx172504%_)))))
            (let* ((_%__match177457177458%_
                    (lambda (_%e172706172746%_
                             _%hd172707172749%_
                             _%tl172708172751%_
                             _%e172709172754%_
                             _%hd172710172757%_
                             _%tl172711172759%_
                             _%e172712172762%_
                             _%hd172713172765%_
                             _%tl172714172767%_
                             _%e172715172770%_
                             _%hd172716172773%_
                             _%tl172717172775%_
                             _%e172718172778%_
                             _%hd172719172781%_
                             _%tl172720172783%_
                             _%e172721172786%_
                             _%hd172722172789%_
                             _%tl172723172791%_
                             _%e172724172794%_
                             _%hd172725172797%_
                             _%tl172726172799%_
                             _%e172727172802%_
                             _%hd172728172805%_
                             _%tl172729172807%_)
                      (let ((_%L172810%_ _%hd172728172805%_)
                            (_%L172811%_ _%hd172725172797%_)
                            (_%L172812%_ _%hd172716172773%_))
                        (if (and (let ((__tmp178080
                                        (let ((__tmp178081
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172812%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178081))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178080
                                    'gxc#!mutator::t))
                                 (let ((__tmp178082
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172503%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172811%_
                                    __tmp178082)))
                            (_%__kont176974176975%_
                             _%L172810%_
                             _%L172811%_
                             _%L172812%_)
                            (_%__kont176976176977%_)))))
                   (_%__match177455177456%_
                    (lambda (_%e172706172746%_
                             _%hd172707172749%_
                             _%tl172708172751%_
                             _%e172709172754%_
                             _%hd172710172757%_
                             _%tl172711172759%_
                             _%e172712172762%_
                             _%hd172713172765%_
                             _%tl172714172767%_
                             _%e172715172770%_
                             _%hd172716172773%_
                             _%tl172717172775%_
                             _%e172718172778%_
                             _%hd172719172781%_
                             _%tl172720172783%_
                             _%e172721172786%_
                             _%hd172722172789%_
                             _%tl172723172791%_
                             _%e172724172794%_
                             _%hd172725172797%_
                             _%tl172726172799%_
                             _%e172727172802%_
                             _%hd172728172805%_
                             _%tl172729172807%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172729172807%_))
                          (_%__match177457177458%_
                           _%e172706172746%_
                           _%hd172707172749%_
                           _%tl172708172751%_
                           _%e172709172754%_
                           _%hd172710172757%_
                           _%tl172711172759%_
                           _%e172712172762%_
                           _%hd172713172765%_
                           _%tl172714172767%_
                           _%e172715172770%_
                           _%hd172716172773%_
                           _%tl172717172775%_
                           _%e172718172778%_
                           _%hd172719172781%_
                           _%tl172720172783%_
                           _%e172721172786%_
                           _%hd172722172789%_
                           _%tl172723172791%_
                           _%e172724172794%_
                           _%hd172725172797%_
                           _%tl172726172799%_
                           _%e172727172802%_
                           _%hd172728172805%_
                           _%tl172729172807%_)
                          (_%__kont176976176977%_))))
                   (_%__match177449177450%_
                    (lambda (_%e172706172746%_
                             _%hd172707172749%_
                             _%tl172708172751%_
                             _%e172709172754%_
                             _%hd172710172757%_
                             _%tl172711172759%_
                             _%e172712172762%_
                             _%hd172713172765%_
                             _%tl172714172767%_
                             _%e172715172770%_
                             _%hd172716172773%_
                             _%tl172717172775%_
                             _%e172718172778%_
                             _%hd172719172781%_
                             _%tl172720172783%_
                             _%e172721172786%_
                             _%hd172722172789%_
                             _%tl172723172791%_
                             _%e172724172794%_
                             _%hd172725172797%_
                             _%tl172726172799%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172720172783%_))
                          (let ((_%e172727172802%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172720172783%_))))
                            (let ((_%tl172729172807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172727172802%_)))
                                  (_%hd172728172805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172727172802%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172729172807%_))
                                  (_%__match177457177458%_
                                   _%e172706172746%_
                                   _%hd172707172749%_
                                   _%tl172708172751%_
                                   _%e172709172754%_
                                   _%hd172710172757%_
                                   _%tl172711172759%_
                                   _%e172712172762%_
                                   _%hd172713172765%_
                                   _%tl172714172767%_
                                   _%e172715172770%_
                                   _%hd172716172773%_
                                   _%tl172717172775%_
                                   _%e172718172778%_
                                   _%hd172719172781%_
                                   _%tl172720172783%_
                                   _%e172721172786%_
                                   _%hd172722172789%_
                                   _%tl172723172791%_
                                   _%e172724172794%_
                                   _%hd172725172797%_
                                   _%tl172726172799%_
                                   _%e172727172802%_
                                   _%hd172728172805%_
                                   _%tl172729172807%_)
                                  (_%__kont176976176977%_))))
                          (_%__kont176976176977%_))))
                   (_%__match177395177396%_
                    (lambda (_%e172682172854%_
                             _%hd172683172857%_
                             _%tl172684172859%_
                             _%e172685172862%_
                             _%hd172686172865%_
                             _%tl172687172867%_
                             _%e172688172870%_
                             _%hd172689172873%_
                             _%tl172690172875%_
                             _%e172691172878%_
                             _%hd172692172881%_
                             _%tl172693172883%_
                             _%e172694172886%_
                             _%hd172695172889%_
                             _%tl172696172891%_
                             _%e172697172894%_
                             _%hd172698172897%_
                             _%tl172699172899%_
                             _%e172700172902%_
                             _%hd172701172905%_
                             _%tl172702172907%_)
                      (let ((_%L172910%_ _%hd172701172905%_)
                            (_%L172911%_ _%hd172692172881%_))
                        (if (and (let ((__tmp178083
                                        (let ((__tmp178084
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L172911%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp178084))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp178083
                                    'gxc#!accessor::t))
                                 (let ((__tmp178085
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172503%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L172910%_
                                    __tmp178085)))
                            (_%__kont176972176973%_ _%L172910%_ _%L172911%_)
                            (_%__kont176976176977%_)))))
                   (_%__match177393177394%_
                    (lambda (_%e172682172854%_
                             _%hd172683172857%_
                             _%tl172684172859%_
                             _%e172685172862%_
                             _%hd172686172865%_
                             _%tl172687172867%_
                             _%e172688172870%_
                             _%hd172689172873%_
                             _%tl172690172875%_
                             _%e172691172878%_
                             _%hd172692172881%_
                             _%tl172693172883%_
                             _%e172694172886%_
                             _%hd172695172889%_
                             _%tl172696172891%_
                             _%e172697172894%_
                             _%hd172698172897%_
                             _%tl172699172899%_
                             _%e172700172902%_
                             _%hd172701172905%_
                             _%tl172702172907%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172696172891%_))
                          (_%__match177395177396%_
                           _%e172682172854%_
                           _%hd172683172857%_
                           _%tl172684172859%_
                           _%e172685172862%_
                           _%hd172686172865%_
                           _%tl172687172867%_
                           _%e172688172870%_
                           _%hd172689172873%_
                           _%tl172690172875%_
                           _%e172691172878%_
                           _%hd172692172881%_
                           _%tl172693172883%_
                           _%e172694172886%_
                           _%hd172695172889%_
                           _%tl172696172891%_
                           _%e172697172894%_
                           _%hd172698172897%_
                           _%tl172699172899%_
                           _%e172700172902%_
                           _%hd172701172905%_
                           _%tl172702172907%_)
                          (_%__match177449177450%_
                           _%e172682172854%_
                           _%hd172683172857%_
                           _%tl172684172859%_
                           _%e172685172862%_
                           _%hd172686172865%_
                           _%tl172687172867%_
                           _%e172688172870%_
                           _%hd172689172873%_
                           _%tl172690172875%_
                           _%e172691172878%_
                           _%hd172692172881%_
                           _%tl172693172883%_
                           _%e172694172886%_
                           _%hd172695172889%_
                           _%tl172696172891%_
                           _%e172697172894%_
                           _%hd172698172897%_
                           _%tl172699172899%_
                           _%e172700172902%_
                           _%hd172701172905%_
                           _%tl172702172907%_))))
                   (_%__match177339177340%_
                    (lambda (_%e172647172948%_
                             _%hd172648172951%_
                             _%tl172649172953%_
                             _%e172650172956%_
                             _%hd172651172959%_
                             _%tl172652172961%_
                             _%e172653172964%_
                             _%hd172654172967%_
                             _%tl172655172969%_
                             _%e172656172972%_
                             _%hd172657172975%_
                             _%tl172658172977%_
                             _%e172659172980%_
                             _%hd172660172983%_
                             _%tl172661172985%_
                             _%e172662172988%_
                             _%hd172663172991%_
                             _%tl172664172993%_
                             _%e172665172996%_
                             _%hd172666172999%_
                             _%tl172667173001%_
                             _%e172668173004%_
                             _%hd172669173007%_
                             _%tl172670173009%_
                             _%e172671173012%_
                             _%hd172672173015%_
                             _%tl172673173017%_
                             _%e172674173020%_
                             _%hd172675173023%_
                             _%tl172676173025%_
                             _%e172677173028%_
                             _%hd172678173031%_
                             _%tl172679173033%_)
                      (let ((_%L173036%_ _%hd172678173031%_)
                            (_%L173037%_ _%hd172675173023%_)
                            (_%L173038%_ _%hd172666172999%_)
                            (_%L173039%_ _%hd172657172975%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173039%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173039%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp178086
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172503%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173038%_
                                    __tmp178086)))
                            (_%__kont176970176971%_
                             _%L173036%_
                             _%L173037%_
                             _%L173038%_
                             _%L173039%_)
                            (_%__kont176976176977%_)))))
                   (_%__match177331177332%_
                    (lambda (_%e172647172948%_
                             _%hd172648172951%_
                             _%tl172649172953%_
                             _%e172650172956%_
                             _%hd172651172959%_
                             _%tl172652172961%_
                             _%e172653172964%_
                             _%hd172654172967%_
                             _%tl172655172969%_
                             _%e172656172972%_
                             _%hd172657172975%_
                             _%tl172658172977%_
                             _%e172659172980%_
                             _%hd172660172983%_
                             _%tl172661172985%_
                             _%e172662172988%_
                             _%hd172663172991%_
                             _%tl172664172993%_
                             _%e172665172996%_
                             _%hd172666172999%_
                             _%tl172667173001%_
                             _%e172668173004%_
                             _%hd172669173007%_
                             _%tl172670173009%_
                             _%e172671173012%_
                             _%hd172672173015%_
                             _%tl172673173017%_
                             _%e172674173020%_
                             _%hd172675173023%_
                             _%tl172676173025%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172670173009%_))
                          (let ((_%e172677173028%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172670173009%_))))
                            (let ((_%tl172679173033%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172677173028%_)))
                                  (_%hd172678173031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172677173028%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172679173033%_))
                                  (_%__match177339177340%_
                                   _%e172647172948%_
                                   _%hd172648172951%_
                                   _%tl172649172953%_
                                   _%e172650172956%_
                                   _%hd172651172959%_
                                   _%tl172652172961%_
                                   _%e172653172964%_
                                   _%hd172654172967%_
                                   _%tl172655172969%_
                                   _%e172656172972%_
                                   _%hd172657172975%_
                                   _%tl172658172977%_
                                   _%e172659172980%_
                                   _%hd172660172983%_
                                   _%tl172661172985%_
                                   _%e172662172988%_
                                   _%hd172663172991%_
                                   _%tl172664172993%_
                                   _%e172665172996%_
                                   _%hd172666172999%_
                                   _%tl172667173001%_
                                   _%e172668173004%_
                                   _%hd172669173007%_
                                   _%tl172670173009%_
                                   _%e172671173012%_
                                   _%hd172672173015%_
                                   _%tl172673173017%_
                                   _%e172674173020%_
                                   _%hd172675173023%_
                                   _%tl172676173025%_
                                   _%e172677173028%_
                                   _%hd172678173031%_
                                   _%tl172679173033%_)
                                  (_%__kont176976176977%_))))
                          (_%__match177455177456%_
                           _%e172647172948%_
                           _%hd172648172951%_
                           _%tl172649172953%_
                           _%e172650172956%_
                           _%hd172651172959%_
                           _%tl172652172961%_
                           _%e172653172964%_
                           _%hd172654172967%_
                           _%tl172655172969%_
                           _%e172656172972%_
                           _%hd172657172975%_
                           _%tl172658172977%_
                           _%e172659172980%_
                           _%hd172660172983%_
                           _%tl172661172985%_
                           _%e172662172988%_
                           _%hd172663172991%_
                           _%tl172664172993%_
                           _%e172665172996%_
                           _%hd172666172999%_
                           _%tl172667173001%_
                           _%e172668173004%_
                           _%hd172669173007%_
                           _%tl172670173009%_))))
                   (_%__match177253177254%_
                    (lambda (_%e172613173079%_
                             _%hd172614173082%_
                             _%tl172615173084%_
                             _%e172616173087%_
                             _%hd172617173090%_
                             _%tl172618173092%_
                             _%e172619173095%_
                             _%hd172620173098%_
                             _%tl172621173100%_
                             _%e172622173103%_
                             _%hd172623173106%_
                             _%tl172624173108%_
                             _%e172625173111%_
                             _%hd172626173114%_
                             _%tl172627173116%_
                             _%e172628173119%_
                             _%hd172629173122%_
                             _%tl172630173124%_
                             _%e172631173127%_
                             _%hd172632173130%_
                             _%tl172633173132%_
                             _%e172634173135%_
                             _%hd172635173138%_
                             _%tl172636173140%_
                             _%e172637173143%_
                             _%hd172638173146%_
                             _%tl172639173148%_
                             _%e172640173151%_
                             _%hd172641173154%_
                             _%tl172642173156%_)
                      (let ((_%L173159%_ _%hd172641173154%_)
                            (_%L173160%_ _%hd172632173130%_)
                            (_%L173161%_ _%hd172623173106%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173161%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L173161%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp178087
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self172503%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L173160%_
                                    __tmp178087)))
                            (_%__kont176968176969%_
                             _%L173159%_
                             _%L173160%_
                             _%L173161%_)
                            (_%__match177457177458%_
                             _%e172613173079%_
                             _%hd172614173082%_
                             _%tl172615173084%_
                             _%e172616173087%_
                             _%hd172617173090%_
                             _%tl172618173092%_
                             _%e172619173095%_
                             _%hd172620173098%_
                             _%tl172621173100%_
                             _%e172622173103%_
                             _%hd172623173106%_
                             _%tl172624173108%_
                             _%e172625173111%_
                             _%hd172626173114%_
                             _%tl172627173116%_
                             _%e172628173119%_
                             _%hd172629173122%_
                             _%tl172630173124%_
                             _%e172631173127%_
                             _%hd172632173130%_
                             _%tl172633173132%_
                             _%e172634173135%_
                             _%hd172635173138%_
                             _%tl172636173140%_)))))
                   (_%__match177251177252%_
                    (lambda (_%e172613173079%_
                             _%hd172614173082%_
                             _%tl172615173084%_
                             _%e172616173087%_
                             _%hd172617173090%_
                             _%tl172618173092%_
                             _%e172619173095%_
                             _%hd172620173098%_
                             _%tl172621173100%_
                             _%e172622173103%_
                             _%hd172623173106%_
                             _%tl172624173108%_
                             _%e172625173111%_
                             _%hd172626173114%_
                             _%tl172627173116%_
                             _%e172628173119%_
                             _%hd172629173122%_
                             _%tl172630173124%_
                             _%e172631173127%_
                             _%hd172632173130%_
                             _%tl172633173132%_
                             _%e172634173135%_
                             _%hd172635173138%_
                             _%tl172636173140%_
                             _%e172637173143%_
                             _%hd172638173146%_
                             _%tl172639173148%_
                             _%e172640173151%_
                             _%hd172641173154%_
                             _%tl172642173156%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl172636173140%_))
                          (_%__match177253177254%_
                           _%e172613173079%_
                           _%hd172614173082%_
                           _%tl172615173084%_
                           _%e172616173087%_
                           _%hd172617173090%_
                           _%tl172618173092%_
                           _%e172619173095%_
                           _%hd172620173098%_
                           _%tl172621173100%_
                           _%e172622173103%_
                           _%hd172623173106%_
                           _%tl172624173108%_
                           _%e172625173111%_
                           _%hd172626173114%_
                           _%tl172627173116%_
                           _%e172628173119%_
                           _%hd172629173122%_
                           _%tl172630173124%_
                           _%e172631173127%_
                           _%hd172632173130%_
                           _%tl172633173132%_
                           _%e172634173135%_
                           _%hd172635173138%_
                           _%tl172636173140%_
                           _%e172637173143%_
                           _%hd172638173146%_
                           _%tl172639173148%_
                           _%e172640173151%_
                           _%hd172641173154%_
                           _%tl172642173156%_)
                          (_%__match177331177332%_
                           _%e172613173079%_
                           _%hd172614173082%_
                           _%tl172615173084%_
                           _%e172616173087%_
                           _%hd172617173090%_
                           _%tl172618173092%_
                           _%e172619173095%_
                           _%hd172620173098%_
                           _%tl172621173100%_
                           _%e172622173103%_
                           _%hd172623173106%_
                           _%tl172624173108%_
                           _%e172625173111%_
                           _%hd172626173114%_
                           _%tl172627173116%_
                           _%e172628173119%_
                           _%hd172629173122%_
                           _%tl172630173124%_
                           _%e172631173127%_
                           _%hd172632173130%_
                           _%tl172633173132%_
                           _%e172634173135%_
                           _%hd172635173138%_
                           _%tl172636173140%_
                           _%e172637173143%_
                           _%hd172638173146%_
                           _%tl172639173148%_
                           _%e172640173151%_
                           _%hd172641173154%_
                           _%tl172642173156%_))))
                   (_%__match177241177242%_
                    (lambda (_%e172613173079%_
                             _%hd172614173082%_
                             _%tl172615173084%_
                             _%e172616173087%_
                             _%hd172617173090%_
                             _%tl172618173092%_
                             _%e172619173095%_
                             _%hd172620173098%_
                             _%tl172621173100%_
                             _%e172622173103%_
                             _%hd172623173106%_
                             _%tl172624173108%_
                             _%e172625173111%_
                             _%hd172626173114%_
                             _%tl172627173116%_
                             _%e172628173119%_
                             _%hd172629173122%_
                             _%tl172630173124%_
                             _%e172631173127%_
                             _%hd172632173130%_
                             _%tl172633173132%_
                             _%e172634173135%_
                             _%hd172635173138%_
                             _%tl172636173140%_
                             _%e172637173143%_
                             _%hd172638173146%_
                             _%tl172639173148%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd172638173146%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172639173148%_))
                              (let ((_%e172640173151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172639173148%_))))
                                (let ((_%tl172642173156%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172640173151%_)))
                                      (_%hd172641173154%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172640173151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172642173156%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl172636173140%_))
                                          (_%__match177253177254%_
                                           _%e172613173079%_
                                           _%hd172614173082%_
                                           _%tl172615173084%_
                                           _%e172616173087%_
                                           _%hd172617173090%_
                                           _%tl172618173092%_
                                           _%e172619173095%_
                                           _%hd172620173098%_
                                           _%tl172621173100%_
                                           _%e172622173103%_
                                           _%hd172623173106%_
                                           _%tl172624173108%_
                                           _%e172625173111%_
                                           _%hd172626173114%_
                                           _%tl172627173116%_
                                           _%e172628173119%_
                                           _%hd172629173122%_
                                           _%tl172630173124%_
                                           _%e172631173127%_
                                           _%hd172632173130%_
                                           _%tl172633173132%_
                                           _%e172634173135%_
                                           _%hd172635173138%_
                                           _%tl172636173140%_
                                           _%e172637173143%_
                                           _%hd172638173146%_
                                           _%tl172639173148%_
                                           _%e172640173151%_
                                           _%hd172641173154%_
                                           _%tl172642173156%_)
                                          (_%__match177331177332%_
                                           _%e172613173079%_
                                           _%hd172614173082%_
                                           _%tl172615173084%_
                                           _%e172616173087%_
                                           _%hd172617173090%_
                                           _%tl172618173092%_
                                           _%e172619173095%_
                                           _%hd172620173098%_
                                           _%tl172621173100%_
                                           _%e172622173103%_
                                           _%hd172623173106%_
                                           _%tl172624173108%_
                                           _%e172625173111%_
                                           _%hd172626173114%_
                                           _%tl172627173116%_
                                           _%e172628173119%_
                                           _%hd172629173122%_
                                           _%tl172630173124%_
                                           _%e172631173127%_
                                           _%hd172632173130%_
                                           _%tl172633173132%_
                                           _%e172634173135%_
                                           _%hd172635173138%_
                                           _%tl172636173140%_
                                           _%e172637173143%_
                                           _%hd172638173146%_
                                           _%tl172639173148%_
                                           _%e172640173151%_
                                           _%hd172641173154%_
                                           _%tl172642173156%_))
                                      (_%__match177455177456%_
                                       _%e172613173079%_
                                       _%hd172614173082%_
                                       _%tl172615173084%_
                                       _%e172616173087%_
                                       _%hd172617173090%_
                                       _%tl172618173092%_
                                       _%e172619173095%_
                                       _%hd172620173098%_
                                       _%tl172621173100%_
                                       _%e172622173103%_
                                       _%hd172623173106%_
                                       _%tl172624173108%_
                                       _%e172625173111%_
                                       _%hd172626173114%_
                                       _%tl172627173116%_
                                       _%e172628173119%_
                                       _%hd172629173122%_
                                       _%tl172630173124%_
                                       _%e172631173127%_
                                       _%hd172632173130%_
                                       _%tl172633173132%_
                                       _%e172634173135%_
                                       _%hd172635173138%_
                                       _%tl172636173140%_))))
                              (_%__match177455177456%_
                               _%e172613173079%_
                               _%hd172614173082%_
                               _%tl172615173084%_
                               _%e172616173087%_
                               _%hd172617173090%_
                               _%tl172618173092%_
                               _%e172619173095%_
                               _%hd172620173098%_
                               _%tl172621173100%_
                               _%e172622173103%_
                               _%hd172623173106%_
                               _%tl172624173108%_
                               _%e172625173111%_
                               _%hd172626173114%_
                               _%tl172627173116%_
                               _%e172628173119%_
                               _%hd172629173122%_
                               _%tl172630173124%_
                               _%e172631173127%_
                               _%hd172632173130%_
                               _%tl172633173132%_
                               _%e172634173135%_
                               _%hd172635173138%_
                               _%tl172636173140%_))
                          (_%__match177455177456%_
                           _%e172613173079%_
                           _%hd172614173082%_
                           _%tl172615173084%_
                           _%e172616173087%_
                           _%hd172617173090%_
                           _%tl172618173092%_
                           _%e172619173095%_
                           _%hd172620173098%_
                           _%tl172621173100%_
                           _%e172622173103%_
                           _%hd172623173106%_
                           _%tl172624173108%_
                           _%e172625173111%_
                           _%hd172626173114%_
                           _%tl172627173116%_
                           _%e172628173119%_
                           _%hd172629173122%_
                           _%tl172630173124%_
                           _%e172631173127%_
                           _%hd172632173130%_
                           _%tl172633173132%_
                           _%e172634173135%_
                           _%hd172635173138%_
                           _%tl172636173140%_))))
                   (_%__match177173177174%_
                    (lambda (_%e172562173198%_
                             _%hd172563173201%_
                             _%tl172564173203%_
                             _%e172565173206%_
                             _%hd172566173209%_
                             _%tl172567173211%_
                             _%e172568173214%_
                             _%hd172569173217%_
                             _%tl172570173219%_
                             _%e172571173222%_
                             _%hd172572173225%_
                             _%tl172573173227%_
                             _%e172574173230%_
                             _%hd172575173233%_
                             _%tl172576173235%_
                             _%e172577173238%_
                             _%hd172578173241%_
                             _%tl172579173243%_
                             _%e172580173246%_
                             _%hd172581173249%_
                             _%tl172582173251%_
                             _%e172583173254%_
                             _%hd172584173257%_
                             _%tl172585173259%_
                             _%e172586173262%_
                             _%hd172587173265%_
                             _%tl172588173267%_
                             _%e172589173270%_
                             _%hd172590173273%_
                             _%tl172591173275%_
                             _%e172592173278%_
                             _%hd172593173281%_
                             _%tl172594173283%_
                             _%e172595173286%_
                             _%hd172596173289%_
                             _%tl172597173291%_
                             _%e172598173294%_
                             _%hd172599173297%_
                             _%tl172600173299%_
                             _%__splice176966176967%_
                             _%target172601173302%_
                             _%tl172603173304%_)
                      (letrec ((_%loop172604173307%_
                                (lambda (_%hd172602173310%_
                                         _%args172608173312%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172602173310%_))
                                      (let ((_%e172605173315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172602173310%_))))
                                        (let ((_%lp-tl172607173320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172605173315%_)))
                                              (_%lp-hd172606173318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172605173315%_))))
                                          (_%loop172604173307%_
                                           _%lp-tl172607173320%_
                                           (cons _%lp-hd172606173318%_
                                                 _%args172608173312%_))))
                                      (let ((_%args172609173323%_
                                             (reverse _%args172608173312%_)))
                                        (let ((_%L173326%_
                                               _%args172609173323%_)
                                              (_%L173327%_ _%hd172599173297%_)
                                              (_%L173328%_ _%hd172590173273%_)
                                              (_%L173329%_ _%hd172581173249%_)
                                              (_%L173330%_ _%hd172572173225%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173330%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173329%_
                                                      'call-method))
                                                   (let ((__tmp178088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172503%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173328%_
                                                      __tmp178088)))
                                              (_%__kont176964176965%_
                                               _%L173326%_
                                               _%L173327%_
                                               _%L173328%_
                                               _%L173329%_
                                               _%L173330%_)
                                              (_%__kont176976176977%_))))))))
                        (_%loop172604173307%_ _%target172601173302%_ '()))))
                   (_%__match177131177132%_
                    (lambda (_%e172562173198%_
                             _%hd172563173201%_
                             _%tl172564173203%_
                             _%e172565173206%_
                             _%hd172566173209%_
                             _%tl172567173211%_
                             _%e172568173214%_
                             _%hd172569173217%_
                             _%tl172570173219%_
                             _%e172571173222%_
                             _%hd172572173225%_
                             _%tl172573173227%_
                             _%e172574173230%_
                             _%hd172575173233%_
                             _%tl172576173235%_
                             _%e172577173238%_
                             _%hd172578173241%_
                             _%tl172579173243%_
                             _%e172580173246%_
                             _%hd172581173249%_
                             _%tl172582173251%_
                             _%e172583173254%_
                             _%hd172584173257%_
                             _%tl172585173259%_
                             _%e172586173262%_
                             _%hd172587173265%_
                             _%tl172588173267%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd172587173265%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172588173267%_))
                              (let ((_%e172589173270%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172588173267%_))))
                                (let ((_%tl172591173275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172589173270%_)))
                                      (_%hd172590173273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172589173270%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172591173275%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172585173259%_))
                                          (let ((_%e172592173278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172585173259%_))))
                                            (let ((_%tl172594173283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172592173278%_)))
                                                  (_%hd172593173281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172592173278%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172593173281%_))
                                                  (let ((_%e172595173286%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172593173281%_))))
                                                    (let ((_%tl172597173291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172595173286%_)))
                                                          (_%hd172596173289%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172595173286%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd172596173289%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd172596173289%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172597173291%_))
                          (let ((_%e172598173294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172597173291%_))))
                            (let ((_%tl172600173299%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172598173294%_)))
                                  (_%hd172599173297%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172598173294%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172600173299%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl172594173283%_))
                                      (let ((_%__splice176966176967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl172594173283%_
                                                '0))))
                                        (let ((_%tl172603173304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176966176967%_
                                                  '1)))
                                              (_%target172601173302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice176966176967%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172603173304%_))
                                              (_%__match177173177174%_
                                               _%e172562173198%_
                                               _%hd172563173201%_
                                               _%tl172564173203%_
                                               _%e172565173206%_
                                               _%hd172566173209%_
                                               _%tl172567173211%_
                                               _%e172568173214%_
                                               _%hd172569173217%_
                                               _%tl172570173219%_
                                               _%e172571173222%_
                                               _%hd172572173225%_
                                               _%tl172573173227%_
                                               _%e172574173230%_
                                               _%hd172575173233%_
                                               _%tl172576173235%_
                                               _%e172577173238%_
                                               _%hd172578173241%_
                                               _%tl172579173243%_
                                               _%e172580173246%_
                                               _%hd172581173249%_
                                               _%tl172582173251%_
                                               _%e172583173254%_
                                               _%hd172584173257%_
                                               _%tl172585173259%_
                                               _%e172586173262%_
                                               _%hd172587173265%_
                                               _%tl172588173267%_
                                               _%e172589173270%_
                                               _%hd172590173273%_
                                               _%tl172591173275%_
                                               _%e172592173278%_
                                               _%hd172593173281%_
                                               _%tl172594173283%_
                                               _%e172595173286%_
                                               _%hd172596173289%_
                                               _%tl172597173291%_
                                               _%e172598173294%_
                                               _%hd172599173297%_
                                               _%tl172600173299%_
                                               _%__splice176966176967%_
                                               _%target172601173302%_
                                               _%tl172603173304%_)
                                              (_%__kont176976176977%_))))
                                      (_%__kont176976176977%_))
                                  (_%__kont176976176977%_))))
                          (_%__kont176976176977%_))
                      (_%__kont176976176977%_))
                  (_%__kont176976176977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176976176977%_))))
                                          (_%__match177455177456%_
                                           _%e172562173198%_
                                           _%hd172563173201%_
                                           _%tl172564173203%_
                                           _%e172565173206%_
                                           _%hd172566173209%_
                                           _%tl172567173211%_
                                           _%e172568173214%_
                                           _%hd172569173217%_
                                           _%tl172570173219%_
                                           _%e172571173222%_
                                           _%hd172572173225%_
                                           _%tl172573173227%_
                                           _%e172574173230%_
                                           _%hd172575173233%_
                                           _%tl172576173235%_
                                           _%e172577173238%_
                                           _%hd172578173241%_
                                           _%tl172579173243%_
                                           _%e172580173246%_
                                           _%hd172581173249%_
                                           _%tl172582173251%_
                                           _%e172583173254%_
                                           _%hd172584173257%_
                                           _%tl172585173259%_))
                                      (_%__match177455177456%_
                                       _%e172562173198%_
                                       _%hd172563173201%_
                                       _%tl172564173203%_
                                       _%e172565173206%_
                                       _%hd172566173209%_
                                       _%tl172567173211%_
                                       _%e172568173214%_
                                       _%hd172569173217%_
                                       _%tl172570173219%_
                                       _%e172571173222%_
                                       _%hd172572173225%_
                                       _%tl172573173227%_
                                       _%e172574173230%_
                                       _%hd172575173233%_
                                       _%tl172576173235%_
                                       _%e172577173238%_
                                       _%hd172578173241%_
                                       _%tl172579173243%_
                                       _%e172580173246%_
                                       _%hd172581173249%_
                                       _%tl172582173251%_
                                       _%e172583173254%_
                                       _%hd172584173257%_
                                       _%tl172585173259%_))))
                              (_%__match177455177456%_
                               _%e172562173198%_
                               _%hd172563173201%_
                               _%tl172564173203%_
                               _%e172565173206%_
                               _%hd172566173209%_
                               _%tl172567173211%_
                               _%e172568173214%_
                               _%hd172569173217%_
                               _%tl172570173219%_
                               _%e172571173222%_
                               _%hd172572173225%_
                               _%tl172573173227%_
                               _%e172574173230%_
                               _%hd172575173233%_
                               _%tl172576173235%_
                               _%e172577173238%_
                               _%hd172578173241%_
                               _%tl172579173243%_
                               _%e172580173246%_
                               _%hd172581173249%_
                               _%tl172582173251%_
                               _%e172583173254%_
                               _%hd172584173257%_
                               _%tl172585173259%_))
                          (_%__match177241177242%_
                           _%e172562173198%_
                           _%hd172563173201%_
                           _%tl172564173203%_
                           _%e172565173206%_
                           _%hd172566173209%_
                           _%tl172567173211%_
                           _%e172568173214%_
                           _%hd172569173217%_
                           _%tl172570173219%_
                           _%e172571173222%_
                           _%hd172572173225%_
                           _%tl172573173227%_
                           _%e172574173230%_
                           _%hd172575173233%_
                           _%tl172576173235%_
                           _%e172577173238%_
                           _%hd172578173241%_
                           _%tl172579173243%_
                           _%e172580173246%_
                           _%hd172581173249%_
                           _%tl172582173251%_
                           _%e172583173254%_
                           _%hd172584173257%_
                           _%tl172585173259%_
                           _%e172586173262%_
                           _%hd172587173265%_
                           _%tl172588173267%_))))
                   (_%__match177063177064%_
                    (lambda (_%e172518173387%_
                             _%hd172519173390%_
                             _%tl172520173392%_
                             _%e172521173395%_
                             _%hd172522173398%_
                             _%tl172523173400%_
                             _%e172524173403%_
                             _%hd172525173406%_
                             _%tl172526173408%_
                             _%e172527173411%_
                             _%hd172528173414%_
                             _%tl172529173416%_
                             _%e172530173419%_
                             _%hd172531173422%_
                             _%tl172532173424%_
                             _%e172533173427%_
                             _%hd172534173430%_
                             _%tl172535173432%_
                             _%e172536173435%_
                             _%hd172537173438%_
                             _%tl172538173440%_
                             _%e172539173443%_
                             _%hd172540173446%_
                             _%tl172541173448%_
                             _%e172542173451%_
                             _%hd172543173454%_
                             _%tl172544173456%_
                             _%e172545173459%_
                             _%hd172546173462%_
                             _%tl172547173464%_
                             _%__splice176962176963%_
                             _%target172548173467%_
                             _%tl172550173469%_)
                      (letrec ((_%loop172551173472%_
                                (lambda (_%hd172549173475%_
                                         _%args172555173477%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd172549173475%_))
                                      (let ((_%e172552173480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd172549173475%_))))
                                        (let ((_%lp-tl172554173485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172552173480%_)))
                                              (_%lp-hd172553173483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172552173480%_))))
                                          (_%loop172551173472%_
                                           _%lp-tl172554173485%_
                                           (cons _%lp-hd172553173483%_
                                                 _%args172555173477%_))))
                                      (let ((_%args172556173488%_
                                             (reverse _%args172555173477%_)))
                                        (let ((_%L173491%_
                                               _%args172556173488%_)
                                              (_%L173492%_ _%hd172546173462%_)
                                              (_%L173493%_ _%hd172537173438%_)
                                              (_%L173494%_ _%hd172528173414%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L173494%_
                                                      'call-method))
                                                   (let ((__tmp178089
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self172503%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L173493%_
                                                      __tmp178089)))
                                              (_%__kont176960176961%_
                                               _%L173491%_
                                               _%L173492%_
                                               _%L173493%_
                                               _%L173494%_)
                                              (_%__match177251177252%_
                                               _%e172518173387%_
                                               _%hd172519173390%_
                                               _%tl172520173392%_
                                               _%e172521173395%_
                                               _%hd172522173398%_
                                               _%tl172523173400%_
                                               _%e172524173403%_
                                               _%hd172525173406%_
                                               _%tl172526173408%_
                                               _%e172527173411%_
                                               _%hd172528173414%_
                                               _%tl172529173416%_
                                               _%e172530173419%_
                                               _%hd172531173422%_
                                               _%tl172532173424%_
                                               _%e172533173427%_
                                               _%hd172534173430%_
                                               _%tl172535173432%_
                                               _%e172536173435%_
                                               _%hd172537173438%_
                                               _%tl172538173440%_
                                               _%e172539173443%_
                                               _%hd172540173446%_
                                               _%tl172541173448%_
                                               _%e172542173451%_
                                               _%hd172543173454%_
                                               _%tl172544173456%_
                                               _%e172545173459%_
                                               _%hd172546173462%_
                                               _%tl172547173464%_))))))))
                        (_%loop172551173472%_ _%target172548173467%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx176958176959%_))
                  (let ((_%e172518173387%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx176958176959%_))))
                    (let ((_%tl172520173392%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172518173387%_)))
                          (_%hd172519173390%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172518173387%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl172520173392%_))
                          (let ((_%e172521173395%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl172520173392%_))))
                            (let ((_%tl172523173400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172521173395%_)))
                                  (_%hd172522173398%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172521173395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd172522173398%_))
                                  (let ((_%e172524173403%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd172522173398%_))))
                                    (let ((_%tl172526173408%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e172524173403%_)))
                                          (_%hd172525173406%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e172524173403%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd172525173406%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd172525173406%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl172526173408%_))
                                                  (let ((_%e172527173411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl172526173408%_))))
                                                    (let ((_%tl172529173416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172527173411%_)))
                                                          (_%hd172528173414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172527173411%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl172529173416%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl172523173400%_))
                      (let ((_%e172530173419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl172523173400%_))))
                        (let ((_%tl172532173424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172530173419%_)))
                              (_%hd172531173422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172530173419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd172531173422%_))
                              (let ((_%e172533173427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd172531173422%_))))
                                (let ((_%tl172535173432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172533173427%_)))
                                      (_%hd172534173430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172533173427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd172534173430%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd172534173430%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172535173432%_))
                                              (let ((_%e172536173435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172535173432%_))))
                                                (let ((_%tl172538173440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172536173435%_)))
                                                      (_%hd172537173438%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172536173435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172538173440%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl172532173424%_))
                                                          (let ((_%e172539173443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl172532173424%_))))
                    (let ((_%tl172541173448%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e172539173443%_)))
                          (_%hd172540173446%_
                           (let ()
                             (declare (not safe))
                             (##car _%e172539173443%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172540173446%_))
                          (let ((_%e172542173451%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172540173446%_))))
                            (let ((_%tl172544173456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172542173451%_)))
                                  (_%hd172543173454%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172542173451%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd172543173454%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd172543173454%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl172544173456%_))
                                          (let ((_%e172545173459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl172544173456%_))))
                                            (let ((_%tl172547173464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e172545173459%_)))
                                                  (_%hd172546173462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e172545173459%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172547173464%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl172541173448%_))
                                                      (let ((_%__splice176962176963%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl172541173448%_ '0))))
                (let ((_%tl172550173469%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176962176963%_ '1)))
                      (_%target172548173467%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice176962176963%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl172550173469%_))
                      (_%__match177063177064%_
                       _%e172518173387%_
                       _%hd172519173390%_
                       _%tl172520173392%_
                       _%e172521173395%_
                       _%hd172522173398%_
                       _%tl172523173400%_
                       _%e172524173403%_
                       _%hd172525173406%_
                       _%tl172526173408%_
                       _%e172527173411%_
                       _%hd172528173414%_
                       _%tl172529173416%_
                       _%e172530173419%_
                       _%hd172531173422%_
                       _%tl172532173424%_
                       _%e172533173427%_
                       _%hd172534173430%_
                       _%tl172535173432%_
                       _%e172536173435%_
                       _%hd172537173438%_
                       _%tl172538173440%_
                       _%e172539173443%_
                       _%hd172540173446%_
                       _%tl172541173448%_
                       _%e172542173451%_
                       _%hd172543173454%_
                       _%tl172544173456%_
                       _%e172545173459%_
                       _%hd172546173462%_
                       _%tl172547173464%_
                       _%__splice176962176963%_
                       _%target172548173467%_
                       _%tl172550173469%_)
                      (_%__match177251177252%_
                       _%e172518173387%_
                       _%hd172519173390%_
                       _%tl172520173392%_
                       _%e172521173395%_
                       _%hd172522173398%_
                       _%tl172523173400%_
                       _%e172524173403%_
                       _%hd172525173406%_
                       _%tl172526173408%_
                       _%e172527173411%_
                       _%hd172528173414%_
                       _%tl172529173416%_
                       _%e172530173419%_
                       _%hd172531173422%_
                       _%tl172532173424%_
                       _%e172533173427%_
                       _%hd172534173430%_
                       _%tl172535173432%_
                       _%e172536173435%_
                       _%hd172537173438%_
                       _%tl172538173440%_
                       _%e172539173443%_
                       _%hd172540173446%_
                       _%tl172541173448%_
                       _%e172542173451%_
                       _%hd172543173454%_
                       _%tl172544173456%_
                       _%e172545173459%_
                       _%hd172546173462%_
                       _%tl172547173464%_))))
              (_%__match177251177252%_
               _%e172518173387%_
               _%hd172519173390%_
               _%tl172520173392%_
               _%e172521173395%_
               _%hd172522173398%_
               _%tl172523173400%_
               _%e172524173403%_
               _%hd172525173406%_
               _%tl172526173408%_
               _%e172527173411%_
               _%hd172528173414%_
               _%tl172529173416%_
               _%e172530173419%_
               _%hd172531173422%_
               _%tl172532173424%_
               _%e172533173427%_
               _%hd172534173430%_
               _%tl172535173432%_
               _%e172536173435%_
               _%hd172537173438%_
               _%tl172538173440%_
               _%e172539173443%_
               _%hd172540173446%_
               _%tl172541173448%_
               _%e172542173451%_
               _%hd172543173454%_
               _%tl172544173456%_
               _%e172545173459%_
               _%hd172546173462%_
               _%tl172547173464%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match177455177456%_
                                                   _%e172518173387%_
                                                   _%hd172519173390%_
                                                   _%tl172520173392%_
                                                   _%e172521173395%_
                                                   _%hd172522173398%_
                                                   _%tl172523173400%_
                                                   _%e172524173403%_
                                                   _%hd172525173406%_
                                                   _%tl172526173408%_
                                                   _%e172527173411%_
                                                   _%hd172528173414%_
                                                   _%tl172529173416%_
                                                   _%e172530173419%_
                                                   _%hd172531173422%_
                                                   _%tl172532173424%_
                                                   _%e172533173427%_
                                                   _%hd172534173430%_
                                                   _%tl172535173432%_
                                                   _%e172536173435%_
                                                   _%hd172537173438%_
                                                   _%tl172538173440%_
                                                   _%e172539173443%_
                                                   _%hd172540173446%_
                                                   _%tl172541173448%_))))
                                          (_%__match177455177456%_
                                           _%e172518173387%_
                                           _%hd172519173390%_
                                           _%tl172520173392%_
                                           _%e172521173395%_
                                           _%hd172522173398%_
                                           _%tl172523173400%_
                                           _%e172524173403%_
                                           _%hd172525173406%_
                                           _%tl172526173408%_
                                           _%e172527173411%_
                                           _%hd172528173414%_
                                           _%tl172529173416%_
                                           _%e172530173419%_
                                           _%hd172531173422%_
                                           _%tl172532173424%_
                                           _%e172533173427%_
                                           _%hd172534173430%_
                                           _%tl172535173432%_
                                           _%e172536173435%_
                                           _%hd172537173438%_
                                           _%tl172538173440%_
                                           _%e172539173443%_
                                           _%hd172540173446%_
                                           _%tl172541173448%_))
                                      (_%__match177131177132%_
                                       _%e172518173387%_
                                       _%hd172519173390%_
                                       _%tl172520173392%_
                                       _%e172521173395%_
                                       _%hd172522173398%_
                                       _%tl172523173400%_
                                       _%e172524173403%_
                                       _%hd172525173406%_
                                       _%tl172526173408%_
                                       _%e172527173411%_
                                       _%hd172528173414%_
                                       _%tl172529173416%_
                                       _%e172530173419%_
                                       _%hd172531173422%_
                                       _%tl172532173424%_
                                       _%e172533173427%_
                                       _%hd172534173430%_
                                       _%tl172535173432%_
                                       _%e172536173435%_
                                       _%hd172537173438%_
                                       _%tl172538173440%_
                                       _%e172539173443%_
                                       _%hd172540173446%_
                                       _%tl172541173448%_
                                       _%e172542173451%_
                                       _%hd172543173454%_
                                       _%tl172544173456%_))
                                  (_%__match177455177456%_
                                   _%e172518173387%_
                                   _%hd172519173390%_
                                   _%tl172520173392%_
                                   _%e172521173395%_
                                   _%hd172522173398%_
                                   _%tl172523173400%_
                                   _%e172524173403%_
                                   _%hd172525173406%_
                                   _%tl172526173408%_
                                   _%e172527173411%_
                                   _%hd172528173414%_
                                   _%tl172529173416%_
                                   _%e172530173419%_
                                   _%hd172531173422%_
                                   _%tl172532173424%_
                                   _%e172533173427%_
                                   _%hd172534173430%_
                                   _%tl172535173432%_
                                   _%e172536173435%_
                                   _%hd172537173438%_
                                   _%tl172538173440%_
                                   _%e172539173443%_
                                   _%hd172540173446%_
                                   _%tl172541173448%_))))
                          (_%__match177455177456%_
                           _%e172518173387%_
                           _%hd172519173390%_
                           _%tl172520173392%_
                           _%e172521173395%_
                           _%hd172522173398%_
                           _%tl172523173400%_
                           _%e172524173403%_
                           _%hd172525173406%_
                           _%tl172526173408%_
                           _%e172527173411%_
                           _%hd172528173414%_
                           _%tl172529173416%_
                           _%e172530173419%_
                           _%hd172531173422%_
                           _%tl172532173424%_
                           _%e172533173427%_
                           _%hd172534173430%_
                           _%tl172535173432%_
                           _%e172536173435%_
                           _%hd172537173438%_
                           _%tl172538173440%_
                           _%e172539173443%_
                           _%hd172540173446%_
                           _%tl172541173448%_))))
                  (_%__match177393177394%_
                   _%e172518173387%_
                   _%hd172519173390%_
                   _%tl172520173392%_
                   _%e172521173395%_
                   _%hd172522173398%_
                   _%tl172523173400%_
                   _%e172524173403%_
                   _%hd172525173406%_
                   _%tl172526173408%_
                   _%e172527173411%_
                   _%hd172528173414%_
                   _%tl172529173416%_
                   _%e172530173419%_
                   _%hd172531173422%_
                   _%tl172532173424%_
                   _%e172533173427%_
                   _%hd172534173430%_
                   _%tl172535173432%_
                   _%e172536173435%_
                   _%hd172537173438%_
                   _%tl172538173440%_))
              (_%__kont176976176977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont176976176977%_))
                                          (_%__kont176976176977%_))
                                      (_%__kont176976176977%_))))
                              (_%__kont176976176977%_))))
                      (_%__kont176976176977%_))
                  (_%__kont176976176977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont176976176977%_))
                                              (_%__kont176976176977%_))
                                          (_%__kont176976176977%_))))
                                  (_%__kont176976176977%_))))
                          (_%__kont176976176977%_))))
                  (_%__kont176976176977%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self171442%_ _%stx171443%_)
        (letrec ((_%force-e171445%_
                  (lambda (_%target172501%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target172501%_ '()))
                                      '()))))))
          (let* ((_%__stx177460177461%_ _%stx171443%_)
                 (_%g171453171675%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx177460177461%_)))))
            (let ((_%__kont177462177463%_
                   (lambda (_%L172447%_ _%L172448%_ _%L172449%_ _%L172450%_)
                     (let ((_%$method172495%_
                            (let ((__tmp178091
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171442%_ 'methods)))
                                  (__tmp178090
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172448%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178091 __tmp178090)))
                           (_%args172496%_
                            (map (lambda (_%g172483172485%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171442%_
                                      _%g172483172485%_)))
                                 (let ((__tmp178092
                                        (lambda (_%g172487172490%_
                                                 _%g172488172492%_)
                                          (cons _%g172487172490%_
                                                _%g172488172492%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178092 '() _%L172447%_)))))
                       (let ((__tmp178093
                              (cons '%#call
                                    (cons (_%force-e171445%_ _%$method172495%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171442%_
                                                               'receiver))
                                                            '()))
                                                _%args172496%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178093 _%stx171443%_)))))
                  (_%__kont177466177467%_
                   (lambda (_%L172279%_
                            _%L172280%_
                            _%L172281%_
                            _%L172282%_
                            _%L172283%_)
                     (let ((_%$method172335%_
                            (let ((__tmp178095
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171442%_ 'methods)))
                                  (__tmp178094
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L172280%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178095 __tmp178094)))
                           (_%args172336%_
                            (map (lambda (_%g172323172325%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self171442%_
                                      _%g172323172325%_)))
                                 (let ((__tmp178096
                                        (lambda (_%g172327172330%_
                                                 _%g172328172332%_)
                                          (cons _%g172327172330%_
                                                _%g172328172332%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp178096 '() _%L172279%_)))))
                       (let ((__tmp178097
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e171445%_
                                                 _%$method172335%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171442%_ 'receiver))
                          '()))
              _%args172336%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178097 _%stx171443%_)))))
                  (_%__kont177470177471%_
                   (lambda (_%L172110%_ _%L172111%_ _%L172112%_)
                     (let* ((_%$field172144%_
                             (let ((__tmp178099
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self171442%_ 'slots)))
                                   (__tmp178098
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L172110%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp178099 __tmp178098)))
                            (__tmp178100
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171442%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field172144%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self171442%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp178100 _%stx171443%_))))
                  (_%__kont177472177473%_
                   (lambda (_%L171984%_ _%L171985%_ _%L171986%_ _%L171987%_)
                     (let ((_%$field172022%_
                            (let ((__tmp178102
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self171442%_ 'slots)))
                                  (__tmp178101
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L171985%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp178102 __tmp178101)))
                           (_%expr172023%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self171442%_ _%L171984%_))))
                       (let ((__tmp178103
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self171442%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field172022%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self171442%_ 'receiver))
                          '()))
              (cons _%expr172023%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp178103 _%stx171443%_)))))
                  (_%__kont177474177475%_
                   (lambda (_%L171856%_ _%L171857%_)
                     (let* ((_%accessor171879%_
                             (let ((__tmp178104
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171857%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178104)))
                            (_%klass171881%_
                             (let ((__tmp178105
                                    (##structure-ref
                                     _%accessor171879%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171443%_
                                __tmp178105)))
                            (_%slot171883%_
                             (##structure-ref
                              _%accessor171879%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor171879%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171881%_
                                      _%slot171883%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171881%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx171443%_
                           (let* ((_%$field171889%_
                                   (let ((__tmp178106
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178106 _%slot171883%_)))
                                  (__tmp178107
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171442%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171442%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178107
                              _%stx171443%_))))))
                  (_%__kont177476177477%_
                   (lambda (_%L171751%_ _%L171752%_ _%L171753%_)
                     (let* ((_%mutator171781%_
                             (let ((__tmp178108
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171753%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp178108)))
                            (_%klass171783%_
                             (let ((__tmp178109
                                    (##structure-ref
                                     _%mutator171781%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx171443%_
                                __tmp178109)))
                            (_%slot171785%_
                             (##structure-ref
                              _%mutator171781%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr171787%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self171442%_ _%L171751%_))))
                       (if (if (##structure-ref
                                _%mutator171781%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass171783%_
                                      _%slot171785%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass171783%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp178110
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L171753%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L171752%_
                                                                '()))
                                                    (cons _%expr171787%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp178110 _%stx171443%_))
                           (let* ((_%$field171793%_
                                   (let ((__tmp178111
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp178111 _%slot171785%_)))
                                  (__tmp178112
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self171442%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field171793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self171442%_ 'receiver))
                               '()))
                   (cons _%expr171787%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp178112
                              _%stx171443%_))))))
                  (_%__kont177478177479%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self171442%_ _%stx171443%_)))))
              (let* ((_%__match177959177960%_
                      (lambda (_%e171647171687%_
                               _%hd171648171690%_
                               _%tl171649171692%_
                               _%e171650171695%_
                               _%hd171651171698%_
                               _%tl171652171700%_
                               _%e171653171703%_
                               _%hd171654171706%_
                               _%tl171655171708%_
                               _%e171656171711%_
                               _%hd171657171714%_
                               _%tl171658171716%_
                               _%e171659171719%_
                               _%hd171660171722%_
                               _%tl171661171724%_
                               _%e171662171727%_
                               _%hd171663171730%_
                               _%tl171664171732%_
                               _%e171665171735%_
                               _%hd171666171738%_
                               _%tl171667171740%_
                               _%e171668171743%_
                               _%hd171669171746%_
                               _%tl171670171748%_)
                        (let ((_%L171751%_ _%hd171669171746%_)
                              (_%L171752%_ _%hd171666171738%_)
                              (_%L171753%_ _%hd171657171714%_))
                          (if (and (let ((__tmp178113
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171752%_
                                      __tmp178113))
                                   (let ((__tmp178114
                                          (let ((__tmp178115
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171753%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178115))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178114
                                      'gxc#!mutator::t)))
                              (_%__kont177476177477%_
                               _%L171751%_
                               _%L171752%_
                               _%L171753%_)
                              (_%__kont177478177479%_)))))
                     (_%__match177957177958%_
                      (lambda (_%e171647171687%_
                               _%hd171648171690%_
                               _%tl171649171692%_
                               _%e171650171695%_
                               _%hd171651171698%_
                               _%tl171652171700%_
                               _%e171653171703%_
                               _%hd171654171706%_
                               _%tl171655171708%_
                               _%e171656171711%_
                               _%hd171657171714%_
                               _%tl171658171716%_
                               _%e171659171719%_
                               _%hd171660171722%_
                               _%tl171661171724%_
                               _%e171662171727%_
                               _%hd171663171730%_
                               _%tl171664171732%_
                               _%e171665171735%_
                               _%hd171666171738%_
                               _%tl171667171740%_
                               _%e171668171743%_
                               _%hd171669171746%_
                               _%tl171670171748%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171670171748%_))
                            (_%__match177959177960%_
                             _%e171647171687%_
                             _%hd171648171690%_
                             _%tl171649171692%_
                             _%e171650171695%_
                             _%hd171651171698%_
                             _%tl171652171700%_
                             _%e171653171703%_
                             _%hd171654171706%_
                             _%tl171655171708%_
                             _%e171656171711%_
                             _%hd171657171714%_
                             _%tl171658171716%_
                             _%e171659171719%_
                             _%hd171660171722%_
                             _%tl171661171724%_
                             _%e171662171727%_
                             _%hd171663171730%_
                             _%tl171664171732%_
                             _%e171665171735%_
                             _%hd171666171738%_
                             _%tl171667171740%_
                             _%e171668171743%_
                             _%hd171669171746%_
                             _%tl171670171748%_)
                            (_%__kont177478177479%_))))
                     (_%__match177951177952%_
                      (lambda (_%e171647171687%_
                               _%hd171648171690%_
                               _%tl171649171692%_
                               _%e171650171695%_
                               _%hd171651171698%_
                               _%tl171652171700%_
                               _%e171653171703%_
                               _%hd171654171706%_
                               _%tl171655171708%_
                               _%e171656171711%_
                               _%hd171657171714%_
                               _%tl171658171716%_
                               _%e171659171719%_
                               _%hd171660171722%_
                               _%tl171661171724%_
                               _%e171662171727%_
                               _%hd171663171730%_
                               _%tl171664171732%_
                               _%e171665171735%_
                               _%hd171666171738%_
                               _%tl171667171740%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171661171724%_))
                            (let ((_%e171668171743%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171661171724%_))))
                              (let ((_%tl171670171748%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171668171743%_)))
                                    (_%hd171669171746%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171668171743%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171670171748%_))
                                    (_%__match177959177960%_
                                     _%e171647171687%_
                                     _%hd171648171690%_
                                     _%tl171649171692%_
                                     _%e171650171695%_
                                     _%hd171651171698%_
                                     _%tl171652171700%_
                                     _%e171653171703%_
                                     _%hd171654171706%_
                                     _%tl171655171708%_
                                     _%e171656171711%_
                                     _%hd171657171714%_
                                     _%tl171658171716%_
                                     _%e171659171719%_
                                     _%hd171660171722%_
                                     _%tl171661171724%_
                                     _%e171662171727%_
                                     _%hd171663171730%_
                                     _%tl171664171732%_
                                     _%e171665171735%_
                                     _%hd171666171738%_
                                     _%tl171667171740%_
                                     _%e171668171743%_
                                     _%hd171669171746%_
                                     _%tl171670171748%_)
                                    (_%__kont177478177479%_))))
                            (_%__kont177478177479%_))))
                     (_%__match177897177898%_
                      (lambda (_%e171623171800%_
                               _%hd171624171803%_
                               _%tl171625171805%_
                               _%e171626171808%_
                               _%hd171627171811%_
                               _%tl171628171813%_
                               _%e171629171816%_
                               _%hd171630171819%_
                               _%tl171631171821%_
                               _%e171632171824%_
                               _%hd171633171827%_
                               _%tl171634171829%_
                               _%e171635171832%_
                               _%hd171636171835%_
                               _%tl171637171837%_
                               _%e171638171840%_
                               _%hd171639171843%_
                               _%tl171640171845%_
                               _%e171641171848%_
                               _%hd171642171851%_
                               _%tl171643171853%_)
                        (let ((_%L171856%_ _%hd171642171851%_)
                              (_%L171857%_ _%hd171633171827%_))
                          (if (and (let ((__tmp178116
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171856%_
                                      __tmp178116))
                                   (let ((__tmp178117
                                          (let ((__tmp178118
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L171857%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp178118))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp178117
                                      'gxc#!accessor::t)))
                              (_%__kont177474177475%_ _%L171856%_ _%L171857%_)
                              (_%__kont177478177479%_)))))
                     (_%__match177895177896%_
                      (lambda (_%e171623171800%_
                               _%hd171624171803%_
                               _%tl171625171805%_
                               _%e171626171808%_
                               _%hd171627171811%_
                               _%tl171628171813%_
                               _%e171629171816%_
                               _%hd171630171819%_
                               _%tl171631171821%_
                               _%e171632171824%_
                               _%hd171633171827%_
                               _%tl171634171829%_
                               _%e171635171832%_
                               _%hd171636171835%_
                               _%tl171637171837%_
                               _%e171638171840%_
                               _%hd171639171843%_
                               _%tl171640171845%_
                               _%e171641171848%_
                               _%hd171642171851%_
                               _%tl171643171853%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171637171837%_))
                            (_%__match177897177898%_
                             _%e171623171800%_
                             _%hd171624171803%_
                             _%tl171625171805%_
                             _%e171626171808%_
                             _%hd171627171811%_
                             _%tl171628171813%_
                             _%e171629171816%_
                             _%hd171630171819%_
                             _%tl171631171821%_
                             _%e171632171824%_
                             _%hd171633171827%_
                             _%tl171634171829%_
                             _%e171635171832%_
                             _%hd171636171835%_
                             _%tl171637171837%_
                             _%e171638171840%_
                             _%hd171639171843%_
                             _%tl171640171845%_
                             _%e171641171848%_
                             _%hd171642171851%_
                             _%tl171643171853%_)
                            (_%__match177951177952%_
                             _%e171623171800%_
                             _%hd171624171803%_
                             _%tl171625171805%_
                             _%e171626171808%_
                             _%hd171627171811%_
                             _%tl171628171813%_
                             _%e171629171816%_
                             _%hd171630171819%_
                             _%tl171631171821%_
                             _%e171632171824%_
                             _%hd171633171827%_
                             _%tl171634171829%_
                             _%e171635171832%_
                             _%hd171636171835%_
                             _%tl171637171837%_
                             _%e171638171840%_
                             _%hd171639171843%_
                             _%tl171640171845%_
                             _%e171641171848%_
                             _%hd171642171851%_
                             _%tl171643171853%_))))
                     (_%__match177841177842%_
                      (lambda (_%e171588171896%_
                               _%hd171589171899%_
                               _%tl171590171901%_
                               _%e171591171904%_
                               _%hd171592171907%_
                               _%tl171593171909%_
                               _%e171594171912%_
                               _%hd171595171915%_
                               _%tl171596171917%_
                               _%e171597171920%_
                               _%hd171598171923%_
                               _%tl171599171925%_
                               _%e171600171928%_
                               _%hd171601171931%_
                               _%tl171602171933%_
                               _%e171603171936%_
                               _%hd171604171939%_
                               _%tl171605171941%_
                               _%e171606171944%_
                               _%hd171607171947%_
                               _%tl171608171949%_
                               _%e171609171952%_
                               _%hd171610171955%_
                               _%tl171611171957%_
                               _%e171612171960%_
                               _%hd171613171963%_
                               _%tl171614171965%_
                               _%e171615171968%_
                               _%hd171616171971%_
                               _%tl171617171973%_
                               _%e171618171976%_
                               _%hd171619171979%_
                               _%tl171620171981%_)
                        (let ((_%L171984%_ _%hd171619171979%_)
                              (_%L171985%_ _%hd171616171971%_)
                              (_%L171986%_ _%hd171607171947%_)
                              (_%L171987%_ _%hd171598171923%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171987%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L171987%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp178119
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L171986%_
                                      __tmp178119)))
                              (_%__kont177472177473%_
                               _%L171984%_
                               _%L171985%_
                               _%L171986%_
                               _%L171987%_)
                              (_%__kont177478177479%_)))))
                     (_%__match177833177834%_
                      (lambda (_%e171588171896%_
                               _%hd171589171899%_
                               _%tl171590171901%_
                               _%e171591171904%_
                               _%hd171592171907%_
                               _%tl171593171909%_
                               _%e171594171912%_
                               _%hd171595171915%_
                               _%tl171596171917%_
                               _%e171597171920%_
                               _%hd171598171923%_
                               _%tl171599171925%_
                               _%e171600171928%_
                               _%hd171601171931%_
                               _%tl171602171933%_
                               _%e171603171936%_
                               _%hd171604171939%_
                               _%tl171605171941%_
                               _%e171606171944%_
                               _%hd171607171947%_
                               _%tl171608171949%_
                               _%e171609171952%_
                               _%hd171610171955%_
                               _%tl171611171957%_
                               _%e171612171960%_
                               _%hd171613171963%_
                               _%tl171614171965%_
                               _%e171615171968%_
                               _%hd171616171971%_
                               _%tl171617171973%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171611171957%_))
                            (let ((_%e171618171976%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171611171957%_))))
                              (let ((_%tl171620171981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171618171976%_)))
                                    (_%hd171619171979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171618171976%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171620171981%_))
                                    (_%__match177841177842%_
                                     _%e171588171896%_
                                     _%hd171589171899%_
                                     _%tl171590171901%_
                                     _%e171591171904%_
                                     _%hd171592171907%_
                                     _%tl171593171909%_
                                     _%e171594171912%_
                                     _%hd171595171915%_
                                     _%tl171596171917%_
                                     _%e171597171920%_
                                     _%hd171598171923%_
                                     _%tl171599171925%_
                                     _%e171600171928%_
                                     _%hd171601171931%_
                                     _%tl171602171933%_
                                     _%e171603171936%_
                                     _%hd171604171939%_
                                     _%tl171605171941%_
                                     _%e171606171944%_
                                     _%hd171607171947%_
                                     _%tl171608171949%_
                                     _%e171609171952%_
                                     _%hd171610171955%_
                                     _%tl171611171957%_
                                     _%e171612171960%_
                                     _%hd171613171963%_
                                     _%tl171614171965%_
                                     _%e171615171968%_
                                     _%hd171616171971%_
                                     _%tl171617171973%_
                                     _%e171618171976%_
                                     _%hd171619171979%_
                                     _%tl171620171981%_)
                                    (_%__kont177478177479%_))))
                            (_%__match177957177958%_
                             _%e171588171896%_
                             _%hd171589171899%_
                             _%tl171590171901%_
                             _%e171591171904%_
                             _%hd171592171907%_
                             _%tl171593171909%_
                             _%e171594171912%_
                             _%hd171595171915%_
                             _%tl171596171917%_
                             _%e171597171920%_
                             _%hd171598171923%_
                             _%tl171599171925%_
                             _%e171600171928%_
                             _%hd171601171931%_
                             _%tl171602171933%_
                             _%e171603171936%_
                             _%hd171604171939%_
                             _%tl171605171941%_
                             _%e171606171944%_
                             _%hd171607171947%_
                             _%tl171608171949%_
                             _%e171609171952%_
                             _%hd171610171955%_
                             _%tl171611171957%_))))
                     (_%__match177755177756%_
                      (lambda (_%e171554172030%_
                               _%hd171555172033%_
                               _%tl171556172035%_
                               _%e171557172038%_
                               _%hd171558172041%_
                               _%tl171559172043%_
                               _%e171560172046%_
                               _%hd171561172049%_
                               _%tl171562172051%_
                               _%e171563172054%_
                               _%hd171564172057%_
                               _%tl171565172059%_
                               _%e171566172062%_
                               _%hd171567172065%_
                               _%tl171568172067%_
                               _%e171569172070%_
                               _%hd171570172073%_
                               _%tl171571172075%_
                               _%e171572172078%_
                               _%hd171573172081%_
                               _%tl171574172083%_
                               _%e171575172086%_
                               _%hd171576172089%_
                               _%tl171577172091%_
                               _%e171578172094%_
                               _%hd171579172097%_
                               _%tl171580172099%_
                               _%e171581172102%_
                               _%hd171582172105%_
                               _%tl171583172107%_)
                        (let ((_%L172110%_ _%hd171582172105%_)
                              (_%L172111%_ _%hd171573172081%_)
                              (_%L172112%_ _%hd171564172057%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172112%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L172112%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp178120
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self171442%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L172111%_
                                      __tmp178120)))
                              (_%__kont177470177471%_
                               _%L172110%_
                               _%L172111%_
                               _%L172112%_)
                              (_%__match177959177960%_
                               _%e171554172030%_
                               _%hd171555172033%_
                               _%tl171556172035%_
                               _%e171557172038%_
                               _%hd171558172041%_
                               _%tl171559172043%_
                               _%e171560172046%_
                               _%hd171561172049%_
                               _%tl171562172051%_
                               _%e171563172054%_
                               _%hd171564172057%_
                               _%tl171565172059%_
                               _%e171566172062%_
                               _%hd171567172065%_
                               _%tl171568172067%_
                               _%e171569172070%_
                               _%hd171570172073%_
                               _%tl171571172075%_
                               _%e171572172078%_
                               _%hd171573172081%_
                               _%tl171574172083%_
                               _%e171575172086%_
                               _%hd171576172089%_
                               _%tl171577172091%_)))))
                     (_%__match177753177754%_
                      (lambda (_%e171554172030%_
                               _%hd171555172033%_
                               _%tl171556172035%_
                               _%e171557172038%_
                               _%hd171558172041%_
                               _%tl171559172043%_
                               _%e171560172046%_
                               _%hd171561172049%_
                               _%tl171562172051%_
                               _%e171563172054%_
                               _%hd171564172057%_
                               _%tl171565172059%_
                               _%e171566172062%_
                               _%hd171567172065%_
                               _%tl171568172067%_
                               _%e171569172070%_
                               _%hd171570172073%_
                               _%tl171571172075%_
                               _%e171572172078%_
                               _%hd171573172081%_
                               _%tl171574172083%_
                               _%e171575172086%_
                               _%hd171576172089%_
                               _%tl171577172091%_
                               _%e171578172094%_
                               _%hd171579172097%_
                               _%tl171580172099%_
                               _%e171581172102%_
                               _%hd171582172105%_
                               _%tl171583172107%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171577172091%_))
                            (_%__match177755177756%_
                             _%e171554172030%_
                             _%hd171555172033%_
                             _%tl171556172035%_
                             _%e171557172038%_
                             _%hd171558172041%_
                             _%tl171559172043%_
                             _%e171560172046%_
                             _%hd171561172049%_
                             _%tl171562172051%_
                             _%e171563172054%_
                             _%hd171564172057%_
                             _%tl171565172059%_
                             _%e171566172062%_
                             _%hd171567172065%_
                             _%tl171568172067%_
                             _%e171569172070%_
                             _%hd171570172073%_
                             _%tl171571172075%_
                             _%e171572172078%_
                             _%hd171573172081%_
                             _%tl171574172083%_
                             _%e171575172086%_
                             _%hd171576172089%_
                             _%tl171577172091%_
                             _%e171578172094%_
                             _%hd171579172097%_
                             _%tl171580172099%_
                             _%e171581172102%_
                             _%hd171582172105%_
                             _%tl171583172107%_)
                            (_%__match177833177834%_
                             _%e171554172030%_
                             _%hd171555172033%_
                             _%tl171556172035%_
                             _%e171557172038%_
                             _%hd171558172041%_
                             _%tl171559172043%_
                             _%e171560172046%_
                             _%hd171561172049%_
                             _%tl171562172051%_
                             _%e171563172054%_
                             _%hd171564172057%_
                             _%tl171565172059%_
                             _%e171566172062%_
                             _%hd171567172065%_
                             _%tl171568172067%_
                             _%e171569172070%_
                             _%hd171570172073%_
                             _%tl171571172075%_
                             _%e171572172078%_
                             _%hd171573172081%_
                             _%tl171574172083%_
                             _%e171575172086%_
                             _%hd171576172089%_
                             _%tl171577172091%_
                             _%e171578172094%_
                             _%hd171579172097%_
                             _%tl171580172099%_
                             _%e171581172102%_
                             _%hd171582172105%_
                             _%tl171583172107%_))))
                     (_%__match177743177744%_
                      (lambda (_%e171554172030%_
                               _%hd171555172033%_
                               _%tl171556172035%_
                               _%e171557172038%_
                               _%hd171558172041%_
                               _%tl171559172043%_
                               _%e171560172046%_
                               _%hd171561172049%_
                               _%tl171562172051%_
                               _%e171563172054%_
                               _%hd171564172057%_
                               _%tl171565172059%_
                               _%e171566172062%_
                               _%hd171567172065%_
                               _%tl171568172067%_
                               _%e171569172070%_
                               _%hd171570172073%_
                               _%tl171571172075%_
                               _%e171572172078%_
                               _%hd171573172081%_
                               _%tl171574172083%_
                               _%e171575172086%_
                               _%hd171576172089%_
                               _%tl171577172091%_
                               _%e171578172094%_
                               _%hd171579172097%_
                               _%tl171580172099%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd171579172097%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171580172099%_))
                                (let ((_%e171581172102%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171580172099%_))))
                                  (let ((_%tl171583172107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171581172102%_)))
                                        (_%hd171582172105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171581172102%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171583172107%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171577172091%_))
                                            (_%__match177755177756%_
                                             _%e171554172030%_
                                             _%hd171555172033%_
                                             _%tl171556172035%_
                                             _%e171557172038%_
                                             _%hd171558172041%_
                                             _%tl171559172043%_
                                             _%e171560172046%_
                                             _%hd171561172049%_
                                             _%tl171562172051%_
                                             _%e171563172054%_
                                             _%hd171564172057%_
                                             _%tl171565172059%_
                                             _%e171566172062%_
                                             _%hd171567172065%_
                                             _%tl171568172067%_
                                             _%e171569172070%_
                                             _%hd171570172073%_
                                             _%tl171571172075%_
                                             _%e171572172078%_
                                             _%hd171573172081%_
                                             _%tl171574172083%_
                                             _%e171575172086%_
                                             _%hd171576172089%_
                                             _%tl171577172091%_
                                             _%e171578172094%_
                                             _%hd171579172097%_
                                             _%tl171580172099%_
                                             _%e171581172102%_
                                             _%hd171582172105%_
                                             _%tl171583172107%_)
                                            (_%__match177833177834%_
                                             _%e171554172030%_
                                             _%hd171555172033%_
                                             _%tl171556172035%_
                                             _%e171557172038%_
                                             _%hd171558172041%_
                                             _%tl171559172043%_
                                             _%e171560172046%_
                                             _%hd171561172049%_
                                             _%tl171562172051%_
                                             _%e171563172054%_
                                             _%hd171564172057%_
                                             _%tl171565172059%_
                                             _%e171566172062%_
                                             _%hd171567172065%_
                                             _%tl171568172067%_
                                             _%e171569172070%_
                                             _%hd171570172073%_
                                             _%tl171571172075%_
                                             _%e171572172078%_
                                             _%hd171573172081%_
                                             _%tl171574172083%_
                                             _%e171575172086%_
                                             _%hd171576172089%_
                                             _%tl171577172091%_
                                             _%e171578172094%_
                                             _%hd171579172097%_
                                             _%tl171580172099%_
                                             _%e171581172102%_
                                             _%hd171582172105%_
                                             _%tl171583172107%_))
                                        (_%__match177957177958%_
                                         _%e171554172030%_
                                         _%hd171555172033%_
                                         _%tl171556172035%_
                                         _%e171557172038%_
                                         _%hd171558172041%_
                                         _%tl171559172043%_
                                         _%e171560172046%_
                                         _%hd171561172049%_
                                         _%tl171562172051%_
                                         _%e171563172054%_
                                         _%hd171564172057%_
                                         _%tl171565172059%_
                                         _%e171566172062%_
                                         _%hd171567172065%_
                                         _%tl171568172067%_
                                         _%e171569172070%_
                                         _%hd171570172073%_
                                         _%tl171571172075%_
                                         _%e171572172078%_
                                         _%hd171573172081%_
                                         _%tl171574172083%_
                                         _%e171575172086%_
                                         _%hd171576172089%_
                                         _%tl171577172091%_))))
                                (_%__match177957177958%_
                                 _%e171554172030%_
                                 _%hd171555172033%_
                                 _%tl171556172035%_
                                 _%e171557172038%_
                                 _%hd171558172041%_
                                 _%tl171559172043%_
                                 _%e171560172046%_
                                 _%hd171561172049%_
                                 _%tl171562172051%_
                                 _%e171563172054%_
                                 _%hd171564172057%_
                                 _%tl171565172059%_
                                 _%e171566172062%_
                                 _%hd171567172065%_
                                 _%tl171568172067%_
                                 _%e171569172070%_
                                 _%hd171570172073%_
                                 _%tl171571172075%_
                                 _%e171572172078%_
                                 _%hd171573172081%_
                                 _%tl171574172083%_
                                 _%e171575172086%_
                                 _%hd171576172089%_
                                 _%tl171577172091%_))
                            (_%__match177957177958%_
                             _%e171554172030%_
                             _%hd171555172033%_
                             _%tl171556172035%_
                             _%e171557172038%_
                             _%hd171558172041%_
                             _%tl171559172043%_
                             _%e171560172046%_
                             _%hd171561172049%_
                             _%tl171562172051%_
                             _%e171563172054%_
                             _%hd171564172057%_
                             _%tl171565172059%_
                             _%e171566172062%_
                             _%hd171567172065%_
                             _%tl171568172067%_
                             _%e171569172070%_
                             _%hd171570172073%_
                             _%tl171571172075%_
                             _%e171572172078%_
                             _%hd171573172081%_
                             _%tl171574172083%_
                             _%e171575172086%_
                             _%hd171576172089%_
                             _%tl171577172091%_))))
                     (_%__match177675177676%_
                      (lambda (_%e171503172151%_
                               _%hd171504172154%_
                               _%tl171505172156%_
                               _%e171506172159%_
                               _%hd171507172162%_
                               _%tl171508172164%_
                               _%e171509172167%_
                               _%hd171510172170%_
                               _%tl171511172172%_
                               _%e171512172175%_
                               _%hd171513172178%_
                               _%tl171514172180%_
                               _%e171515172183%_
                               _%hd171516172186%_
                               _%tl171517172188%_
                               _%e171518172191%_
                               _%hd171519172194%_
                               _%tl171520172196%_
                               _%e171521172199%_
                               _%hd171522172202%_
                               _%tl171523172204%_
                               _%e171524172207%_
                               _%hd171525172210%_
                               _%tl171526172212%_
                               _%e171527172215%_
                               _%hd171528172218%_
                               _%tl171529172220%_
                               _%e171530172223%_
                               _%hd171531172226%_
                               _%tl171532172228%_
                               _%e171533172231%_
                               _%hd171534172234%_
                               _%tl171535172236%_
                               _%e171536172239%_
                               _%hd171537172242%_
                               _%tl171538172244%_
                               _%e171539172247%_
                               _%hd171540172250%_
                               _%tl171541172252%_
                               _%__splice177468177469%_
                               _%target171542172255%_
                               _%tl171544172257%_)
                        (letrec ((_%loop171545172260%_
                                  (lambda (_%hd171543172263%_
                                           _%args171549172265%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171543172263%_))
                                        (let ((_%e171546172268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171543172263%_))))
                                          (let ((_%lp-tl171548172273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171546172268%_)))
                                                (_%lp-hd171547172271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171546172268%_))))
                                            (_%loop171545172260%_
                                             _%lp-tl171548172273%_
                                             (cons _%lp-hd171547172271%_
                                                   _%args171549172265%_))))
                                        (let ((_%args171550172276%_
                                               (reverse _%args171549172265%_)))
                                          (let ((_%L172279%_
                                                 _%args171550172276%_)
                                                (_%L172280%_
                                                 _%hd171540172250%_)
                                                (_%L172281%_
                                                 _%hd171531172226%_)
                                                (_%L172282%_
                                                 _%hd171522172202%_)
                                                (_%L172283%_
                                                 _%hd171513172178%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172283%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172282%_
                                                        'call-method))
                                                     (let ((__tmp178121
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171442%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172281%_
                                                        __tmp178121)))
                                                (_%__kont177466177467%_
                                                 _%L172279%_
                                                 _%L172280%_
                                                 _%L172281%_
                                                 _%L172282%_
                                                 _%L172283%_)
                                                (_%__kont177478177479%_))))))))
                          (_%loop171545172260%_ _%target171542172255%_ '()))))
                     (_%__match177633177634%_
                      (lambda (_%e171503172151%_
                               _%hd171504172154%_
                               _%tl171505172156%_
                               _%e171506172159%_
                               _%hd171507172162%_
                               _%tl171508172164%_
                               _%e171509172167%_
                               _%hd171510172170%_
                               _%tl171511172172%_
                               _%e171512172175%_
                               _%hd171513172178%_
                               _%tl171514172180%_
                               _%e171515172183%_
                               _%hd171516172186%_
                               _%tl171517172188%_
                               _%e171518172191%_
                               _%hd171519172194%_
                               _%tl171520172196%_
                               _%e171521172199%_
                               _%hd171522172202%_
                               _%tl171523172204%_
                               _%e171524172207%_
                               _%hd171525172210%_
                               _%tl171526172212%_
                               _%e171527172215%_
                               _%hd171528172218%_
                               _%tl171529172220%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd171528172218%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171529172220%_))
                                (let ((_%e171530172223%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171529172220%_))))
                                  (let ((_%tl171532172228%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171530172223%_)))
                                        (_%hd171531172226%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171530172223%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl171532172228%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171526172212%_))
                                            (let ((_%e171533172231%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171526172212%_))))
                                              (let ((_%tl171535172236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171533172231%_)))
                                                    (_%hd171534172234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171533172231%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd171534172234%_))
                                                    (let ((_%e171536172239%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd171534172234%_))))
                                                      (let ((_%tl171538172244%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171536172239%_)))
                    (_%hd171537172242%_
                     (let () (declare (not safe)) (##car _%e171536172239%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd171537172242%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd171537172242%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171538172244%_))
                            (let ((_%e171539172247%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171538172244%_))))
                              (let ((_%tl171541172252%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171539172247%_)))
                                    (_%hd171540172250%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171539172247%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl171541172252%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl171535172236%_))
                                        (let ((_%__splice177468177469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl171535172236%_
                                                  '0))))
                                          (let ((_%tl171544172257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177468177469%_
                                                    '1)))
                                                (_%target171542172255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice177468177469%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl171544172257%_))
                                                (_%__match177675177676%_
                                                 _%e171503172151%_
                                                 _%hd171504172154%_
                                                 _%tl171505172156%_
                                                 _%e171506172159%_
                                                 _%hd171507172162%_
                                                 _%tl171508172164%_
                                                 _%e171509172167%_
                                                 _%hd171510172170%_
                                                 _%tl171511172172%_
                                                 _%e171512172175%_
                                                 _%hd171513172178%_
                                                 _%tl171514172180%_
                                                 _%e171515172183%_
                                                 _%hd171516172186%_
                                                 _%tl171517172188%_
                                                 _%e171518172191%_
                                                 _%hd171519172194%_
                                                 _%tl171520172196%_
                                                 _%e171521172199%_
                                                 _%hd171522172202%_
                                                 _%tl171523172204%_
                                                 _%e171524172207%_
                                                 _%hd171525172210%_
                                                 _%tl171526172212%_
                                                 _%e171527172215%_
                                                 _%hd171528172218%_
                                                 _%tl171529172220%_
                                                 _%e171530172223%_
                                                 _%hd171531172226%_
                                                 _%tl171532172228%_
                                                 _%e171533172231%_
                                                 _%hd171534172234%_
                                                 _%tl171535172236%_
                                                 _%e171536172239%_
                                                 _%hd171537172242%_
                                                 _%tl171538172244%_
                                                 _%e171539172247%_
                                                 _%hd171540172250%_
                                                 _%tl171541172252%_
                                                 _%__splice177468177469%_
                                                 _%target171542172255%_
                                                 _%tl171544172257%_)
                                                (_%__kont177478177479%_))))
                                        (_%__kont177478177479%_))
                                    (_%__kont177478177479%_))))
                            (_%__kont177478177479%_))
                        (_%__kont177478177479%_))
                    (_%__kont177478177479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177478177479%_))))
                                            (_%__match177957177958%_
                                             _%e171503172151%_
                                             _%hd171504172154%_
                                             _%tl171505172156%_
                                             _%e171506172159%_
                                             _%hd171507172162%_
                                             _%tl171508172164%_
                                             _%e171509172167%_
                                             _%hd171510172170%_
                                             _%tl171511172172%_
                                             _%e171512172175%_
                                             _%hd171513172178%_
                                             _%tl171514172180%_
                                             _%e171515172183%_
                                             _%hd171516172186%_
                                             _%tl171517172188%_
                                             _%e171518172191%_
                                             _%hd171519172194%_
                                             _%tl171520172196%_
                                             _%e171521172199%_
                                             _%hd171522172202%_
                                             _%tl171523172204%_
                                             _%e171524172207%_
                                             _%hd171525172210%_
                                             _%tl171526172212%_))
                                        (_%__match177957177958%_
                                         _%e171503172151%_
                                         _%hd171504172154%_
                                         _%tl171505172156%_
                                         _%e171506172159%_
                                         _%hd171507172162%_
                                         _%tl171508172164%_
                                         _%e171509172167%_
                                         _%hd171510172170%_
                                         _%tl171511172172%_
                                         _%e171512172175%_
                                         _%hd171513172178%_
                                         _%tl171514172180%_
                                         _%e171515172183%_
                                         _%hd171516172186%_
                                         _%tl171517172188%_
                                         _%e171518172191%_
                                         _%hd171519172194%_
                                         _%tl171520172196%_
                                         _%e171521172199%_
                                         _%hd171522172202%_
                                         _%tl171523172204%_
                                         _%e171524172207%_
                                         _%hd171525172210%_
                                         _%tl171526172212%_))))
                                (_%__match177957177958%_
                                 _%e171503172151%_
                                 _%hd171504172154%_
                                 _%tl171505172156%_
                                 _%e171506172159%_
                                 _%hd171507172162%_
                                 _%tl171508172164%_
                                 _%e171509172167%_
                                 _%hd171510172170%_
                                 _%tl171511172172%_
                                 _%e171512172175%_
                                 _%hd171513172178%_
                                 _%tl171514172180%_
                                 _%e171515172183%_
                                 _%hd171516172186%_
                                 _%tl171517172188%_
                                 _%e171518172191%_
                                 _%hd171519172194%_
                                 _%tl171520172196%_
                                 _%e171521172199%_
                                 _%hd171522172202%_
                                 _%tl171523172204%_
                                 _%e171524172207%_
                                 _%hd171525172210%_
                                 _%tl171526172212%_))
                            (_%__match177743177744%_
                             _%e171503172151%_
                             _%hd171504172154%_
                             _%tl171505172156%_
                             _%e171506172159%_
                             _%hd171507172162%_
                             _%tl171508172164%_
                             _%e171509172167%_
                             _%hd171510172170%_
                             _%tl171511172172%_
                             _%e171512172175%_
                             _%hd171513172178%_
                             _%tl171514172180%_
                             _%e171515172183%_
                             _%hd171516172186%_
                             _%tl171517172188%_
                             _%e171518172191%_
                             _%hd171519172194%_
                             _%tl171520172196%_
                             _%e171521172199%_
                             _%hd171522172202%_
                             _%tl171523172204%_
                             _%e171524172207%_
                             _%hd171525172210%_
                             _%tl171526172212%_
                             _%e171527172215%_
                             _%hd171528172218%_
                             _%tl171529172220%_))))
                     (_%__match177565177566%_
                      (lambda (_%e171459172343%_
                               _%hd171460172346%_
                               _%tl171461172348%_
                               _%e171462172351%_
                               _%hd171463172354%_
                               _%tl171464172356%_
                               _%e171465172359%_
                               _%hd171466172362%_
                               _%tl171467172364%_
                               _%e171468172367%_
                               _%hd171469172370%_
                               _%tl171470172372%_
                               _%e171471172375%_
                               _%hd171472172378%_
                               _%tl171473172380%_
                               _%e171474172383%_
                               _%hd171475172386%_
                               _%tl171476172388%_
                               _%e171477172391%_
                               _%hd171478172394%_
                               _%tl171479172396%_
                               _%e171480172399%_
                               _%hd171481172402%_
                               _%tl171482172404%_
                               _%e171483172407%_
                               _%hd171484172410%_
                               _%tl171485172412%_
                               _%e171486172415%_
                               _%hd171487172418%_
                               _%tl171488172420%_
                               _%__splice177464177465%_
                               _%target171489172423%_
                               _%tl171491172425%_)
                        (letrec ((_%loop171492172428%_
                                  (lambda (_%hd171490172431%_
                                           _%args171496172433%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171490172431%_))
                                        (let ((_%e171493172436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171490172431%_))))
                                          (let ((_%lp-tl171495172441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171493172436%_)))
                                                (_%lp-hd171494172439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171493172436%_))))
                                            (_%loop171492172428%_
                                             _%lp-tl171495172441%_
                                             (cons _%lp-hd171494172439%_
                                                   _%args171496172433%_))))
                                        (let ((_%args171497172444%_
                                               (reverse _%args171496172433%_)))
                                          (let ((_%L172447%_
                                                 _%args171497172444%_)
                                                (_%L172448%_
                                                 _%hd171487172418%_)
                                                (_%L172449%_
                                                 _%hd171478172394%_)
                                                (_%L172450%_
                                                 _%hd171469172370%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L172450%_
                                                        'call-method))
                                                     (let ((__tmp178122
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self171442%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L172449%_
                                                        __tmp178122)))
                                                (_%__kont177462177463%_
                                                 _%L172447%_
                                                 _%L172448%_
                                                 _%L172449%_
                                                 _%L172450%_)
                                                (_%__match177753177754%_
                                                 _%e171459172343%_
                                                 _%hd171460172346%_
                                                 _%tl171461172348%_
                                                 _%e171462172351%_
                                                 _%hd171463172354%_
                                                 _%tl171464172356%_
                                                 _%e171465172359%_
                                                 _%hd171466172362%_
                                                 _%tl171467172364%_
                                                 _%e171468172367%_
                                                 _%hd171469172370%_
                                                 _%tl171470172372%_
                                                 _%e171471172375%_
                                                 _%hd171472172378%_
                                                 _%tl171473172380%_
                                                 _%e171474172383%_
                                                 _%hd171475172386%_
                                                 _%tl171476172388%_
                                                 _%e171477172391%_
                                                 _%hd171478172394%_
                                                 _%tl171479172396%_
                                                 _%e171480172399%_
                                                 _%hd171481172402%_
                                                 _%tl171482172404%_
                                                 _%e171483172407%_
                                                 _%hd171484172410%_
                                                 _%tl171485172412%_
                                                 _%e171486172415%_
                                                 _%hd171487172418%_
                                                 _%tl171488172420%_))))))))
                          (_%loop171492172428%_ _%target171489172423%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx177460177461%_))
                    (let ((_%e171459172343%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx177460177461%_))))
                      (let ((_%tl171461172348%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171459172343%_)))
                            (_%hd171460172346%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171459172343%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171461172348%_))
                            (let ((_%e171462172351%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171461172348%_))))
                              (let ((_%tl171464172356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171462172351%_)))
                                    (_%hd171463172354%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171462172351%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171463172354%_))
                                    (let ((_%e171465172359%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171463172354%_))))
                                      (let ((_%tl171467172364%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171465172359%_)))
                                            (_%hd171466172362%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171465172359%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171466172362%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171466172362%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171467172364%_))
                                                    (let ((_%e171468172367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171467172364%_))))
                                                      (let ((_%tl171470172372%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171468172367%_)))
                    (_%hd171469172370%_
                     (let () (declare (not safe)) (##car _%e171468172367%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171470172372%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171464172356%_))
                        (let ((_%e171471172375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171464172356%_))))
                          (let ((_%tl171473172380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171471172375%_)))
                                (_%hd171472172378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171471172375%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171472172378%_))
                                (let ((_%e171474172383%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171472172378%_))))
                                  (let ((_%tl171476172388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171474172383%_)))
                                        (_%hd171475172386%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171474172383%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171475172386%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd171475172386%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171476172388%_))
                                                (let ((_%e171477172391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171476172388%_))))
                                                  (let ((_%tl171479172396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171477172391%_)))
                                                        (_%hd171478172394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171477172391%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171479172396%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171473172380%_))
                                                            (let ((_%e171480172399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171473172380%_))))
                      (let ((_%tl171482172404%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171480172399%_)))
                            (_%hd171481172402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171480172399%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd171481172402%_))
                            (let ((_%e171483172407%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd171481172402%_))))
                              (let ((_%tl171485172412%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171483172407%_)))
                                    (_%hd171484172410%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171483172407%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171484172410%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd171484172410%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171485172412%_))
                                            (let ((_%e171486172415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171485172412%_))))
                                              (let ((_%tl171488172420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171486172415%_)))
                                                    (_%hd171487172418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171486172415%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171488172420%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl171482172404%_))
                                                        (let ((_%__splice177464177465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl171482172404%_ '0))))
                  (let ((_%tl171491172425%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177464177465%_ '1)))
                        (_%target171489172423%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice177464177465%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171491172425%_))
                        (_%__match177565177566%_
                         _%e171459172343%_
                         _%hd171460172346%_
                         _%tl171461172348%_
                         _%e171462172351%_
                         _%hd171463172354%_
                         _%tl171464172356%_
                         _%e171465172359%_
                         _%hd171466172362%_
                         _%tl171467172364%_
                         _%e171468172367%_
                         _%hd171469172370%_
                         _%tl171470172372%_
                         _%e171471172375%_
                         _%hd171472172378%_
                         _%tl171473172380%_
                         _%e171474172383%_
                         _%hd171475172386%_
                         _%tl171476172388%_
                         _%e171477172391%_
                         _%hd171478172394%_
                         _%tl171479172396%_
                         _%e171480172399%_
                         _%hd171481172402%_
                         _%tl171482172404%_
                         _%e171483172407%_
                         _%hd171484172410%_
                         _%tl171485172412%_
                         _%e171486172415%_
                         _%hd171487172418%_
                         _%tl171488172420%_
                         _%__splice177464177465%_
                         _%target171489172423%_
                         _%tl171491172425%_)
                        (_%__match177753177754%_
                         _%e171459172343%_
                         _%hd171460172346%_
                         _%tl171461172348%_
                         _%e171462172351%_
                         _%hd171463172354%_
                         _%tl171464172356%_
                         _%e171465172359%_
                         _%hd171466172362%_
                         _%tl171467172364%_
                         _%e171468172367%_
                         _%hd171469172370%_
                         _%tl171470172372%_
                         _%e171471172375%_
                         _%hd171472172378%_
                         _%tl171473172380%_
                         _%e171474172383%_
                         _%hd171475172386%_
                         _%tl171476172388%_
                         _%e171477172391%_
                         _%hd171478172394%_
                         _%tl171479172396%_
                         _%e171480172399%_
                         _%hd171481172402%_
                         _%tl171482172404%_
                         _%e171483172407%_
                         _%hd171484172410%_
                         _%tl171485172412%_
                         _%e171486172415%_
                         _%hd171487172418%_
                         _%tl171488172420%_))))
                (_%__match177753177754%_
                 _%e171459172343%_
                 _%hd171460172346%_
                 _%tl171461172348%_
                 _%e171462172351%_
                 _%hd171463172354%_
                 _%tl171464172356%_
                 _%e171465172359%_
                 _%hd171466172362%_
                 _%tl171467172364%_
                 _%e171468172367%_
                 _%hd171469172370%_
                 _%tl171470172372%_
                 _%e171471172375%_
                 _%hd171472172378%_
                 _%tl171473172380%_
                 _%e171474172383%_
                 _%hd171475172386%_
                 _%tl171476172388%_
                 _%e171477172391%_
                 _%hd171478172394%_
                 _%tl171479172396%_
                 _%e171480172399%_
                 _%hd171481172402%_
                 _%tl171482172404%_
                 _%e171483172407%_
                 _%hd171484172410%_
                 _%tl171485172412%_
                 _%e171486172415%_
                 _%hd171487172418%_
                 _%tl171488172420%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match177957177958%_
                                                     _%e171459172343%_
                                                     _%hd171460172346%_
                                                     _%tl171461172348%_
                                                     _%e171462172351%_
                                                     _%hd171463172354%_
                                                     _%tl171464172356%_
                                                     _%e171465172359%_
                                                     _%hd171466172362%_
                                                     _%tl171467172364%_
                                                     _%e171468172367%_
                                                     _%hd171469172370%_
                                                     _%tl171470172372%_
                                                     _%e171471172375%_
                                                     _%hd171472172378%_
                                                     _%tl171473172380%_
                                                     _%e171474172383%_
                                                     _%hd171475172386%_
                                                     _%tl171476172388%_
                                                     _%e171477172391%_
                                                     _%hd171478172394%_
                                                     _%tl171479172396%_
                                                     _%e171480172399%_
                                                     _%hd171481172402%_
                                                     _%tl171482172404%_))))
                                            (_%__match177957177958%_
                                             _%e171459172343%_
                                             _%hd171460172346%_
                                             _%tl171461172348%_
                                             _%e171462172351%_
                                             _%hd171463172354%_
                                             _%tl171464172356%_
                                             _%e171465172359%_
                                             _%hd171466172362%_
                                             _%tl171467172364%_
                                             _%e171468172367%_
                                             _%hd171469172370%_
                                             _%tl171470172372%_
                                             _%e171471172375%_
                                             _%hd171472172378%_
                                             _%tl171473172380%_
                                             _%e171474172383%_
                                             _%hd171475172386%_
                                             _%tl171476172388%_
                                             _%e171477172391%_
                                             _%hd171478172394%_
                                             _%tl171479172396%_
                                             _%e171480172399%_
                                             _%hd171481172402%_
                                             _%tl171482172404%_))
                                        (_%__match177633177634%_
                                         _%e171459172343%_
                                         _%hd171460172346%_
                                         _%tl171461172348%_
                                         _%e171462172351%_
                                         _%hd171463172354%_
                                         _%tl171464172356%_
                                         _%e171465172359%_
                                         _%hd171466172362%_
                                         _%tl171467172364%_
                                         _%e171468172367%_
                                         _%hd171469172370%_
                                         _%tl171470172372%_
                                         _%e171471172375%_
                                         _%hd171472172378%_
                                         _%tl171473172380%_
                                         _%e171474172383%_
                                         _%hd171475172386%_
                                         _%tl171476172388%_
                                         _%e171477172391%_
                                         _%hd171478172394%_
                                         _%tl171479172396%_
                                         _%e171480172399%_
                                         _%hd171481172402%_
                                         _%tl171482172404%_
                                         _%e171483172407%_
                                         _%hd171484172410%_
                                         _%tl171485172412%_))
                                    (_%__match177957177958%_
                                     _%e171459172343%_
                                     _%hd171460172346%_
                                     _%tl171461172348%_
                                     _%e171462172351%_
                                     _%hd171463172354%_
                                     _%tl171464172356%_
                                     _%e171465172359%_
                                     _%hd171466172362%_
                                     _%tl171467172364%_
                                     _%e171468172367%_
                                     _%hd171469172370%_
                                     _%tl171470172372%_
                                     _%e171471172375%_
                                     _%hd171472172378%_
                                     _%tl171473172380%_
                                     _%e171474172383%_
                                     _%hd171475172386%_
                                     _%tl171476172388%_
                                     _%e171477172391%_
                                     _%hd171478172394%_
                                     _%tl171479172396%_
                                     _%e171480172399%_
                                     _%hd171481172402%_
                                     _%tl171482172404%_))))
                            (_%__match177957177958%_
                             _%e171459172343%_
                             _%hd171460172346%_
                             _%tl171461172348%_
                             _%e171462172351%_
                             _%hd171463172354%_
                             _%tl171464172356%_
                             _%e171465172359%_
                             _%hd171466172362%_
                             _%tl171467172364%_
                             _%e171468172367%_
                             _%hd171469172370%_
                             _%tl171470172372%_
                             _%e171471172375%_
                             _%hd171472172378%_
                             _%tl171473172380%_
                             _%e171474172383%_
                             _%hd171475172386%_
                             _%tl171476172388%_
                             _%e171477172391%_
                             _%hd171478172394%_
                             _%tl171479172396%_
                             _%e171480172399%_
                             _%hd171481172402%_
                             _%tl171482172404%_))))
                    (_%__match177895177896%_
                     _%e171459172343%_
                     _%hd171460172346%_
                     _%tl171461172348%_
                     _%e171462172351%_
                     _%hd171463172354%_
                     _%tl171464172356%_
                     _%e171465172359%_
                     _%hd171466172362%_
                     _%tl171467172364%_
                     _%e171468172367%_
                     _%hd171469172370%_
                     _%tl171470172372%_
                     _%e171471172375%_
                     _%hd171472172378%_
                     _%tl171473172380%_
                     _%e171474172383%_
                     _%hd171475172386%_
                     _%tl171476172388%_
                     _%e171477172391%_
                     _%hd171478172394%_
                     _%tl171479172396%_))
                (_%__kont177478177479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont177478177479%_))
                                            (_%__kont177478177479%_))
                                        (_%__kont177478177479%_))))
                                (_%__kont177478177479%_))))
                        (_%__kont177478177479%_))
                    (_%__kont177478177479%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont177478177479%_))
                                                (_%__kont177478177479%_))
                                            (_%__kont177478177479%_))))
                                    (_%__kont177478177479%_))))
                            (_%__kont177478177479%_))))
                    (_%__kont177478177479%_))))))))))
