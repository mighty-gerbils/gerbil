(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712997790)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp176059 (list gxc#::identity::t))
            (__tmp176058 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp176059
         '()
         __tmp176058
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args174856%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args174856%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp176060
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
        (__make-promise __tmp176060)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx174848%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self174851%_
                (let ((__obj176051
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj176051))
               (__tmp176061
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174851%_ _%stx174848%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176061
           gxc#current-compile-method
           _%self174851%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp176063 (list gxc#::false::t))
            (__tmp176062 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp176063
         '()
         __tmp176062
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args174845%_
        (apply make-instance gxc#::extract-receiver::t _%$args174845%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp176064
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
        (__make-promise __tmp176064)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx174837%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self174840%_
                (let ((__obj176053
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj176053))
               (__tmp176065
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174840%_ _%stx174837%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176065
           gxc#current-compile-method
           _%self174840%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp176067 (list gxc#::void::t))
            (__tmp176066 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp176067
         '(receiver methods slots)
         __tmp176066
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args174834%_
        (apply make-instance gxc#::collect-object-refs::t _%$args174834%_)))
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
      (let ((__tmp176068
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
        (__make-promise __tmp176068)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords174800%_
               _%receiver174795174801%_
               _%methods174796174803%_
               _%slots174797174805%_
               _%stx174807%_)
        (let* ((_%receiver174810%_
                (if (eq? _%receiver174795174801%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174795174801%_))
               (_%methods174812%_
                (if (eq? _%methods174796174803%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174796174803%_))
               (_%slots174814%_
                (if (eq? _%slots174797174805%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174797174805%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self174816%_
                  (let ((__obj176055
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
                       __obj176055
                       _%receiver174810%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176055
                       _%methods174812%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176055
                       _%slots174814%_
                       '3
                       '#f
                       '#f))
                    __obj176055))
                 (__tmp176069
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174816%_ _%stx174807%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176069
             gxc#current-compile-method
             _%self174816%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords174823%_ . _%args174824%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords174823%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174823%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174823%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174823%_
                  'slots:
                  absent-value))
               _%args174824%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args174798174830%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args174798174830%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp176071 (list gxc#::basic-xform-expression::t))
            (__tmp176070 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp176071
         '(receiver klass methods slots)
         __tmp176070
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args174791%_
        (apply make-instance gxc#::subst-object-refs::t _%$args174791%_)))
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
      (let ((__tmp176072
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
        (__make-promise __tmp176072)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords174753%_
               _%receiver174747174754%_
               _%klass174748174756%_
               _%methods174749174758%_
               _%slots174750174760%_
               _%stx174762%_)
        (let* ((_%receiver174765%_
                (if (eq? _%receiver174747174754%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174747174754%_))
               (_%klass174767%_
                (if (eq? _%klass174748174756%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass174748174756%_))
               (_%methods174769%_
                (if (eq? _%methods174749174758%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174749174758%_))
               (_%slots174771%_
                (if (eq? _%slots174750174760%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174750174760%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self174773%_
                  (let ((__obj176057
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
                       __obj176057
                       _%receiver174765%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176057
                       _%klass174767%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176057
                       _%methods174769%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176057
                       _%slots174771%_
                       '4
                       '#f
                       '#f))
                    __obj176057))
                 (__tmp176073
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174773%_ _%stx174762%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176073
             gxc#current-compile-method
             _%self174773%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords174780%_ . _%args174781%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords174780%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174780%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174780%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174780%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174780%_
                  'slots:
                  absent-value))
               _%args174781%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args174751174787%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args174751174787%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self171862%_ _%stx171863%_)
        (letrec ((_%generate-method-bind171865%_
                  (lambda (_%$klass174739%_
                           _%$method-table174740%_
                           _%id174741%_
                           _%$id174742%_)
                    (let ((_%$tmp174744%_
                           (let ((__tmp176074
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176074))))
                      (cons (cons _%$id174742%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp174744%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table174740%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id174741%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp174744%_ '()))
                    (cons (cons '%#ref (cons _%$tmp174744%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id174741%_
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
                 (_%generate-slot-bind171866%_
                  (lambda (_%$klass174733%_ _%id174734%_ _%$id174735%_)
                    (let ((_%$tmp174737%_
                           (let ((__tmp176075
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176075))))
                      (cons (cons _%$id174735%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp174737%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass174733%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id174734%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp174737%_ '()))
                        (cons (cons '%#ref (cons _%$tmp174737%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id174734%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl171867%_
                  (lambda (_%$klass174727%_
                           _%$method-table174728%_
                           _%methods-bind174729%_
                           _%slots-bind174730%_
                           _%specializer-impl174731%_)
                    (let ((__tmp176076
                           (cons '%#lambda
                                 (cons (cons _%$klass174727%_
                                             (cons _%$method-table174728%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind174730%_
                                                            _%methods-bind174729%_))
                                                         (cons _%specializer-impl174731%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176076 _%stx171863%_))))
                 (_%generate-specializer-def171868%_
                  (lambda (_%id174723%_
                           _%specializer-id174724%_
                           _%specializer-impl174725%_)
                    (let ((__tmp176077
                           (cons '%#begin
                                 (cons _%stx171863%_
                                       (cons (let ((__tmp176078
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id174724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl174725%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176078
                                                _%stx171863%_))
                                             (cons (let ((__tmp176079
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id174723%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id174724%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176079
                                                      _%stx171863%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176077 _%stx171863%_)))))
          (let* ((_%__stx174945174946%_ _%stx171863%_)
                 (_%g171871171891%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx174945174946%_)))))
            (let ((_%__kont174947174948%_
                   (lambda (_%L171935%_ _%L171936%_)
                     (let ((_%method-calls171955%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs171956%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty171957%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?171959%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls171955%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs171956%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L171935%_))
                             (let* ((_%__stx174859174860%_ _%L171935%_)
                                    (_%g172347172365%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx174859174860%_)))))
                               (let ((_%__kont174861174862%_
                                      (lambda (_%L172401%_
                                               _%L172402%_
                                               _%L172403%_)
                                        (let ((_%receiver172423%_
                                               (let ((_%$e172420%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172420%_
                                                     _%$e172420%_
                                                     _%L172403%_))))
                                          (for-each
                                           (lambda (_%g172424172426%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172423%_
                                              _%method-calls171955%_
                                              _%slot-refs171956%_
                                              _%g172424172426%_))
                                           _%L172401%_)
                                          (if (_%no-specializer?171959%_)
                                              _%stx171863%_
                                              (let* ((_%specializer-id172435%_
                                                      (let* ((_%id172429%_
                                                              (let ((__tmp176080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171936%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176080 '"::specialize")))
                     (_%specializer-id172432%_
                      (let ((__tmp176081
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171863%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172429%_ __tmp176081))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172432%_))
                _%specializer-id172432%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172437%_
                                                      (let ((__tmp176082
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176082)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172439%_
                                                      (let ((__tmp176083
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176083)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172441%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171955%_)))
                                                     (_%$methods172445%_
                                                      (map (lambda (_%id172443%_)
                                                             (let ((__tmp176084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172443%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176084)))
                   _%methods172441%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172454%_
                                                      (for-each
                                                       (lambda (_%g172446172449%_
                                                                _%g172447172451%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171955%_
                                                            _%g172446172449%_
                                                            _%g172447172451%_)))
                                                       _%methods172441%_
                                                       _%$methods172445%_))
                                                     (_%methods-bind172464%_
                                                      (map (lambda (_%g172456172459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172457172461%_)
                     (_%generate-method-bind171865%_
                      _%$klass172437%_
                      _%$method-table172439%_
                      _%g172456172459%_
                      _%g172457172461%_))
                   _%methods172441%_
                   _%$methods172445%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172466%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171956%_)))
                                                     (_%$slots172470%_
                                                      (map (lambda (_%id172468%_)
                                                             (let ((__tmp176085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172468%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176085)))
                   _%slots172466%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172479%_
                                                      (for-each
                                                       (lambda (_%g172471172474%_
                                                                _%g172472172476%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171956%_
                                                            _%g172471172474%_
                                                            _%g172472172476%_)))
                                                       _%slots172466%_
                                                       _%$slots172470%_))
                                                     (_%slots-bind172488%_
                                                      (map (lambda (_%g172480172483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172481172485%_)
                     (_%generate-slot-bind171866%_
                      _%$klass172437%_
                      _%g172480172483%_
                      _%g172481172485%_))
                   _%slots172466%_
                   _%$slots172470%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172494%_
                                                      (map (lambda (_%g172489172491%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172423%_
                                                              _%$klass172437%_
                                                              _%method-calls171955%_
                                                              _%slot-refs171956%_
                                                              _%g172489172491%_))
                                                           _%L172401%_))
                                                     (_%specializer-impl172496%_
                                                      (let ((__tmp176086
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172403%_ _%L172402%_)
                                 _%specializer-body172494%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176086 _%stx171863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172498%_
                                                      (_%generate-specializer-impl171867%_
                                                       _%$klass172437%_
                                                       _%$method-table172439%_
                                                       _%methods-bind172464%_
                                                       _%slots-bind172488%_
                                                       _%specializer-impl172496%_)))
                                                (let ((__tmp176088
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171936%_)))
                                                      (__tmp176087
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172435%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176088
                                                   '" => "
                                                   __tmp176087))
                                                (_%generate-specializer-def171868%_
                                                 _%L171936%_
                                                 _%specializer-id172435%_
                                                 _%specializer-impl172498%_))))))
                                     (_%__kont174863174864%_
                                      (lambda () _%stx171863%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx174859174860%_))
                                     (let ((_%e172352172377%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx174859174860%_))))
                                       (let ((_%tl172354172382%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172352172377%_)))
                                             (_%hd172353172380%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172352172377%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172354172382%_))
                                             (let ((_%e172355172385%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172354172382%_))))
                                               (let ((_%tl172357172390%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172355172385%_)))
                                                     (_%hd172356172388%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172355172385%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172356172388%_))
                                                     (let ((_%e172358172393%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172356172388%_))))
                                                       (let ((_%tl172360172398%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172358172393%_)))
                     (_%hd172359172396%_
                      (let () (declare (not safe)) (##car _%e172358172393%_))))
                 (_%__kont174861174862%_
                  _%tl172357172390%_
                  _%tl172360172398%_
                  _%hd172359172396%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174863174864%_))))
                                             (_%__kont174863174864%_))))
                                     (_%__kont174863174864%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L171935%_))
                                 (let* ((_%g172505172524%_
                                         (lambda (_%g172506172521%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172506172521%_))))
                                        (_%g172504172822%_
                                         (lambda (_%g172506172527%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172506172527%_))
                                               (let ((_%e172508172529%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172506172527%_))))
                                                 (let ((_%hd172509172532%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172508172529%_)))
                                                       (_%tl172510172534%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172508172529%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172510172534%_))
                                                       (let ((_g176089_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172510172534%_ '0))))
                 (begin
                   (let ((_g176090_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g176089_)
                                (##vector-length _g176089_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g176090_ 2)))
                         (error "Context expects 2 values" _g176090_)))
                   (let ((_%target172511172537%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176089_ 0)))
                         (_%tl172513172539%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176089_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172513172539%_))
                         (letrec ((_%loop172514172542%_
                                   (lambda (_%hd172512172545%_
                                            _%clause172518172547%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172512172545%_))
                                         (let ((_%e172515172550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172512172545%_))))
                                           (let ((_%lp-hd172516172553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172515172550%_)))
                                                 (_%lp-tl172517172555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172515172550%_))))
                                             (_%loop172514172542%_
                                              _%lp-tl172517172555%_
                                              (cons _%lp-hd172516172553%_
                                                    _%clause172518172547%_))))
                                         (let ((_%clause172519172558%_
                                                (reverse _%clause172518172547%_)))
                                           ((lambda (_%L172561%_)
                                              (for-each
                                               (lambda (_%clause172575%_)
                                                 (let* ((_%__stx174885174886%_
                                                         _%clause172575%_)
                                                        (_%g172578172593%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx174885174886%_)))))
                                                   (let ((_%__kont174887174888%_
                                                          (lambda (_%L172621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L172622%_
                           _%L172623%_)
                    (let ((_%receiver172642%_
                           (let ((_%$e172639%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L172621%_))))
                             (if _%$e172639%_ _%$e172639%_ _%L172623%_))))
                      (for-each
                       (lambda (_%g172643172645%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver172642%_
                          _%method-calls171955%_
                          _%slot-refs171956%_
                          _%g172643172645%_))
                       _%L172621%_))))
                 (_%__kont174889174890%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx174885174886%_))
                                                         (let ((_%e172583172605%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx174885174886%_))))
                   (let ((_%tl172585172610%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172583172605%_)))
                         (_%hd172584172608%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172583172605%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172584172608%_))
                         (let ((_%e172586172613%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172584172608%_))))
                           (let ((_%tl172588172618%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172586172613%_)))
                                 (_%hd172587172616%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172586172613%_))))
                             (_%__kont174887174888%_
                              _%tl172585172610%_
                              _%tl172588172618%_
                              _%hd172587172616%_)))
                         (_%__kont174889174890%_))))
                 (_%__kont174889174890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp176091
                                                      (lambda (_%g172650172653%_
                                                               _%g172651172655%_)
                                                        (cons _%g172650172653%_
                                                              _%g172651172655%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176091
                                                  '()
                                                  _%L172561%_)))
                                              (if (_%no-specializer?171959%_)
                                                  _%stx171863%_
                                                  (let* ((_%specializer-id172664%_
                                                          (let* ((_%id172658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176092
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171936%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176092 '"::specialize")))
                         (_%specializer-id172661%_
                          (let ((__tmp176093
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171863%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172658%_
                             __tmp176093))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172661%_))
                    _%specializer-id172661%_))
                 (_%$klass172666%_
                  (let ((__tmp176094
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176094)))
                 (_%$method-table172668%_
                  (let ((__tmp176095
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176095)))
                 (_%methods172670%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171955%_)))
                 (_%$methods172674%_
                  (map (lambda (_%id172672%_)
                         (let ((__tmp176096 (gensym _%id172672%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176096)))
                       _%methods172670%_))
                 (_%_172683%_
                  (for-each
                   (lambda (_%g172675172678%_ _%g172676172680%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171955%_
                        _%g172675172678%_
                        _%g172676172680%_)))
                   _%methods172670%_
                   _%$methods172674%_))
                 (_%methods-bind172693%_
                  (map (lambda (_%g172685172688%_ _%g172686172690%_)
                         (_%generate-method-bind171865%_
                          _%$klass172666%_
                          _%$method-table172668%_
                          _%g172685172688%_
                          _%g172686172690%_))
                       _%methods172670%_
                       _%$methods172674%_))
                 (_%slots172695%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171956%_)))
                 (_%$slots172699%_
                  (map (lambda (_%id172697%_)
                         (let ((__tmp176097 (gensym _%id172697%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176097)))
                       _%slots172695%_))
                 (_%_172708%_
                  (for-each
                   (lambda (_%g172700172703%_ _%g172701172705%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171956%_
                        _%g172700172703%_
                        _%g172701172705%_)))
                   _%slots172695%_
                   _%$slots172699%_))
                 (_%slots-bind172717%_
                  (map (lambda (_%g172709172712%_ _%g172710172714%_)
                         (_%generate-slot-bind171866%_
                          _%$klass172666%_
                          _%g172709172712%_
                          _%g172710172714%_))
                       _%slots172695%_
                       _%$slots172699%_))
                 (_%specializer-clauses172815%_
                  (map (lambda (_%clause172719%_)
                         (let* ((_%__stx174905174906%_ _%clause172719%_)
                                (_%g172722172737%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx174905174906%_)))))
                           (let ((_%__kont174907174908%_
                                  (lambda (_%L172765%_ _%L172766%_ _%L172767%_)
                                    (let* ((_%receiver172796%_
                                            (let ((_%$e172793%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L172765%_))))
                                              (if _%$e172793%_
                                                  _%$e172793%_
                                                  _%L172767%_)))
                                           (_%body172802%_
                                            (map (lambda (_%g172797172799%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver172796%_
                                                    _%$klass172666%_
                                                    _%method-calls171955%_
                                                    _%slot-refs171956%_
                                                    _%g172797172799%_))
                                                 _%L172765%_)))
                                      (cons (cons _%L172767%_ _%L172766%_)
                                            _%body172802%_))))
                                 (_%__kont174909174910%_
                                  (lambda () _%clause172719%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx174905174906%_))
                                 (let ((_%e172727172749%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx174905174906%_))))
                                   (let ((_%tl172729172754%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e172727172749%_)))
                                         (_%hd172728172752%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e172727172749%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172728172752%_))
                                         (let ((_%e172730172757%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172728172752%_))))
                                           (let ((_%tl172732172762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172730172757%_)))
                                                 (_%hd172731172760%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172730172757%_))))
                                             (_%__kont174907174908%_
                                              _%tl172729172754%_
                                              _%tl172732172762%_
                                              _%hd172731172760%_)))
                                         (_%__kont174909174910%_))))
                                 (_%__kont174909174910%_)))))
                       (let ((__tmp176098
                              (lambda (_%g172807172810%_ _%g172808172812%_)
                                (cons _%g172807172810%_ _%g172808172812%_))))
                         (declare (not safe))
                         (__foldr1 __tmp176098 '() _%L172561%_))))
                 (_%specializer-impl172817%_
                  (let ((__tmp176099
                         (cons '%#case-lambda _%specializer-clauses172815%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176099 _%stx171863%_)))
                 (_%specializer-impl172819%_
                  (_%generate-specializer-impl171867%_
                   _%$klass172666%_
                   _%$method-table172668%_
                   _%methods-bind172693%_
                   _%slots-bind172717%_
                   _%specializer-impl172817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176101
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171936%_)))
                                                          (__tmp176100
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172664%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176101
                                                       '" => "
                                                       __tmp176100))
                                                    (_%generate-specializer-def171868%_
                                                     _%L171936%_
                                                     _%specializer-id172664%_
                                                     _%specializer-impl172819%_))))
                                            _%clause172519172558%_))))))
                           (_%loop172514172542%_ _%target172511172537%_ '()))
                         (_%g172505172524%_ _%g172506172527%_)))))
               (_%g172505172524%_ _%g172506172527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172505172524%_
                                                _%g172506172527%_)))))
                                   (_%g172504172822%_ _%L171935%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L171935%_))
                                     (let* ((_%g172826172856%_
                                             (lambda (_%g172827172853%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g172827172853%_))))
                                            (_%g172825173487%_
                                             (lambda (_%g172827172859%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g172827172859%_))
                                                   (let ((_%e172831172861%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g172827172859%_))))
                                                     (let ((_%hd172832172864%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172831172861%_)))
                                                           (_%tl172833172866%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172831172861%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172833172866%_))
                                                           (let ((_%e172834172869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172833172866%_))))
                     (let ((_%hd172835172872%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172834172869%_)))
                           (_%tl172836172874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172834172869%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd172835172872%_))
                           (let ((_%e172837172877%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd172835172872%_))))
                             (let ((_%hd172838172880%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172837172877%_)))
                                   (_%tl172839172882%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172837172877%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172838172880%_))
                                   (let ((_%e172840172885%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172838172880%_))))
                                     (let ((_%hd172841172888%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172840172885%_)))
                                           (_%tl172842172890%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172840172885%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd172841172888%_))
                                           (let ((_%e172843172893%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd172841172888%_))))
                                             (let ((_%hd172844172896%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e172843172893%_)))
                                                   (_%tl172845172898%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e172843172893%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl172845172898%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl172842172890%_))
                                                       (let ((_%e172846172901%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl172842172890%_))))
                 (let ((_%hd172847172904%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172846172901%_)))
                       (_%tl172848172906%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172846172901%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl172848172906%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl172839172882%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl172836172874%_))
                               (let ((_%e172849172909%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl172836172874%_))))
                                 (let ((_%hd172850172912%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172849172909%_)))
                                       (_%tl172851172914%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172849172909%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl172851172914%_))
                                       ((lambda (_%L172917%_
                                                 _%L172918%_
                                                 _%L172919%_)
                                          (let* ((_%g172943172961%_
                                                  (lambda (_%g172944172958%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g172944172958%_))))
                                                 (_%g172942173017%_
                                                  (lambda (_%g172944172964%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g172944172964%_))
                                                        (let ((_%e172948172966%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g172944172964%_))))
                  (let ((_%hd172949172969%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172948172966%_)))
                        (_%tl172950172971%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172948172966%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172950172971%_))
                        (let ((_%e172951172974%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172950172971%_))))
                          (let ((_%hd172952172977%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172951172974%_)))
                                (_%tl172953172979%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172951172974%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172952172977%_))
                                (let ((_%e172954172982%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172952172977%_))))
                                  (let ((_%hd172955172985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172954172982%_)))
                                        (_%tl172956172987%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172954172982%_))))
                                    ((lambda (_%L172990%_
                                              _%L172991%_
                                              _%L172992%_)
                                       (let ((_%receiver173011%_
                                              (let ((_%$e173008%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L172990%_))))
                                                (if _%$e173008%_
                                                    _%$e173008%_
                                                    _%L172992%_))))
                                         (for-each
                                          (lambda (_%g173012173014%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver173011%_
                                             _%method-calls171955%_
                                             _%slot-refs171956%_
                                             _%g173012173014%_))
                                          _%L172990%_)))
                                     _%tl172953172979%_
                                     _%tl172956172987%_
                                     _%hd172955172985%_)))
                                (_%g172943172961%_ _%g172944172964%_))))
                        (_%g172943172961%_ _%g172944172964%_))))
                (_%g172943172961%_ _%g172944172964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g172942173017%_ _%L172918%_))
                                          (let* ((_%g173020173039%_
                                                  (lambda (_%g173021173036%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173021173036%_))))
                                                 (_%g173019173163%_
                                                  (lambda (_%g173021173042%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173021173042%_))
                                                        (let ((_%e173023173044%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173021173042%_))))
                  (let ((_%hd173024173047%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173023173044%_)))
                        (_%tl173025173049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173023173044%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173025173049%_))
                        (let ((_g176102_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl173025173049%_
                                  '0))))
                          (begin
                            (let ((_g176103_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176102_)
                                         (##vector-length _g176102_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176103_ 2)))
                                  (error "Context expects 2 values"
                                         _g176103_)))
                            (let ((_%target173026173052%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176102_ 0)))
                                  (_%tl173028173054%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176102_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173028173054%_))
                                  (letrec ((_%loop173029173057%_
                                            (lambda (_%hd173027173060%_
                                                     _%clause173033173062%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173027173060%_))
                                                  (let ((_%e173030173065%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173027173060%_))))
                                                    (let ((_%lp-hd173031173068%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173030173065%_)))
                                                          (_%lp-tl173032173070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173030173065%_))))
                                                      (_%loop173029173057%_
                                                       _%lp-tl173032173070%_
                                                       (cons _%lp-hd173031173068%_
                                                             _%clause173033173062%_))))
                                                  (let ((_%clause173034173073%_
                                                         (reverse _%clause173033173062%_)))
                                                    ((lambda (_%L173076%_)
                                                       (for-each
                                                        (lambda (_%clause173089%_)
                                                          (let* ((_%g173091173106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g173092173103%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173092173103%_))))
                         (_%g173090173153%_
                          (lambda (_%g173092173109%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173092173109%_))
                                (let ((_%e173096173111%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173092173109%_))))
                                  (let ((_%hd173097173114%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173096173111%_)))
                                        (_%tl173098173116%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173096173111%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173097173114%_))
                                        (let ((_%e173099173119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173097173114%_))))
                                          (let ((_%hd173100173122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173099173119%_)))
                                                (_%tl173101173124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173099173119%_))))
                                            ((lambda (_%L173127%_
                                                      _%L173128%_
                                                      _%L173129%_)
                                               (let ((_%receiver173147%_
                                                      (let ((_%$e173144%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173127%_))))
                (if _%$e173144%_ _%$e173144%_ _%L173129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173148173150%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173147%_
                                                     _%method-calls171955%_
                                                     _%slot-refs171956%_
                                                     _%g173148173150%_))
                                                  _%L173127%_)))
                                             _%tl173098173116%_
                                             _%tl173101173124%_
                                             _%hd173100173122%_)))
                                        (_%g173091173106%_
                                         _%g173092173109%_))))
                                (_%g173091173106%_ _%g173092173109%_)))))
                    (_%g173090173153%_ _%clause173089%_)))
                (let ((__tmp176104
                       (lambda (_%g173155173158%_ _%g173156173160%_)
                         (cons _%g173155173158%_ _%g173156173160%_))))
                  (declare (not safe))
                  (__foldr1 __tmp176104 '() _%L173076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause173034173073%_))))))
                                    (_%loop173029173057%_
                                     _%target173026173052%_
                                     '()))
                                  (_%g173020173039%_ _%g173021173042%_)))))
                        (_%g173020173039%_ _%g173021173042%_))))
                (_%g173020173039%_ _%g173021173042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173019173163%_ _%L172917%_))
                                          (if (_%no-specializer?171959%_)
                                              _%stx171863%_
                                              (let* ((_%specializer-id173172%_
                                                      (let* ((_%id173166%_
                                                              (let ((__tmp176105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171936%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176105 '"::specialize")))
                     (_%specializer-id173169%_
                      (let ((__tmp176106
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171863%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173166%_ __tmp176106))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173169%_))
                _%specializer-id173169%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173174%_
                                                      (let ((__tmp176107
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176107)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173176%_
                                                      (let ((__tmp176108
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176108)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173178%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171955%_)))
                                                     (_%$methods173182%_
                                                      (map (lambda (_%id173180%_)
                                                             (let ((__tmp176109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173180%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176109)))
                   _%methods173178%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173191%_
                                                      (for-each
                                                       (lambda (_%g173183173186%_
                                                                _%g173184173188%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171955%_
                                                            _%g173183173186%_
                                                            _%g173184173188%_)))
                                                       _%methods173178%_
                                                       _%$methods173182%_))
                                                     (_%methods-bind173201%_
                                                      (map (lambda (_%g173193173196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173194173198%_)
                     (_%generate-method-bind171865%_
                      _%$klass173174%_
                      _%$method-table173176%_
                      _%g173193173196%_
                      _%g173194173198%_))
                   _%methods173178%_
                   _%$methods173182%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173203%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171956%_)))
                                                     (_%$slots173207%_
                                                      (map (lambda (_%id173205%_)
                                                             (let ((__tmp176110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173205%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176110)))
                   _%slots173203%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173216%_
                                                      (for-each
                                                       (lambda (_%g173208173211%_
                                                                _%g173209173213%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171956%_
                                                            _%g173208173211%_
                                                            _%g173209173213%_)))
                                                       _%slots173203%_
                                                       _%$slots173207%_))
                                                     (_%slots-bind173225%_
                                                      (map (lambda (_%g173217173220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173218173222%_)
                     (_%generate-slot-bind171866%_
                      _%$klass173174%_
                      _%g173217173220%_
                      _%g173218173222%_))
                   _%slots173203%_
                   _%$slots173207%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173317%_
                                                      (let* ((_%g173227173245%_
                                                              (lambda (_%g173228173242%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173228173242%_))))
                     (_%g173226173314%_
                      (lambda (_%g173228173248%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173228173248%_))
                            (let ((_%e173232173250%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173228173248%_))))
                              (let ((_%hd173233173253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173232173250%_)))
                                    (_%tl173234173255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173232173250%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173234173255%_))
                                    (let ((_%e173235173258%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173234173255%_))))
                                      (let ((_%hd173236173261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173235173258%_)))
                                            (_%tl173237173263%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173235173258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173236173261%_))
                                            (let ((_%e173238173266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173236173261%_))))
                                              (let ((_%hd173239173269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173238173266%_)))
                                                    (_%tl173240173271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173238173266%_))))
                                                ((lambda (_%L173274%_
                                                          _%L173275%_
                                                          _%L173276%_)
                                                   (let* ((_%receiver173305%_
                                                           (let ((_%$e173302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173274%_))))
                     (if _%$e173302%_ _%$e173302%_ _%L173276%_)))
                  (_%body173311%_
                   (map (lambda (_%g173306173308%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173305%_
                           _%$klass173174%_
                           _%method-calls171955%_
                           _%slot-refs171956%_
                           _%g173306173308%_))
                        _%L173274%_))
                  (__tmp176111
                   (cons '%#lambda
                         (cons (cons _%L173276%_ _%L173275%_)
                               _%body173311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176111
                                                      _%L172918%_)))
                                                 _%tl173237173263%_
                                                 _%tl173240173271%_
                                                 _%hd173239173269%_)))
                                            (_%g173227173245%_
                                             _%g173228173248%_))))
                                    (_%g173227173245%_ _%g173228173248%_))))
                            (_%g173227173245%_ _%g173228173248%_)))))
                (_%g173226173314%_ _%L172918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173480%_
                                                      (let* ((_%g173319173338%_
                                                              (lambda (_%g173320173335%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173320173335%_))))
                     (_%g173318173477%_
                      (lambda (_%g173320173341%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173320173341%_))
                            (let ((_%e173322173343%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173320173341%_))))
                              (let ((_%hd173323173346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173322173343%_)))
                                    (_%tl173324173348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173322173343%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173324173348%_))
                                    (let ((_g176112_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173324173348%_
                                              '0))))
                                      (begin
                                        (let ((_g176113_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176112_)
                                                     (##vector-length
                                                      _g176112_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176113_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176113_)))
                                        (let ((_%target173325173351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176112_ 0)))
                                              (_%tl173327173353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176112_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173327173353%_))
                                              (letrec ((_%loop173328173356%_
                                                        (lambda (_%hd173326173359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173332173361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173326173359%_))
                      (let ((_%e173329173364%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173326173359%_))))
                        (let ((_%lp-hd173330173367%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173329173364%_)))
                              (_%lp-tl173331173369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173329173364%_))))
                          (_%loop173328173356%_
                           _%lp-tl173331173369%_
                           (cons _%lp-hd173330173367%_
                                 _%clause173332173361%_))))
                      (let ((_%clause173333173372%_
                             (reverse _%clause173332173361%_)))
                        ((lambda (_%L173375%_)
                           (let* ((_%clauses173475%_
                                   (map (lambda (_%clause173389%_)
                                          (let* ((_%__stx174925174926%_
                                                  _%clause173389%_)
                                                 (_%g173392173407%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx174925174926%_)))))
                                            (let ((_%__kont174927174928%_
                                                   (lambda (_%L173435%_
                                                            _%L173436%_
                                                            _%L173437%_)
                                                     (let* ((_%receiver173456%_
                                                             (let ((_%$e173453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173435%_))))
                       (if _%$e173453%_ _%$e173453%_ _%L173437%_)))
                    (_%body173462%_
                     (map (lambda (_%g173457173459%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173456%_
                             _%$klass173174%_
                             _%method-calls171955%_
                             _%slot-refs171956%_
                             _%g173457173459%_))
                          _%L173435%_)))
               (cons (cons _%L173437%_ _%L173436%_) _%body173462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174929174930%_
                                                   (lambda ()
                                                     _%clause173389%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx174925174926%_))
                                                  (let ((_%e173397173419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx174925174926%_))))
                                                    (let ((_%tl173399173424%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173397173419%_)))
                                                          (_%hd173398173422%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173397173419%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173398173422%_))
                                                          (let ((_%e173400173427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173398173422%_))))
                    (let ((_%tl173402173432%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173400173427%_)))
                          (_%hd173401173430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173400173427%_))))
                      (_%__kont174927174928%_
                       _%tl173399173424%_
                       _%tl173402173432%_
                       _%hd173401173430%_)))
                  (_%__kont174929174930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174929174930%_)))))
                                        (let ((__tmp176114
                                               (lambda (_%g173467173470%_
                                                        _%g173468173472%_)
                                                 (cons _%g173467173470%_
                                                       _%g173468173472%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp176114
                                           '()
                                           _%L173375%_))))
                                  (__tmp176115
                                   (cons '%#case-lambda _%clauses173475%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176115 _%L172917%_)))
                         _%clause173333173372%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173328173356%_
                                                 _%target173325173351%_
                                                 '()))
                                              (_%g173319173338%_
                                               _%g173320173341%_)))))
                                    (_%g173319173338%_ _%g173320173341%_))))
                            (_%g173319173338%_ _%g173320173341%_)))))
                (_%g173318173477%_ _%L172917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173482%_
                                                      (let ((__tmp176116
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L172919%_ '())
                                             (cons _%specializer-lambda-expr173317%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173480%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176116 _%stx171863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173484%_
                                                      (_%generate-specializer-impl171867%_
                                                       _%$klass173174%_
                                                       _%$method-table173176%_
                                                       _%methods-bind173201%_
                                                       _%slots-bind173225%_
                                                       _%specializer-impl173482%_)))
                                                (let ((__tmp176118
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171936%_)))
                                                      (__tmp176117
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173172%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176118
                                                   '" => "
                                                   __tmp176117))
                                                (_%generate-specializer-def171868%_
                                                 _%L171936%_
                                                 _%specializer-id173172%_
                                                 _%specializer-impl173484%_))))
                                        _%hd172850172912%_
                                        _%hd172847172904%_
                                        _%hd172844172896%_)
                                       (_%g172826172856%_ _%g172827172859%_))))
                               (_%g172826172856%_ _%g172827172859%_))
                           (_%g172826172856%_ _%g172827172859%_))
                       (_%g172826172856%_ _%g172827172859%_))))
               (_%g172826172856%_ _%g172827172859%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172826172856%_
                                                    _%g172827172859%_))))
                                           (_%g172826172856%_
                                            _%g172827172859%_))))
                                   (_%g172826172856%_ _%g172827172859%_))))
                           (_%g172826172856%_ _%g172827172859%_))))
                   (_%g172826172856%_ _%g172827172859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172826172856%_
                                                    _%g172827172859%_)))))
                                       (_%g172825173487%_ _%L171935%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L171935%_))
                                         (let* ((_%g173491173544%_
                                                 (lambda (_%g173492173541%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173492173541%_))))
                                                (_%g173490174715%_
                                                 (lambda (_%g173492173547%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173492173547%_))
                                                       (let ((_%e173498173549%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173492173547%_))))
                 (let ((_%hd173499173552%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173498173549%_)))
                       (_%tl173500173554%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173498173549%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173499173552%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173499173552%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173500173554%_))
                               (let ((_%e173501173557%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173500173554%_))))
                                 (let ((_%hd173502173560%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173501173557%_)))
                                       (_%tl173503173562%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173501173557%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173502173560%_))
                                       (let ((_%e173504173565%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173502173560%_))))
                                         (let ((_%hd173505173568%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173504173565%_)))
                                               (_%tl173506173570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173504173565%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173505173568%_))
                                               (let ((_%e173507173573%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173505173568%_))))
                                                 (let ((_%hd173508173576%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173507173573%_)))
                                                       (_%tl173509173578%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173507173573%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173508173576%_))
                                                       (let ((_%e173510173581%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173508173576%_))))
                 (let ((_%hd173511173584%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173510173581%_)))
                       (_%tl173512173586%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173510173581%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173512173586%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173509173578%_))
                           (let ((_%e173513173589%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173509173578%_))))
                             (let ((_%hd173514173592%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173513173589%_)))
                                   (_%tl173515173594%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173513173589%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173514173592%_))
                                   (let ((_%e173516173597%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173514173592%_))))
                                     (let ((_%hd173517173600%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173516173597%_)))
                                           (_%tl173518173602%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173516173597%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173517173600%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173517173600%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173518173602%_))
                                                   (let ((_%e173519173605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173518173602%_))))
                                                     (let ((_%hd173520173608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173519173605%_)))
                                                           (_%tl173521173610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173519173605%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173520173608%_))
                                                           (let ((_%e173522173613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173520173608%_))))
                     (let ((_%hd173523173616%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173522173613%_)))
                           (_%tl173524173618%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173522173613%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173523173616%_))
                           (let ((_%e173525173621%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173523173616%_))))
                             (let ((_%hd173526173624%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173525173621%_)))
                                   (_%tl173527173626%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173525173621%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173526173624%_))
                                   (let ((_%e173528173629%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173526173624%_))))
                                     (let ((_%hd173529173632%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173528173629%_)))
                                           (_%tl173530173634%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173528173629%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173530173634%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173527173626%_))
                                               (let ((_%e173531173637%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173527173626%_))))
                                                 (let ((_%hd173532173640%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173531173637%_)))
                                                       (_%tl173533173642%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173531173637%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173533173642%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173524173618%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173521173610%_))
                       (let ((_%e173534173645%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173521173610%_))))
                         (let ((_%hd173535173648%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173534173645%_)))
                               (_%tl173536173650%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173534173645%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173536173650%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173515173594%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173506173570%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173503173562%_))
                                           (let ((_%e173537173653%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173503173562%_))))
                                             (let ((_%hd173538173656%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173537173653%_)))
                                                   (_%tl173539173658%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173537173653%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173539173658%_))
                                                   ((lambda (_%L173661%_
                                                             _%L173662%_
                                                             _%L173663%_
                                                             _%L173664%_
                                                             _%L173665%_)
                                                      (let* ((_%g173705173767%_
                                                              (lambda (_%g173706173764%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173706173764%_))))
                     (_%g173704174712%_
                      (lambda (_%g173706173770%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173706173770%_))
                            (let ((_%e173712173772%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173706173770%_))))
                              (let ((_%hd173713173775%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173712173772%_)))
                                    (_%tl173714173777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173712173772%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd173713173775%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd173713173775%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173714173777%_))
                                            (let ((_%e173715173780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173714173777%_))))
                                              (let ((_%hd173716173783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173715173780%_)))
                                                    (_%tl173717173785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173715173780%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173717173785%_))
                                                    (let ((_%e173718173788%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173717173785%_))))
                                                      (let ((_%hd173719173791%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173718173788%_)))
                    (_%tl173720173793%_
                     (let () (declare (not safe)) (##cdr _%e173718173788%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd173719173791%_))
                    (let ((_%e173721173796%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd173719173791%_))))
                      (let ((_%hd173722173799%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173721173796%_)))
                            (_%tl173723173801%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173721173796%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd173722173799%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd173722173799%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173723173801%_))
                                    (let ((_%e173724173804%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173723173801%_))))
                                      (let ((_%hd173725173807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173724173804%_)))
                                            (_%tl173726173809%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173724173804%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173725173807%_))
                                            (let ((_%e173727173812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173725173807%_))))
                                              (let ((_%hd173728173815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173727173812%_)))
                                                    (_%tl173729173817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173727173812%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd173728173815%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd173728173815%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173729173817%_))
                                                            (let ((_%e173730173820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173729173817%_))))
                      (let ((_%hd173731173823%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173730173820%_)))
                            (_%tl173732173825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173730173820%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173732173825%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl173726173809%_))
                                (let ((_%e173733173828%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl173726173809%_))))
                                  (let ((_%hd173734173831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173733173828%_)))
                                        (_%tl173735173833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173733173828%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173734173831%_))
                                        (let ((_%e173736173836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173734173831%_))))
                                          (let ((_%hd173737173839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173736173836%_)))
                                                (_%tl173738173841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173736173836%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd173737173839%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd173737173839%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl173738173841%_))
                                                        (let ((_%e173739173844%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl173738173841%_))))
                  (let ((_%hd173740173847%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173739173844%_)))
                        (_%tl173741173849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173739173844%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl173741173849%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173735173833%_))
                            (let ((_%e173742173852%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173735173833%_))))
                              (let ((_%hd173743173855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173742173852%_)))
                                    (_%tl173744173857%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173742173852%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173743173855%_))
                                    (let ((_%e173745173860%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173743173855%_))))
                                      (let ((_%hd173746173863%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173745173860%_)))
                                            (_%tl173747173865%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173745173860%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd173746173863%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd173746173863%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173747173865%_))
                                                    (let ((_%e173748173868%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173747173865%_))))
                                                      (let ((_%hd173749173871%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173748173868%_)))
                    (_%tl173750173873%_
                     (let () (declare (not safe)) (##cdr _%e173748173868%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173750173873%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173744173857%_))
                        (if (let ((__tmp176119
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl173744173857%_))))
                              (declare (not safe))
                              (##fx>= __tmp176119 '1))
                            (let ((_g176120_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173744173857%_
                                      '1))))
                              (begin
                                (let ((_g176121_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176120_)
                                             (##vector-length _g176120_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176121_ 2)))
                                      (error "Context expects 2 values"
                                             _g176121_)))
                                (let ((_%target173751173876%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176120_ 0)))
                                      (_%tl173753173878%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176120_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173753173878%_))
                                      (let ((_%e173760173881%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173753173878%_))))
                                        (let ((_%hd173761173884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173760173881%_)))
                                              (_%tl173762173886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173760173881%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173762173886%_))
                                              (letrec ((_%loop173754173889%_
                                                        (lambda (_%hd173752173892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref173758173894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173752173892%_))
                      (let ((_%e173755173897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173752173892%_))))
                        (let ((_%lp-hd173756173900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173755173897%_)))
                              (_%lp-tl173757173902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173755173897%_))))
                          (_%loop173754173889%_
                           _%lp-tl173757173902%_
                           (cons _%lp-hd173756173900%_
                                 _%kw-ref173758173894%_))))
                      (let ((_%kw-ref173759173905%_
                             (reverse _%kw-ref173758173894%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173720173793%_))
                            ((lambda (_%L173908%_
                                      _%L173909%_
                                      _%L173910%_
                                      _%L173911%_
                                      _%L173912%_)
                               (let* ((_%kw-count173963%_
                                       (length (let ((__tmp176122
                                                      (lambda (_%g173955173958%_
                                                               _%g173956173960%_)
                                                        (cons _%g173955173958%_
                                                              _%g173956173960%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176122
                                                  '()
                                                  _%L173909%_))))
                                      (_%self-index173965%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count173963%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L173663%_))
                                     (let* ((_%g173969173983%_
                                             (lambda (_%g173970173980%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173970173980%_))))
                                            (_%g173968174106%_
                                             (lambda (_%g173970173986%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173970173986%_))
                                                   (let ((_%e173973173988%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173970173986%_))))
                                                     (let ((_%hd173974173991%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173973173988%_)))
                                                           (_%tl173975173993%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173973173988%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173975173993%_))
                                                           (let ((_%e173976173996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173975173993%_))))
                     (let ((_%hd173977173999%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173976173996%_)))
                           (_%tl173978174001%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173976173996%_))))
                       ((lambda (_%L174004%_ _%L174005%_)
                          (let* ((_%self174022%_
                                  (list-ref _%L174005%_ _%self-index173965%_))
                                 (_%receiver174027%_
                                  (let ((_%$e174024%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L174004%_))))
                                    (if _%$e174024%_
                                        _%$e174024%_
                                        _%self174022%_))))
                            (for-each
                             (lambda (_%g174029174031%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver174027%_
                                _%method-calls171955%_
                                _%slot-refs171956%_
                                _%g174029174031%_))
                             _%L174004%_)
                            (if (_%no-specializer?171959%_)
                                _%stx171863%_
                                (let* ((_%specializer-id174040%_
                                        (let* ((_%id174034%_
                                                (let ((__tmp176123
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171936%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp176123
                                                   '"::specialize")))
                                               (_%specializer-id174037%_
                                                (let ((__tmp176124
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx171863%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id174034%_
                                                   __tmp176124))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id174037%_))
                                          _%specializer-id174037%_))
                                       (_%$klass174042%_
                                        (let ((__tmp176125
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176125)))
                                       (_%$method-table174044%_
                                        (let ((__tmp176126
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176126)))
                                       (_%methods174046%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls171955%_)))
                                       (_%$methods174050%_
                                        (map (lambda (_%id174048%_)
                                               (let ((__tmp176127
                                                      (gensym _%id174048%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176127)))
                                             _%methods174046%_))
                                       (_%_174059%_
                                        (for-each
                                         (lambda (_%g174051174054%_
                                                  _%g174052174056%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls171955%_
                                              _%g174051174054%_
                                              _%g174052174056%_)))
                                         _%methods174046%_
                                         _%$methods174050%_))
                                       (_%methods-bind174069%_
                                        (map (lambda (_%g174061174064%_
                                                      _%g174062174066%_)
                                               (_%generate-method-bind171865%_
                                                _%$klass174042%_
                                                _%$method-table174044%_
                                                _%g174061174064%_
                                                _%g174062174066%_))
                                             _%methods174046%_
                                             _%$methods174050%_))
                                       (_%slots174071%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs171956%_)))
                                       (_%$slots174075%_
                                        (map (lambda (_%id174073%_)
                                               (let ((__tmp176128
                                                      (gensym _%id174073%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176128)))
                                             _%slots174071%_))
                                       (_%_174084%_
                                        (for-each
                                         (lambda (_%g174076174079%_
                                                  _%g174077174081%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs171956%_
                                              _%g174076174079%_
                                              _%g174077174081%_)))
                                         _%slots174071%_
                                         _%$slots174075%_))
                                       (_%slots-bind174093%_
                                        (map (lambda (_%g174085174088%_
                                                      _%g174086174090%_)
                                               (_%generate-slot-bind171866%_
                                                _%$klass174042%_
                                                _%g174085174088%_
                                                _%g174086174090%_))
                                             _%slots174071%_
                                             _%$slots174075%_))
                                       (_%specializer-impl174101%_
                                        (let* ((_%specializer-body174099%_
                                                (map (lambda (_%g174094174096%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver174027%_
                                                        _%$klass174042%_
                                                        _%method-calls171955%_
                                                        _%slot-refs171956%_
                                                        _%g174094174096%_))
                                                     _%L174004%_))
                                               (__tmp176129
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L173665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L173664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176130
                                   (cons '%#lambda
                                         (cons _%L174005%_
                                               _%specializer-body174099%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176130 _%L173663%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L173662%_ '())))
                                      '()))
                          '())
                    (cons _%L173661%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176129
                                           _%stx171863%_)))
                                       (_%specializer-impl174103%_
                                        (_%generate-specializer-impl171867%_
                                         _%$klass174042%_
                                         _%$method-table174044%_
                                         _%methods-bind174069%_
                                         _%slots-bind174093%_
                                         _%specializer-impl174101%_)))
                                  (let ((__tmp176132
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L171936%_)))
                                        (__tmp176131
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id174040%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176132
                                     '" => "
                                     __tmp176131))
                                  (_%generate-specializer-def171868%_
                                   _%L171936%_
                                   _%specializer-id174040%_
                                   _%specializer-impl174103%_)))))
                        _%tl173978174001%_
                        _%hd173977173999%_)))
                   (_%g173969173983%_ _%g173970173986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173969173983%_
                                                    _%g173970173986%_)))))
                                       (_%g173968174106%_ _%L173663%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L173663%_))
                                         (let* ((_%g174110174140%_
                                                 (lambda (_%g174111174137%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174111174137%_))))
                                                (_%g174109174708%_
                                                 (lambda (_%g174111174143%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174111174143%_))
                                                       (let ((_%e174115174145%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174111174143%_))))
                 (let ((_%hd174116174148%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174115174145%_)))
                       (_%tl174117174150%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174115174145%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl174117174150%_))
                       (let ((_%e174118174153%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174117174150%_))))
                         (let ((_%hd174119174156%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174118174153%_)))
                               (_%tl174120174158%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174118174153%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd174119174156%_))
                               (let ((_%e174121174161%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd174119174156%_))))
                                 (let ((_%hd174122174164%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174121174161%_)))
                                       (_%tl174123174166%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174121174161%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174122174164%_))
                                       (let ((_%e174124174169%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174122174164%_))))
                                         (let ((_%hd174125174172%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174124174169%_)))
                                               (_%tl174126174174%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174124174169%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174125174172%_))
                                               (let ((_%e174127174177%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174125174172%_))))
                                                 (let ((_%hd174128174180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174127174177%_)))
                                                       (_%tl174129174182%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174127174177%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174129174182%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174126174174%_))
                                                           (let ((_%e174130174185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174126174174%_))))
                     (let ((_%hd174131174188%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174130174185%_)))
                           (_%tl174132174190%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174130174185%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174132174190%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174123174166%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl174120174158%_))
                                   (let ((_%e174133174193%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl174120174158%_))))
                                     (let ((_%hd174134174196%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174133174193%_)))
                                           (_%tl174135174198%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174133174193%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174135174198%_))
                                           ((lambda (_%L174201%_
                                                     _%L174202%_
                                                     _%L174203%_)
                                              (let* ((_%g174227174241%_
                                                      (lambda (_%g174228174238%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174228174238%_))))
                                                     (_%g174226174288%_
                                                      (lambda (_%g174228174244%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174228174244%_))
                                                            (let ((_%e174231174246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174228174244%_))))
                      (let ((_%hd174232174249%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174231174246%_)))
                            (_%tl174233174251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174231174246%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174233174251%_))
                            (let ((_%e174234174254%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174233174251%_))))
                              (let ((_%hd174235174257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174234174254%_)))
                                    (_%tl174236174259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174234174254%_))))
                                ((lambda (_%L174262%_ _%L174263%_)
                                   (let* ((_%self174276%_
                                           (list-ref
                                            _%L174263%_
                                            _%self-index173965%_))
                                          (_%receiver174281%_
                                           (let ((_%$e174278%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174262%_))))
                                             (if _%$e174278%_
                                                 _%$e174278%_
                                                 _%self174276%_))))
                                     (for-each
                                      (lambda (_%g174283174285%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174281%_
                                         _%method-calls171955%_
                                         _%slot-refs171956%_
                                         _%g174283174285%_))
                                      _%L174262%_)))
                                 _%tl174236174259%_
                                 _%hd174235174257%_)))
                            (_%g174227174241%_ _%g174228174244%_))))
                    (_%g174227174241%_ _%g174228174244%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174226174288%_
                                                 _%L174202%_))
                                              (let* ((_%g174291174310%_
                                                      (lambda (_%g174292174307%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174292174307%_))))
                                                     (_%g174290174421%_
                                                      (lambda (_%g174292174313%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174292174313%_))
                                                            (let ((_%e174294174315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174292174313%_))))
                      (let ((_%hd174295174318%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174294174315%_)))
                            (_%tl174296174320%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174294174315%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174296174320%_))
                            (let ((_g176133_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174296174320%_
                                      '0))))
                              (begin
                                (let ((_g176134_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176133_)
                                             (##vector-length _g176133_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176134_ 2)))
                                      (error "Context expects 2 values"
                                             _g176134_)))
                                (let ((_%target174297174323%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176133_ 0)))
                                      (_%tl174299174325%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176133_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174299174325%_))
                                      (letrec ((_%loop174300174328%_
                                                (lambda (_%hd174298174331%_
                                                         _%clause174304174333%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174298174331%_))
                                                      (let ((_%e174301174336%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174298174331%_))))
                (let ((_%lp-hd174302174339%_
                       (let () (declare (not safe)) (##car _%e174301174336%_)))
                      (_%lp-tl174303174341%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174301174336%_))))
                  (_%loop174300174328%_
                   _%lp-tl174303174341%_
                   (cons _%lp-hd174302174339%_ _%clause174304174333%_))))
              (let ((_%clause174305174344%_ (reverse _%clause174304174333%_)))
                ((lambda (_%L174347%_)
                   (for-each
                    (lambda (_%clause174360%_)
                      (let* ((_%g174362174373%_
                              (lambda (_%g174363174370%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174363174370%_))))
                             (_%g174361174411%_
                              (lambda (_%g174363174376%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174363174376%_))
                                    (let ((_%e174366174378%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174363174376%_))))
                                      (let ((_%hd174367174381%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174366174378%_)))
                                            (_%tl174368174383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174366174378%_))))
                                        ((lambda (_%L174386%_ _%L174387%_)
                                           (let* ((_%self174399%_
                                                   (list-ref
                                                    _%L174387%_
                                                    _%self-index173965%_))
                                                  (_%receiver174404%_
                                                   (let ((_%$e174401%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174401%_
                                                         _%$e174401%_
                                                         _%self174399%_))))
                                             (for-each
                                              (lambda (_%g174406174408%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174404%_
                                                 _%method-calls171955%_
                                                 _%slot-refs171956%_
                                                 _%g174406174408%_))
                                              _%L174386%_)))
                                         _%tl174368174383%_
                                         _%hd174367174381%_)))
                                    (_%g174362174373%_ _%g174363174376%_)))))
                        (_%g174361174411%_ _%clause174360%_)))
                    (let ((__tmp176135
                           (lambda (_%g174413174416%_ _%g174414174418%_)
                             (cons _%g174413174416%_ _%g174414174418%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176135 '() _%L174347%_))))
                 _%clause174305174344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174300174328%_
                                         _%target174297174323%_
                                         '()))
                                      (_%g174291174310%_ _%g174292174313%_)))))
                            (_%g174291174310%_ _%g174292174313%_))))
                    (_%g174291174310%_ _%g174292174313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174290174421%_
                                                 _%L174201%_))
                                              (if (_%no-specializer?171959%_)
                                                  _%stx171863%_
                                                  (let* ((_%specializer-id174430%_
                                                          (let* ((_%id174424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176136
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171936%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176136 '"::specialize")))
                         (_%specializer-id174427%_
                          (let ((__tmp176137
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171863%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174424%_
                             __tmp176137))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174427%_))
                    _%specializer-id174427%_))
                 (_%$klass174432%_
                  (let ((__tmp176138
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176138)))
                 (_%$method-table174434%_
                  (let ((__tmp176139
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176139)))
                 (_%methods174436%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171955%_)))
                 (_%$methods174440%_
                  (map (lambda (_%id174438%_)
                         (let ((__tmp176140 (gensym _%id174438%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176140)))
                       _%methods174436%_))
                 (_%_174449%_
                  (for-each
                   (lambda (_%g174441174444%_ _%g174442174446%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171955%_
                        _%g174441174444%_
                        _%g174442174446%_)))
                   _%methods174436%_
                   _%$methods174440%_))
                 (_%methods-bind174459%_
                  (map (lambda (_%g174451174454%_ _%g174452174456%_)
                         (_%generate-method-bind171865%_
                          _%$klass174432%_
                          _%$method-table174434%_
                          _%g174451174454%_
                          _%g174452174456%_))
                       _%methods174436%_
                       _%$methods174440%_))
                 (_%slots174461%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171956%_)))
                 (_%$slots174465%_
                  (map (lambda (_%id174463%_)
                         (let ((__tmp176141 (gensym _%id174463%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176141)))
                       _%slots174461%_))
                 (_%_174474%_
                  (for-each
                   (lambda (_%g174466174469%_ _%g174467174471%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171956%_
                        _%g174466174469%_
                        _%g174467174471%_)))
                   _%slots174461%_
                   _%$slots174465%_))
                 (_%slots-bind174483%_
                  (map (lambda (_%g174475174478%_ _%g174476174480%_)
                         (_%generate-slot-bind171866%_
                          _%$klass174432%_
                          _%g174475174478%_
                          _%g174476174480%_))
                       _%slots174461%_
                       _%$slots174465%_))
                 (_%specializer-lambda-expr174561%_
                  (let* ((_%g174485174499%_
                          (lambda (_%g174486174496%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174486174496%_))))
                         (_%g174484174558%_
                          (lambda (_%g174486174502%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174486174502%_))
                                (let ((_%e174489174504%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174486174502%_))))
                                  (let ((_%hd174490174507%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174489174504%_)))
                                        (_%tl174491174509%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174489174504%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174491174509%_))
                                        (let ((_%e174492174512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174491174509%_))))
                                          (let ((_%hd174493174515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174492174512%_)))
                                                (_%tl174494174517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174492174512%_))))
                                            ((lambda (_%L174520%_ _%L174521%_)
                                               (let* ((_%self174544%_
                                                       (list-ref
                                                        _%L174521%_
                                                        _%self-index173965%_))
                                                      (_%receiver174549%_
                                                       (let ((_%$e174546%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174520%_))))
                 (if _%$e174546%_ _%$e174546%_ _%self174544%_)))
              (_%body174555%_
               (map (lambda (_%g174550174552%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174549%_
                       _%$klass174432%_
                       _%method-calls171955%_
                       _%slot-refs171956%_
                       _%g174550174552%_))
                    _%L174520%_))
              (__tmp176142 (cons '%#lambda (cons _%L174521%_ _%body174555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176142
                                                  _%L174202%_)))
                                             _%tl174494174517%_
                                             _%hd174493174515%_)))
                                        (_%g174485174499%_
                                         _%g174486174502%_))))
                                (_%g174485174499%_ _%g174486174502%_)))))
                    (_%g174484174558%_ _%L174202%_)))
                 (_%specializer-case-lambda-expr174701%_
                  (let* ((_%g174563174582%_
                          (lambda (_%g174564174579%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174564174579%_))))
                         (_%g174562174698%_
                          (lambda (_%g174564174585%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174564174585%_))
                                (let ((_%e174566174587%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174564174585%_))))
                                  (let ((_%hd174567174590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174566174587%_)))
                                        (_%tl174568174592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174566174587%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174568174592%_))
                                        (let ((_g176143_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174568174592%_
                                                  '0))))
                                          (begin
                                            (let ((_g176144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176143_)
                                                         (##vector-length
                                                          _g176143_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176144_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176144_)))
                                            (let ((_%target174569174595%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176143_
                                                      0)))
                                                  (_%tl174571174597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176143_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174571174597%_))
                                                  (letrec ((_%loop174572174600%_
                                                            (lambda (_%hd174570174603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174576174605%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174570174603%_))
                          (let ((_%e174573174608%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174570174603%_))))
                            (let ((_%lp-hd174574174611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174573174608%_)))
                                  (_%lp-tl174575174613%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174573174608%_))))
                              (_%loop174572174600%_
                               _%lp-tl174575174613%_
                               (cons _%lp-hd174574174611%_
                                     _%clause174576174605%_))))
                          (let ((_%clause174577174616%_
                                 (reverse _%clause174576174605%_)))
                            ((lambda (_%L174619%_)
                               (let* ((_%clauses174696%_
                                       (map (lambda (_%clause174633%_)
                                              (let* ((_%g174635174646%_
                                                      (lambda (_%g174636174643%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174636174643%_))))
                                                     (_%g174634174686%_
                                                      (lambda (_%g174636174649%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174636174649%_))
                                                            (let ((_%e174639174651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174636174649%_))))
                      (let ((_%hd174640174654%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174639174651%_)))
                            (_%tl174641174656%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174639174651%_))))
                        ((lambda (_%L174659%_ _%L174660%_)
                           (let* ((_%self174672%_
                                   (list-ref _%L174660%_ _%self-index173965%_))
                                  (_%receiver174677%_
                                   (let ((_%$e174674%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L174659%_))))
                                     (if _%$e174674%_
                                         _%$e174674%_
                                         _%self174672%_)))
                                  (_%body174683%_
                                   (map (lambda (_%g174678174680%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver174677%_
                                           _%$klass174432%_
                                           _%method-calls171955%_
                                           _%slot-refs171956%_
                                           _%g174678174680%_))
                                        _%L174659%_)))
                             (cons _%L174660%_ _%body174683%_)))
                         _%tl174641174656%_
                         _%hd174640174654%_)))
                    (_%g174635174646%_ _%g174636174649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174634174686%_
                                                 _%clause174633%_)))
                                            (let ((__tmp176145
                                                   (lambda (_%g174688174691%_
                                                            _%g174689174693%_)
                                                     (cons _%g174688174691%_
                                                           _%g174689174693%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176145
                                               '()
                                               _%L174619%_))))
                                      (__tmp176146
                                       (cons '%#case-lambda
                                             _%clauses174696%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176146
                                  _%L174201%_)))
                             _%clause174577174616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174572174600%_
                                                     _%target174569174595%_
                                                     '()))
                                                  (_%g174563174582%_
                                                   _%g174564174585%_)))))
                                        (_%g174563174582%_
                                         _%g174564174585%_))))
                                (_%g174563174582%_ _%g174564174585%_)))))
                    (_%g174562174698%_ _%L174201%_)))
                 (_%specializer-impl174703%_
                  (let ((__tmp176147
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L173665%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L173664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176148
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174561%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr174701%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176148
                                                _%stx171863%_))
                                             '()))
                                 '())
                           (cons _%L173662%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L173661%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176147 _%stx171863%_)))
                 (_%specializer-impl174705%_
                  (_%generate-specializer-impl171867%_
                   _%$klass174432%_
                   _%$method-table174434%_
                   _%methods-bind174459%_
                   _%slots-bind174483%_
                   _%specializer-impl174703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176150
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171936%_)))
                                                          (__tmp176149
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174430%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176150
                                                       '" => "
                                                       __tmp176149))
                                                    (_%generate-specializer-def171868%_
                                                     _%L171936%_
                                                     _%specializer-id174430%_
                                                     _%specializer-impl174705%_))))
                                            _%hd174134174196%_
                                            _%hd174131174188%_
                                            _%hd174128174180%_)
                                           (_%g174110174140%_
                                            _%g174111174143%_))))
                                   (_%g174110174140%_ _%g174111174143%_))
                               (_%g174110174140%_ _%g174111174143%_))
                           (_%g174110174140%_ _%g174111174143%_))))
                   (_%g174110174140%_ _%g174111174143%_))
               (_%g174110174140%_ _%g174111174143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174110174140%_
                                                _%g174111174143%_))))
                                       (_%g174110174140%_ _%g174111174143%_))))
                               (_%g174110174140%_ _%g174111174143%_))))
                       (_%g174110174140%_ _%g174111174143%_))))
               (_%g174110174140%_ _%g174111174143%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174109174708%_ _%L173663%_))
                                         _%stx171863%_))))
                             _%hd173761173884%_
                             _%kw-ref173759173905%_
                             _%hd173749173871%_
                             _%hd173740173847%_
                             _%hd173731173823%_)
                            (_%g173705173767%_ _%g173706173770%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173754173889%_
                                                 _%target173751173876%_
                                                 '()))
                                              (_%g173705173767%_
                                               _%g173706173770%_))))
                                      (_%g173705173767%_ _%g173706173770%_)))))
                            (_%g173705173767%_ _%g173706173770%_))
                        (_%g173705173767%_ _%g173706173770%_))
                    (_%g173705173767%_ _%g173706173770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173705173767%_
                                                     _%g173706173770%_))
                                                (_%g173705173767%_
                                                 _%g173706173770%_))
                                            (_%g173705173767%_
                                             _%g173706173770%_))))
                                    (_%g173705173767%_ _%g173706173770%_))))
                            (_%g173705173767%_ _%g173706173770%_))
                        (_%g173705173767%_ _%g173706173770%_))))
                (_%g173705173767%_ _%g173706173770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173705173767%_
                                                     _%g173706173770%_))
                                                (_%g173705173767%_
                                                 _%g173706173770%_))))
                                        (_%g173705173767%_
                                         _%g173706173770%_))))
                                (_%g173705173767%_ _%g173706173770%_))
                            (_%g173705173767%_ _%g173706173770%_))))
                    (_%g173705173767%_ _%g173706173770%_))
                (_%g173705173767%_ _%g173706173770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173705173767%_
                                                     _%g173706173770%_))))
                                            (_%g173705173767%_
                                             _%g173706173770%_))))
                                    (_%g173705173767%_ _%g173706173770%_))
                                (_%g173705173767%_ _%g173706173770%_))
                            (_%g173705173767%_ _%g173706173770%_))))
                    (_%g173705173767%_ _%g173706173770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173705173767%_
                                                     _%g173706173770%_))))
                                            (_%g173705173767%_
                                             _%g173706173770%_))
                                        (_%g173705173767%_ _%g173706173770%_))
                                    (_%g173705173767%_ _%g173706173770%_))))
                            (_%g173705173767%_ _%g173706173770%_)))))
                (_%g173704174712%_ _%L173662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173538173656%_
                                                    _%hd173535173648%_
                                                    _%hd173532173640%_
                                                    _%hd173529173632%_
                                                    _%hd173511173584%_)
                                                   (_%g173491173544%_
                                                    _%g173492173547%_))))
                                           (_%g173491173544%_
                                            _%g173492173547%_))
                                       (_%g173491173544%_ _%g173492173547%_))
                                   (_%g173491173544%_ _%g173492173547%_))
                               (_%g173491173544%_ _%g173492173547%_))))
                       (_%g173491173544%_ _%g173492173547%_))
                   (_%g173491173544%_ _%g173492173547%_))
               (_%g173491173544%_ _%g173492173547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173491173544%_
                                                _%g173492173547%_))
                                           (_%g173491173544%_
                                            _%g173492173547%_))))
                                   (_%g173491173544%_ _%g173492173547%_))))
                           (_%g173491173544%_ _%g173492173547%_))))
                   (_%g173491173544%_ _%g173492173547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173491173544%_
                                                    _%g173492173547%_))
                                               (_%g173491173544%_
                                                _%g173492173547%_))
                                           (_%g173491173544%_
                                            _%g173492173547%_))))
                                   (_%g173491173544%_ _%g173492173547%_))))
                           (_%g173491173544%_ _%g173492173547%_))
                       (_%g173491173544%_ _%g173492173547%_))))
               (_%g173491173544%_ _%g173492173547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173491173544%_
                                                _%g173492173547%_))))
                                       (_%g173491173544%_ _%g173492173547%_))))
                               (_%g173491173544%_ _%g173492173547%_))
                           (_%g173491173544%_ _%g173492173547%_))
                       (_%g173491173544%_ _%g173492173547%_))))
               (_%g173491173544%_ _%g173492173547%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173490174715%_ _%L171935%_))
                                         _%stx171863%_))))))))
                  (_%__kont174949174950%_ (lambda () _%stx171863%_)))
              (let ((_%__match174978174979%_
                     (lambda (_%e171875171903%_
                              _%hd171876171906%_
                              _%tl171877171908%_
                              _%e171878171911%_
                              _%hd171879171914%_
                              _%tl171880171916%_
                              _%e171881171919%_
                              _%hd171882171922%_
                              _%tl171883171924%_
                              _%e171884171927%_
                              _%hd171885171930%_
                              _%tl171886171932%_)
                       (let ((_%L171935%_ _%hd171885171930%_)
                             (_%L171936%_ _%hd171882171922%_))
                         (if (let ((__tmp176151
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171936%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176151))
                             (_%__kont174947174948%_ _%L171935%_ _%L171936%_)
                             (_%__kont174949174950%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx174945174946%_))
                    (let ((_%e171875171903%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx174945174946%_))))
                      (let ((_%tl171877171908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171875171903%_)))
                            (_%hd171876171906%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171875171903%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171877171908%_))
                            (let ((_%e171878171911%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171877171908%_))))
                              (let ((_%tl171880171916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171878171911%_)))
                                    (_%hd171879171914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171878171911%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171879171914%_))
                                    (let ((_%e171881171919%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171879171914%_))))
                                      (let ((_%tl171883171924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171881171919%_)))
                                            (_%hd171882171922%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171881171919%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171883171924%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171880171916%_))
                                                (let ((_%e171884171927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171880171916%_))))
                                                  (let ((_%tl171886171932%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171884171927%_)))
                                                        (_%hd171885171930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171884171927%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171886171932%_))
                                                        (_%__match174978174979%_
                                                         _%e171875171903%_
                                                         _%hd171876171906%_
                                                         _%tl171877171908%_
                                                         _%e171878171911%_
                                                         _%hd171879171914%_
                                                         _%tl171880171916%_
                                                         _%e171881171919%_
                                                         _%hd171882171922%_
                                                         _%tl171883171924%_
                                                         _%e171884171927%_
                                                         _%hd171885171930%_
                                                         _%tl171886171932%_)
                                                        (_%__kont174949174950%_))))
                                                (_%__kont174949174950%_))
                                            (_%__kont174949174950%_))))
                                    (_%__kont174949174950%_))))
                            (_%__kont174949174950%_))))
                    (_%__kont174949174950%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self171715%_ _%stx171716%_)
        (let* ((_%__stx174981174982%_ _%stx171716%_)
               (_%g171719171752%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx174981174982%_)))))
          (let ((_%__kont174983174984%_ (lambda (_%L171842%_) _%L171842%_))
                (_%__kont174985174986%_
                 (lambda (_%L171781%_ _%L171782%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self171715%_ _%L171781%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx174981174982%_))
                (let ((_%e171722171802%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx174981174982%_))))
                  (let ((_%tl171724171807%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171722171802%_)))
                        (_%hd171723171805%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171722171802%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171724171807%_))
                        (let ((_%e171725171810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171724171807%_))))
                          (let ((_%tl171727171815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171725171810%_)))
                                (_%hd171726171813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171725171810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171726171813%_))
                                (let ((_%e171728171818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171726171813%_))))
                                  (let ((_%tl171730171823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171728171818%_)))
                                        (_%hd171729171821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171728171818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171729171821%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd171729171821%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171730171823%_))
                                                (let ((_%e171731171826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171730171823%_))))
                                                  (let ((_%tl171733171831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171731171826%_)))
                                                        (_%hd171732171829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171731171826%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171733171831%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171727171815%_))
                                                            (let ((_%e171734171834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171727171815%_))))
                      (let ((_%tl171736171839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171734171834%_)))
                            (_%hd171735171837%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171734171834%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171736171839%_))
                            (_%__kont174983174984%_ _%hd171732171829%_)
                            (let ()
                              (declare (not safe))
                              (_%g171719171752%_)))))
                    (let () (declare (not safe)) (_%g171719171752%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl171727171815%_))
                    (let ((_%e171745171773%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171727171815%_))))
                      (let ((_%tl171747171778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171745171773%_)))
                            (_%hd171746171776%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171745171773%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171747171778%_))
                            (_%__kont174985174986%_
                             _%hd171746171776%_
                             _%hd171726171813%_)
                            (let ()
                              (declare (not safe))
                              (_%g171719171752%_)))))
                    (let () (declare (not safe)) (_%g171719171752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171727171815%_))
                                                    (let ((_%e171745171773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171727171815%_))))
                                                      (let ((_%tl171747171778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171745171773%_)))
                    (_%hd171746171776%_
                     (let () (declare (not safe)) (##car _%e171745171773%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171747171778%_))
                    (_%__kont174985174986%_
                     _%hd171746171776%_
                     _%hd171726171813%_)
                    (let () (declare (not safe)) (_%g171719171752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171719171752%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171727171815%_))
                                                (let ((_%e171745171773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171727171815%_))))
                                                  (let ((_%tl171747171778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171745171773%_)))
                                                        (_%hd171746171776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171745171773%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171747171778%_))
                                                        (_%__kont174985174986%_
                                                         _%hd171746171776%_
                                                         _%hd171726171813%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g171719171752%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g171719171752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171727171815%_))
                                            (let ((_%e171745171773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171727171815%_))))
                                              (let ((_%tl171747171778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171745171773%_)))
                                                    (_%hd171746171776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171745171773%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171747171778%_))
                                                    (_%__kont174985174986%_
                                                     _%hd171746171776%_
                                                     _%hd171726171813%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171719171752%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171719171752%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl171727171815%_))
                                    (let ((_%e171745171773%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl171727171815%_))))
                                      (let ((_%tl171747171778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171745171773%_)))
                                            (_%hd171746171776%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171745171773%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171747171778%_))
                                            (_%__kont174985174986%_
                                             _%hd171746171776%_
                                             _%hd171726171813%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g171719171752%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171719171752%_))))))
                        (let () (declare (not safe)) (_%g171719171752%_)))))
                (let () (declare (not safe)) (_%g171719171752%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self171631%_ _%stx171632%_)
        (let* ((_%g171634171655%_
                (lambda (_%g171635171652%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171635171652%_))))
               (_%g171633171712%_
                (lambda (_%g171635171658%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171635171658%_))
                      (let ((_%e171639171660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171635171658%_))))
                        (let ((_%hd171640171663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171639171660%_)))
                              (_%tl171641171665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171639171660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171641171665%_))
                              (let ((_%e171642171668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171641171665%_))))
                                (let ((_%hd171643171671%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171642171668%_)))
                                      (_%tl171644171673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171642171668%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171644171673%_))
                                      (let ((_%e171645171676%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171644171673%_))))
                                        (let ((_%hd171646171679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171645171676%_)))
                                              (_%tl171647171681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171645171676%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171647171681%_))
                                              (let ((_%e171648171684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171647171681%_))))
                                                (let ((_%hd171649171687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171648171684%_)))
                                                      (_%tl171650171689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171648171684%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171650171689%_))
                                                      ((lambda (_%L171692%_
                                                                _%L171693%_
                                                                _%L171694%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self171631%_
                                                            _%L171693%_)))
                                                       _%hd171649171687%_
                                                       _%hd171646171679%_
                                                       _%hd171643171671%_)
                                                      (_%g171634171655%_
                                                       _%g171635171658%_))))
                                              (_%g171634171655%_
                                               _%g171635171658%_))))
                                      (_%g171634171655%_ _%g171635171658%_))))
                              (_%g171634171655%_ _%g171635171658%_))))
                      (_%g171634171655%_ _%g171635171658%_)))))
          (_%g171633171712%_ _%stx171632%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170592%_ _%stx170593%_)
        (let* ((_%__stx175047175048%_ _%stx170593%_)
               (_%g170601170823%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175047175048%_)))))
          (let ((_%__kont175049175050%_
                 (lambda (_%L171580%_ _%L171581%_ _%L171582%_ _%L171583%_)
                   (let ((__tmp176153
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170592%_ 'methods)))
                         (__tmp176152
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171581%_))))
                     (declare (not safe))
                     (hash-put! __tmp176153 __tmp176152 '#t))
                   (for-each
                    (lambda (_%g171616171618%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170592%_ _%g171616171618%_)))
                    (let ((__tmp176154
                           (lambda (_%g171620171623%_ _%g171621171625%_)
                             (cons _%g171620171623%_ _%g171621171625%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176154 '() _%L171580%_)))))
                (_%__kont175053175054%_
                 (lambda (_%L171415%_
                          _%L171416%_
                          _%L171417%_
                          _%L171418%_
                          _%L171419%_)
                   (let ((__tmp176156
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170592%_ 'methods)))
                         (__tmp176155
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171416%_))))
                     (declare (not safe))
                     (hash-put! __tmp176156 __tmp176155 '#t))
                   (for-each
                    (lambda (_%g171459171461%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170592%_ _%g171459171461%_)))
                    (let ((__tmp176157
                           (lambda (_%g171463171466%_ _%g171464171468%_)
                             (cons _%g171463171466%_ _%g171464171468%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176157 '() _%L171415%_)))))
                (_%__kont175057175058%_
                 (lambda (_%L171248%_ _%L171249%_ _%L171250%_)
                   (let ((__tmp176159
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170592%_ 'slots)))
                         (__tmp176158
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171248%_))))
                     (declare (not safe))
                     (hash-put! __tmp176159 __tmp176158 '#t))))
                (_%__kont175059175060%_
                 (lambda (_%L171125%_ _%L171126%_ _%L171127%_ _%L171128%_)
                   (let ((__tmp176161
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170592%_ 'slots)))
                         (__tmp176160
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171126%_))))
                     (declare (not safe))
                     (hash-put! __tmp176161 __tmp176160 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170592%_ _%L171125%_))))
                (_%__kont175061175062%_
                 (lambda (_%L170999%_ _%L171000%_)
                   (let* ((_%accessor171022%_
                           (let ((__tmp176162
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171000%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176162)))
                          (_%klass171024%_
                           (let ((__tmp176163
                                  (##structure-ref
                                   _%accessor171022%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170593%_
                              __tmp176163)))
                          (_%slot171026%_
                           (##structure-ref
                            _%accessor171022%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor171022%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171024%_
                                    _%slot171026%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171024%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176165
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170592%_ 'slots)))
                               (__tmp176164
                                (##structure-ref
                                 _%accessor171022%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176165 __tmp176164 '#t))))))
                (_%__kont175063175064%_
                 (lambda (_%L170899%_ _%L170900%_ _%L170901%_)
                   (let* ((_%mutator170928%_
                           (let ((__tmp176166
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L170901%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176166)))
                          (_%klass170930%_
                           (let ((__tmp176167
                                  (##structure-ref
                                   _%mutator170928%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170593%_
                              __tmp176167)))
                          (_%slot170932%_
                           (##structure-ref
                            _%mutator170928%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator170928%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass170930%_
                                    _%slot170932%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass170930%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176168
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170592%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176168 _%slot170932%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170592%_ _%L170899%_)))))
                (_%__kont175065175066%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170592%_ _%stx170593%_)))))
            (let* ((_%__match175546175547%_
                    (lambda (_%e170795170835%_
                             _%hd170796170838%_
                             _%tl170797170840%_
                             _%e170798170843%_
                             _%hd170799170846%_
                             _%tl170800170848%_
                             _%e170801170851%_
                             _%hd170802170854%_
                             _%tl170803170856%_
                             _%e170804170859%_
                             _%hd170805170862%_
                             _%tl170806170864%_
                             _%e170807170867%_
                             _%hd170808170870%_
                             _%tl170809170872%_
                             _%e170810170875%_
                             _%hd170811170878%_
                             _%tl170812170880%_
                             _%e170813170883%_
                             _%hd170814170886%_
                             _%tl170815170888%_
                             _%e170816170891%_
                             _%hd170817170894%_
                             _%tl170818170896%_)
                      (let ((_%L170899%_ _%hd170817170894%_)
                            (_%L170900%_ _%hd170814170886%_)
                            (_%L170901%_ _%hd170805170862%_))
                        (if (and (let ((__tmp176169
                                        (let ((__tmp176170
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L170901%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176170))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176169
                                    'gxc#!mutator::t))
                                 (let ((__tmp176171
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170592%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170900%_
                                    __tmp176171)))
                            (_%__kont175063175064%_
                             _%L170899%_
                             _%L170900%_
                             _%L170901%_)
                            (_%__kont175065175066%_)))))
                   (_%__match175544175545%_
                    (lambda (_%e170795170835%_
                             _%hd170796170838%_
                             _%tl170797170840%_
                             _%e170798170843%_
                             _%hd170799170846%_
                             _%tl170800170848%_
                             _%e170801170851%_
                             _%hd170802170854%_
                             _%tl170803170856%_
                             _%e170804170859%_
                             _%hd170805170862%_
                             _%tl170806170864%_
                             _%e170807170867%_
                             _%hd170808170870%_
                             _%tl170809170872%_
                             _%e170810170875%_
                             _%hd170811170878%_
                             _%tl170812170880%_
                             _%e170813170883%_
                             _%hd170814170886%_
                             _%tl170815170888%_
                             _%e170816170891%_
                             _%hd170817170894%_
                             _%tl170818170896%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170818170896%_))
                          (_%__match175546175547%_
                           _%e170795170835%_
                           _%hd170796170838%_
                           _%tl170797170840%_
                           _%e170798170843%_
                           _%hd170799170846%_
                           _%tl170800170848%_
                           _%e170801170851%_
                           _%hd170802170854%_
                           _%tl170803170856%_
                           _%e170804170859%_
                           _%hd170805170862%_
                           _%tl170806170864%_
                           _%e170807170867%_
                           _%hd170808170870%_
                           _%tl170809170872%_
                           _%e170810170875%_
                           _%hd170811170878%_
                           _%tl170812170880%_
                           _%e170813170883%_
                           _%hd170814170886%_
                           _%tl170815170888%_
                           _%e170816170891%_
                           _%hd170817170894%_
                           _%tl170818170896%_)
                          (_%__kont175065175066%_))))
                   (_%__match175538175539%_
                    (lambda (_%e170795170835%_
                             _%hd170796170838%_
                             _%tl170797170840%_
                             _%e170798170843%_
                             _%hd170799170846%_
                             _%tl170800170848%_
                             _%e170801170851%_
                             _%hd170802170854%_
                             _%tl170803170856%_
                             _%e170804170859%_
                             _%hd170805170862%_
                             _%tl170806170864%_
                             _%e170807170867%_
                             _%hd170808170870%_
                             _%tl170809170872%_
                             _%e170810170875%_
                             _%hd170811170878%_
                             _%tl170812170880%_
                             _%e170813170883%_
                             _%hd170814170886%_
                             _%tl170815170888%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170809170872%_))
                          (let ((_%e170816170891%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170809170872%_))))
                            (let ((_%tl170818170896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170816170891%_)))
                                  (_%hd170817170894%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170816170891%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170818170896%_))
                                  (_%__match175546175547%_
                                   _%e170795170835%_
                                   _%hd170796170838%_
                                   _%tl170797170840%_
                                   _%e170798170843%_
                                   _%hd170799170846%_
                                   _%tl170800170848%_
                                   _%e170801170851%_
                                   _%hd170802170854%_
                                   _%tl170803170856%_
                                   _%e170804170859%_
                                   _%hd170805170862%_
                                   _%tl170806170864%_
                                   _%e170807170867%_
                                   _%hd170808170870%_
                                   _%tl170809170872%_
                                   _%e170810170875%_
                                   _%hd170811170878%_
                                   _%tl170812170880%_
                                   _%e170813170883%_
                                   _%hd170814170886%_
                                   _%tl170815170888%_
                                   _%e170816170891%_
                                   _%hd170817170894%_
                                   _%tl170818170896%_)
                                  (_%__kont175065175066%_))))
                          (_%__kont175065175066%_))))
                   (_%__match175484175485%_
                    (lambda (_%e170771170943%_
                             _%hd170772170946%_
                             _%tl170773170948%_
                             _%e170774170951%_
                             _%hd170775170954%_
                             _%tl170776170956%_
                             _%e170777170959%_
                             _%hd170778170962%_
                             _%tl170779170964%_
                             _%e170780170967%_
                             _%hd170781170970%_
                             _%tl170782170972%_
                             _%e170783170975%_
                             _%hd170784170978%_
                             _%tl170785170980%_
                             _%e170786170983%_
                             _%hd170787170986%_
                             _%tl170788170988%_
                             _%e170789170991%_
                             _%hd170790170994%_
                             _%tl170791170996%_)
                      (let ((_%L170999%_ _%hd170790170994%_)
                            (_%L171000%_ _%hd170781170970%_))
                        (if (and (let ((__tmp176172
                                        (let ((__tmp176173
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171000%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176173))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176172
                                    'gxc#!accessor::t))
                                 (let ((__tmp176174
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170592%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170999%_
                                    __tmp176174)))
                            (_%__kont175061175062%_ _%L170999%_ _%L171000%_)
                            (_%__kont175065175066%_)))))
                   (_%__match175482175483%_
                    (lambda (_%e170771170943%_
                             _%hd170772170946%_
                             _%tl170773170948%_
                             _%e170774170951%_
                             _%hd170775170954%_
                             _%tl170776170956%_
                             _%e170777170959%_
                             _%hd170778170962%_
                             _%tl170779170964%_
                             _%e170780170967%_
                             _%hd170781170970%_
                             _%tl170782170972%_
                             _%e170783170975%_
                             _%hd170784170978%_
                             _%tl170785170980%_
                             _%e170786170983%_
                             _%hd170787170986%_
                             _%tl170788170988%_
                             _%e170789170991%_
                             _%hd170790170994%_
                             _%tl170791170996%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170785170980%_))
                          (_%__match175484175485%_
                           _%e170771170943%_
                           _%hd170772170946%_
                           _%tl170773170948%_
                           _%e170774170951%_
                           _%hd170775170954%_
                           _%tl170776170956%_
                           _%e170777170959%_
                           _%hd170778170962%_
                           _%tl170779170964%_
                           _%e170780170967%_
                           _%hd170781170970%_
                           _%tl170782170972%_
                           _%e170783170975%_
                           _%hd170784170978%_
                           _%tl170785170980%_
                           _%e170786170983%_
                           _%hd170787170986%_
                           _%tl170788170988%_
                           _%e170789170991%_
                           _%hd170790170994%_
                           _%tl170791170996%_)
                          (_%__match175538175539%_
                           _%e170771170943%_
                           _%hd170772170946%_
                           _%tl170773170948%_
                           _%e170774170951%_
                           _%hd170775170954%_
                           _%tl170776170956%_
                           _%e170777170959%_
                           _%hd170778170962%_
                           _%tl170779170964%_
                           _%e170780170967%_
                           _%hd170781170970%_
                           _%tl170782170972%_
                           _%e170783170975%_
                           _%hd170784170978%_
                           _%tl170785170980%_
                           _%e170786170983%_
                           _%hd170787170986%_
                           _%tl170788170988%_
                           _%e170789170991%_
                           _%hd170790170994%_
                           _%tl170791170996%_))))
                   (_%__match175428175429%_
                    (lambda (_%e170736171037%_
                             _%hd170737171040%_
                             _%tl170738171042%_
                             _%e170739171045%_
                             _%hd170740171048%_
                             _%tl170741171050%_
                             _%e170742171053%_
                             _%hd170743171056%_
                             _%tl170744171058%_
                             _%e170745171061%_
                             _%hd170746171064%_
                             _%tl170747171066%_
                             _%e170748171069%_
                             _%hd170749171072%_
                             _%tl170750171074%_
                             _%e170751171077%_
                             _%hd170752171080%_
                             _%tl170753171082%_
                             _%e170754171085%_
                             _%hd170755171088%_
                             _%tl170756171090%_
                             _%e170757171093%_
                             _%hd170758171096%_
                             _%tl170759171098%_
                             _%e170760171101%_
                             _%hd170761171104%_
                             _%tl170762171106%_
                             _%e170763171109%_
                             _%hd170764171112%_
                             _%tl170765171114%_
                             _%e170766171117%_
                             _%hd170767171120%_
                             _%tl170768171122%_)
                      (let ((_%L171125%_ _%hd170767171120%_)
                            (_%L171126%_ _%hd170764171112%_)
                            (_%L171127%_ _%hd170755171088%_)
                            (_%L171128%_ _%hd170746171064%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171128%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171128%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176175
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170592%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171127%_
                                    __tmp176175)))
                            (_%__kont175059175060%_
                             _%L171125%_
                             _%L171126%_
                             _%L171127%_
                             _%L171128%_)
                            (_%__kont175065175066%_)))))
                   (_%__match175420175421%_
                    (lambda (_%e170736171037%_
                             _%hd170737171040%_
                             _%tl170738171042%_
                             _%e170739171045%_
                             _%hd170740171048%_
                             _%tl170741171050%_
                             _%e170742171053%_
                             _%hd170743171056%_
                             _%tl170744171058%_
                             _%e170745171061%_
                             _%hd170746171064%_
                             _%tl170747171066%_
                             _%e170748171069%_
                             _%hd170749171072%_
                             _%tl170750171074%_
                             _%e170751171077%_
                             _%hd170752171080%_
                             _%tl170753171082%_
                             _%e170754171085%_
                             _%hd170755171088%_
                             _%tl170756171090%_
                             _%e170757171093%_
                             _%hd170758171096%_
                             _%tl170759171098%_
                             _%e170760171101%_
                             _%hd170761171104%_
                             _%tl170762171106%_
                             _%e170763171109%_
                             _%hd170764171112%_
                             _%tl170765171114%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170759171098%_))
                          (let ((_%e170766171117%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170759171098%_))))
                            (let ((_%tl170768171122%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170766171117%_)))
                                  (_%hd170767171120%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170766171117%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170768171122%_))
                                  (_%__match175428175429%_
                                   _%e170736171037%_
                                   _%hd170737171040%_
                                   _%tl170738171042%_
                                   _%e170739171045%_
                                   _%hd170740171048%_
                                   _%tl170741171050%_
                                   _%e170742171053%_
                                   _%hd170743171056%_
                                   _%tl170744171058%_
                                   _%e170745171061%_
                                   _%hd170746171064%_
                                   _%tl170747171066%_
                                   _%e170748171069%_
                                   _%hd170749171072%_
                                   _%tl170750171074%_
                                   _%e170751171077%_
                                   _%hd170752171080%_
                                   _%tl170753171082%_
                                   _%e170754171085%_
                                   _%hd170755171088%_
                                   _%tl170756171090%_
                                   _%e170757171093%_
                                   _%hd170758171096%_
                                   _%tl170759171098%_
                                   _%e170760171101%_
                                   _%hd170761171104%_
                                   _%tl170762171106%_
                                   _%e170763171109%_
                                   _%hd170764171112%_
                                   _%tl170765171114%_
                                   _%e170766171117%_
                                   _%hd170767171120%_
                                   _%tl170768171122%_)
                                  (_%__kont175065175066%_))))
                          (_%__match175544175545%_
                           _%e170736171037%_
                           _%hd170737171040%_
                           _%tl170738171042%_
                           _%e170739171045%_
                           _%hd170740171048%_
                           _%tl170741171050%_
                           _%e170742171053%_
                           _%hd170743171056%_
                           _%tl170744171058%_
                           _%e170745171061%_
                           _%hd170746171064%_
                           _%tl170747171066%_
                           _%e170748171069%_
                           _%hd170749171072%_
                           _%tl170750171074%_
                           _%e170751171077%_
                           _%hd170752171080%_
                           _%tl170753171082%_
                           _%e170754171085%_
                           _%hd170755171088%_
                           _%tl170756171090%_
                           _%e170757171093%_
                           _%hd170758171096%_
                           _%tl170759171098%_))))
                   (_%__match175342175343%_
                    (lambda (_%e170702171168%_
                             _%hd170703171171%_
                             _%tl170704171173%_
                             _%e170705171176%_
                             _%hd170706171179%_
                             _%tl170707171181%_
                             _%e170708171184%_
                             _%hd170709171187%_
                             _%tl170710171189%_
                             _%e170711171192%_
                             _%hd170712171195%_
                             _%tl170713171197%_
                             _%e170714171200%_
                             _%hd170715171203%_
                             _%tl170716171205%_
                             _%e170717171208%_
                             _%hd170718171211%_
                             _%tl170719171213%_
                             _%e170720171216%_
                             _%hd170721171219%_
                             _%tl170722171221%_
                             _%e170723171224%_
                             _%hd170724171227%_
                             _%tl170725171229%_
                             _%e170726171232%_
                             _%hd170727171235%_
                             _%tl170728171237%_
                             _%e170729171240%_
                             _%hd170730171243%_
                             _%tl170731171245%_)
                      (let ((_%L171248%_ _%hd170730171243%_)
                            (_%L171249%_ _%hd170721171219%_)
                            (_%L171250%_ _%hd170712171195%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171250%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171250%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176176
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170592%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171249%_
                                    __tmp176176)))
                            (_%__kont175057175058%_
                             _%L171248%_
                             _%L171249%_
                             _%L171250%_)
                            (_%__match175546175547%_
                             _%e170702171168%_
                             _%hd170703171171%_
                             _%tl170704171173%_
                             _%e170705171176%_
                             _%hd170706171179%_
                             _%tl170707171181%_
                             _%e170708171184%_
                             _%hd170709171187%_
                             _%tl170710171189%_
                             _%e170711171192%_
                             _%hd170712171195%_
                             _%tl170713171197%_
                             _%e170714171200%_
                             _%hd170715171203%_
                             _%tl170716171205%_
                             _%e170717171208%_
                             _%hd170718171211%_
                             _%tl170719171213%_
                             _%e170720171216%_
                             _%hd170721171219%_
                             _%tl170722171221%_
                             _%e170723171224%_
                             _%hd170724171227%_
                             _%tl170725171229%_)))))
                   (_%__match175340175341%_
                    (lambda (_%e170702171168%_
                             _%hd170703171171%_
                             _%tl170704171173%_
                             _%e170705171176%_
                             _%hd170706171179%_
                             _%tl170707171181%_
                             _%e170708171184%_
                             _%hd170709171187%_
                             _%tl170710171189%_
                             _%e170711171192%_
                             _%hd170712171195%_
                             _%tl170713171197%_
                             _%e170714171200%_
                             _%hd170715171203%_
                             _%tl170716171205%_
                             _%e170717171208%_
                             _%hd170718171211%_
                             _%tl170719171213%_
                             _%e170720171216%_
                             _%hd170721171219%_
                             _%tl170722171221%_
                             _%e170723171224%_
                             _%hd170724171227%_
                             _%tl170725171229%_
                             _%e170726171232%_
                             _%hd170727171235%_
                             _%tl170728171237%_
                             _%e170729171240%_
                             _%hd170730171243%_
                             _%tl170731171245%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170725171229%_))
                          (_%__match175342175343%_
                           _%e170702171168%_
                           _%hd170703171171%_
                           _%tl170704171173%_
                           _%e170705171176%_
                           _%hd170706171179%_
                           _%tl170707171181%_
                           _%e170708171184%_
                           _%hd170709171187%_
                           _%tl170710171189%_
                           _%e170711171192%_
                           _%hd170712171195%_
                           _%tl170713171197%_
                           _%e170714171200%_
                           _%hd170715171203%_
                           _%tl170716171205%_
                           _%e170717171208%_
                           _%hd170718171211%_
                           _%tl170719171213%_
                           _%e170720171216%_
                           _%hd170721171219%_
                           _%tl170722171221%_
                           _%e170723171224%_
                           _%hd170724171227%_
                           _%tl170725171229%_
                           _%e170726171232%_
                           _%hd170727171235%_
                           _%tl170728171237%_
                           _%e170729171240%_
                           _%hd170730171243%_
                           _%tl170731171245%_)
                          (_%__match175420175421%_
                           _%e170702171168%_
                           _%hd170703171171%_
                           _%tl170704171173%_
                           _%e170705171176%_
                           _%hd170706171179%_
                           _%tl170707171181%_
                           _%e170708171184%_
                           _%hd170709171187%_
                           _%tl170710171189%_
                           _%e170711171192%_
                           _%hd170712171195%_
                           _%tl170713171197%_
                           _%e170714171200%_
                           _%hd170715171203%_
                           _%tl170716171205%_
                           _%e170717171208%_
                           _%hd170718171211%_
                           _%tl170719171213%_
                           _%e170720171216%_
                           _%hd170721171219%_
                           _%tl170722171221%_
                           _%e170723171224%_
                           _%hd170724171227%_
                           _%tl170725171229%_
                           _%e170726171232%_
                           _%hd170727171235%_
                           _%tl170728171237%_
                           _%e170729171240%_
                           _%hd170730171243%_
                           _%tl170731171245%_))))
                   (_%__match175330175331%_
                    (lambda (_%e170702171168%_
                             _%hd170703171171%_
                             _%tl170704171173%_
                             _%e170705171176%_
                             _%hd170706171179%_
                             _%tl170707171181%_
                             _%e170708171184%_
                             _%hd170709171187%_
                             _%tl170710171189%_
                             _%e170711171192%_
                             _%hd170712171195%_
                             _%tl170713171197%_
                             _%e170714171200%_
                             _%hd170715171203%_
                             _%tl170716171205%_
                             _%e170717171208%_
                             _%hd170718171211%_
                             _%tl170719171213%_
                             _%e170720171216%_
                             _%hd170721171219%_
                             _%tl170722171221%_
                             _%e170723171224%_
                             _%hd170724171227%_
                             _%tl170725171229%_
                             _%e170726171232%_
                             _%hd170727171235%_
                             _%tl170728171237%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd170727171235%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170728171237%_))
                              (let ((_%e170729171240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170728171237%_))))
                                (let ((_%tl170731171245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170729171240%_)))
                                      (_%hd170730171243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170729171240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170731171245%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170725171229%_))
                                          (_%__match175342175343%_
                                           _%e170702171168%_
                                           _%hd170703171171%_
                                           _%tl170704171173%_
                                           _%e170705171176%_
                                           _%hd170706171179%_
                                           _%tl170707171181%_
                                           _%e170708171184%_
                                           _%hd170709171187%_
                                           _%tl170710171189%_
                                           _%e170711171192%_
                                           _%hd170712171195%_
                                           _%tl170713171197%_
                                           _%e170714171200%_
                                           _%hd170715171203%_
                                           _%tl170716171205%_
                                           _%e170717171208%_
                                           _%hd170718171211%_
                                           _%tl170719171213%_
                                           _%e170720171216%_
                                           _%hd170721171219%_
                                           _%tl170722171221%_
                                           _%e170723171224%_
                                           _%hd170724171227%_
                                           _%tl170725171229%_
                                           _%e170726171232%_
                                           _%hd170727171235%_
                                           _%tl170728171237%_
                                           _%e170729171240%_
                                           _%hd170730171243%_
                                           _%tl170731171245%_)
                                          (_%__match175420175421%_
                                           _%e170702171168%_
                                           _%hd170703171171%_
                                           _%tl170704171173%_
                                           _%e170705171176%_
                                           _%hd170706171179%_
                                           _%tl170707171181%_
                                           _%e170708171184%_
                                           _%hd170709171187%_
                                           _%tl170710171189%_
                                           _%e170711171192%_
                                           _%hd170712171195%_
                                           _%tl170713171197%_
                                           _%e170714171200%_
                                           _%hd170715171203%_
                                           _%tl170716171205%_
                                           _%e170717171208%_
                                           _%hd170718171211%_
                                           _%tl170719171213%_
                                           _%e170720171216%_
                                           _%hd170721171219%_
                                           _%tl170722171221%_
                                           _%e170723171224%_
                                           _%hd170724171227%_
                                           _%tl170725171229%_
                                           _%e170726171232%_
                                           _%hd170727171235%_
                                           _%tl170728171237%_
                                           _%e170729171240%_
                                           _%hd170730171243%_
                                           _%tl170731171245%_))
                                      (_%__match175544175545%_
                                       _%e170702171168%_
                                       _%hd170703171171%_
                                       _%tl170704171173%_
                                       _%e170705171176%_
                                       _%hd170706171179%_
                                       _%tl170707171181%_
                                       _%e170708171184%_
                                       _%hd170709171187%_
                                       _%tl170710171189%_
                                       _%e170711171192%_
                                       _%hd170712171195%_
                                       _%tl170713171197%_
                                       _%e170714171200%_
                                       _%hd170715171203%_
                                       _%tl170716171205%_
                                       _%e170717171208%_
                                       _%hd170718171211%_
                                       _%tl170719171213%_
                                       _%e170720171216%_
                                       _%hd170721171219%_
                                       _%tl170722171221%_
                                       _%e170723171224%_
                                       _%hd170724171227%_
                                       _%tl170725171229%_))))
                              (_%__match175544175545%_
                               _%e170702171168%_
                               _%hd170703171171%_
                               _%tl170704171173%_
                               _%e170705171176%_
                               _%hd170706171179%_
                               _%tl170707171181%_
                               _%e170708171184%_
                               _%hd170709171187%_
                               _%tl170710171189%_
                               _%e170711171192%_
                               _%hd170712171195%_
                               _%tl170713171197%_
                               _%e170714171200%_
                               _%hd170715171203%_
                               _%tl170716171205%_
                               _%e170717171208%_
                               _%hd170718171211%_
                               _%tl170719171213%_
                               _%e170720171216%_
                               _%hd170721171219%_
                               _%tl170722171221%_
                               _%e170723171224%_
                               _%hd170724171227%_
                               _%tl170725171229%_))
                          (_%__match175544175545%_
                           _%e170702171168%_
                           _%hd170703171171%_
                           _%tl170704171173%_
                           _%e170705171176%_
                           _%hd170706171179%_
                           _%tl170707171181%_
                           _%e170708171184%_
                           _%hd170709171187%_
                           _%tl170710171189%_
                           _%e170711171192%_
                           _%hd170712171195%_
                           _%tl170713171197%_
                           _%e170714171200%_
                           _%hd170715171203%_
                           _%tl170716171205%_
                           _%e170717171208%_
                           _%hd170718171211%_
                           _%tl170719171213%_
                           _%e170720171216%_
                           _%hd170721171219%_
                           _%tl170722171221%_
                           _%e170723171224%_
                           _%hd170724171227%_
                           _%tl170725171229%_))))
                   (_%__match175262175263%_
                    (lambda (_%e170651171287%_
                             _%hd170652171290%_
                             _%tl170653171292%_
                             _%e170654171295%_
                             _%hd170655171298%_
                             _%tl170656171300%_
                             _%e170657171303%_
                             _%hd170658171306%_
                             _%tl170659171308%_
                             _%e170660171311%_
                             _%hd170661171314%_
                             _%tl170662171316%_
                             _%e170663171319%_
                             _%hd170664171322%_
                             _%tl170665171324%_
                             _%e170666171327%_
                             _%hd170667171330%_
                             _%tl170668171332%_
                             _%e170669171335%_
                             _%hd170670171338%_
                             _%tl170671171340%_
                             _%e170672171343%_
                             _%hd170673171346%_
                             _%tl170674171348%_
                             _%e170675171351%_
                             _%hd170676171354%_
                             _%tl170677171356%_
                             _%e170678171359%_
                             _%hd170679171362%_
                             _%tl170680171364%_
                             _%e170681171367%_
                             _%hd170682171370%_
                             _%tl170683171372%_
                             _%e170684171375%_
                             _%hd170685171378%_
                             _%tl170686171380%_
                             _%e170687171383%_
                             _%hd170688171386%_
                             _%tl170689171388%_
                             _%__splice175055175056%_
                             _%target170690171391%_
                             _%tl170692171393%_)
                      (letrec ((_%loop170693171396%_
                                (lambda (_%hd170691171399%_
                                         _%args170697171401%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170691171399%_))
                                      (let ((_%e170694171404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170691171399%_))))
                                        (let ((_%lp-tl170696171409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170694171404%_)))
                                              (_%lp-hd170695171407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170694171404%_))))
                                          (_%loop170693171396%_
                                           _%lp-tl170696171409%_
                                           (cons _%lp-hd170695171407%_
                                                 _%args170697171401%_))))
                                      (let ((_%args170698171412%_
                                             (reverse _%args170697171401%_)))
                                        (let ((_%L171415%_
                                               _%args170698171412%_)
                                              (_%L171416%_ _%hd170688171386%_)
                                              (_%L171417%_ _%hd170679171362%_)
                                              (_%L171418%_ _%hd170670171338%_)
                                              (_%L171419%_ _%hd170661171314%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171419%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171418%_
                                                      'call-method))
                                                   (let ((__tmp176177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170592%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171417%_
                                                      __tmp176177)))
                                              (_%__kont175053175054%_
                                               _%L171415%_
                                               _%L171416%_
                                               _%L171417%_
                                               _%L171418%_
                                               _%L171419%_)
                                              (_%__kont175065175066%_))))))))
                        (_%loop170693171396%_ _%target170690171391%_ '()))))
                   (_%__match175220175221%_
                    (lambda (_%e170651171287%_
                             _%hd170652171290%_
                             _%tl170653171292%_
                             _%e170654171295%_
                             _%hd170655171298%_
                             _%tl170656171300%_
                             _%e170657171303%_
                             _%hd170658171306%_
                             _%tl170659171308%_
                             _%e170660171311%_
                             _%hd170661171314%_
                             _%tl170662171316%_
                             _%e170663171319%_
                             _%hd170664171322%_
                             _%tl170665171324%_
                             _%e170666171327%_
                             _%hd170667171330%_
                             _%tl170668171332%_
                             _%e170669171335%_
                             _%hd170670171338%_
                             _%tl170671171340%_
                             _%e170672171343%_
                             _%hd170673171346%_
                             _%tl170674171348%_
                             _%e170675171351%_
                             _%hd170676171354%_
                             _%tl170677171356%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd170676171354%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170677171356%_))
                              (let ((_%e170678171359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170677171356%_))))
                                (let ((_%tl170680171364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170678171359%_)))
                                      (_%hd170679171362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170678171359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170680171364%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170674171348%_))
                                          (let ((_%e170681171367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170674171348%_))))
                                            (let ((_%tl170683171372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170681171367%_)))
                                                  (_%hd170682171370%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170681171367%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170682171370%_))
                                                  (let ((_%e170684171375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170682171370%_))))
                                                    (let ((_%tl170686171380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170684171375%_)))
                                                          (_%hd170685171378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170684171375%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd170685171378%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd170685171378%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170686171380%_))
                          (let ((_%e170687171383%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170686171380%_))))
                            (let ((_%tl170689171388%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170687171383%_)))
                                  (_%hd170688171386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170687171383%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170689171388%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170683171372%_))
                                      (let ((_%__splice175055175056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170683171372%_
                                                '0))))
                                        (let ((_%tl170692171393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175055175056%_
                                                  '1)))
                                              (_%target170690171391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175055175056%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170692171393%_))
                                              (_%__match175262175263%_
                                               _%e170651171287%_
                                               _%hd170652171290%_
                                               _%tl170653171292%_
                                               _%e170654171295%_
                                               _%hd170655171298%_
                                               _%tl170656171300%_
                                               _%e170657171303%_
                                               _%hd170658171306%_
                                               _%tl170659171308%_
                                               _%e170660171311%_
                                               _%hd170661171314%_
                                               _%tl170662171316%_
                                               _%e170663171319%_
                                               _%hd170664171322%_
                                               _%tl170665171324%_
                                               _%e170666171327%_
                                               _%hd170667171330%_
                                               _%tl170668171332%_
                                               _%e170669171335%_
                                               _%hd170670171338%_
                                               _%tl170671171340%_
                                               _%e170672171343%_
                                               _%hd170673171346%_
                                               _%tl170674171348%_
                                               _%e170675171351%_
                                               _%hd170676171354%_
                                               _%tl170677171356%_
                                               _%e170678171359%_
                                               _%hd170679171362%_
                                               _%tl170680171364%_
                                               _%e170681171367%_
                                               _%hd170682171370%_
                                               _%tl170683171372%_
                                               _%e170684171375%_
                                               _%hd170685171378%_
                                               _%tl170686171380%_
                                               _%e170687171383%_
                                               _%hd170688171386%_
                                               _%tl170689171388%_
                                               _%__splice175055175056%_
                                               _%target170690171391%_
                                               _%tl170692171393%_)
                                              (_%__kont175065175066%_))))
                                      (_%__kont175065175066%_))
                                  (_%__kont175065175066%_))))
                          (_%__kont175065175066%_))
                      (_%__kont175065175066%_))
                  (_%__kont175065175066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175065175066%_))))
                                          (_%__match175544175545%_
                                           _%e170651171287%_
                                           _%hd170652171290%_
                                           _%tl170653171292%_
                                           _%e170654171295%_
                                           _%hd170655171298%_
                                           _%tl170656171300%_
                                           _%e170657171303%_
                                           _%hd170658171306%_
                                           _%tl170659171308%_
                                           _%e170660171311%_
                                           _%hd170661171314%_
                                           _%tl170662171316%_
                                           _%e170663171319%_
                                           _%hd170664171322%_
                                           _%tl170665171324%_
                                           _%e170666171327%_
                                           _%hd170667171330%_
                                           _%tl170668171332%_
                                           _%e170669171335%_
                                           _%hd170670171338%_
                                           _%tl170671171340%_
                                           _%e170672171343%_
                                           _%hd170673171346%_
                                           _%tl170674171348%_))
                                      (_%__match175544175545%_
                                       _%e170651171287%_
                                       _%hd170652171290%_
                                       _%tl170653171292%_
                                       _%e170654171295%_
                                       _%hd170655171298%_
                                       _%tl170656171300%_
                                       _%e170657171303%_
                                       _%hd170658171306%_
                                       _%tl170659171308%_
                                       _%e170660171311%_
                                       _%hd170661171314%_
                                       _%tl170662171316%_
                                       _%e170663171319%_
                                       _%hd170664171322%_
                                       _%tl170665171324%_
                                       _%e170666171327%_
                                       _%hd170667171330%_
                                       _%tl170668171332%_
                                       _%e170669171335%_
                                       _%hd170670171338%_
                                       _%tl170671171340%_
                                       _%e170672171343%_
                                       _%hd170673171346%_
                                       _%tl170674171348%_))))
                              (_%__match175544175545%_
                               _%e170651171287%_
                               _%hd170652171290%_
                               _%tl170653171292%_
                               _%e170654171295%_
                               _%hd170655171298%_
                               _%tl170656171300%_
                               _%e170657171303%_
                               _%hd170658171306%_
                               _%tl170659171308%_
                               _%e170660171311%_
                               _%hd170661171314%_
                               _%tl170662171316%_
                               _%e170663171319%_
                               _%hd170664171322%_
                               _%tl170665171324%_
                               _%e170666171327%_
                               _%hd170667171330%_
                               _%tl170668171332%_
                               _%e170669171335%_
                               _%hd170670171338%_
                               _%tl170671171340%_
                               _%e170672171343%_
                               _%hd170673171346%_
                               _%tl170674171348%_))
                          (_%__match175330175331%_
                           _%e170651171287%_
                           _%hd170652171290%_
                           _%tl170653171292%_
                           _%e170654171295%_
                           _%hd170655171298%_
                           _%tl170656171300%_
                           _%e170657171303%_
                           _%hd170658171306%_
                           _%tl170659171308%_
                           _%e170660171311%_
                           _%hd170661171314%_
                           _%tl170662171316%_
                           _%e170663171319%_
                           _%hd170664171322%_
                           _%tl170665171324%_
                           _%e170666171327%_
                           _%hd170667171330%_
                           _%tl170668171332%_
                           _%e170669171335%_
                           _%hd170670171338%_
                           _%tl170671171340%_
                           _%e170672171343%_
                           _%hd170673171346%_
                           _%tl170674171348%_
                           _%e170675171351%_
                           _%hd170676171354%_
                           _%tl170677171356%_))))
                   (_%__match175152175153%_
                    (lambda (_%e170607171476%_
                             _%hd170608171479%_
                             _%tl170609171481%_
                             _%e170610171484%_
                             _%hd170611171487%_
                             _%tl170612171489%_
                             _%e170613171492%_
                             _%hd170614171495%_
                             _%tl170615171497%_
                             _%e170616171500%_
                             _%hd170617171503%_
                             _%tl170618171505%_
                             _%e170619171508%_
                             _%hd170620171511%_
                             _%tl170621171513%_
                             _%e170622171516%_
                             _%hd170623171519%_
                             _%tl170624171521%_
                             _%e170625171524%_
                             _%hd170626171527%_
                             _%tl170627171529%_
                             _%e170628171532%_
                             _%hd170629171535%_
                             _%tl170630171537%_
                             _%e170631171540%_
                             _%hd170632171543%_
                             _%tl170633171545%_
                             _%e170634171548%_
                             _%hd170635171551%_
                             _%tl170636171553%_
                             _%__splice175051175052%_
                             _%target170637171556%_
                             _%tl170639171558%_)
                      (letrec ((_%loop170640171561%_
                                (lambda (_%hd170638171564%_
                                         _%args170644171566%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170638171564%_))
                                      (let ((_%e170641171569%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170638171564%_))))
                                        (let ((_%lp-tl170643171574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170641171569%_)))
                                              (_%lp-hd170642171572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170641171569%_))))
                                          (_%loop170640171561%_
                                           _%lp-tl170643171574%_
                                           (cons _%lp-hd170642171572%_
                                                 _%args170644171566%_))))
                                      (let ((_%args170645171577%_
                                             (reverse _%args170644171566%_)))
                                        (let ((_%L171580%_
                                               _%args170645171577%_)
                                              (_%L171581%_ _%hd170635171551%_)
                                              (_%L171582%_ _%hd170626171527%_)
                                              (_%L171583%_ _%hd170617171503%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171583%_
                                                      'call-method))
                                                   (let ((__tmp176178
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170592%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171582%_
                                                      __tmp176178)))
                                              (_%__kont175049175050%_
                                               _%L171580%_
                                               _%L171581%_
                                               _%L171582%_
                                               _%L171583%_)
                                              (_%__match175340175341%_
                                               _%e170607171476%_
                                               _%hd170608171479%_
                                               _%tl170609171481%_
                                               _%e170610171484%_
                                               _%hd170611171487%_
                                               _%tl170612171489%_
                                               _%e170613171492%_
                                               _%hd170614171495%_
                                               _%tl170615171497%_
                                               _%e170616171500%_
                                               _%hd170617171503%_
                                               _%tl170618171505%_
                                               _%e170619171508%_
                                               _%hd170620171511%_
                                               _%tl170621171513%_
                                               _%e170622171516%_
                                               _%hd170623171519%_
                                               _%tl170624171521%_
                                               _%e170625171524%_
                                               _%hd170626171527%_
                                               _%tl170627171529%_
                                               _%e170628171532%_
                                               _%hd170629171535%_
                                               _%tl170630171537%_
                                               _%e170631171540%_
                                               _%hd170632171543%_
                                               _%tl170633171545%_
                                               _%e170634171548%_
                                               _%hd170635171551%_
                                               _%tl170636171553%_))))))))
                        (_%loop170640171561%_ _%target170637171556%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx175047175048%_))
                  (let ((_%e170607171476%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx175047175048%_))))
                    (let ((_%tl170609171481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170607171476%_)))
                          (_%hd170608171479%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170607171476%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170609171481%_))
                          (let ((_%e170610171484%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170609171481%_))))
                            (let ((_%tl170612171489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170610171484%_)))
                                  (_%hd170611171487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170610171484%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd170611171487%_))
                                  (let ((_%e170613171492%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd170611171487%_))))
                                    (let ((_%tl170615171497%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170613171492%_)))
                                          (_%hd170614171495%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170613171492%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd170614171495%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd170614171495%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl170615171497%_))
                                                  (let ((_%e170616171500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl170615171497%_))))
                                                    (let ((_%tl170618171505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170616171500%_)))
                                                          (_%hd170617171503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170616171500%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl170618171505%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170612171489%_))
                      (let ((_%e170619171508%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170612171489%_))))
                        (let ((_%tl170621171513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170619171508%_)))
                              (_%hd170620171511%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170619171508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170620171511%_))
                              (let ((_%e170622171516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170620171511%_))))
                                (let ((_%tl170624171521%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170622171516%_)))
                                      (_%hd170623171519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170622171516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170623171519%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd170623171519%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170624171521%_))
                                              (let ((_%e170625171524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170624171521%_))))
                                                (let ((_%tl170627171529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170625171524%_)))
                                                      (_%hd170626171527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170625171524%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170627171529%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170621171513%_))
                                                          (let ((_%e170628171532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170621171513%_))))
                    (let ((_%tl170630171537%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170628171532%_)))
                          (_%hd170629171535%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170628171532%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170629171535%_))
                          (let ((_%e170631171540%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170629171535%_))))
                            (let ((_%tl170633171545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170631171540%_)))
                                  (_%hd170632171543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170631171540%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd170632171543%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd170632171543%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170633171545%_))
                                          (let ((_%e170634171548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170633171545%_))))
                                            (let ((_%tl170636171553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170634171548%_)))
                                                  (_%hd170635171551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170634171548%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170636171553%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170630171537%_))
                                                      (let ((_%__splice175051175052%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl170630171537%_ '0))))
                (let ((_%tl170639171558%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175051175052%_ '1)))
                      (_%target170637171556%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175051175052%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170639171558%_))
                      (_%__match175152175153%_
                       _%e170607171476%_
                       _%hd170608171479%_
                       _%tl170609171481%_
                       _%e170610171484%_
                       _%hd170611171487%_
                       _%tl170612171489%_
                       _%e170613171492%_
                       _%hd170614171495%_
                       _%tl170615171497%_
                       _%e170616171500%_
                       _%hd170617171503%_
                       _%tl170618171505%_
                       _%e170619171508%_
                       _%hd170620171511%_
                       _%tl170621171513%_
                       _%e170622171516%_
                       _%hd170623171519%_
                       _%tl170624171521%_
                       _%e170625171524%_
                       _%hd170626171527%_
                       _%tl170627171529%_
                       _%e170628171532%_
                       _%hd170629171535%_
                       _%tl170630171537%_
                       _%e170631171540%_
                       _%hd170632171543%_
                       _%tl170633171545%_
                       _%e170634171548%_
                       _%hd170635171551%_
                       _%tl170636171553%_
                       _%__splice175051175052%_
                       _%target170637171556%_
                       _%tl170639171558%_)
                      (_%__match175340175341%_
                       _%e170607171476%_
                       _%hd170608171479%_
                       _%tl170609171481%_
                       _%e170610171484%_
                       _%hd170611171487%_
                       _%tl170612171489%_
                       _%e170613171492%_
                       _%hd170614171495%_
                       _%tl170615171497%_
                       _%e170616171500%_
                       _%hd170617171503%_
                       _%tl170618171505%_
                       _%e170619171508%_
                       _%hd170620171511%_
                       _%tl170621171513%_
                       _%e170622171516%_
                       _%hd170623171519%_
                       _%tl170624171521%_
                       _%e170625171524%_
                       _%hd170626171527%_
                       _%tl170627171529%_
                       _%e170628171532%_
                       _%hd170629171535%_
                       _%tl170630171537%_
                       _%e170631171540%_
                       _%hd170632171543%_
                       _%tl170633171545%_
                       _%e170634171548%_
                       _%hd170635171551%_
                       _%tl170636171553%_))))
              (_%__match175340175341%_
               _%e170607171476%_
               _%hd170608171479%_
               _%tl170609171481%_
               _%e170610171484%_
               _%hd170611171487%_
               _%tl170612171489%_
               _%e170613171492%_
               _%hd170614171495%_
               _%tl170615171497%_
               _%e170616171500%_
               _%hd170617171503%_
               _%tl170618171505%_
               _%e170619171508%_
               _%hd170620171511%_
               _%tl170621171513%_
               _%e170622171516%_
               _%hd170623171519%_
               _%tl170624171521%_
               _%e170625171524%_
               _%hd170626171527%_
               _%tl170627171529%_
               _%e170628171532%_
               _%hd170629171535%_
               _%tl170630171537%_
               _%e170631171540%_
               _%hd170632171543%_
               _%tl170633171545%_
               _%e170634171548%_
               _%hd170635171551%_
               _%tl170636171553%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175544175545%_
                                                   _%e170607171476%_
                                                   _%hd170608171479%_
                                                   _%tl170609171481%_
                                                   _%e170610171484%_
                                                   _%hd170611171487%_
                                                   _%tl170612171489%_
                                                   _%e170613171492%_
                                                   _%hd170614171495%_
                                                   _%tl170615171497%_
                                                   _%e170616171500%_
                                                   _%hd170617171503%_
                                                   _%tl170618171505%_
                                                   _%e170619171508%_
                                                   _%hd170620171511%_
                                                   _%tl170621171513%_
                                                   _%e170622171516%_
                                                   _%hd170623171519%_
                                                   _%tl170624171521%_
                                                   _%e170625171524%_
                                                   _%hd170626171527%_
                                                   _%tl170627171529%_
                                                   _%e170628171532%_
                                                   _%hd170629171535%_
                                                   _%tl170630171537%_))))
                                          (_%__match175544175545%_
                                           _%e170607171476%_
                                           _%hd170608171479%_
                                           _%tl170609171481%_
                                           _%e170610171484%_
                                           _%hd170611171487%_
                                           _%tl170612171489%_
                                           _%e170613171492%_
                                           _%hd170614171495%_
                                           _%tl170615171497%_
                                           _%e170616171500%_
                                           _%hd170617171503%_
                                           _%tl170618171505%_
                                           _%e170619171508%_
                                           _%hd170620171511%_
                                           _%tl170621171513%_
                                           _%e170622171516%_
                                           _%hd170623171519%_
                                           _%tl170624171521%_
                                           _%e170625171524%_
                                           _%hd170626171527%_
                                           _%tl170627171529%_
                                           _%e170628171532%_
                                           _%hd170629171535%_
                                           _%tl170630171537%_))
                                      (_%__match175220175221%_
                                       _%e170607171476%_
                                       _%hd170608171479%_
                                       _%tl170609171481%_
                                       _%e170610171484%_
                                       _%hd170611171487%_
                                       _%tl170612171489%_
                                       _%e170613171492%_
                                       _%hd170614171495%_
                                       _%tl170615171497%_
                                       _%e170616171500%_
                                       _%hd170617171503%_
                                       _%tl170618171505%_
                                       _%e170619171508%_
                                       _%hd170620171511%_
                                       _%tl170621171513%_
                                       _%e170622171516%_
                                       _%hd170623171519%_
                                       _%tl170624171521%_
                                       _%e170625171524%_
                                       _%hd170626171527%_
                                       _%tl170627171529%_
                                       _%e170628171532%_
                                       _%hd170629171535%_
                                       _%tl170630171537%_
                                       _%e170631171540%_
                                       _%hd170632171543%_
                                       _%tl170633171545%_))
                                  (_%__match175544175545%_
                                   _%e170607171476%_
                                   _%hd170608171479%_
                                   _%tl170609171481%_
                                   _%e170610171484%_
                                   _%hd170611171487%_
                                   _%tl170612171489%_
                                   _%e170613171492%_
                                   _%hd170614171495%_
                                   _%tl170615171497%_
                                   _%e170616171500%_
                                   _%hd170617171503%_
                                   _%tl170618171505%_
                                   _%e170619171508%_
                                   _%hd170620171511%_
                                   _%tl170621171513%_
                                   _%e170622171516%_
                                   _%hd170623171519%_
                                   _%tl170624171521%_
                                   _%e170625171524%_
                                   _%hd170626171527%_
                                   _%tl170627171529%_
                                   _%e170628171532%_
                                   _%hd170629171535%_
                                   _%tl170630171537%_))))
                          (_%__match175544175545%_
                           _%e170607171476%_
                           _%hd170608171479%_
                           _%tl170609171481%_
                           _%e170610171484%_
                           _%hd170611171487%_
                           _%tl170612171489%_
                           _%e170613171492%_
                           _%hd170614171495%_
                           _%tl170615171497%_
                           _%e170616171500%_
                           _%hd170617171503%_
                           _%tl170618171505%_
                           _%e170619171508%_
                           _%hd170620171511%_
                           _%tl170621171513%_
                           _%e170622171516%_
                           _%hd170623171519%_
                           _%tl170624171521%_
                           _%e170625171524%_
                           _%hd170626171527%_
                           _%tl170627171529%_
                           _%e170628171532%_
                           _%hd170629171535%_
                           _%tl170630171537%_))))
                  (_%__match175482175483%_
                   _%e170607171476%_
                   _%hd170608171479%_
                   _%tl170609171481%_
                   _%e170610171484%_
                   _%hd170611171487%_
                   _%tl170612171489%_
                   _%e170613171492%_
                   _%hd170614171495%_
                   _%tl170615171497%_
                   _%e170616171500%_
                   _%hd170617171503%_
                   _%tl170618171505%_
                   _%e170619171508%_
                   _%hd170620171511%_
                   _%tl170621171513%_
                   _%e170622171516%_
                   _%hd170623171519%_
                   _%tl170624171521%_
                   _%e170625171524%_
                   _%hd170626171527%_
                   _%tl170627171529%_))
              (_%__kont175065175066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont175065175066%_))
                                          (_%__kont175065175066%_))
                                      (_%__kont175065175066%_))))
                              (_%__kont175065175066%_))))
                      (_%__kont175065175066%_))
                  (_%__kont175065175066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175065175066%_))
                                              (_%__kont175065175066%_))
                                          (_%__kont175065175066%_))))
                                  (_%__kont175065175066%_))))
                          (_%__kont175065175066%_))))
                  (_%__kont175065175066%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169531%_ _%stx169532%_)
        (letrec ((_%force-e169534%_
                  (lambda (_%target170590%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170590%_ '()))
                                      '()))))))
          (let* ((_%__stx175549175550%_ _%stx169532%_)
                 (_%g169542169764%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175549175550%_)))))
            (let ((_%__kont175551175552%_
                   (lambda (_%L170536%_ _%L170537%_ _%L170538%_ _%L170539%_)
                     (let ((_%$method170584%_
                            (let ((__tmp176180
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169531%_ 'methods)))
                                  (__tmp176179
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170537%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176180 __tmp176179)))
                           (_%args170585%_
                            (map (lambda (_%g170572170574%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169531%_
                                      _%g170572170574%_)))
                                 (let ((__tmp176181
                                        (lambda (_%g170576170579%_
                                                 _%g170577170581%_)
                                          (cons _%g170576170579%_
                                                _%g170577170581%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176181 '() _%L170536%_)))))
                       (let ((__tmp176182
                              (cons '%#call
                                    (cons (_%force-e169534%_ _%$method170584%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169531%_
                                                               'receiver))
                                                            '()))
                                                _%args170585%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176182 _%stx169532%_)))))
                  (_%__kont175555175556%_
                   (lambda (_%L170368%_
                            _%L170369%_
                            _%L170370%_
                            _%L170371%_
                            _%L170372%_)
                     (let ((_%$method170424%_
                            (let ((__tmp176184
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169531%_ 'methods)))
                                  (__tmp176183
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170369%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176184 __tmp176183)))
                           (_%args170425%_
                            (map (lambda (_%g170412170414%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169531%_
                                      _%g170412170414%_)))
                                 (let ((__tmp176185
                                        (lambda (_%g170416170419%_
                                                 _%g170417170421%_)
                                          (cons _%g170416170419%_
                                                _%g170417170421%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176185 '() _%L170368%_)))))
                       (let ((__tmp176186
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169534%_
                                                 _%$method170424%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169531%_ 'receiver))
                          '()))
              _%args170425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176186 _%stx169532%_)))))
                  (_%__kont175559175560%_
                   (lambda (_%L170199%_ _%L170200%_ _%L170201%_)
                     (let* ((_%$field170233%_
                             (let ((__tmp176188
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169531%_ 'slots)))
                                   (__tmp176187
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170199%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176188 __tmp176187)))
                            (__tmp176189
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169531%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170233%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169531%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176189 _%stx169532%_))))
                  (_%__kont175561175562%_
                   (lambda (_%L170073%_ _%L170074%_ _%L170075%_ _%L170076%_)
                     (let ((_%$field170111%_
                            (let ((__tmp176191
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169531%_ 'slots)))
                                  (__tmp176190
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170074%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176191 __tmp176190)))
                           (_%expr170112%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169531%_ _%L170073%_))))
                       (let ((__tmp176192
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169531%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field170111%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169531%_ 'receiver))
                          '()))
              (cons _%expr170112%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176192 _%stx169532%_)))))
                  (_%__kont175563175564%_
                   (lambda (_%L169945%_ _%L169946%_)
                     (let* ((_%accessor169968%_
                             (let ((__tmp176193
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169946%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176193)))
                            (_%klass169970%_
                             (let ((__tmp176194
                                    (##structure-ref
                                     _%accessor169968%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169532%_
                                __tmp176194)))
                            (_%slot169972%_
                             (##structure-ref
                              _%accessor169968%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor169968%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169970%_
                                      _%slot169972%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169970%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169532%_
                           (let* ((_%$field169978%_
                                   (let ((__tmp176195
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176195 _%slot169972%_)))
                                  (__tmp176196
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169531%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169531%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176196
                              _%stx169532%_))))))
                  (_%__kont175565175566%_
                   (lambda (_%L169840%_ _%L169841%_ _%L169842%_)
                     (let* ((_%mutator169870%_
                             (let ((__tmp176197
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169842%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176197)))
                            (_%klass169872%_
                             (let ((__tmp176198
                                    (##structure-ref
                                     _%mutator169870%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169532%_
                                __tmp176198)))
                            (_%slot169874%_
                             (##structure-ref
                              _%mutator169870%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr169876%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169531%_ _%L169840%_))))
                       (if (if (##structure-ref
                                _%mutator169870%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169872%_
                                      _%slot169874%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169872%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176199
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L169842%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L169841%_
                                                                '()))
                                                    (cons _%expr169876%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176199 _%stx169532%_))
                           (let* ((_%$field169882%_
                                   (let ((__tmp176200
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176200 _%slot169874%_)))
                                  (__tmp176201
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169531%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169531%_ 'receiver))
                               '()))
                   (cons _%expr169876%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176201
                              _%stx169532%_))))))
                  (_%__kont175567175568%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169531%_ _%stx169532%_)))))
              (let* ((_%__match176048176049%_
                      (lambda (_%e169736169776%_
                               _%hd169737169779%_
                               _%tl169738169781%_
                               _%e169739169784%_
                               _%hd169740169787%_
                               _%tl169741169789%_
                               _%e169742169792%_
                               _%hd169743169795%_
                               _%tl169744169797%_
                               _%e169745169800%_
                               _%hd169746169803%_
                               _%tl169747169805%_
                               _%e169748169808%_
                               _%hd169749169811%_
                               _%tl169750169813%_
                               _%e169751169816%_
                               _%hd169752169819%_
                               _%tl169753169821%_
                               _%e169754169824%_
                               _%hd169755169827%_
                               _%tl169756169829%_
                               _%e169757169832%_
                               _%hd169758169835%_
                               _%tl169759169837%_)
                        (let ((_%L169840%_ _%hd169758169835%_)
                              (_%L169841%_ _%hd169755169827%_)
                              (_%L169842%_ _%hd169746169803%_))
                          (if (and (let ((__tmp176202
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169841%_
                                      __tmp176202))
                                   (let ((__tmp176203
                                          (let ((__tmp176204
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169842%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176204))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176203
                                      'gxc#!mutator::t)))
                              (_%__kont175565175566%_
                               _%L169840%_
                               _%L169841%_
                               _%L169842%_)
                              (_%__kont175567175568%_)))))
                     (_%__match176046176047%_
                      (lambda (_%e169736169776%_
                               _%hd169737169779%_
                               _%tl169738169781%_
                               _%e169739169784%_
                               _%hd169740169787%_
                               _%tl169741169789%_
                               _%e169742169792%_
                               _%hd169743169795%_
                               _%tl169744169797%_
                               _%e169745169800%_
                               _%hd169746169803%_
                               _%tl169747169805%_
                               _%e169748169808%_
                               _%hd169749169811%_
                               _%tl169750169813%_
                               _%e169751169816%_
                               _%hd169752169819%_
                               _%tl169753169821%_
                               _%e169754169824%_
                               _%hd169755169827%_
                               _%tl169756169829%_
                               _%e169757169832%_
                               _%hd169758169835%_
                               _%tl169759169837%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169759169837%_))
                            (_%__match176048176049%_
                             _%e169736169776%_
                             _%hd169737169779%_
                             _%tl169738169781%_
                             _%e169739169784%_
                             _%hd169740169787%_
                             _%tl169741169789%_
                             _%e169742169792%_
                             _%hd169743169795%_
                             _%tl169744169797%_
                             _%e169745169800%_
                             _%hd169746169803%_
                             _%tl169747169805%_
                             _%e169748169808%_
                             _%hd169749169811%_
                             _%tl169750169813%_
                             _%e169751169816%_
                             _%hd169752169819%_
                             _%tl169753169821%_
                             _%e169754169824%_
                             _%hd169755169827%_
                             _%tl169756169829%_
                             _%e169757169832%_
                             _%hd169758169835%_
                             _%tl169759169837%_)
                            (_%__kont175567175568%_))))
                     (_%__match176040176041%_
                      (lambda (_%e169736169776%_
                               _%hd169737169779%_
                               _%tl169738169781%_
                               _%e169739169784%_
                               _%hd169740169787%_
                               _%tl169741169789%_
                               _%e169742169792%_
                               _%hd169743169795%_
                               _%tl169744169797%_
                               _%e169745169800%_
                               _%hd169746169803%_
                               _%tl169747169805%_
                               _%e169748169808%_
                               _%hd169749169811%_
                               _%tl169750169813%_
                               _%e169751169816%_
                               _%hd169752169819%_
                               _%tl169753169821%_
                               _%e169754169824%_
                               _%hd169755169827%_
                               _%tl169756169829%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169750169813%_))
                            (let ((_%e169757169832%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169750169813%_))))
                              (let ((_%tl169759169837%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169757169832%_)))
                                    (_%hd169758169835%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169757169832%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169759169837%_))
                                    (_%__match176048176049%_
                                     _%e169736169776%_
                                     _%hd169737169779%_
                                     _%tl169738169781%_
                                     _%e169739169784%_
                                     _%hd169740169787%_
                                     _%tl169741169789%_
                                     _%e169742169792%_
                                     _%hd169743169795%_
                                     _%tl169744169797%_
                                     _%e169745169800%_
                                     _%hd169746169803%_
                                     _%tl169747169805%_
                                     _%e169748169808%_
                                     _%hd169749169811%_
                                     _%tl169750169813%_
                                     _%e169751169816%_
                                     _%hd169752169819%_
                                     _%tl169753169821%_
                                     _%e169754169824%_
                                     _%hd169755169827%_
                                     _%tl169756169829%_
                                     _%e169757169832%_
                                     _%hd169758169835%_
                                     _%tl169759169837%_)
                                    (_%__kont175567175568%_))))
                            (_%__kont175567175568%_))))
                     (_%__match175986175987%_
                      (lambda (_%e169712169889%_
                               _%hd169713169892%_
                               _%tl169714169894%_
                               _%e169715169897%_
                               _%hd169716169900%_
                               _%tl169717169902%_
                               _%e169718169905%_
                               _%hd169719169908%_
                               _%tl169720169910%_
                               _%e169721169913%_
                               _%hd169722169916%_
                               _%tl169723169918%_
                               _%e169724169921%_
                               _%hd169725169924%_
                               _%tl169726169926%_
                               _%e169727169929%_
                               _%hd169728169932%_
                               _%tl169729169934%_
                               _%e169730169937%_
                               _%hd169731169940%_
                               _%tl169732169942%_)
                        (let ((_%L169945%_ _%hd169731169940%_)
                              (_%L169946%_ _%hd169722169916%_))
                          (if (and (let ((__tmp176205
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169945%_
                                      __tmp176205))
                                   (let ((__tmp176206
                                          (let ((__tmp176207
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169946%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176207))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176206
                                      'gxc#!accessor::t)))
                              (_%__kont175563175564%_ _%L169945%_ _%L169946%_)
                              (_%__kont175567175568%_)))))
                     (_%__match175984175985%_
                      (lambda (_%e169712169889%_
                               _%hd169713169892%_
                               _%tl169714169894%_
                               _%e169715169897%_
                               _%hd169716169900%_
                               _%tl169717169902%_
                               _%e169718169905%_
                               _%hd169719169908%_
                               _%tl169720169910%_
                               _%e169721169913%_
                               _%hd169722169916%_
                               _%tl169723169918%_
                               _%e169724169921%_
                               _%hd169725169924%_
                               _%tl169726169926%_
                               _%e169727169929%_
                               _%hd169728169932%_
                               _%tl169729169934%_
                               _%e169730169937%_
                               _%hd169731169940%_
                               _%tl169732169942%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169726169926%_))
                            (_%__match175986175987%_
                             _%e169712169889%_
                             _%hd169713169892%_
                             _%tl169714169894%_
                             _%e169715169897%_
                             _%hd169716169900%_
                             _%tl169717169902%_
                             _%e169718169905%_
                             _%hd169719169908%_
                             _%tl169720169910%_
                             _%e169721169913%_
                             _%hd169722169916%_
                             _%tl169723169918%_
                             _%e169724169921%_
                             _%hd169725169924%_
                             _%tl169726169926%_
                             _%e169727169929%_
                             _%hd169728169932%_
                             _%tl169729169934%_
                             _%e169730169937%_
                             _%hd169731169940%_
                             _%tl169732169942%_)
                            (_%__match176040176041%_
                             _%e169712169889%_
                             _%hd169713169892%_
                             _%tl169714169894%_
                             _%e169715169897%_
                             _%hd169716169900%_
                             _%tl169717169902%_
                             _%e169718169905%_
                             _%hd169719169908%_
                             _%tl169720169910%_
                             _%e169721169913%_
                             _%hd169722169916%_
                             _%tl169723169918%_
                             _%e169724169921%_
                             _%hd169725169924%_
                             _%tl169726169926%_
                             _%e169727169929%_
                             _%hd169728169932%_
                             _%tl169729169934%_
                             _%e169730169937%_
                             _%hd169731169940%_
                             _%tl169732169942%_))))
                     (_%__match175930175931%_
                      (lambda (_%e169677169985%_
                               _%hd169678169988%_
                               _%tl169679169990%_
                               _%e169680169993%_
                               _%hd169681169996%_
                               _%tl169682169998%_
                               _%e169683170001%_
                               _%hd169684170004%_
                               _%tl169685170006%_
                               _%e169686170009%_
                               _%hd169687170012%_
                               _%tl169688170014%_
                               _%e169689170017%_
                               _%hd169690170020%_
                               _%tl169691170022%_
                               _%e169692170025%_
                               _%hd169693170028%_
                               _%tl169694170030%_
                               _%e169695170033%_
                               _%hd169696170036%_
                               _%tl169697170038%_
                               _%e169698170041%_
                               _%hd169699170044%_
                               _%tl169700170046%_
                               _%e169701170049%_
                               _%hd169702170052%_
                               _%tl169703170054%_
                               _%e169704170057%_
                               _%hd169705170060%_
                               _%tl169706170062%_
                               _%e169707170065%_
                               _%hd169708170068%_
                               _%tl169709170070%_)
                        (let ((_%L170073%_ _%hd169708170068%_)
                              (_%L170074%_ _%hd169705170060%_)
                              (_%L170075%_ _%hd169696170036%_)
                              (_%L170076%_ _%hd169687170012%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170076%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170076%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176208
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170075%_
                                      __tmp176208)))
                              (_%__kont175561175562%_
                               _%L170073%_
                               _%L170074%_
                               _%L170075%_
                               _%L170076%_)
                              (_%__kont175567175568%_)))))
                     (_%__match175922175923%_
                      (lambda (_%e169677169985%_
                               _%hd169678169988%_
                               _%tl169679169990%_
                               _%e169680169993%_
                               _%hd169681169996%_
                               _%tl169682169998%_
                               _%e169683170001%_
                               _%hd169684170004%_
                               _%tl169685170006%_
                               _%e169686170009%_
                               _%hd169687170012%_
                               _%tl169688170014%_
                               _%e169689170017%_
                               _%hd169690170020%_
                               _%tl169691170022%_
                               _%e169692170025%_
                               _%hd169693170028%_
                               _%tl169694170030%_
                               _%e169695170033%_
                               _%hd169696170036%_
                               _%tl169697170038%_
                               _%e169698170041%_
                               _%hd169699170044%_
                               _%tl169700170046%_
                               _%e169701170049%_
                               _%hd169702170052%_
                               _%tl169703170054%_
                               _%e169704170057%_
                               _%hd169705170060%_
                               _%tl169706170062%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169700170046%_))
                            (let ((_%e169707170065%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169700170046%_))))
                              (let ((_%tl169709170070%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169707170065%_)))
                                    (_%hd169708170068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169707170065%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169709170070%_))
                                    (_%__match175930175931%_
                                     _%e169677169985%_
                                     _%hd169678169988%_
                                     _%tl169679169990%_
                                     _%e169680169993%_
                                     _%hd169681169996%_
                                     _%tl169682169998%_
                                     _%e169683170001%_
                                     _%hd169684170004%_
                                     _%tl169685170006%_
                                     _%e169686170009%_
                                     _%hd169687170012%_
                                     _%tl169688170014%_
                                     _%e169689170017%_
                                     _%hd169690170020%_
                                     _%tl169691170022%_
                                     _%e169692170025%_
                                     _%hd169693170028%_
                                     _%tl169694170030%_
                                     _%e169695170033%_
                                     _%hd169696170036%_
                                     _%tl169697170038%_
                                     _%e169698170041%_
                                     _%hd169699170044%_
                                     _%tl169700170046%_
                                     _%e169701170049%_
                                     _%hd169702170052%_
                                     _%tl169703170054%_
                                     _%e169704170057%_
                                     _%hd169705170060%_
                                     _%tl169706170062%_
                                     _%e169707170065%_
                                     _%hd169708170068%_
                                     _%tl169709170070%_)
                                    (_%__kont175567175568%_))))
                            (_%__match176046176047%_
                             _%e169677169985%_
                             _%hd169678169988%_
                             _%tl169679169990%_
                             _%e169680169993%_
                             _%hd169681169996%_
                             _%tl169682169998%_
                             _%e169683170001%_
                             _%hd169684170004%_
                             _%tl169685170006%_
                             _%e169686170009%_
                             _%hd169687170012%_
                             _%tl169688170014%_
                             _%e169689170017%_
                             _%hd169690170020%_
                             _%tl169691170022%_
                             _%e169692170025%_
                             _%hd169693170028%_
                             _%tl169694170030%_
                             _%e169695170033%_
                             _%hd169696170036%_
                             _%tl169697170038%_
                             _%e169698170041%_
                             _%hd169699170044%_
                             _%tl169700170046%_))))
                     (_%__match175844175845%_
                      (lambda (_%e169643170119%_
                               _%hd169644170122%_
                               _%tl169645170124%_
                               _%e169646170127%_
                               _%hd169647170130%_
                               _%tl169648170132%_
                               _%e169649170135%_
                               _%hd169650170138%_
                               _%tl169651170140%_
                               _%e169652170143%_
                               _%hd169653170146%_
                               _%tl169654170148%_
                               _%e169655170151%_
                               _%hd169656170154%_
                               _%tl169657170156%_
                               _%e169658170159%_
                               _%hd169659170162%_
                               _%tl169660170164%_
                               _%e169661170167%_
                               _%hd169662170170%_
                               _%tl169663170172%_
                               _%e169664170175%_
                               _%hd169665170178%_
                               _%tl169666170180%_
                               _%e169667170183%_
                               _%hd169668170186%_
                               _%tl169669170188%_
                               _%e169670170191%_
                               _%hd169671170194%_
                               _%tl169672170196%_)
                        (let ((_%L170199%_ _%hd169671170194%_)
                              (_%L170200%_ _%hd169662170170%_)
                              (_%L170201%_ _%hd169653170146%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170201%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170201%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176209
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169531%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170200%_
                                      __tmp176209)))
                              (_%__kont175559175560%_
                               _%L170199%_
                               _%L170200%_
                               _%L170201%_)
                              (_%__match176048176049%_
                               _%e169643170119%_
                               _%hd169644170122%_
                               _%tl169645170124%_
                               _%e169646170127%_
                               _%hd169647170130%_
                               _%tl169648170132%_
                               _%e169649170135%_
                               _%hd169650170138%_
                               _%tl169651170140%_
                               _%e169652170143%_
                               _%hd169653170146%_
                               _%tl169654170148%_
                               _%e169655170151%_
                               _%hd169656170154%_
                               _%tl169657170156%_
                               _%e169658170159%_
                               _%hd169659170162%_
                               _%tl169660170164%_
                               _%e169661170167%_
                               _%hd169662170170%_
                               _%tl169663170172%_
                               _%e169664170175%_
                               _%hd169665170178%_
                               _%tl169666170180%_)))))
                     (_%__match175842175843%_
                      (lambda (_%e169643170119%_
                               _%hd169644170122%_
                               _%tl169645170124%_
                               _%e169646170127%_
                               _%hd169647170130%_
                               _%tl169648170132%_
                               _%e169649170135%_
                               _%hd169650170138%_
                               _%tl169651170140%_
                               _%e169652170143%_
                               _%hd169653170146%_
                               _%tl169654170148%_
                               _%e169655170151%_
                               _%hd169656170154%_
                               _%tl169657170156%_
                               _%e169658170159%_
                               _%hd169659170162%_
                               _%tl169660170164%_
                               _%e169661170167%_
                               _%hd169662170170%_
                               _%tl169663170172%_
                               _%e169664170175%_
                               _%hd169665170178%_
                               _%tl169666170180%_
                               _%e169667170183%_
                               _%hd169668170186%_
                               _%tl169669170188%_
                               _%e169670170191%_
                               _%hd169671170194%_
                               _%tl169672170196%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169666170180%_))
                            (_%__match175844175845%_
                             _%e169643170119%_
                             _%hd169644170122%_
                             _%tl169645170124%_
                             _%e169646170127%_
                             _%hd169647170130%_
                             _%tl169648170132%_
                             _%e169649170135%_
                             _%hd169650170138%_
                             _%tl169651170140%_
                             _%e169652170143%_
                             _%hd169653170146%_
                             _%tl169654170148%_
                             _%e169655170151%_
                             _%hd169656170154%_
                             _%tl169657170156%_
                             _%e169658170159%_
                             _%hd169659170162%_
                             _%tl169660170164%_
                             _%e169661170167%_
                             _%hd169662170170%_
                             _%tl169663170172%_
                             _%e169664170175%_
                             _%hd169665170178%_
                             _%tl169666170180%_
                             _%e169667170183%_
                             _%hd169668170186%_
                             _%tl169669170188%_
                             _%e169670170191%_
                             _%hd169671170194%_
                             _%tl169672170196%_)
                            (_%__match175922175923%_
                             _%e169643170119%_
                             _%hd169644170122%_
                             _%tl169645170124%_
                             _%e169646170127%_
                             _%hd169647170130%_
                             _%tl169648170132%_
                             _%e169649170135%_
                             _%hd169650170138%_
                             _%tl169651170140%_
                             _%e169652170143%_
                             _%hd169653170146%_
                             _%tl169654170148%_
                             _%e169655170151%_
                             _%hd169656170154%_
                             _%tl169657170156%_
                             _%e169658170159%_
                             _%hd169659170162%_
                             _%tl169660170164%_
                             _%e169661170167%_
                             _%hd169662170170%_
                             _%tl169663170172%_
                             _%e169664170175%_
                             _%hd169665170178%_
                             _%tl169666170180%_
                             _%e169667170183%_
                             _%hd169668170186%_
                             _%tl169669170188%_
                             _%e169670170191%_
                             _%hd169671170194%_
                             _%tl169672170196%_))))
                     (_%__match175832175833%_
                      (lambda (_%e169643170119%_
                               _%hd169644170122%_
                               _%tl169645170124%_
                               _%e169646170127%_
                               _%hd169647170130%_
                               _%tl169648170132%_
                               _%e169649170135%_
                               _%hd169650170138%_
                               _%tl169651170140%_
                               _%e169652170143%_
                               _%hd169653170146%_
                               _%tl169654170148%_
                               _%e169655170151%_
                               _%hd169656170154%_
                               _%tl169657170156%_
                               _%e169658170159%_
                               _%hd169659170162%_
                               _%tl169660170164%_
                               _%e169661170167%_
                               _%hd169662170170%_
                               _%tl169663170172%_
                               _%e169664170175%_
                               _%hd169665170178%_
                               _%tl169666170180%_
                               _%e169667170183%_
                               _%hd169668170186%_
                               _%tl169669170188%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd169668170186%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169669170188%_))
                                (let ((_%e169670170191%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169669170188%_))))
                                  (let ((_%tl169672170196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169670170191%_)))
                                        (_%hd169671170194%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169670170191%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169672170196%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169666170180%_))
                                            (_%__match175844175845%_
                                             _%e169643170119%_
                                             _%hd169644170122%_
                                             _%tl169645170124%_
                                             _%e169646170127%_
                                             _%hd169647170130%_
                                             _%tl169648170132%_
                                             _%e169649170135%_
                                             _%hd169650170138%_
                                             _%tl169651170140%_
                                             _%e169652170143%_
                                             _%hd169653170146%_
                                             _%tl169654170148%_
                                             _%e169655170151%_
                                             _%hd169656170154%_
                                             _%tl169657170156%_
                                             _%e169658170159%_
                                             _%hd169659170162%_
                                             _%tl169660170164%_
                                             _%e169661170167%_
                                             _%hd169662170170%_
                                             _%tl169663170172%_
                                             _%e169664170175%_
                                             _%hd169665170178%_
                                             _%tl169666170180%_
                                             _%e169667170183%_
                                             _%hd169668170186%_
                                             _%tl169669170188%_
                                             _%e169670170191%_
                                             _%hd169671170194%_
                                             _%tl169672170196%_)
                                            (_%__match175922175923%_
                                             _%e169643170119%_
                                             _%hd169644170122%_
                                             _%tl169645170124%_
                                             _%e169646170127%_
                                             _%hd169647170130%_
                                             _%tl169648170132%_
                                             _%e169649170135%_
                                             _%hd169650170138%_
                                             _%tl169651170140%_
                                             _%e169652170143%_
                                             _%hd169653170146%_
                                             _%tl169654170148%_
                                             _%e169655170151%_
                                             _%hd169656170154%_
                                             _%tl169657170156%_
                                             _%e169658170159%_
                                             _%hd169659170162%_
                                             _%tl169660170164%_
                                             _%e169661170167%_
                                             _%hd169662170170%_
                                             _%tl169663170172%_
                                             _%e169664170175%_
                                             _%hd169665170178%_
                                             _%tl169666170180%_
                                             _%e169667170183%_
                                             _%hd169668170186%_
                                             _%tl169669170188%_
                                             _%e169670170191%_
                                             _%hd169671170194%_
                                             _%tl169672170196%_))
                                        (_%__match176046176047%_
                                         _%e169643170119%_
                                         _%hd169644170122%_
                                         _%tl169645170124%_
                                         _%e169646170127%_
                                         _%hd169647170130%_
                                         _%tl169648170132%_
                                         _%e169649170135%_
                                         _%hd169650170138%_
                                         _%tl169651170140%_
                                         _%e169652170143%_
                                         _%hd169653170146%_
                                         _%tl169654170148%_
                                         _%e169655170151%_
                                         _%hd169656170154%_
                                         _%tl169657170156%_
                                         _%e169658170159%_
                                         _%hd169659170162%_
                                         _%tl169660170164%_
                                         _%e169661170167%_
                                         _%hd169662170170%_
                                         _%tl169663170172%_
                                         _%e169664170175%_
                                         _%hd169665170178%_
                                         _%tl169666170180%_))))
                                (_%__match176046176047%_
                                 _%e169643170119%_
                                 _%hd169644170122%_
                                 _%tl169645170124%_
                                 _%e169646170127%_
                                 _%hd169647170130%_
                                 _%tl169648170132%_
                                 _%e169649170135%_
                                 _%hd169650170138%_
                                 _%tl169651170140%_
                                 _%e169652170143%_
                                 _%hd169653170146%_
                                 _%tl169654170148%_
                                 _%e169655170151%_
                                 _%hd169656170154%_
                                 _%tl169657170156%_
                                 _%e169658170159%_
                                 _%hd169659170162%_
                                 _%tl169660170164%_
                                 _%e169661170167%_
                                 _%hd169662170170%_
                                 _%tl169663170172%_
                                 _%e169664170175%_
                                 _%hd169665170178%_
                                 _%tl169666170180%_))
                            (_%__match176046176047%_
                             _%e169643170119%_
                             _%hd169644170122%_
                             _%tl169645170124%_
                             _%e169646170127%_
                             _%hd169647170130%_
                             _%tl169648170132%_
                             _%e169649170135%_
                             _%hd169650170138%_
                             _%tl169651170140%_
                             _%e169652170143%_
                             _%hd169653170146%_
                             _%tl169654170148%_
                             _%e169655170151%_
                             _%hd169656170154%_
                             _%tl169657170156%_
                             _%e169658170159%_
                             _%hd169659170162%_
                             _%tl169660170164%_
                             _%e169661170167%_
                             _%hd169662170170%_
                             _%tl169663170172%_
                             _%e169664170175%_
                             _%hd169665170178%_
                             _%tl169666170180%_))))
                     (_%__match175764175765%_
                      (lambda (_%e169592170240%_
                               _%hd169593170243%_
                               _%tl169594170245%_
                               _%e169595170248%_
                               _%hd169596170251%_
                               _%tl169597170253%_
                               _%e169598170256%_
                               _%hd169599170259%_
                               _%tl169600170261%_
                               _%e169601170264%_
                               _%hd169602170267%_
                               _%tl169603170269%_
                               _%e169604170272%_
                               _%hd169605170275%_
                               _%tl169606170277%_
                               _%e169607170280%_
                               _%hd169608170283%_
                               _%tl169609170285%_
                               _%e169610170288%_
                               _%hd169611170291%_
                               _%tl169612170293%_
                               _%e169613170296%_
                               _%hd169614170299%_
                               _%tl169615170301%_
                               _%e169616170304%_
                               _%hd169617170307%_
                               _%tl169618170309%_
                               _%e169619170312%_
                               _%hd169620170315%_
                               _%tl169621170317%_
                               _%e169622170320%_
                               _%hd169623170323%_
                               _%tl169624170325%_
                               _%e169625170328%_
                               _%hd169626170331%_
                               _%tl169627170333%_
                               _%e169628170336%_
                               _%hd169629170339%_
                               _%tl169630170341%_
                               _%__splice175557175558%_
                               _%target169631170344%_
                               _%tl169633170346%_)
                        (letrec ((_%loop169634170349%_
                                  (lambda (_%hd169632170352%_
                                           _%args169638170354%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169632170352%_))
                                        (let ((_%e169635170357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169632170352%_))))
                                          (let ((_%lp-tl169637170362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169635170357%_)))
                                                (_%lp-hd169636170360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169635170357%_))))
                                            (_%loop169634170349%_
                                             _%lp-tl169637170362%_
                                             (cons _%lp-hd169636170360%_
                                                   _%args169638170354%_))))
                                        (let ((_%args169639170365%_
                                               (reverse _%args169638170354%_)))
                                          (let ((_%L170368%_
                                                 _%args169639170365%_)
                                                (_%L170369%_
                                                 _%hd169629170339%_)
                                                (_%L170370%_
                                                 _%hd169620170315%_)
                                                (_%L170371%_
                                                 _%hd169611170291%_)
                                                (_%L170372%_
                                                 _%hd169602170267%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170372%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170371%_
                                                        'call-method))
                                                     (let ((__tmp176210
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169531%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170370%_
                                                        __tmp176210)))
                                                (_%__kont175555175556%_
                                                 _%L170368%_
                                                 _%L170369%_
                                                 _%L170370%_
                                                 _%L170371%_
                                                 _%L170372%_)
                                                (_%__kont175567175568%_))))))))
                          (_%loop169634170349%_ _%target169631170344%_ '()))))
                     (_%__match175722175723%_
                      (lambda (_%e169592170240%_
                               _%hd169593170243%_
                               _%tl169594170245%_
                               _%e169595170248%_
                               _%hd169596170251%_
                               _%tl169597170253%_
                               _%e169598170256%_
                               _%hd169599170259%_
                               _%tl169600170261%_
                               _%e169601170264%_
                               _%hd169602170267%_
                               _%tl169603170269%_
                               _%e169604170272%_
                               _%hd169605170275%_
                               _%tl169606170277%_
                               _%e169607170280%_
                               _%hd169608170283%_
                               _%tl169609170285%_
                               _%e169610170288%_
                               _%hd169611170291%_
                               _%tl169612170293%_
                               _%e169613170296%_
                               _%hd169614170299%_
                               _%tl169615170301%_
                               _%e169616170304%_
                               _%hd169617170307%_
                               _%tl169618170309%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd169617170307%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169618170309%_))
                                (let ((_%e169619170312%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169618170309%_))))
                                  (let ((_%tl169621170317%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169619170312%_)))
                                        (_%hd169620170315%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169619170312%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169621170317%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169615170301%_))
                                            (let ((_%e169622170320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169615170301%_))))
                                              (let ((_%tl169624170325%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169622170320%_)))
                                                    (_%hd169623170323%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169622170320%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169623170323%_))
                                                    (let ((_%e169625170328%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169623170323%_))))
                                                      (let ((_%tl169627170333%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169625170328%_)))
                    (_%hd169626170331%_
                     (let () (declare (not safe)) (##car _%e169625170328%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169626170331%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd169626170331%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169627170333%_))
                            (let ((_%e169628170336%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169627170333%_))))
                              (let ((_%tl169630170341%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169628170336%_)))
                                    (_%hd169629170339%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169628170336%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169630170341%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169624170325%_))
                                        (let ((_%__splice175557175558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl169624170325%_
                                                  '0))))
                                          (let ((_%tl169633170346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175557175558%_
                                                    '1)))
                                                (_%target169631170344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175557175558%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169633170346%_))
                                                (_%__match175764175765%_
                                                 _%e169592170240%_
                                                 _%hd169593170243%_
                                                 _%tl169594170245%_
                                                 _%e169595170248%_
                                                 _%hd169596170251%_
                                                 _%tl169597170253%_
                                                 _%e169598170256%_
                                                 _%hd169599170259%_
                                                 _%tl169600170261%_
                                                 _%e169601170264%_
                                                 _%hd169602170267%_
                                                 _%tl169603170269%_
                                                 _%e169604170272%_
                                                 _%hd169605170275%_
                                                 _%tl169606170277%_
                                                 _%e169607170280%_
                                                 _%hd169608170283%_
                                                 _%tl169609170285%_
                                                 _%e169610170288%_
                                                 _%hd169611170291%_
                                                 _%tl169612170293%_
                                                 _%e169613170296%_
                                                 _%hd169614170299%_
                                                 _%tl169615170301%_
                                                 _%e169616170304%_
                                                 _%hd169617170307%_
                                                 _%tl169618170309%_
                                                 _%e169619170312%_
                                                 _%hd169620170315%_
                                                 _%tl169621170317%_
                                                 _%e169622170320%_
                                                 _%hd169623170323%_
                                                 _%tl169624170325%_
                                                 _%e169625170328%_
                                                 _%hd169626170331%_
                                                 _%tl169627170333%_
                                                 _%e169628170336%_
                                                 _%hd169629170339%_
                                                 _%tl169630170341%_
                                                 _%__splice175557175558%_
                                                 _%target169631170344%_
                                                 _%tl169633170346%_)
                                                (_%__kont175567175568%_))))
                                        (_%__kont175567175568%_))
                                    (_%__kont175567175568%_))))
                            (_%__kont175567175568%_))
                        (_%__kont175567175568%_))
                    (_%__kont175567175568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175567175568%_))))
                                            (_%__match176046176047%_
                                             _%e169592170240%_
                                             _%hd169593170243%_
                                             _%tl169594170245%_
                                             _%e169595170248%_
                                             _%hd169596170251%_
                                             _%tl169597170253%_
                                             _%e169598170256%_
                                             _%hd169599170259%_
                                             _%tl169600170261%_
                                             _%e169601170264%_
                                             _%hd169602170267%_
                                             _%tl169603170269%_
                                             _%e169604170272%_
                                             _%hd169605170275%_
                                             _%tl169606170277%_
                                             _%e169607170280%_
                                             _%hd169608170283%_
                                             _%tl169609170285%_
                                             _%e169610170288%_
                                             _%hd169611170291%_
                                             _%tl169612170293%_
                                             _%e169613170296%_
                                             _%hd169614170299%_
                                             _%tl169615170301%_))
                                        (_%__match176046176047%_
                                         _%e169592170240%_
                                         _%hd169593170243%_
                                         _%tl169594170245%_
                                         _%e169595170248%_
                                         _%hd169596170251%_
                                         _%tl169597170253%_
                                         _%e169598170256%_
                                         _%hd169599170259%_
                                         _%tl169600170261%_
                                         _%e169601170264%_
                                         _%hd169602170267%_
                                         _%tl169603170269%_
                                         _%e169604170272%_
                                         _%hd169605170275%_
                                         _%tl169606170277%_
                                         _%e169607170280%_
                                         _%hd169608170283%_
                                         _%tl169609170285%_
                                         _%e169610170288%_
                                         _%hd169611170291%_
                                         _%tl169612170293%_
                                         _%e169613170296%_
                                         _%hd169614170299%_
                                         _%tl169615170301%_))))
                                (_%__match176046176047%_
                                 _%e169592170240%_
                                 _%hd169593170243%_
                                 _%tl169594170245%_
                                 _%e169595170248%_
                                 _%hd169596170251%_
                                 _%tl169597170253%_
                                 _%e169598170256%_
                                 _%hd169599170259%_
                                 _%tl169600170261%_
                                 _%e169601170264%_
                                 _%hd169602170267%_
                                 _%tl169603170269%_
                                 _%e169604170272%_
                                 _%hd169605170275%_
                                 _%tl169606170277%_
                                 _%e169607170280%_
                                 _%hd169608170283%_
                                 _%tl169609170285%_
                                 _%e169610170288%_
                                 _%hd169611170291%_
                                 _%tl169612170293%_
                                 _%e169613170296%_
                                 _%hd169614170299%_
                                 _%tl169615170301%_))
                            (_%__match175832175833%_
                             _%e169592170240%_
                             _%hd169593170243%_
                             _%tl169594170245%_
                             _%e169595170248%_
                             _%hd169596170251%_
                             _%tl169597170253%_
                             _%e169598170256%_
                             _%hd169599170259%_
                             _%tl169600170261%_
                             _%e169601170264%_
                             _%hd169602170267%_
                             _%tl169603170269%_
                             _%e169604170272%_
                             _%hd169605170275%_
                             _%tl169606170277%_
                             _%e169607170280%_
                             _%hd169608170283%_
                             _%tl169609170285%_
                             _%e169610170288%_
                             _%hd169611170291%_
                             _%tl169612170293%_
                             _%e169613170296%_
                             _%hd169614170299%_
                             _%tl169615170301%_
                             _%e169616170304%_
                             _%hd169617170307%_
                             _%tl169618170309%_))))
                     (_%__match175654175655%_
                      (lambda (_%e169548170432%_
                               _%hd169549170435%_
                               _%tl169550170437%_
                               _%e169551170440%_
                               _%hd169552170443%_
                               _%tl169553170445%_
                               _%e169554170448%_
                               _%hd169555170451%_
                               _%tl169556170453%_
                               _%e169557170456%_
                               _%hd169558170459%_
                               _%tl169559170461%_
                               _%e169560170464%_
                               _%hd169561170467%_
                               _%tl169562170469%_
                               _%e169563170472%_
                               _%hd169564170475%_
                               _%tl169565170477%_
                               _%e169566170480%_
                               _%hd169567170483%_
                               _%tl169568170485%_
                               _%e169569170488%_
                               _%hd169570170491%_
                               _%tl169571170493%_
                               _%e169572170496%_
                               _%hd169573170499%_
                               _%tl169574170501%_
                               _%e169575170504%_
                               _%hd169576170507%_
                               _%tl169577170509%_
                               _%__splice175553175554%_
                               _%target169578170512%_
                               _%tl169580170514%_)
                        (letrec ((_%loop169581170517%_
                                  (lambda (_%hd169579170520%_
                                           _%args169585170522%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169579170520%_))
                                        (let ((_%e169582170525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169579170520%_))))
                                          (let ((_%lp-tl169584170530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169582170525%_)))
                                                (_%lp-hd169583170528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169582170525%_))))
                                            (_%loop169581170517%_
                                             _%lp-tl169584170530%_
                                             (cons _%lp-hd169583170528%_
                                                   _%args169585170522%_))))
                                        (let ((_%args169586170533%_
                                               (reverse _%args169585170522%_)))
                                          (let ((_%L170536%_
                                                 _%args169586170533%_)
                                                (_%L170537%_
                                                 _%hd169576170507%_)
                                                (_%L170538%_
                                                 _%hd169567170483%_)
                                                (_%L170539%_
                                                 _%hd169558170459%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170539%_
                                                        'call-method))
                                                     (let ((__tmp176211
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169531%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170538%_
                                                        __tmp176211)))
                                                (_%__kont175551175552%_
                                                 _%L170536%_
                                                 _%L170537%_
                                                 _%L170538%_
                                                 _%L170539%_)
                                                (_%__match175842175843%_
                                                 _%e169548170432%_
                                                 _%hd169549170435%_
                                                 _%tl169550170437%_
                                                 _%e169551170440%_
                                                 _%hd169552170443%_
                                                 _%tl169553170445%_
                                                 _%e169554170448%_
                                                 _%hd169555170451%_
                                                 _%tl169556170453%_
                                                 _%e169557170456%_
                                                 _%hd169558170459%_
                                                 _%tl169559170461%_
                                                 _%e169560170464%_
                                                 _%hd169561170467%_
                                                 _%tl169562170469%_
                                                 _%e169563170472%_
                                                 _%hd169564170475%_
                                                 _%tl169565170477%_
                                                 _%e169566170480%_
                                                 _%hd169567170483%_
                                                 _%tl169568170485%_
                                                 _%e169569170488%_
                                                 _%hd169570170491%_
                                                 _%tl169571170493%_
                                                 _%e169572170496%_
                                                 _%hd169573170499%_
                                                 _%tl169574170501%_
                                                 _%e169575170504%_
                                                 _%hd169576170507%_
                                                 _%tl169577170509%_))))))))
                          (_%loop169581170517%_ _%target169578170512%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175549175550%_))
                    (let ((_%e169548170432%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175549175550%_))))
                      (let ((_%tl169550170437%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169548170432%_)))
                            (_%hd169549170435%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169548170432%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169550170437%_))
                            (let ((_%e169551170440%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169550170437%_))))
                              (let ((_%tl169553170445%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169551170440%_)))
                                    (_%hd169552170443%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169551170440%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169552170443%_))
                                    (let ((_%e169554170448%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169552170443%_))))
                                      (let ((_%tl169556170453%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169554170448%_)))
                                            (_%hd169555170451%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169554170448%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169555170451%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169555170451%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169556170453%_))
                                                    (let ((_%e169557170456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169556170453%_))))
                                                      (let ((_%tl169559170461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169557170456%_)))
                    (_%hd169558170459%_
                     (let () (declare (not safe)) (##car _%e169557170456%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169559170461%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169553170445%_))
                        (let ((_%e169560170464%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169553170445%_))))
                          (let ((_%tl169562170469%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169560170464%_)))
                                (_%hd169561170467%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169560170464%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169561170467%_))
                                (let ((_%e169563170472%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169561170467%_))))
                                  (let ((_%tl169565170477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169563170472%_)))
                                        (_%hd169564170475%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169563170472%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169564170475%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169564170475%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169565170477%_))
                                                (let ((_%e169566170480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169565170477%_))))
                                                  (let ((_%tl169568170485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169566170480%_)))
                                                        (_%hd169567170483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169566170480%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169568170485%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169562170469%_))
                                                            (let ((_%e169569170488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169562170469%_))))
                      (let ((_%tl169571170493%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169569170488%_)))
                            (_%hd169570170491%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169569170488%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169570170491%_))
                            (let ((_%e169572170496%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169570170491%_))))
                              (let ((_%tl169574170501%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169572170496%_)))
                                    (_%hd169573170499%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169572170496%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169573170499%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169573170499%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169574170501%_))
                                            (let ((_%e169575170504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169574170501%_))))
                                              (let ((_%tl169577170509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169575170504%_)))
                                                    (_%hd169576170507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169575170504%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169577170509%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169571170493%_))
                                                        (let ((_%__splice175553175554%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169571170493%_ '0))))
                  (let ((_%tl169580170514%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175553175554%_ '1)))
                        (_%target169578170512%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175553175554%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169580170514%_))
                        (_%__match175654175655%_
                         _%e169548170432%_
                         _%hd169549170435%_
                         _%tl169550170437%_
                         _%e169551170440%_
                         _%hd169552170443%_
                         _%tl169553170445%_
                         _%e169554170448%_
                         _%hd169555170451%_
                         _%tl169556170453%_
                         _%e169557170456%_
                         _%hd169558170459%_
                         _%tl169559170461%_
                         _%e169560170464%_
                         _%hd169561170467%_
                         _%tl169562170469%_
                         _%e169563170472%_
                         _%hd169564170475%_
                         _%tl169565170477%_
                         _%e169566170480%_
                         _%hd169567170483%_
                         _%tl169568170485%_
                         _%e169569170488%_
                         _%hd169570170491%_
                         _%tl169571170493%_
                         _%e169572170496%_
                         _%hd169573170499%_
                         _%tl169574170501%_
                         _%e169575170504%_
                         _%hd169576170507%_
                         _%tl169577170509%_
                         _%__splice175553175554%_
                         _%target169578170512%_
                         _%tl169580170514%_)
                        (_%__match175842175843%_
                         _%e169548170432%_
                         _%hd169549170435%_
                         _%tl169550170437%_
                         _%e169551170440%_
                         _%hd169552170443%_
                         _%tl169553170445%_
                         _%e169554170448%_
                         _%hd169555170451%_
                         _%tl169556170453%_
                         _%e169557170456%_
                         _%hd169558170459%_
                         _%tl169559170461%_
                         _%e169560170464%_
                         _%hd169561170467%_
                         _%tl169562170469%_
                         _%e169563170472%_
                         _%hd169564170475%_
                         _%tl169565170477%_
                         _%e169566170480%_
                         _%hd169567170483%_
                         _%tl169568170485%_
                         _%e169569170488%_
                         _%hd169570170491%_
                         _%tl169571170493%_
                         _%e169572170496%_
                         _%hd169573170499%_
                         _%tl169574170501%_
                         _%e169575170504%_
                         _%hd169576170507%_
                         _%tl169577170509%_))))
                (_%__match175842175843%_
                 _%e169548170432%_
                 _%hd169549170435%_
                 _%tl169550170437%_
                 _%e169551170440%_
                 _%hd169552170443%_
                 _%tl169553170445%_
                 _%e169554170448%_
                 _%hd169555170451%_
                 _%tl169556170453%_
                 _%e169557170456%_
                 _%hd169558170459%_
                 _%tl169559170461%_
                 _%e169560170464%_
                 _%hd169561170467%_
                 _%tl169562170469%_
                 _%e169563170472%_
                 _%hd169564170475%_
                 _%tl169565170477%_
                 _%e169566170480%_
                 _%hd169567170483%_
                 _%tl169568170485%_
                 _%e169569170488%_
                 _%hd169570170491%_
                 _%tl169571170493%_
                 _%e169572170496%_
                 _%hd169573170499%_
                 _%tl169574170501%_
                 _%e169575170504%_
                 _%hd169576170507%_
                 _%tl169577170509%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match176046176047%_
                                                     _%e169548170432%_
                                                     _%hd169549170435%_
                                                     _%tl169550170437%_
                                                     _%e169551170440%_
                                                     _%hd169552170443%_
                                                     _%tl169553170445%_
                                                     _%e169554170448%_
                                                     _%hd169555170451%_
                                                     _%tl169556170453%_
                                                     _%e169557170456%_
                                                     _%hd169558170459%_
                                                     _%tl169559170461%_
                                                     _%e169560170464%_
                                                     _%hd169561170467%_
                                                     _%tl169562170469%_
                                                     _%e169563170472%_
                                                     _%hd169564170475%_
                                                     _%tl169565170477%_
                                                     _%e169566170480%_
                                                     _%hd169567170483%_
                                                     _%tl169568170485%_
                                                     _%e169569170488%_
                                                     _%hd169570170491%_
                                                     _%tl169571170493%_))))
                                            (_%__match176046176047%_
                                             _%e169548170432%_
                                             _%hd169549170435%_
                                             _%tl169550170437%_
                                             _%e169551170440%_
                                             _%hd169552170443%_
                                             _%tl169553170445%_
                                             _%e169554170448%_
                                             _%hd169555170451%_
                                             _%tl169556170453%_
                                             _%e169557170456%_
                                             _%hd169558170459%_
                                             _%tl169559170461%_
                                             _%e169560170464%_
                                             _%hd169561170467%_
                                             _%tl169562170469%_
                                             _%e169563170472%_
                                             _%hd169564170475%_
                                             _%tl169565170477%_
                                             _%e169566170480%_
                                             _%hd169567170483%_
                                             _%tl169568170485%_
                                             _%e169569170488%_
                                             _%hd169570170491%_
                                             _%tl169571170493%_))
                                        (_%__match175722175723%_
                                         _%e169548170432%_
                                         _%hd169549170435%_
                                         _%tl169550170437%_
                                         _%e169551170440%_
                                         _%hd169552170443%_
                                         _%tl169553170445%_
                                         _%e169554170448%_
                                         _%hd169555170451%_
                                         _%tl169556170453%_
                                         _%e169557170456%_
                                         _%hd169558170459%_
                                         _%tl169559170461%_
                                         _%e169560170464%_
                                         _%hd169561170467%_
                                         _%tl169562170469%_
                                         _%e169563170472%_
                                         _%hd169564170475%_
                                         _%tl169565170477%_
                                         _%e169566170480%_
                                         _%hd169567170483%_
                                         _%tl169568170485%_
                                         _%e169569170488%_
                                         _%hd169570170491%_
                                         _%tl169571170493%_
                                         _%e169572170496%_
                                         _%hd169573170499%_
                                         _%tl169574170501%_))
                                    (_%__match176046176047%_
                                     _%e169548170432%_
                                     _%hd169549170435%_
                                     _%tl169550170437%_
                                     _%e169551170440%_
                                     _%hd169552170443%_
                                     _%tl169553170445%_
                                     _%e169554170448%_
                                     _%hd169555170451%_
                                     _%tl169556170453%_
                                     _%e169557170456%_
                                     _%hd169558170459%_
                                     _%tl169559170461%_
                                     _%e169560170464%_
                                     _%hd169561170467%_
                                     _%tl169562170469%_
                                     _%e169563170472%_
                                     _%hd169564170475%_
                                     _%tl169565170477%_
                                     _%e169566170480%_
                                     _%hd169567170483%_
                                     _%tl169568170485%_
                                     _%e169569170488%_
                                     _%hd169570170491%_
                                     _%tl169571170493%_))))
                            (_%__match176046176047%_
                             _%e169548170432%_
                             _%hd169549170435%_
                             _%tl169550170437%_
                             _%e169551170440%_
                             _%hd169552170443%_
                             _%tl169553170445%_
                             _%e169554170448%_
                             _%hd169555170451%_
                             _%tl169556170453%_
                             _%e169557170456%_
                             _%hd169558170459%_
                             _%tl169559170461%_
                             _%e169560170464%_
                             _%hd169561170467%_
                             _%tl169562170469%_
                             _%e169563170472%_
                             _%hd169564170475%_
                             _%tl169565170477%_
                             _%e169566170480%_
                             _%hd169567170483%_
                             _%tl169568170485%_
                             _%e169569170488%_
                             _%hd169570170491%_
                             _%tl169571170493%_))))
                    (_%__match175984175985%_
                     _%e169548170432%_
                     _%hd169549170435%_
                     _%tl169550170437%_
                     _%e169551170440%_
                     _%hd169552170443%_
                     _%tl169553170445%_
                     _%e169554170448%_
                     _%hd169555170451%_
                     _%tl169556170453%_
                     _%e169557170456%_
                     _%hd169558170459%_
                     _%tl169559170461%_
                     _%e169560170464%_
                     _%hd169561170467%_
                     _%tl169562170469%_
                     _%e169563170472%_
                     _%hd169564170475%_
                     _%tl169565170477%_
                     _%e169566170480%_
                     _%hd169567170483%_
                     _%tl169568170485%_))
                (_%__kont175567175568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175567175568%_))
                                            (_%__kont175567175568%_))
                                        (_%__kont175567175568%_))))
                                (_%__kont175567175568%_))))
                        (_%__kont175567175568%_))
                    (_%__kont175567175568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175567175568%_))
                                                (_%__kont175567175568%_))
                                            (_%__kont175567175568%_))))
                                    (_%__kont175567175568%_))))
                            (_%__kont175567175568%_))))
                    (_%__kont175567175568%_))))))))))
