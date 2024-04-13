(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1713004414)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp176457 (list gxc#::identity::t))
            (__tmp176456 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp176457
         '()
         __tmp176456
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args175254%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args175254%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp176458
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
        (__make-promise __tmp176458)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx175246%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self175249%_
                (let ((__obj176449
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj176449))
               (__tmp176459
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175249%_ _%stx175246%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176459
           gxc#current-compile-method
           _%self175249%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp176461 (list gxc#::false::t))
            (__tmp176460 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp176461
         '()
         __tmp176460
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args175243%_
        (apply make-instance gxc#::extract-receiver::t _%$args175243%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp176462
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
        (__make-promise __tmp176462)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx175235%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self175238%_
                (let ((__obj176451
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj176451))
               (__tmp176463
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self175238%_ _%stx175235%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp176463
           gxc#current-compile-method
           _%self175238%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp176465 (list gxc#::void::t))
            (__tmp176464 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp176465
         '(receiver methods slots)
         __tmp176464
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args175232%_
        (apply make-instance gxc#::collect-object-refs::t _%$args175232%_)))
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
      (let ((__tmp176466
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
        (__make-promise __tmp176466)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords175198%_
               _%receiver175193175199%_
               _%methods175194175201%_
               _%slots175195175203%_
               _%stx175205%_)
        (let* ((_%receiver175208%_
                (if (eq? _%receiver175193175199%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175193175199%_))
               (_%methods175210%_
                (if (eq? _%methods175194175201%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175194175201%_))
               (_%slots175212%_
                (if (eq? _%slots175195175203%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175195175203%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self175214%_
                  (let ((__obj176453
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
                       __obj176453
                       _%receiver175208%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176453
                       _%methods175210%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176453
                       _%slots175212%_
                       '3
                       '#f
                       '#f))
                    __obj176453))
                 (__tmp176467
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175214%_ _%stx175205%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176467
             gxc#current-compile-method
             _%self175214%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords175221%_ . _%args175222%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords175221%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175221%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175221%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175221%_
                  'slots:
                  absent-value))
               _%args175222%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args175196175228%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args175196175228%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp176469 (list gxc#::basic-xform-expression::t))
            (__tmp176468 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp176469
         '(receiver klass methods slots)
         __tmp176468
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args175189%_
        (apply make-instance gxc#::subst-object-refs::t _%$args175189%_)))
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
      (let ((__tmp176470
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
        (__make-promise __tmp176470)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords175151%_
               _%receiver175145175152%_
               _%klass175146175154%_
               _%methods175147175156%_
               _%slots175148175158%_
               _%stx175160%_)
        (let* ((_%receiver175163%_
                (if (eq? _%receiver175145175152%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver175145175152%_))
               (_%klass175165%_
                (if (eq? _%klass175146175154%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass175146175154%_))
               (_%methods175167%_
                (if (eq? _%methods175147175156%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods175147175156%_))
               (_%slots175169%_
                (if (eq? _%slots175148175158%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots175148175158%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self175171%_
                  (let ((__obj176455
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
                       __obj176455
                       _%receiver175163%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176455
                       _%klass175165%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176455
                       _%methods175167%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj176455
                       _%slots175169%_
                       '4
                       '#f
                       '#f))
                    __obj176455))
                 (__tmp176471
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self175171%_ _%stx175160%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp176471
             gxc#current-compile-method
             _%self175171%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords175178%_ . _%args175179%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords175178%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175178%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175178%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175178%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords175178%_
                  'slots:
                  absent-value))
               _%args175179%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args175149175185%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args175149175185%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self172260%_ _%stx172261%_)
        (letrec ((_%generate-method-bind172263%_
                  (lambda (_%$klass175137%_
                           _%$method-table175138%_
                           _%id175139%_
                           _%$id175140%_)
                    (let ((_%$tmp175142%_
                           (let ((__tmp176472
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176472))))
                      (cons (cons _%$id175140%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp175142%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table175138%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id175139%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp175142%_ '()))
                    (cons (cons '%#ref (cons _%$tmp175142%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id175139%_
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
                 (_%generate-slot-bind172264%_
                  (lambda (_%$klass175131%_ _%id175132%_ _%$id175133%_)
                    (let ((_%$tmp175135%_
                           (let ((__tmp176473
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp176473))))
                      (cons (cons _%$id175133%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp175135%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass175131%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id175132%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp175135%_ '()))
                        (cons (cons '%#ref (cons _%$tmp175135%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id175132%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl172265%_
                  (lambda (_%$klass175125%_
                           _%$method-table175126%_
                           _%methods-bind175127%_
                           _%slots-bind175128%_
                           _%specializer-impl175129%_)
                    (let ((__tmp176474
                           (cons '%#lambda
                                 (cons (cons _%$klass175125%_
                                             (cons _%$method-table175126%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind175128%_
                                                            _%methods-bind175127%_))
                                                         (cons _%specializer-impl175129%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176474 _%stx172261%_))))
                 (_%generate-specializer-def172266%_
                  (lambda (_%id175121%_
                           _%specializer-id175122%_
                           _%specializer-impl175123%_)
                    (let ((__tmp176475
                           (cons '%#begin
                                 (cons _%stx172261%_
                                       (cons (let ((__tmp176476
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id175122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl175123%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176476
                                                _%stx172261%_))
                                             (cons (let ((__tmp176477
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id175121%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id175122%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176477
                                                      _%stx172261%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp176475 _%stx172261%_)))))
          (let* ((_%__stx175343175344%_ _%stx172261%_)
                 (_%g172269172289%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175343175344%_)))))
            (let ((_%__kont175345175346%_
                   (lambda (_%L172333%_ _%L172334%_)
                     (let ((_%method-calls172353%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs172354%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty172355%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?172357%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls172353%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs172354%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L172333%_))
                             (let* ((_%__stx175257175258%_ _%L172333%_)
                                    (_%g172745172763%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx175257175258%_)))))
                               (let ((_%__kont175259175260%_
                                      (lambda (_%L172799%_
                                               _%L172800%_
                                               _%L172801%_)
                                        (let ((_%receiver172821%_
                                               (let ((_%$e172818%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172818%_
                                                     _%$e172818%_
                                                     _%L172801%_))))
                                          (for-each
                                           (lambda (_%g172822172824%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172821%_
                                              _%method-calls172353%_
                                              _%slot-refs172354%_
                                              _%g172822172824%_))
                                           _%L172799%_)
                                          (if (_%no-specializer?172357%_)
                                              _%stx172261%_
                                              (let* ((_%specializer-id172833%_
                                                      (let* ((_%id172827%_
                                                              (let ((__tmp176478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172334%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176478 '"::specialize")))
                     (_%specializer-id172830%_
                      (let ((__tmp176479
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172261%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172827%_ __tmp176479))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172830%_))
                _%specializer-id172830%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172835%_
                                                      (let ((__tmp176480
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176480)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172837%_
                                                      (let ((__tmp176481
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176481)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172839%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172353%_)))
                                                     (_%$methods172843%_
                                                      (map (lambda (_%id172841%_)
                                                             (let ((__tmp176482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172841%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176482)))
                   _%methods172839%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172852%_
                                                      (for-each
                                                       (lambda (_%g172844172847%_
                                                                _%g172845172849%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172353%_
                                                            _%g172844172847%_
                                                            _%g172845172849%_)))
                                                       _%methods172839%_
                                                       _%$methods172843%_))
                                                     (_%methods-bind172862%_
                                                      (map (lambda (_%g172854172857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172855172859%_)
                     (_%generate-method-bind172263%_
                      _%$klass172835%_
                      _%$method-table172837%_
                      _%g172854172857%_
                      _%g172855172859%_))
                   _%methods172839%_
                   _%$methods172843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172864%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172354%_)))
                                                     (_%$slots172868%_
                                                      (map (lambda (_%id172866%_)
                                                             (let ((__tmp176483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172866%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176483)))
                   _%slots172864%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172877%_
                                                      (for-each
                                                       (lambda (_%g172869172872%_
                                                                _%g172870172874%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172354%_
                                                            _%g172869172872%_
                                                            _%g172870172874%_)))
                                                       _%slots172864%_
                                                       _%$slots172868%_))
                                                     (_%slots-bind172886%_
                                                      (map (lambda (_%g172878172881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172879172883%_)
                     (_%generate-slot-bind172264%_
                      _%$klass172835%_
                      _%g172878172881%_
                      _%g172879172883%_))
                   _%slots172864%_
                   _%$slots172868%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172892%_
                                                      (map (lambda (_%g172887172889%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172821%_
                                                              _%$klass172835%_
                                                              _%method-calls172353%_
                                                              _%slot-refs172354%_
                                                              _%g172887172889%_))
                                                           _%L172799%_))
                                                     (_%specializer-impl172894%_
                                                      (let ((__tmp176484
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172801%_ _%L172800%_)
                                 _%specializer-body172892%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176484 _%stx172261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172896%_
                                                      (_%generate-specializer-impl172265%_
                                                       _%$klass172835%_
                                                       _%$method-table172837%_
                                                       _%methods-bind172862%_
                                                       _%slots-bind172886%_
                                                       _%specializer-impl172894%_)))
                                                (let ((__tmp176486
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172334%_)))
                                                      (__tmp176485
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172833%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176486
                                                   '" => "
                                                   __tmp176485))
                                                (_%generate-specializer-def172266%_
                                                 _%L172334%_
                                                 _%specializer-id172833%_
                                                 _%specializer-impl172896%_))))))
                                     (_%__kont175261175262%_
                                      (lambda () _%stx172261%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx175257175258%_))
                                     (let ((_%e172750172775%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx175257175258%_))))
                                       (let ((_%tl172752172780%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e172750172775%_)))
                                             (_%hd172751172778%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e172750172775%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl172752172780%_))
                                             (let ((_%e172753172783%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl172752172780%_))))
                                               (let ((_%tl172755172788%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e172753172783%_)))
                                                     (_%hd172754172786%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e172753172783%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd172754172786%_))
                                                     (let ((_%e172756172791%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd172754172786%_))))
                                                       (let ((_%tl172758172796%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e172756172791%_)))
                     (_%hd172757172794%_
                      (let () (declare (not safe)) (##car _%e172756172791%_))))
                 (_%__kont175259175260%_
                  _%tl172755172788%_
                  _%tl172758172796%_
                  _%hd172757172794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont175261175262%_))))
                                             (_%__kont175261175262%_))))
                                     (_%__kont175261175262%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L172333%_))
                                 (let* ((_%g172903172922%_
                                         (lambda (_%g172904172919%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172904172919%_))))
                                        (_%g172902173220%_
                                         (lambda (_%g172904172925%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172904172925%_))
                                               (let ((_%e172906172927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172904172925%_))))
                                                 (let ((_%hd172907172930%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172906172927%_)))
                                                       (_%tl172908172932%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172906172927%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172908172932%_))
                                                       (let ((_g176487_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172908172932%_ '0))))
                 (begin
                   (let ((_g176488_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g176487_)
                                (##vector-length _g176487_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g176488_ 2)))
                         (error "Context expects 2 values" _g176488_)))
                   (let ((_%target172909172935%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176487_ 0)))
                         (_%tl172911172937%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g176487_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172911172937%_))
                         (letrec ((_%loop172912172940%_
                                   (lambda (_%hd172910172943%_
                                            _%clause172916172945%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172910172943%_))
                                         (let ((_%e172913172948%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172910172943%_))))
                                           (let ((_%lp-hd172914172951%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172913172948%_)))
                                                 (_%lp-tl172915172953%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172913172948%_))))
                                             (_%loop172912172940%_
                                              _%lp-tl172915172953%_
                                              (cons _%lp-hd172914172951%_
                                                    _%clause172916172945%_))))
                                         (let ((_%clause172917172956%_
                                                (reverse _%clause172916172945%_)))
                                           ((lambda (_%L172959%_)
                                              (for-each
                                               (lambda (_%clause172973%_)
                                                 (let* ((_%__stx175283175284%_
                                                         _%clause172973%_)
                                                        (_%g172976172991%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx175283175284%_)))))
                                                   (let ((_%__kont175285175286%_
                                                          (lambda (_%L173019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L173020%_
                           _%L173021%_)
                    (let ((_%receiver173040%_
                           (let ((_%$e173037%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L173019%_))))
                             (if _%$e173037%_ _%$e173037%_ _%L173021%_))))
                      (for-each
                       (lambda (_%g173041173043%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver173040%_
                          _%method-calls172353%_
                          _%slot-refs172354%_
                          _%g173041173043%_))
                       _%L173019%_))))
                 (_%__kont175287175288%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx175283175284%_))
                                                         (let ((_%e172981173003%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx175283175284%_))))
                   (let ((_%tl172983173008%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172981173003%_)))
                         (_%hd172982173006%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172981173003%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172982173006%_))
                         (let ((_%e172984173011%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172982173006%_))))
                           (let ((_%tl172986173016%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172984173011%_)))
                                 (_%hd172985173014%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172984173011%_))))
                             (_%__kont175285175286%_
                              _%tl172983173008%_
                              _%tl172986173016%_
                              _%hd172985173014%_)))
                         (_%__kont175287175288%_))))
                 (_%__kont175287175288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp176489
                                                      (lambda (_%g173048173051%_
                                                               _%g173049173053%_)
                                                        (cons _%g173048173051%_
                                                              _%g173049173053%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176489
                                                  '()
                                                  _%L172959%_)))
                                              (if (_%no-specializer?172357%_)
                                                  _%stx172261%_
                                                  (let* ((_%specializer-id173062%_
                                                          (let* ((_%id173056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176490
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172334%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176490 '"::specialize")))
                         (_%specializer-id173059%_
                          (let ((__tmp176491
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172261%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id173056%_
                             __tmp176491))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id173059%_))
                    _%specializer-id173059%_))
                 (_%$klass173064%_
                  (let ((__tmp176492
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176492)))
                 (_%$method-table173066%_
                  (let ((__tmp176493
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176493)))
                 (_%methods173068%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172353%_)))
                 (_%$methods173072%_
                  (map (lambda (_%id173070%_)
                         (let ((__tmp176494 (gensym _%id173070%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176494)))
                       _%methods173068%_))
                 (_%_173081%_
                  (for-each
                   (lambda (_%g173073173076%_ _%g173074173078%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172353%_
                        _%g173073173076%_
                        _%g173074173078%_)))
                   _%methods173068%_
                   _%$methods173072%_))
                 (_%methods-bind173091%_
                  (map (lambda (_%g173083173086%_ _%g173084173088%_)
                         (_%generate-method-bind172263%_
                          _%$klass173064%_
                          _%$method-table173066%_
                          _%g173083173086%_
                          _%g173084173088%_))
                       _%methods173068%_
                       _%$methods173072%_))
                 (_%slots173093%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172354%_)))
                 (_%$slots173097%_
                  (map (lambda (_%id173095%_)
                         (let ((__tmp176495 (gensym _%id173095%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176495)))
                       _%slots173093%_))
                 (_%_173106%_
                  (for-each
                   (lambda (_%g173098173101%_ _%g173099173103%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172354%_
                        _%g173098173101%_
                        _%g173099173103%_)))
                   _%slots173093%_
                   _%$slots173097%_))
                 (_%slots-bind173115%_
                  (map (lambda (_%g173107173110%_ _%g173108173112%_)
                         (_%generate-slot-bind172264%_
                          _%$klass173064%_
                          _%g173107173110%_
                          _%g173108173112%_))
                       _%slots173093%_
                       _%$slots173097%_))
                 (_%specializer-clauses173213%_
                  (map (lambda (_%clause173117%_)
                         (let* ((_%__stx175303175304%_ _%clause173117%_)
                                (_%g173120173135%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx175303175304%_)))))
                           (let ((_%__kont175305175306%_
                                  (lambda (_%L173163%_ _%L173164%_ _%L173165%_)
                                    (let* ((_%receiver173194%_
                                            (let ((_%$e173191%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L173163%_))))
                                              (if _%$e173191%_
                                                  _%$e173191%_
                                                  _%L173165%_)))
                                           (_%body173200%_
                                            (map (lambda (_%g173195173197%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver173194%_
                                                    _%$klass173064%_
                                                    _%method-calls172353%_
                                                    _%slot-refs172354%_
                                                    _%g173195173197%_))
                                                 _%L173163%_)))
                                      (cons (cons _%L173165%_ _%L173164%_)
                                            _%body173200%_))))
                                 (_%__kont175307175308%_
                                  (lambda () _%clause173117%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx175303175304%_))
                                 (let ((_%e173125173147%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx175303175304%_))))
                                   (let ((_%tl173127173152%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e173125173147%_)))
                                         (_%hd173126173150%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e173125173147%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd173126173150%_))
                                         (let ((_%e173128173155%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd173126173150%_))))
                                           (let ((_%tl173130173160%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e173128173155%_)))
                                                 (_%hd173129173158%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e173128173155%_))))
                                             (_%__kont175305175306%_
                                              _%tl173127173152%_
                                              _%tl173130173160%_
                                              _%hd173129173158%_)))
                                         (_%__kont175307175308%_))))
                                 (_%__kont175307175308%_)))))
                       (let ((__tmp176496
                              (lambda (_%g173205173208%_ _%g173206173210%_)
                                (cons _%g173205173208%_ _%g173206173210%_))))
                         (declare (not safe))
                         (__foldr1 __tmp176496 '() _%L172959%_))))
                 (_%specializer-impl173215%_
                  (let ((__tmp176497
                         (cons '%#case-lambda _%specializer-clauses173213%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176497 _%stx172261%_)))
                 (_%specializer-impl173217%_
                  (_%generate-specializer-impl172265%_
                   _%$klass173064%_
                   _%$method-table173066%_
                   _%methods-bind173091%_
                   _%slots-bind173115%_
                   _%specializer-impl173215%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176499
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172334%_)))
                                                          (__tmp176498
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id173062%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176499
                                                       '" => "
                                                       __tmp176498))
                                                    (_%generate-specializer-def172266%_
                                                     _%L172334%_
                                                     _%specializer-id173062%_
                                                     _%specializer-impl173217%_))))
                                            _%clause172917172956%_))))))
                           (_%loop172912172940%_ _%target172909172935%_ '()))
                         (_%g172903172922%_ _%g172904172925%_)))))
               (_%g172903172922%_ _%g172904172925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172903172922%_
                                                _%g172904172925%_)))))
                                   (_%g172902173220%_ _%L172333%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L172333%_))
                                     (let* ((_%g173224173254%_
                                             (lambda (_%g173225173251%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173225173251%_))))
                                            (_%g173223173885%_
                                             (lambda (_%g173225173257%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173225173257%_))
                                                   (let ((_%e173229173259%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173225173257%_))))
                                                     (let ((_%hd173230173262%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173229173259%_)))
                                                           (_%tl173231173264%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173229173259%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173231173264%_))
                                                           (let ((_%e173232173267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173231173264%_))))
                     (let ((_%hd173233173270%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173232173267%_)))
                           (_%tl173234173272%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173232173267%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173233173270%_))
                           (let ((_%e173235173275%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173233173270%_))))
                             (let ((_%hd173236173278%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173235173275%_)))
                                   (_%tl173237173280%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173235173275%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173236173278%_))
                                   (let ((_%e173238173283%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173236173278%_))))
                                     (let ((_%hd173239173286%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173238173283%_)))
                                           (_%tl173240173288%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173238173283%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd173239173286%_))
                                           (let ((_%e173241173291%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd173239173286%_))))
                                             (let ((_%hd173242173294%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173241173291%_)))
                                                   (_%tl173243173296%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173241173291%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173243173296%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl173240173288%_))
                                                       (let ((_%e173244173299%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl173240173288%_))))
                 (let ((_%hd173245173302%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173244173299%_)))
                       (_%tl173246173304%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173244173299%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173246173304%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173237173280%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173234173272%_))
                               (let ((_%e173247173307%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173234173272%_))))
                                 (let ((_%hd173248173310%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173247173307%_)))
                                       (_%tl173249173312%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173247173307%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173249173312%_))
                                       ((lambda (_%L173315%_
                                                 _%L173316%_
                                                 _%L173317%_)
                                          (let* ((_%g173341173359%_
                                                  (lambda (_%g173342173356%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173342173356%_))))
                                                 (_%g173340173415%_
                                                  (lambda (_%g173342173362%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173342173362%_))
                                                        (let ((_%e173346173364%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173342173362%_))))
                  (let ((_%hd173347173367%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173346173364%_)))
                        (_%tl173348173369%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173346173364%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl173348173369%_))
                        (let ((_%e173349173372%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl173348173369%_))))
                          (let ((_%hd173350173375%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e173349173372%_)))
                                (_%tl173351173377%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e173349173372%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd173350173375%_))
                                (let ((_%e173352173380%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd173350173375%_))))
                                  (let ((_%hd173353173383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173352173380%_)))
                                        (_%tl173354173385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173352173380%_))))
                                    ((lambda (_%L173388%_
                                              _%L173389%_
                                              _%L173390%_)
                                       (let ((_%receiver173409%_
                                              (let ((_%$e173406%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L173388%_))))
                                                (if _%$e173406%_
                                                    _%$e173406%_
                                                    _%L173390%_))))
                                         (for-each
                                          (lambda (_%g173410173412%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver173409%_
                                             _%method-calls172353%_
                                             _%slot-refs172354%_
                                             _%g173410173412%_))
                                          _%L173388%_)))
                                     _%tl173351173377%_
                                     _%tl173354173385%_
                                     _%hd173353173383%_)))
                                (_%g173341173359%_ _%g173342173362%_))))
                        (_%g173341173359%_ _%g173342173362%_))))
                (_%g173341173359%_ _%g173342173362%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173340173415%_ _%L173316%_))
                                          (let* ((_%g173418173437%_
                                                  (lambda (_%g173419173434%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g173419173434%_))))
                                                 (_%g173417173561%_
                                                  (lambda (_%g173419173440%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g173419173440%_))
                                                        (let ((_%e173421173442%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g173419173440%_))))
                  (let ((_%hd173422173445%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173421173442%_)))
                        (_%tl173423173447%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173421173442%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173423173447%_))
                        (let ((_g176500_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl173423173447%_
                                  '0))))
                          (begin
                            (let ((_g176501_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176500_)
                                         (##vector-length _g176500_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176501_ 2)))
                                  (error "Context expects 2 values"
                                         _g176501_)))
                            (let ((_%target173424173450%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176500_ 0)))
                                  (_%tl173426173452%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176500_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl173426173452%_))
                                  (letrec ((_%loop173427173455%_
                                            (lambda (_%hd173425173458%_
                                                     _%clause173431173460%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd173425173458%_))
                                                  (let ((_%e173428173463%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd173425173458%_))))
                                                    (let ((_%lp-hd173429173466%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173428173463%_)))
                                                          (_%lp-tl173430173468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173428173463%_))))
                                                      (_%loop173427173455%_
                                                       _%lp-tl173430173468%_
                                                       (cons _%lp-hd173429173466%_
                                                             _%clause173431173460%_))))
                                                  (let ((_%clause173432173471%_
                                                         (reverse _%clause173431173460%_)))
                                                    ((lambda (_%L173474%_)
                                                       (for-each
                                                        (lambda (_%clause173487%_)
                                                          (let* ((_%g173489173504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g173490173501%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g173490173501%_))))
                         (_%g173488173551%_
                          (lambda (_%g173490173507%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g173490173507%_))
                                (let ((_%e173494173509%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g173490173507%_))))
                                  (let ((_%hd173495173512%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173494173509%_)))
                                        (_%tl173496173514%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173494173509%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173495173512%_))
                                        (let ((_%e173497173517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173495173512%_))))
                                          (let ((_%hd173498173520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173497173517%_)))
                                                (_%tl173499173522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173497173517%_))))
                                            ((lambda (_%L173525%_
                                                      _%L173526%_
                                                      _%L173527%_)
                                               (let ((_%receiver173545%_
                                                      (let ((_%$e173542%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L173525%_))))
                (if _%$e173542%_ _%$e173542%_ _%L173527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g173546173548%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver173545%_
                                                     _%method-calls172353%_
                                                     _%slot-refs172354%_
                                                     _%g173546173548%_))
                                                  _%L173525%_)))
                                             _%tl173496173514%_
                                             _%tl173499173522%_
                                             _%hd173498173520%_)))
                                        (_%g173489173504%_
                                         _%g173490173507%_))))
                                (_%g173489173504%_ _%g173490173507%_)))))
                    (_%g173488173551%_ _%clause173487%_)))
                (let ((__tmp176502
                       (lambda (_%g173553173556%_ _%g173554173558%_)
                         (cons _%g173553173556%_ _%g173554173558%_))))
                  (declare (not safe))
                  (__foldr1 __tmp176502 '() _%L173474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause173432173471%_))))))
                                    (_%loop173427173455%_
                                     _%target173424173450%_
                                     '()))
                                  (_%g173418173437%_ _%g173419173440%_)))))
                        (_%g173418173437%_ _%g173419173440%_))))
                (_%g173418173437%_ _%g173419173440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g173417173561%_ _%L173315%_))
                                          (if (_%no-specializer?172357%_)
                                              _%stx172261%_
                                              (let* ((_%specializer-id173570%_
                                                      (let* ((_%id173564%_
                                                              (let ((__tmp176503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L172334%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp176503 '"::specialize")))
                     (_%specializer-id173567%_
                      (let ((__tmp176504
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx172261%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id173564%_ __tmp176504))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id173567%_))
                _%specializer-id173567%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass173572%_
                                                      (let ((__tmp176505
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp176505)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table173574%_
                                                      (let ((__tmp176506
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp176506)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods173576%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls172353%_)))
                                                     (_%$methods173580%_
                                                      (map (lambda (_%id173578%_)
                                                             (let ((__tmp176507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173578%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176507)))
                   _%methods173576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173589%_
                                                      (for-each
                                                       (lambda (_%g173581173584%_
                                                                _%g173582173586%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls172353%_
                                                            _%g173581173584%_
                                                            _%g173582173586%_)))
                                                       _%methods173576%_
                                                       _%$methods173580%_))
                                                     (_%methods-bind173599%_
                                                      (map (lambda (_%g173591173594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173592173596%_)
                     (_%generate-method-bind172263%_
                      _%$klass173572%_
                      _%$method-table173574%_
                      _%g173591173594%_
                      _%g173592173596%_))
                   _%methods173576%_
                   _%$methods173580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots173601%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs172354%_)))
                                                     (_%$slots173605%_
                                                      (map (lambda (_%id173603%_)
                                                             (let ((__tmp176508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id173603%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp176508)))
                   _%slots173601%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_173614%_
                                                      (for-each
                                                       (lambda (_%g173606173609%_
                                                                _%g173607173611%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs172354%_
                                                            _%g173606173609%_
                                                            _%g173607173611%_)))
                                                       _%slots173601%_
                                                       _%$slots173605%_))
                                                     (_%slots-bind173623%_
                                                      (map (lambda (_%g173615173618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g173616173620%_)
                     (_%generate-slot-bind172264%_
                      _%$klass173572%_
                      _%g173615173618%_
                      _%g173616173620%_))
                   _%slots173601%_
                   _%$slots173605%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr173715%_
                                                      (let* ((_%g173625173643%_
                                                              (lambda (_%g173626173640%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173626173640%_))))
                     (_%g173624173712%_
                      (lambda (_%g173626173646%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173626173646%_))
                            (let ((_%e173630173648%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173626173646%_))))
                              (let ((_%hd173631173651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173630173648%_)))
                                    (_%tl173632173653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173630173648%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173632173653%_))
                                    (let ((_%e173633173656%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173632173653%_))))
                                      (let ((_%hd173634173659%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173633173656%_)))
                                            (_%tl173635173661%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173633173656%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173634173659%_))
                                            (let ((_%e173636173664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173634173659%_))))
                                              (let ((_%hd173637173667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173636173664%_)))
                                                    (_%tl173638173669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173636173664%_))))
                                                ((lambda (_%L173672%_
                                                          _%L173673%_
                                                          _%L173674%_)
                                                   (let* ((_%receiver173703%_
                                                           (let ((_%$e173700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L173672%_))))
                     (if _%$e173700%_ _%$e173700%_ _%L173674%_)))
                  (_%body173709%_
                   (map (lambda (_%g173704173706%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver173703%_
                           _%$klass173572%_
                           _%method-calls172353%_
                           _%slot-refs172354%_
                           _%g173704173706%_))
                        _%L173672%_))
                  (__tmp176509
                   (cons '%#lambda
                         (cons (cons _%L173674%_ _%L173673%_)
                               _%body173709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp176509
                                                      _%L173316%_)))
                                                 _%tl173635173661%_
                                                 _%tl173638173669%_
                                                 _%hd173637173667%_)))
                                            (_%g173625173643%_
                                             _%g173626173646%_))))
                                    (_%g173625173643%_ _%g173626173646%_))))
                            (_%g173625173643%_ _%g173626173646%_)))))
                (_%g173624173712%_ _%L173316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173878%_
                                                      (let* ((_%g173717173736%_
                                                              (lambda (_%g173718173733%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173718173733%_))))
                     (_%g173716173875%_
                      (lambda (_%g173718173739%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173718173739%_))
                            (let ((_%e173720173741%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173718173739%_))))
                              (let ((_%hd173721173744%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173720173741%_)))
                                    (_%tl173722173746%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173720173741%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl173722173746%_))
                                    (let ((_g176510_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl173722173746%_
                                              '0))))
                                      (begin
                                        (let ((_g176511_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g176510_)
                                                     (##vector-length
                                                      _g176510_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g176511_ 2)))
                                              (error "Context expects 2 values"
                                                     _g176511_)))
                                        (let ((_%target173723173749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176510_ 0)))
                                              (_%tl173725173751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g176510_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173725173751%_))
                                              (letrec ((_%loop173726173754%_
                                                        (lambda (_%hd173724173757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause173730173759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173724173757%_))
                      (let ((_%e173727173762%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173724173757%_))))
                        (let ((_%lp-hd173728173765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173727173762%_)))
                              (_%lp-tl173729173767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173727173762%_))))
                          (_%loop173726173754%_
                           _%lp-tl173729173767%_
                           (cons _%lp-hd173728173765%_
                                 _%clause173730173759%_))))
                      (let ((_%clause173731173770%_
                             (reverse _%clause173730173759%_)))
                        ((lambda (_%L173773%_)
                           (let* ((_%clauses173873%_
                                   (map (lambda (_%clause173787%_)
                                          (let* ((_%__stx175323175324%_
                                                  _%clause173787%_)
                                                 (_%g173790173805%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx175323175324%_)))))
                                            (let ((_%__kont175325175326%_
                                                   (lambda (_%L173833%_
                                                            _%L173834%_
                                                            _%L173835%_)
                                                     (let* ((_%receiver173854%_
                                                             (let ((_%$e173851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173833%_))))
                       (if _%$e173851%_ _%$e173851%_ _%L173835%_)))
                    (_%body173860%_
                     (map (lambda (_%g173855173857%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173854%_
                             _%$klass173572%_
                             _%method-calls172353%_
                             _%slot-refs172354%_
                             _%g173855173857%_))
                          _%L173833%_)))
               (cons (cons _%L173835%_ _%L173834%_) _%body173860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175327175328%_
                                                   (lambda ()
                                                     _%clause173787%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx175323175324%_))
                                                  (let ((_%e173795173817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx175323175324%_))))
                                                    (let ((_%tl173797173822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173795173817%_)))
                                                          (_%hd173796173820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173795173817%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173796173820%_))
                                                          (let ((_%e173798173825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173796173820%_))))
                    (let ((_%tl173800173830%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173798173825%_)))
                          (_%hd173799173828%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173798173825%_))))
                      (_%__kont175325175326%_
                       _%tl173797173822%_
                       _%tl173800173830%_
                       _%hd173799173828%_)))
                  (_%__kont175327175328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175327175328%_)))))
                                        (let ((__tmp176512
                                               (lambda (_%g173865173868%_
                                                        _%g173866173870%_)
                                                 (cons _%g173865173868%_
                                                       _%g173866173870%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp176512
                                           '()
                                           _%L173773%_))))
                                  (__tmp176513
                                   (cons '%#case-lambda _%clauses173873%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176513 _%L173315%_)))
                         _%clause173731173770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173726173754%_
                                                 _%target173723173749%_
                                                 '()))
                                              (_%g173717173736%_
                                               _%g173718173739%_)))))
                                    (_%g173717173736%_ _%g173718173739%_))))
                            (_%g173717173736%_ _%g173718173739%_)))))
                (_%g173716173875%_ _%L173315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173880%_
                                                      (let ((__tmp176514
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L173317%_ '())
                                             (cons _%specializer-lambda-expr173715%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173878%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp176514 _%stx172261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173882%_
                                                      (_%generate-specializer-impl172265%_
                                                       _%$klass173572%_
                                                       _%$method-table173574%_
                                                       _%methods-bind173599%_
                                                       _%slots-bind173623%_
                                                       _%specializer-impl173880%_)))
                                                (let ((__tmp176516
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172334%_)))
                                                      (__tmp176515
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id173570%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp176516
                                                   '" => "
                                                   __tmp176515))
                                                (_%generate-specializer-def172266%_
                                                 _%L172334%_
                                                 _%specializer-id173570%_
                                                 _%specializer-impl173882%_))))
                                        _%hd173248173310%_
                                        _%hd173245173302%_
                                        _%hd173242173294%_)
                                       (_%g173224173254%_ _%g173225173257%_))))
                               (_%g173224173254%_ _%g173225173257%_))
                           (_%g173224173254%_ _%g173225173257%_))
                       (_%g173224173254%_ _%g173225173257%_))))
               (_%g173224173254%_ _%g173225173257%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173224173254%_
                                                    _%g173225173257%_))))
                                           (_%g173224173254%_
                                            _%g173225173257%_))))
                                   (_%g173224173254%_ _%g173225173257%_))))
                           (_%g173224173254%_ _%g173225173257%_))))
                   (_%g173224173254%_ _%g173225173257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173224173254%_
                                                    _%g173225173257%_)))))
                                       (_%g173223173885%_ _%L172333%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L172333%_))
                                         (let* ((_%g173889173942%_
                                                 (lambda (_%g173890173939%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173890173939%_))))
                                                (_%g173888175113%_
                                                 (lambda (_%g173890173945%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173890173945%_))
                                                       (let ((_%e173896173947%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173890173945%_))))
                 (let ((_%hd173897173950%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173896173947%_)))
                       (_%tl173898173952%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173896173947%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173897173950%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173897173950%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173898173952%_))
                               (let ((_%e173899173955%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173898173952%_))))
                                 (let ((_%hd173900173958%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173899173955%_)))
                                       (_%tl173901173960%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173899173955%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173900173958%_))
                                       (let ((_%e173902173963%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173900173958%_))))
                                         (let ((_%hd173903173966%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173902173963%_)))
                                               (_%tl173904173968%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173902173963%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173903173966%_))
                                               (let ((_%e173905173971%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173903173966%_))))
                                                 (let ((_%hd173906173974%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173905173971%_)))
                                                       (_%tl173907173976%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173905173971%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173906173974%_))
                                                       (let ((_%e173908173979%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173906173974%_))))
                 (let ((_%hd173909173982%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173908173979%_)))
                       (_%tl173910173984%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173908173979%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173910173984%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173907173976%_))
                           (let ((_%e173911173987%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173907173976%_))))
                             (let ((_%hd173912173990%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173911173987%_)))
                                   (_%tl173913173992%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173911173987%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173912173990%_))
                                   (let ((_%e173914173995%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173912173990%_))))
                                     (let ((_%hd173915173998%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173914173995%_)))
                                           (_%tl173916174000%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173914173995%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173915173998%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173915173998%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173916174000%_))
                                                   (let ((_%e173917174003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173916174000%_))))
                                                     (let ((_%hd173918174006%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173917174003%_)))
                                                           (_%tl173919174008%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173917174003%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173918174006%_))
                                                           (let ((_%e173920174011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173918174006%_))))
                     (let ((_%hd173921174014%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173920174011%_)))
                           (_%tl173922174016%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173920174011%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173921174014%_))
                           (let ((_%e173923174019%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173921174014%_))))
                             (let ((_%hd173924174022%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173923174019%_)))
                                   (_%tl173925174024%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173923174019%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173924174022%_))
                                   (let ((_%e173926174027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173924174022%_))))
                                     (let ((_%hd173927174030%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173926174027%_)))
                                           (_%tl173928174032%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173926174027%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173928174032%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173925174024%_))
                                               (let ((_%e173929174035%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173925174024%_))))
                                                 (let ((_%hd173930174038%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173929174035%_)))
                                                       (_%tl173931174040%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173929174035%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173931174040%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173922174016%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173919174008%_))
                       (let ((_%e173932174043%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173919174008%_))))
                         (let ((_%hd173933174046%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173932174043%_)))
                               (_%tl173934174048%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173932174043%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173934174048%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173913173992%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173904173968%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173901173960%_))
                                           (let ((_%e173935174051%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173901173960%_))))
                                             (let ((_%hd173936174054%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173935174051%_)))
                                                   (_%tl173937174056%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173935174051%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173937174056%_))
                                                   ((lambda (_%L174059%_
                                                             _%L174060%_
                                                             _%L174061%_
                                                             _%L174062%_
                                                             _%L174063%_)
                                                      (let* ((_%g174103174165%_
                                                              (lambda (_%g174104174162%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g174104174162%_))))
                     (_%g174102175110%_
                      (lambda (_%g174104174168%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g174104174168%_))
                            (let ((_%e174110174170%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g174104174168%_))))
                              (let ((_%hd174111174173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174110174170%_)))
                                    (_%tl174112174175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174110174170%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd174111174173%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd174111174173%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl174112174175%_))
                                            (let ((_%e174113174178%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl174112174175%_))))
                                              (let ((_%hd174114174181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174113174178%_)))
                                                    (_%tl174115174183%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174113174178%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174115174183%_))
                                                    (let ((_%e174116174186%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174115174183%_))))
                                                      (let ((_%hd174117174189%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174116174186%_)))
                    (_%tl174118174191%_
                     (let () (declare (not safe)) (##cdr _%e174116174186%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd174117174189%_))
                    (let ((_%e174119174194%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd174117174189%_))))
                      (let ((_%hd174120174197%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174119174194%_)))
                            (_%tl174121174199%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174119174194%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd174120174197%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd174120174197%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl174121174199%_))
                                    (let ((_%e174122174202%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl174121174199%_))))
                                      (let ((_%hd174123174205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174122174202%_)))
                                            (_%tl174124174207%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174122174202%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd174123174205%_))
                                            (let ((_%e174125174210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd174123174205%_))))
                                              (let ((_%hd174126174213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e174125174210%_)))
                                                    (_%tl174127174215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e174125174210%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd174126174213%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd174126174213%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl174127174215%_))
                                                            (let ((_%e174128174218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl174127174215%_))))
                      (let ((_%hd174129174221%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174128174218%_)))
                            (_%tl174130174223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174128174218%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174130174223%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl174124174207%_))
                                (let ((_%e174131174226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl174124174207%_))))
                                  (let ((_%hd174132174229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174131174226%_)))
                                        (_%tl174133174231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174131174226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd174132174229%_))
                                        (let ((_%e174134174234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd174132174229%_))))
                                          (let ((_%hd174135174237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174134174234%_)))
                                                (_%tl174136174239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174134174234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd174135174237%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd174135174237%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl174136174239%_))
                                                        (let ((_%e174137174242%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl174136174239%_))))
                  (let ((_%hd174138174245%_
                         (let ()
                           (declare (not safe))
                           (##car _%e174137174242%_)))
                        (_%tl174139174247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e174137174242%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl174139174247%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174133174231%_))
                            (let ((_%e174140174250%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174133174231%_))))
                              (let ((_%hd174141174253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174140174250%_)))
                                    (_%tl174142174255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174140174250%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd174141174253%_))
                                    (let ((_%e174143174258%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd174141174253%_))))
                                      (let ((_%hd174144174261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174143174258%_)))
                                            (_%tl174145174263%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174143174258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd174144174261%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd174144174261%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl174145174263%_))
                                                    (let ((_%e174146174266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl174145174263%_))))
                                                      (let ((_%hd174147174269%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e174146174266%_)))
                    (_%tl174148174271%_
                     (let () (declare (not safe)) (##cdr _%e174146174266%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl174148174271%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl174142174255%_))
                        (if (let ((__tmp176517
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl174142174255%_))))
                              (declare (not safe))
                              (##fx>= __tmp176517 '1))
                            (let ((_g176518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174142174255%_
                                      '1))))
                              (begin
                                (let ((_g176519_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176518_)
                                             (##vector-length _g176518_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176519_ 2)))
                                      (error "Context expects 2 values"
                                             _g176519_)))
                                (let ((_%target174149174274%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176518_ 0)))
                                      (_%tl174151174276%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176518_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl174151174276%_))
                                      (let ((_%e174158174279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl174151174276%_))))
                                        (let ((_%hd174159174282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e174158174279%_)))
                                              (_%tl174160174284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e174158174279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl174160174284%_))
                                              (letrec ((_%loop174152174287%_
                                                        (lambda (_%hd174150174290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref174156174292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd174150174290%_))
                      (let ((_%e174153174295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd174150174290%_))))
                        (let ((_%lp-hd174154174298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e174153174295%_)))
                              (_%lp-tl174155174300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e174153174295%_))))
                          (_%loop174152174287%_
                           _%lp-tl174155174300%_
                           (cons _%lp-hd174154174298%_
                                 _%kw-ref174156174292%_))))
                      (let ((_%kw-ref174157174303%_
                             (reverse _%kw-ref174156174292%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl174118174191%_))
                            ((lambda (_%L174306%_
                                      _%L174307%_
                                      _%L174308%_
                                      _%L174309%_
                                      _%L174310%_)
                               (let* ((_%kw-count174361%_
                                       (length (let ((__tmp176520
                                                      (lambda (_%g174353174356%_
                                                               _%g174354174358%_)
                                                        (cons _%g174353174356%_
                                                              _%g174354174358%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp176520
                                                  '()
                                                  _%L174307%_))))
                                      (_%self-index174363%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count174361%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L174061%_))
                                     (let* ((_%g174367174381%_
                                             (lambda (_%g174368174378%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g174368174378%_))))
                                            (_%g174366174504%_
                                             (lambda (_%g174368174384%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g174368174384%_))
                                                   (let ((_%e174371174386%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g174368174384%_))))
                                                     (let ((_%hd174372174389%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e174371174386%_)))
                                                           (_%tl174373174391%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e174371174386%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174373174391%_))
                                                           (let ((_%e174374174394%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174373174391%_))))
                     (let ((_%hd174375174397%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174374174394%_)))
                           (_%tl174376174399%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174374174394%_))))
                       ((lambda (_%L174402%_ _%L174403%_)
                          (let* ((_%self174420%_
                                  (list-ref _%L174403%_ _%self-index174363%_))
                                 (_%receiver174425%_
                                  (let ((_%$e174422%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L174402%_))))
                                    (if _%$e174422%_
                                        _%$e174422%_
                                        _%self174420%_))))
                            (for-each
                             (lambda (_%g174427174429%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver174425%_
                                _%method-calls172353%_
                                _%slot-refs172354%_
                                _%g174427174429%_))
                             _%L174402%_)
                            (if (_%no-specializer?172357%_)
                                _%stx172261%_
                                (let* ((_%specializer-id174438%_
                                        (let* ((_%id174432%_
                                                (let ((__tmp176521
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L172334%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp176521
                                                   '"::specialize")))
                                               (_%specializer-id174435%_
                                                (let ((__tmp176522
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx172261%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id174432%_
                                                   __tmp176522))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id174435%_))
                                          _%specializer-id174435%_))
                                       (_%$klass174440%_
                                        (let ((__tmp176523
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176523)))
                                       (_%$method-table174442%_
                                        (let ((__tmp176524
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp176524)))
                                       (_%methods174444%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls172353%_)))
                                       (_%$methods174448%_
                                        (map (lambda (_%id174446%_)
                                               (let ((__tmp176525
                                                      (gensym _%id174446%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176525)))
                                             _%methods174444%_))
                                       (_%_174457%_
                                        (for-each
                                         (lambda (_%g174449174452%_
                                                  _%g174450174454%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls172353%_
                                              _%g174449174452%_
                                              _%g174450174454%_)))
                                         _%methods174444%_
                                         _%$methods174448%_))
                                       (_%methods-bind174467%_
                                        (map (lambda (_%g174459174462%_
                                                      _%g174460174464%_)
                                               (_%generate-method-bind172263%_
                                                _%$klass174440%_
                                                _%$method-table174442%_
                                                _%g174459174462%_
                                                _%g174460174464%_))
                                             _%methods174444%_
                                             _%$methods174448%_))
                                       (_%slots174469%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs172354%_)))
                                       (_%$slots174473%_
                                        (map (lambda (_%id174471%_)
                                               (let ((__tmp176526
                                                      (gensym _%id174471%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp176526)))
                                             _%slots174469%_))
                                       (_%_174482%_
                                        (for-each
                                         (lambda (_%g174474174477%_
                                                  _%g174475174479%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs172354%_
                                              _%g174474174477%_
                                              _%g174475174479%_)))
                                         _%slots174469%_
                                         _%$slots174473%_))
                                       (_%slots-bind174491%_
                                        (map (lambda (_%g174483174486%_
                                                      _%g174484174488%_)
                                               (_%generate-slot-bind172264%_
                                                _%$klass174440%_
                                                _%g174483174486%_
                                                _%g174484174488%_))
                                             _%slots174469%_
                                             _%$slots174473%_))
                                       (_%specializer-impl174499%_
                                        (let* ((_%specializer-body174497%_
                                                (map (lambda (_%g174492174494%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver174425%_
                                                        _%$klass174440%_
                                                        _%method-calls172353%_
                                                        _%slot-refs172354%_
                                                        _%g174492174494%_))
                                                     _%L174402%_))
                                               (__tmp176527
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L174063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L174062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp176528
                                   (cons '%#lambda
                                         (cons _%L174403%_
                                               _%specializer-body174497%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp176528 _%L174061%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L174060%_ '())))
                                      '()))
                          '())
                    (cons _%L174059%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp176527
                                           _%stx172261%_)))
                                       (_%specializer-impl174501%_
                                        (_%generate-specializer-impl172265%_
                                         _%$klass174440%_
                                         _%$method-table174442%_
                                         _%methods-bind174467%_
                                         _%slots-bind174491%_
                                         _%specializer-impl174499%_)))
                                  (let ((__tmp176530
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L172334%_)))
                                        (__tmp176529
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id174438%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp176530
                                     '" => "
                                     __tmp176529))
                                  (_%generate-specializer-def172266%_
                                   _%L172334%_
                                   _%specializer-id174438%_
                                   _%specializer-impl174501%_)))))
                        _%tl174376174399%_
                        _%hd174375174397%_)))
                   (_%g174367174381%_ _%g174368174384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g174367174381%_
                                                    _%g174368174384%_)))))
                                       (_%g174366174504%_ _%L174061%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L174061%_))
                                         (let* ((_%g174508174538%_
                                                 (lambda (_%g174509174535%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g174509174535%_))))
                                                (_%g174507175106%_
                                                 (lambda (_%g174509174541%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g174509174541%_))
                                                       (let ((_%e174513174543%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g174509174541%_))))
                 (let ((_%hd174514174546%_
                        (let ()
                          (declare (not safe))
                          (##car _%e174513174543%_)))
                       (_%tl174515174548%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e174513174543%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl174515174548%_))
                       (let ((_%e174516174551%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl174515174548%_))))
                         (let ((_%hd174517174554%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e174516174551%_)))
                               (_%tl174518174556%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e174516174551%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd174517174554%_))
                               (let ((_%e174519174559%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd174517174554%_))))
                                 (let ((_%hd174520174562%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e174519174559%_)))
                                       (_%tl174521174564%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e174519174559%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd174520174562%_))
                                       (let ((_%e174522174567%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd174520174562%_))))
                                         (let ((_%hd174523174570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e174522174567%_)))
                                               (_%tl174524174572%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e174522174567%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd174523174570%_))
                                               (let ((_%e174525174575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd174523174570%_))))
                                                 (let ((_%hd174526174578%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e174525174575%_)))
                                                       (_%tl174527174580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e174525174575%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl174527174580%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl174524174572%_))
                                                           (let ((_%e174528174583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl174524174572%_))))
                     (let ((_%hd174529174586%_
                            (let ()
                              (declare (not safe))
                              (##car _%e174528174583%_)))
                           (_%tl174530174588%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e174528174583%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl174530174588%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl174521174564%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl174518174556%_))
                                   (let ((_%e174531174591%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl174518174556%_))))
                                     (let ((_%hd174532174594%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e174531174591%_)))
                                           (_%tl174533174596%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e174531174591%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl174533174596%_))
                                           ((lambda (_%L174599%_
                                                     _%L174600%_
                                                     _%L174601%_)
                                              (let* ((_%g174625174639%_
                                                      (lambda (_%g174626174636%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174626174636%_))))
                                                     (_%g174624174686%_
                                                      (lambda (_%g174626174642%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174626174642%_))
                                                            (let ((_%e174629174644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174626174642%_))))
                      (let ((_%hd174630174647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174629174644%_)))
                            (_%tl174631174649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174629174644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl174631174649%_))
                            (let ((_%e174632174652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl174631174649%_))))
                              (let ((_%hd174633174655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e174632174652%_)))
                                    (_%tl174634174657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e174632174652%_))))
                                ((lambda (_%L174660%_ _%L174661%_)
                                   (let* ((_%self174674%_
                                           (list-ref
                                            _%L174661%_
                                            _%self-index174363%_))
                                          (_%receiver174679%_
                                           (let ((_%$e174676%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L174660%_))))
                                             (if _%$e174676%_
                                                 _%$e174676%_
                                                 _%self174674%_))))
                                     (for-each
                                      (lambda (_%g174681174683%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver174679%_
                                         _%method-calls172353%_
                                         _%slot-refs172354%_
                                         _%g174681174683%_))
                                      _%L174660%_)))
                                 _%tl174634174657%_
                                 _%hd174633174655%_)))
                            (_%g174625174639%_ _%g174626174642%_))))
                    (_%g174625174639%_ _%g174626174642%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174624174686%_
                                                 _%L174600%_))
                                              (let* ((_%g174689174708%_
                                                      (lambda (_%g174690174705%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174690174705%_))))
                                                     (_%g174688174819%_
                                                      (lambda (_%g174690174711%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174690174711%_))
                                                            (let ((_%e174692174713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174690174711%_))))
                      (let ((_%hd174693174716%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174692174713%_)))
                            (_%tl174694174718%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174692174713%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl174694174718%_))
                            (let ((_g176531_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl174694174718%_
                                      '0))))
                              (begin
                                (let ((_g176532_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g176531_)
                                             (##vector-length _g176531_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g176532_ 2)))
                                      (error "Context expects 2 values"
                                             _g176532_)))
                                (let ((_%target174695174721%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176531_ 0)))
                                      (_%tl174697174723%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g176531_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl174697174723%_))
                                      (letrec ((_%loop174698174726%_
                                                (lambda (_%hd174696174729%_
                                                         _%clause174702174731%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd174696174729%_))
                                                      (let ((_%e174699174734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd174696174729%_))))
                (let ((_%lp-hd174700174737%_
                       (let () (declare (not safe)) (##car _%e174699174734%_)))
                      (_%lp-tl174701174739%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e174699174734%_))))
                  (_%loop174698174726%_
                   _%lp-tl174701174739%_
                   (cons _%lp-hd174700174737%_ _%clause174702174731%_))))
              (let ((_%clause174703174742%_ (reverse _%clause174702174731%_)))
                ((lambda (_%L174745%_)
                   (for-each
                    (lambda (_%clause174758%_)
                      (let* ((_%g174760174771%_
                              (lambda (_%g174761174768%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174761174768%_))))
                             (_%g174759174809%_
                              (lambda (_%g174761174774%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174761174774%_))
                                    (let ((_%e174764174776%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174761174774%_))))
                                      (let ((_%hd174765174779%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174764174776%_)))
                                            (_%tl174766174781%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174764174776%_))))
                                        ((lambda (_%L174784%_ _%L174785%_)
                                           (let* ((_%self174797%_
                                                   (list-ref
                                                    _%L174785%_
                                                    _%self-index174363%_))
                                                  (_%receiver174802%_
                                                   (let ((_%$e174799%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174799%_
                                                         _%$e174799%_
                                                         _%self174797%_))))
                                             (for-each
                                              (lambda (_%g174804174806%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174802%_
                                                 _%method-calls172353%_
                                                 _%slot-refs172354%_
                                                 _%g174804174806%_))
                                              _%L174784%_)))
                                         _%tl174766174781%_
                                         _%hd174765174779%_)))
                                    (_%g174760174771%_ _%g174761174774%_)))))
                        (_%g174759174809%_ _%clause174758%_)))
                    (let ((__tmp176533
                           (lambda (_%g174811174814%_ _%g174812174816%_)
                             (cons _%g174811174814%_ _%g174812174816%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176533 '() _%L174745%_))))
                 _%clause174703174742%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop174698174726%_
                                         _%target174695174721%_
                                         '()))
                                      (_%g174689174708%_ _%g174690174711%_)))))
                            (_%g174689174708%_ _%g174690174711%_))))
                    (_%g174689174708%_ _%g174690174711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174688174819%_
                                                 _%L174599%_))
                                              (if (_%no-specializer?172357%_)
                                                  _%stx172261%_
                                                  (let* ((_%specializer-id174828%_
                                                          (let* ((_%id174822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176534
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L172334%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp176534 '"::specialize")))
                         (_%specializer-id174825%_
                          (let ((__tmp176535
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx172261%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174822%_
                             __tmp176535))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174825%_))
                    _%specializer-id174825%_))
                 (_%$klass174830%_
                  (let ((__tmp176536
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176536)))
                 (_%$method-table174832%_
                  (let ((__tmp176537
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp176537)))
                 (_%methods174834%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls172353%_)))
                 (_%$methods174838%_
                  (map (lambda (_%id174836%_)
                         (let ((__tmp176538 (gensym _%id174836%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176538)))
                       _%methods174834%_))
                 (_%_174847%_
                  (for-each
                   (lambda (_%g174839174842%_ _%g174840174844%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls172353%_
                        _%g174839174842%_
                        _%g174840174844%_)))
                   _%methods174834%_
                   _%$methods174838%_))
                 (_%methods-bind174857%_
                  (map (lambda (_%g174849174852%_ _%g174850174854%_)
                         (_%generate-method-bind172263%_
                          _%$klass174830%_
                          _%$method-table174832%_
                          _%g174849174852%_
                          _%g174850174854%_))
                       _%methods174834%_
                       _%$methods174838%_))
                 (_%slots174859%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs172354%_)))
                 (_%$slots174863%_
                  (map (lambda (_%id174861%_)
                         (let ((__tmp176539 (gensym _%id174861%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp176539)))
                       _%slots174859%_))
                 (_%_174872%_
                  (for-each
                   (lambda (_%g174864174867%_ _%g174865174869%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs172354%_
                        _%g174864174867%_
                        _%g174865174869%_)))
                   _%slots174859%_
                   _%$slots174863%_))
                 (_%slots-bind174881%_
                  (map (lambda (_%g174873174876%_ _%g174874174878%_)
                         (_%generate-slot-bind172264%_
                          _%$klass174830%_
                          _%g174873174876%_
                          _%g174874174878%_))
                       _%slots174859%_
                       _%$slots174863%_))
                 (_%specializer-lambda-expr174959%_
                  (let* ((_%g174883174897%_
                          (lambda (_%g174884174894%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174884174894%_))))
                         (_%g174882174956%_
                          (lambda (_%g174884174900%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174884174900%_))
                                (let ((_%e174887174902%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174884174900%_))))
                                  (let ((_%hd174888174905%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174887174902%_)))
                                        (_%tl174889174907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174887174902%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174889174907%_))
                                        (let ((_%e174890174910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174889174907%_))))
                                          (let ((_%hd174891174913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174890174910%_)))
                                                (_%tl174892174915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174890174910%_))))
                                            ((lambda (_%L174918%_ _%L174919%_)
                                               (let* ((_%self174942%_
                                                       (list-ref
                                                        _%L174919%_
                                                        _%self-index174363%_))
                                                      (_%receiver174947%_
                                                       (let ((_%$e174944%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174918%_))))
                 (if _%$e174944%_ _%$e174944%_ _%self174942%_)))
              (_%body174953%_
               (map (lambda (_%g174948174950%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174947%_
                       _%$klass174830%_
                       _%method-calls172353%_
                       _%slot-refs172354%_
                       _%g174948174950%_))
                    _%L174918%_))
              (__tmp176540 (cons '%#lambda (cons _%L174919%_ _%body174953%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp176540
                                                  _%L174600%_)))
                                             _%tl174892174915%_
                                             _%hd174891174913%_)))
                                        (_%g174883174897%_
                                         _%g174884174900%_))))
                                (_%g174883174897%_ _%g174884174900%_)))))
                    (_%g174882174956%_ _%L174600%_)))
                 (_%specializer-case-lambda-expr175099%_
                  (let* ((_%g174961174980%_
                          (lambda (_%g174962174977%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174962174977%_))))
                         (_%g174960175096%_
                          (lambda (_%g174962174983%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174962174983%_))
                                (let ((_%e174964174985%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174962174983%_))))
                                  (let ((_%hd174965174988%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174964174985%_)))
                                        (_%tl174966174990%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174964174985%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174966174990%_))
                                        (let ((_g176541_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174966174990%_
                                                  '0))))
                                          (begin
                                            (let ((_g176542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g176541_)
                                                         (##vector-length
                                                          _g176541_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g176542_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g176542_)))
                                            (let ((_%target174967174993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176541_
                                                      0)))
                                                  (_%tl174969174995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g176541_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174969174995%_))
                                                  (letrec ((_%loop174970174998%_
                                                            (lambda (_%hd174968175001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174974175003%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174968175001%_))
                          (let ((_%e174971175006%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174968175001%_))))
                            (let ((_%lp-hd174972175009%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174971175006%_)))
                                  (_%lp-tl174973175011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174971175006%_))))
                              (_%loop174970174998%_
                               _%lp-tl174973175011%_
                               (cons _%lp-hd174972175009%_
                                     _%clause174974175003%_))))
                          (let ((_%clause174975175014%_
                                 (reverse _%clause174974175003%_)))
                            ((lambda (_%L175017%_)
                               (let* ((_%clauses175094%_
                                       (map (lambda (_%clause175031%_)
                                              (let* ((_%g175033175044%_
                                                      (lambda (_%g175034175041%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g175034175041%_))))
                                                     (_%g175032175084%_
                                                      (lambda (_%g175034175047%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g175034175047%_))
                                                            (let ((_%e175037175049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g175034175047%_))))
                      (let ((_%hd175038175052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e175037175049%_)))
                            (_%tl175039175054%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e175037175049%_))))
                        ((lambda (_%L175057%_ _%L175058%_)
                           (let* ((_%self175070%_
                                   (list-ref _%L175058%_ _%self-index174363%_))
                                  (_%receiver175075%_
                                   (let ((_%$e175072%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L175057%_))))
                                     (if _%$e175072%_
                                         _%$e175072%_
                                         _%self175070%_)))
                                  (_%body175081%_
                                   (map (lambda (_%g175076175078%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver175075%_
                                           _%$klass174830%_
                                           _%method-calls172353%_
                                           _%slot-refs172354%_
                                           _%g175076175078%_))
                                        _%L175057%_)))
                             (cons _%L175058%_ _%body175081%_)))
                         _%tl175039175054%_
                         _%hd175038175052%_)))
                    (_%g175033175044%_ _%g175034175047%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g175032175084%_
                                                 _%clause175031%_)))
                                            (let ((__tmp176543
                                                   (lambda (_%g175086175089%_
                                                            _%g175087175091%_)
                                                     (cons _%g175086175089%_
                                                           _%g175087175091%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp176543
                                               '()
                                               _%L175017%_))))
                                      (__tmp176544
                                       (cons '%#case-lambda
                                             _%clauses175094%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp176544
                                  _%L174599%_)))
                             _%clause174975175014%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174970174998%_
                                                     _%target174967174993%_
                                                     '()))
                                                  (_%g174961174980%_
                                                   _%g174962174983%_)))))
                                        (_%g174961174980%_
                                         _%g174962174983%_))))
                                (_%g174961174980%_ _%g174962174983%_)))))
                    (_%g174960175096%_ _%L174599%_)))
                 (_%specializer-impl175101%_
                  (let ((__tmp176545
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L174063%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L174062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp176546
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L174601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174959%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr175099%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp176546
                                                _%stx172261%_))
                                             '()))
                                 '())
                           (cons _%L174060%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L174059%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp176545 _%stx172261%_)))
                 (_%specializer-impl175103%_
                  (_%generate-specializer-impl172265%_
                   _%$klass174830%_
                   _%$method-table174832%_
                   _%methods-bind174857%_
                   _%slots-bind174881%_
                   _%specializer-impl175101%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176548
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L172334%_)))
                                                          (__tmp176547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174828%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp176548
                                                       '" => "
                                                       __tmp176547))
                                                    (_%generate-specializer-def172266%_
                                                     _%L172334%_
                                                     _%specializer-id174828%_
                                                     _%specializer-impl175103%_))))
                                            _%hd174532174594%_
                                            _%hd174529174586%_
                                            _%hd174526174578%_)
                                           (_%g174508174538%_
                                            _%g174509174541%_))))
                                   (_%g174508174538%_ _%g174509174541%_))
                               (_%g174508174538%_ _%g174509174541%_))
                           (_%g174508174538%_ _%g174509174541%_))))
                   (_%g174508174538%_ _%g174509174541%_))
               (_%g174508174538%_ _%g174509174541%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g174508174538%_
                                                _%g174509174541%_))))
                                       (_%g174508174538%_ _%g174509174541%_))))
                               (_%g174508174538%_ _%g174509174541%_))))
                       (_%g174508174538%_ _%g174509174541%_))))
               (_%g174508174538%_ _%g174509174541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g174507175106%_ _%L174061%_))
                                         _%stx172261%_))))
                             _%hd174159174282%_
                             _%kw-ref174157174303%_
                             _%hd174147174269%_
                             _%hd174138174245%_
                             _%hd174129174221%_)
                            (_%g174103174165%_ _%g174104174168%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop174152174287%_
                                                 _%target174149174274%_
                                                 '()))
                                              (_%g174103174165%_
                                               _%g174104174168%_))))
                                      (_%g174103174165%_ _%g174104174168%_)))))
                            (_%g174103174165%_ _%g174104174168%_))
                        (_%g174103174165%_ _%g174104174168%_))
                    (_%g174103174165%_ _%g174104174168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174103174165%_
                                                     _%g174104174168%_))
                                                (_%g174103174165%_
                                                 _%g174104174168%_))
                                            (_%g174103174165%_
                                             _%g174104174168%_))))
                                    (_%g174103174165%_ _%g174104174168%_))))
                            (_%g174103174165%_ _%g174104174168%_))
                        (_%g174103174165%_ _%g174104174168%_))))
                (_%g174103174165%_ _%g174104174168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174103174165%_
                                                     _%g174104174168%_))
                                                (_%g174103174165%_
                                                 _%g174104174168%_))))
                                        (_%g174103174165%_
                                         _%g174104174168%_))))
                                (_%g174103174165%_ _%g174104174168%_))
                            (_%g174103174165%_ _%g174104174168%_))))
                    (_%g174103174165%_ _%g174104174168%_))
                (_%g174103174165%_ _%g174104174168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174103174165%_
                                                     _%g174104174168%_))))
                                            (_%g174103174165%_
                                             _%g174104174168%_))))
                                    (_%g174103174165%_ _%g174104174168%_))
                                (_%g174103174165%_ _%g174104174168%_))
                            (_%g174103174165%_ _%g174104174168%_))))
                    (_%g174103174165%_ _%g174104174168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g174103174165%_
                                                     _%g174104174168%_))))
                                            (_%g174103174165%_
                                             _%g174104174168%_))
                                        (_%g174103174165%_ _%g174104174168%_))
                                    (_%g174103174165%_ _%g174104174168%_))))
                            (_%g174103174165%_ _%g174104174168%_)))))
                (_%g174102175110%_ _%L174060%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173936174054%_
                                                    _%hd173933174046%_
                                                    _%hd173930174038%_
                                                    _%hd173927174030%_
                                                    _%hd173909173982%_)
                                                   (_%g173889173942%_
                                                    _%g173890173945%_))))
                                           (_%g173889173942%_
                                            _%g173890173945%_))
                                       (_%g173889173942%_ _%g173890173945%_))
                                   (_%g173889173942%_ _%g173890173945%_))
                               (_%g173889173942%_ _%g173890173945%_))))
                       (_%g173889173942%_ _%g173890173945%_))
                   (_%g173889173942%_ _%g173890173945%_))
               (_%g173889173942%_ _%g173890173945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173889173942%_
                                                _%g173890173945%_))
                                           (_%g173889173942%_
                                            _%g173890173945%_))))
                                   (_%g173889173942%_ _%g173890173945%_))))
                           (_%g173889173942%_ _%g173890173945%_))))
                   (_%g173889173942%_ _%g173890173945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173889173942%_
                                                    _%g173890173945%_))
                                               (_%g173889173942%_
                                                _%g173890173945%_))
                                           (_%g173889173942%_
                                            _%g173890173945%_))))
                                   (_%g173889173942%_ _%g173890173945%_))))
                           (_%g173889173942%_ _%g173890173945%_))
                       (_%g173889173942%_ _%g173890173945%_))))
               (_%g173889173942%_ _%g173890173945%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173889173942%_
                                                _%g173890173945%_))))
                                       (_%g173889173942%_ _%g173890173945%_))))
                               (_%g173889173942%_ _%g173890173945%_))
                           (_%g173889173942%_ _%g173890173945%_))
                       (_%g173889173942%_ _%g173890173945%_))))
               (_%g173889173942%_ _%g173890173945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173888175113%_ _%L172333%_))
                                         _%stx172261%_))))))))
                  (_%__kont175347175348%_ (lambda () _%stx172261%_)))
              (let ((_%__match175376175377%_
                     (lambda (_%e172273172301%_
                              _%hd172274172304%_
                              _%tl172275172306%_
                              _%e172276172309%_
                              _%hd172277172312%_
                              _%tl172278172314%_
                              _%e172279172317%_
                              _%hd172280172320%_
                              _%tl172281172322%_
                              _%e172282172325%_
                              _%hd172283172328%_
                              _%tl172284172330%_)
                       (let ((_%L172333%_ _%hd172283172328%_)
                             (_%L172334%_ _%hd172280172320%_))
                         (if (let ((__tmp176549
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L172334%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp176549))
                             (_%__kont175345175346%_ _%L172333%_ _%L172334%_)
                             (_%__kont175347175348%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175343175344%_))
                    (let ((_%e172273172301%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175343175344%_))))
                      (let ((_%tl172275172306%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172273172301%_)))
                            (_%hd172274172304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172273172301%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl172275172306%_))
                            (let ((_%e172276172309%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl172275172306%_))))
                              (let ((_%tl172278172314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172276172309%_)))
                                    (_%hd172277172312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172276172309%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd172277172312%_))
                                    (let ((_%e172279172317%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd172277172312%_))))
                                      (let ((_%tl172281172322%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172279172317%_)))
                                            (_%hd172280172320%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172279172317%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172281172322%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172278172314%_))
                                                (let ((_%e172282172325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172278172314%_))))
                                                  (let ((_%tl172284172330%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172282172325%_)))
                                                        (_%hd172283172328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172282172325%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172284172330%_))
                                                        (_%__match175376175377%_
                                                         _%e172273172301%_
                                                         _%hd172274172304%_
                                                         _%tl172275172306%_
                                                         _%e172276172309%_
                                                         _%hd172277172312%_
                                                         _%tl172278172314%_
                                                         _%e172279172317%_
                                                         _%hd172280172320%_
                                                         _%tl172281172322%_
                                                         _%e172282172325%_
                                                         _%hd172283172328%_
                                                         _%tl172284172330%_)
                                                        (_%__kont175347175348%_))))
                                                (_%__kont175347175348%_))
                                            (_%__kont175347175348%_))))
                                    (_%__kont175347175348%_))))
                            (_%__kont175347175348%_))))
                    (_%__kont175347175348%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self172113%_ _%stx172114%_)
        (let* ((_%__stx175379175380%_ _%stx172114%_)
               (_%g172117172150%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175379175380%_)))))
          (let ((_%__kont175381175382%_ (lambda (_%L172240%_) _%L172240%_))
                (_%__kont175383175384%_
                 (lambda (_%L172179%_ _%L172180%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self172113%_ _%L172179%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx175379175380%_))
                (let ((_%e172120172200%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx175379175380%_))))
                  (let ((_%tl172122172205%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172120172200%_)))
                        (_%hd172121172203%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172120172200%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172122172205%_))
                        (let ((_%e172123172208%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172122172205%_))))
                          (let ((_%tl172125172213%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172123172208%_)))
                                (_%hd172124172211%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172123172208%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172124172211%_))
                                (let ((_%e172126172216%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172124172211%_))))
                                  (let ((_%tl172128172221%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172126172216%_)))
                                        (_%hd172127172219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172126172216%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd172127172219%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd172127172219%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172128172221%_))
                                                (let ((_%e172129172224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172128172221%_))))
                                                  (let ((_%tl172131172229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172129172224%_)))
                                                        (_%hd172130172227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172129172224%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172131172229%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl172125172213%_))
                                                            (let ((_%e172132172232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172125172213%_))))
                      (let ((_%tl172134172237%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172132172232%_)))
                            (_%hd172133172235%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172132172232%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172134172237%_))
                            (_%__kont175381175382%_ _%hd172130172227%_)
                            (let ()
                              (declare (not safe))
                              (_%g172117172150%_)))))
                    (let () (declare (not safe)) (_%g172117172150%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl172125172213%_))
                    (let ((_%e172143172171%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl172125172213%_))))
                      (let ((_%tl172145172176%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172143172171%_)))
                            (_%hd172144172174%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172143172171%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl172145172176%_))
                            (_%__kont175383175384%_
                             _%hd172144172174%_
                             _%hd172124172211%_)
                            (let ()
                              (declare (not safe))
                              (_%g172117172150%_)))))
                    (let () (declare (not safe)) (_%g172117172150%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl172125172213%_))
                                                    (let ((_%e172143172171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl172125172213%_))))
                                                      (let ((_%tl172145172176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e172143172171%_)))
                    (_%hd172144172174%_
                     (let () (declare (not safe)) (##car _%e172143172171%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl172145172176%_))
                    (_%__kont175383175384%_
                     _%hd172144172174%_
                     _%hd172124172211%_)
                    (let () (declare (not safe)) (_%g172117172150%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172117172150%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl172125172213%_))
                                                (let ((_%e172143172171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl172125172213%_))))
                                                  (let ((_%tl172145172176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e172143172171%_)))
                                                        (_%hd172144172174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e172143172171%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl172145172176%_))
                                                        (_%__kont175383175384%_
                                                         _%hd172144172174%_
                                                         _%hd172124172211%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g172117172150%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g172117172150%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl172125172213%_))
                                            (let ((_%e172143172171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl172125172213%_))))
                                              (let ((_%tl172145172176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172143172171%_)))
                                                    (_%hd172144172174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172143172171%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl172145172176%_))
                                                    (_%__kont175383175384%_
                                                     _%hd172144172174%_
                                                     _%hd172124172211%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g172117172150%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g172117172150%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172125172213%_))
                                    (let ((_%e172143172171%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172125172213%_))))
                                      (let ((_%tl172145172176%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172143172171%_)))
                                            (_%hd172144172174%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172143172171%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl172145172176%_))
                                            (_%__kont175383175384%_
                                             _%hd172144172174%_
                                             _%hd172124172211%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g172117172150%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g172117172150%_))))))
                        (let () (declare (not safe)) (_%g172117172150%_)))))
                (let () (declare (not safe)) (_%g172117172150%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self172029%_ _%stx172030%_)
        (let* ((_%g172032172053%_
                (lambda (_%g172033172050%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g172033172050%_))))
               (_%g172031172110%_
                (lambda (_%g172033172056%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g172033172056%_))
                      (let ((_%e172037172058%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g172033172056%_))))
                        (let ((_%hd172038172061%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172037172058%_)))
                              (_%tl172039172063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172037172058%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl172039172063%_))
                              (let ((_%e172040172066%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl172039172063%_))))
                                (let ((_%hd172041172069%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e172040172066%_)))
                                      (_%tl172042172071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e172040172066%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl172042172071%_))
                                      (let ((_%e172043172074%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl172042172071%_))))
                                        (let ((_%hd172044172077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e172043172074%_)))
                                              (_%tl172045172079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e172043172074%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl172045172079%_))
                                              (let ((_%e172046172082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl172045172079%_))))
                                                (let ((_%hd172047172085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e172046172082%_)))
                                                      (_%tl172048172087%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e172046172082%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl172048172087%_))
                                                      ((lambda (_%L172090%_
                                                                _%L172091%_
                                                                _%L172092%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self172029%_
                                                            _%L172091%_)))
                                                       _%hd172047172085%_
                                                       _%hd172044172077%_
                                                       _%hd172041172069%_)
                                                      (_%g172032172053%_
                                                       _%g172033172056%_))))
                                              (_%g172032172053%_
                                               _%g172033172056%_))))
                                      (_%g172032172053%_ _%g172033172056%_))))
                              (_%g172032172053%_ _%g172033172056%_))))
                      (_%g172032172053%_ _%g172033172056%_)))))
          (_%g172031172110%_ _%stx172030%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170990%_ _%stx170991%_)
        (let* ((_%__stx175445175446%_ _%stx170991%_)
               (_%g170999171221%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx175445175446%_)))))
          (let ((_%__kont175447175448%_
                 (lambda (_%L171978%_ _%L171979%_ _%L171980%_ _%L171981%_)
                   (let ((__tmp176551
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170990%_ 'methods)))
                         (__tmp176550
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171979%_))))
                     (declare (not safe))
                     (hash-put! __tmp176551 __tmp176550 '#t))
                   (for-each
                    (lambda (_%g172014172016%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170990%_ _%g172014172016%_)))
                    (let ((__tmp176552
                           (lambda (_%g172018172021%_ _%g172019172023%_)
                             (cons _%g172018172021%_ _%g172019172023%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176552 '() _%L171978%_)))))
                (_%__kont175451175452%_
                 (lambda (_%L171813%_
                          _%L171814%_
                          _%L171815%_
                          _%L171816%_
                          _%L171817%_)
                   (let ((__tmp176554
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170990%_ 'methods)))
                         (__tmp176553
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171814%_))))
                     (declare (not safe))
                     (hash-put! __tmp176554 __tmp176553 '#t))
                   (for-each
                    (lambda (_%g171857171859%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170990%_ _%g171857171859%_)))
                    (let ((__tmp176555
                           (lambda (_%g171861171864%_ _%g171862171866%_)
                             (cons _%g171861171864%_ _%g171862171866%_))))
                      (declare (not safe))
                      (__foldr1 __tmp176555 '() _%L171813%_)))))
                (_%__kont175455175456%_
                 (lambda (_%L171646%_ _%L171647%_ _%L171648%_)
                   (let ((__tmp176557
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170990%_ 'slots)))
                         (__tmp176556
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171646%_))))
                     (declare (not safe))
                     (hash-put! __tmp176557 __tmp176556 '#t))))
                (_%__kont175457175458%_
                 (lambda (_%L171523%_ _%L171524%_ _%L171525%_ _%L171526%_)
                   (let ((__tmp176559
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170990%_ 'slots)))
                         (__tmp176558
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171524%_))))
                     (declare (not safe))
                     (hash-put! __tmp176559 __tmp176558 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170990%_ _%L171523%_))))
                (_%__kont175459175460%_
                 (lambda (_%L171397%_ _%L171398%_)
                   (let* ((_%accessor171420%_
                           (let ((__tmp176560
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171398%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176560)))
                          (_%klass171422%_
                           (let ((__tmp176561
                                  (##structure-ref
                                   _%accessor171420%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170991%_
                              __tmp176561)))
                          (_%slot171424%_
                           (##structure-ref
                            _%accessor171420%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor171420%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171422%_
                                    _%slot171424%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171422%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176563
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170990%_ 'slots)))
                               (__tmp176562
                                (##structure-ref
                                 _%accessor171420%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp176563 __tmp176562 '#t))))))
                (_%__kont175461175462%_
                 (lambda (_%L171297%_ _%L171298%_ _%L171299%_)
                   (let* ((_%mutator171326%_
                           (let ((__tmp176564
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L171299%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp176564)))
                          (_%klass171328%_
                           (let ((__tmp176565
                                  (##structure-ref
                                   _%mutator171326%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170991%_
                              __tmp176565)))
                          (_%slot171330%_
                           (##structure-ref
                            _%mutator171326%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator171326%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass171328%_
                                    _%slot171330%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass171328%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp176566
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170990%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp176566 _%slot171330%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170990%_ _%L171297%_)))))
                (_%__kont175463175464%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170990%_ _%stx170991%_)))))
            (let* ((_%__match175944175945%_
                    (lambda (_%e171193171233%_
                             _%hd171194171236%_
                             _%tl171195171238%_
                             _%e171196171241%_
                             _%hd171197171244%_
                             _%tl171198171246%_
                             _%e171199171249%_
                             _%hd171200171252%_
                             _%tl171201171254%_
                             _%e171202171257%_
                             _%hd171203171260%_
                             _%tl171204171262%_
                             _%e171205171265%_
                             _%hd171206171268%_
                             _%tl171207171270%_
                             _%e171208171273%_
                             _%hd171209171276%_
                             _%tl171210171278%_
                             _%e171211171281%_
                             _%hd171212171284%_
                             _%tl171213171286%_
                             _%e171214171289%_
                             _%hd171215171292%_
                             _%tl171216171294%_)
                      (let ((_%L171297%_ _%hd171215171292%_)
                            (_%L171298%_ _%hd171212171284%_)
                            (_%L171299%_ _%hd171203171260%_))
                        (if (and (let ((__tmp176567
                                        (let ((__tmp176568
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171299%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176568))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176567
                                    'gxc#!mutator::t))
                                 (let ((__tmp176569
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170990%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171298%_
                                    __tmp176569)))
                            (_%__kont175461175462%_
                             _%L171297%_
                             _%L171298%_
                             _%L171299%_)
                            (_%__kont175463175464%_)))))
                   (_%__match175942175943%_
                    (lambda (_%e171193171233%_
                             _%hd171194171236%_
                             _%tl171195171238%_
                             _%e171196171241%_
                             _%hd171197171244%_
                             _%tl171198171246%_
                             _%e171199171249%_
                             _%hd171200171252%_
                             _%tl171201171254%_
                             _%e171202171257%_
                             _%hd171203171260%_
                             _%tl171204171262%_
                             _%e171205171265%_
                             _%hd171206171268%_
                             _%tl171207171270%_
                             _%e171208171273%_
                             _%hd171209171276%_
                             _%tl171210171278%_
                             _%e171211171281%_
                             _%hd171212171284%_
                             _%tl171213171286%_
                             _%e171214171289%_
                             _%hd171215171292%_
                             _%tl171216171294%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171216171294%_))
                          (_%__match175944175945%_
                           _%e171193171233%_
                           _%hd171194171236%_
                           _%tl171195171238%_
                           _%e171196171241%_
                           _%hd171197171244%_
                           _%tl171198171246%_
                           _%e171199171249%_
                           _%hd171200171252%_
                           _%tl171201171254%_
                           _%e171202171257%_
                           _%hd171203171260%_
                           _%tl171204171262%_
                           _%e171205171265%_
                           _%hd171206171268%_
                           _%tl171207171270%_
                           _%e171208171273%_
                           _%hd171209171276%_
                           _%tl171210171278%_
                           _%e171211171281%_
                           _%hd171212171284%_
                           _%tl171213171286%_
                           _%e171214171289%_
                           _%hd171215171292%_
                           _%tl171216171294%_)
                          (_%__kont175463175464%_))))
                   (_%__match175936175937%_
                    (lambda (_%e171193171233%_
                             _%hd171194171236%_
                             _%tl171195171238%_
                             _%e171196171241%_
                             _%hd171197171244%_
                             _%tl171198171246%_
                             _%e171199171249%_
                             _%hd171200171252%_
                             _%tl171201171254%_
                             _%e171202171257%_
                             _%hd171203171260%_
                             _%tl171204171262%_
                             _%e171205171265%_
                             _%hd171206171268%_
                             _%tl171207171270%_
                             _%e171208171273%_
                             _%hd171209171276%_
                             _%tl171210171278%_
                             _%e171211171281%_
                             _%hd171212171284%_
                             _%tl171213171286%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171207171270%_))
                          (let ((_%e171214171289%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171207171270%_))))
                            (let ((_%tl171216171294%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171214171289%_)))
                                  (_%hd171215171292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171214171289%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171216171294%_))
                                  (_%__match175944175945%_
                                   _%e171193171233%_
                                   _%hd171194171236%_
                                   _%tl171195171238%_
                                   _%e171196171241%_
                                   _%hd171197171244%_
                                   _%tl171198171246%_
                                   _%e171199171249%_
                                   _%hd171200171252%_
                                   _%tl171201171254%_
                                   _%e171202171257%_
                                   _%hd171203171260%_
                                   _%tl171204171262%_
                                   _%e171205171265%_
                                   _%hd171206171268%_
                                   _%tl171207171270%_
                                   _%e171208171273%_
                                   _%hd171209171276%_
                                   _%tl171210171278%_
                                   _%e171211171281%_
                                   _%hd171212171284%_
                                   _%tl171213171286%_
                                   _%e171214171289%_
                                   _%hd171215171292%_
                                   _%tl171216171294%_)
                                  (_%__kont175463175464%_))))
                          (_%__kont175463175464%_))))
                   (_%__match175882175883%_
                    (lambda (_%e171169171341%_
                             _%hd171170171344%_
                             _%tl171171171346%_
                             _%e171172171349%_
                             _%hd171173171352%_
                             _%tl171174171354%_
                             _%e171175171357%_
                             _%hd171176171360%_
                             _%tl171177171362%_
                             _%e171178171365%_
                             _%hd171179171368%_
                             _%tl171180171370%_
                             _%e171181171373%_
                             _%hd171182171376%_
                             _%tl171183171378%_
                             _%e171184171381%_
                             _%hd171185171384%_
                             _%tl171186171386%_
                             _%e171187171389%_
                             _%hd171188171392%_
                             _%tl171189171394%_)
                      (let ((_%L171397%_ _%hd171188171392%_)
                            (_%L171398%_ _%hd171179171368%_))
                        (if (and (let ((__tmp176570
                                        (let ((__tmp176571
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L171398%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp176571))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp176570
                                    'gxc#!accessor::t))
                                 (let ((__tmp176572
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170990%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171397%_
                                    __tmp176572)))
                            (_%__kont175459175460%_ _%L171397%_ _%L171398%_)
                            (_%__kont175463175464%_)))))
                   (_%__match175880175881%_
                    (lambda (_%e171169171341%_
                             _%hd171170171344%_
                             _%tl171171171346%_
                             _%e171172171349%_
                             _%hd171173171352%_
                             _%tl171174171354%_
                             _%e171175171357%_
                             _%hd171176171360%_
                             _%tl171177171362%_
                             _%e171178171365%_
                             _%hd171179171368%_
                             _%tl171180171370%_
                             _%e171181171373%_
                             _%hd171182171376%_
                             _%tl171183171378%_
                             _%e171184171381%_
                             _%hd171185171384%_
                             _%tl171186171386%_
                             _%e171187171389%_
                             _%hd171188171392%_
                             _%tl171189171394%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171183171378%_))
                          (_%__match175882175883%_
                           _%e171169171341%_
                           _%hd171170171344%_
                           _%tl171171171346%_
                           _%e171172171349%_
                           _%hd171173171352%_
                           _%tl171174171354%_
                           _%e171175171357%_
                           _%hd171176171360%_
                           _%tl171177171362%_
                           _%e171178171365%_
                           _%hd171179171368%_
                           _%tl171180171370%_
                           _%e171181171373%_
                           _%hd171182171376%_
                           _%tl171183171378%_
                           _%e171184171381%_
                           _%hd171185171384%_
                           _%tl171186171386%_
                           _%e171187171389%_
                           _%hd171188171392%_
                           _%tl171189171394%_)
                          (_%__match175936175937%_
                           _%e171169171341%_
                           _%hd171170171344%_
                           _%tl171171171346%_
                           _%e171172171349%_
                           _%hd171173171352%_
                           _%tl171174171354%_
                           _%e171175171357%_
                           _%hd171176171360%_
                           _%tl171177171362%_
                           _%e171178171365%_
                           _%hd171179171368%_
                           _%tl171180171370%_
                           _%e171181171373%_
                           _%hd171182171376%_
                           _%tl171183171378%_
                           _%e171184171381%_
                           _%hd171185171384%_
                           _%tl171186171386%_
                           _%e171187171389%_
                           _%hd171188171392%_
                           _%tl171189171394%_))))
                   (_%__match175826175827%_
                    (lambda (_%e171134171435%_
                             _%hd171135171438%_
                             _%tl171136171440%_
                             _%e171137171443%_
                             _%hd171138171446%_
                             _%tl171139171448%_
                             _%e171140171451%_
                             _%hd171141171454%_
                             _%tl171142171456%_
                             _%e171143171459%_
                             _%hd171144171462%_
                             _%tl171145171464%_
                             _%e171146171467%_
                             _%hd171147171470%_
                             _%tl171148171472%_
                             _%e171149171475%_
                             _%hd171150171478%_
                             _%tl171151171480%_
                             _%e171152171483%_
                             _%hd171153171486%_
                             _%tl171154171488%_
                             _%e171155171491%_
                             _%hd171156171494%_
                             _%tl171157171496%_
                             _%e171158171499%_
                             _%hd171159171502%_
                             _%tl171160171504%_
                             _%e171161171507%_
                             _%hd171162171510%_
                             _%tl171163171512%_
                             _%e171164171515%_
                             _%hd171165171518%_
                             _%tl171166171520%_)
                      (let ((_%L171523%_ _%hd171165171518%_)
                            (_%L171524%_ _%hd171162171510%_)
                            (_%L171525%_ _%hd171153171486%_)
                            (_%L171526%_ _%hd171144171462%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171526%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171526%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp176573
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170990%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171525%_
                                    __tmp176573)))
                            (_%__kont175457175458%_
                             _%L171523%_
                             _%L171524%_
                             _%L171525%_
                             _%L171526%_)
                            (_%__kont175463175464%_)))))
                   (_%__match175818175819%_
                    (lambda (_%e171134171435%_
                             _%hd171135171438%_
                             _%tl171136171440%_
                             _%e171137171443%_
                             _%hd171138171446%_
                             _%tl171139171448%_
                             _%e171140171451%_
                             _%hd171141171454%_
                             _%tl171142171456%_
                             _%e171143171459%_
                             _%hd171144171462%_
                             _%tl171145171464%_
                             _%e171146171467%_
                             _%hd171147171470%_
                             _%tl171148171472%_
                             _%e171149171475%_
                             _%hd171150171478%_
                             _%tl171151171480%_
                             _%e171152171483%_
                             _%hd171153171486%_
                             _%tl171154171488%_
                             _%e171155171491%_
                             _%hd171156171494%_
                             _%tl171157171496%_
                             _%e171158171499%_
                             _%hd171159171502%_
                             _%tl171160171504%_
                             _%e171161171507%_
                             _%hd171162171510%_
                             _%tl171163171512%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171157171496%_))
                          (let ((_%e171164171515%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171157171496%_))))
                            (let ((_%tl171166171520%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171164171515%_)))
                                  (_%hd171165171518%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171164171515%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171166171520%_))
                                  (_%__match175826175827%_
                                   _%e171134171435%_
                                   _%hd171135171438%_
                                   _%tl171136171440%_
                                   _%e171137171443%_
                                   _%hd171138171446%_
                                   _%tl171139171448%_
                                   _%e171140171451%_
                                   _%hd171141171454%_
                                   _%tl171142171456%_
                                   _%e171143171459%_
                                   _%hd171144171462%_
                                   _%tl171145171464%_
                                   _%e171146171467%_
                                   _%hd171147171470%_
                                   _%tl171148171472%_
                                   _%e171149171475%_
                                   _%hd171150171478%_
                                   _%tl171151171480%_
                                   _%e171152171483%_
                                   _%hd171153171486%_
                                   _%tl171154171488%_
                                   _%e171155171491%_
                                   _%hd171156171494%_
                                   _%tl171157171496%_
                                   _%e171158171499%_
                                   _%hd171159171502%_
                                   _%tl171160171504%_
                                   _%e171161171507%_
                                   _%hd171162171510%_
                                   _%tl171163171512%_
                                   _%e171164171515%_
                                   _%hd171165171518%_
                                   _%tl171166171520%_)
                                  (_%__kont175463175464%_))))
                          (_%__match175942175943%_
                           _%e171134171435%_
                           _%hd171135171438%_
                           _%tl171136171440%_
                           _%e171137171443%_
                           _%hd171138171446%_
                           _%tl171139171448%_
                           _%e171140171451%_
                           _%hd171141171454%_
                           _%tl171142171456%_
                           _%e171143171459%_
                           _%hd171144171462%_
                           _%tl171145171464%_
                           _%e171146171467%_
                           _%hd171147171470%_
                           _%tl171148171472%_
                           _%e171149171475%_
                           _%hd171150171478%_
                           _%tl171151171480%_
                           _%e171152171483%_
                           _%hd171153171486%_
                           _%tl171154171488%_
                           _%e171155171491%_
                           _%hd171156171494%_
                           _%tl171157171496%_))))
                   (_%__match175740175741%_
                    (lambda (_%e171100171566%_
                             _%hd171101171569%_
                             _%tl171102171571%_
                             _%e171103171574%_
                             _%hd171104171577%_
                             _%tl171105171579%_
                             _%e171106171582%_
                             _%hd171107171585%_
                             _%tl171108171587%_
                             _%e171109171590%_
                             _%hd171110171593%_
                             _%tl171111171595%_
                             _%e171112171598%_
                             _%hd171113171601%_
                             _%tl171114171603%_
                             _%e171115171606%_
                             _%hd171116171609%_
                             _%tl171117171611%_
                             _%e171118171614%_
                             _%hd171119171617%_
                             _%tl171120171619%_
                             _%e171121171622%_
                             _%hd171122171625%_
                             _%tl171123171627%_
                             _%e171124171630%_
                             _%hd171125171633%_
                             _%tl171126171635%_
                             _%e171127171638%_
                             _%hd171128171641%_
                             _%tl171129171643%_)
                      (let ((_%L171646%_ _%hd171128171641%_)
                            (_%L171647%_ _%hd171119171617%_)
                            (_%L171648%_ _%hd171110171593%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171648%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L171648%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp176574
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170990%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L171647%_
                                    __tmp176574)))
                            (_%__kont175455175456%_
                             _%L171646%_
                             _%L171647%_
                             _%L171648%_)
                            (_%__match175944175945%_
                             _%e171100171566%_
                             _%hd171101171569%_
                             _%tl171102171571%_
                             _%e171103171574%_
                             _%hd171104171577%_
                             _%tl171105171579%_
                             _%e171106171582%_
                             _%hd171107171585%_
                             _%tl171108171587%_
                             _%e171109171590%_
                             _%hd171110171593%_
                             _%tl171111171595%_
                             _%e171112171598%_
                             _%hd171113171601%_
                             _%tl171114171603%_
                             _%e171115171606%_
                             _%hd171116171609%_
                             _%tl171117171611%_
                             _%e171118171614%_
                             _%hd171119171617%_
                             _%tl171120171619%_
                             _%e171121171622%_
                             _%hd171122171625%_
                             _%tl171123171627%_)))))
                   (_%__match175738175739%_
                    (lambda (_%e171100171566%_
                             _%hd171101171569%_
                             _%tl171102171571%_
                             _%e171103171574%_
                             _%hd171104171577%_
                             _%tl171105171579%_
                             _%e171106171582%_
                             _%hd171107171585%_
                             _%tl171108171587%_
                             _%e171109171590%_
                             _%hd171110171593%_
                             _%tl171111171595%_
                             _%e171112171598%_
                             _%hd171113171601%_
                             _%tl171114171603%_
                             _%e171115171606%_
                             _%hd171116171609%_
                             _%tl171117171611%_
                             _%e171118171614%_
                             _%hd171119171617%_
                             _%tl171120171619%_
                             _%e171121171622%_
                             _%hd171122171625%_
                             _%tl171123171627%_
                             _%e171124171630%_
                             _%hd171125171633%_
                             _%tl171126171635%_
                             _%e171127171638%_
                             _%hd171128171641%_
                             _%tl171129171643%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl171123171627%_))
                          (_%__match175740175741%_
                           _%e171100171566%_
                           _%hd171101171569%_
                           _%tl171102171571%_
                           _%e171103171574%_
                           _%hd171104171577%_
                           _%tl171105171579%_
                           _%e171106171582%_
                           _%hd171107171585%_
                           _%tl171108171587%_
                           _%e171109171590%_
                           _%hd171110171593%_
                           _%tl171111171595%_
                           _%e171112171598%_
                           _%hd171113171601%_
                           _%tl171114171603%_
                           _%e171115171606%_
                           _%hd171116171609%_
                           _%tl171117171611%_
                           _%e171118171614%_
                           _%hd171119171617%_
                           _%tl171120171619%_
                           _%e171121171622%_
                           _%hd171122171625%_
                           _%tl171123171627%_
                           _%e171124171630%_
                           _%hd171125171633%_
                           _%tl171126171635%_
                           _%e171127171638%_
                           _%hd171128171641%_
                           _%tl171129171643%_)
                          (_%__match175818175819%_
                           _%e171100171566%_
                           _%hd171101171569%_
                           _%tl171102171571%_
                           _%e171103171574%_
                           _%hd171104171577%_
                           _%tl171105171579%_
                           _%e171106171582%_
                           _%hd171107171585%_
                           _%tl171108171587%_
                           _%e171109171590%_
                           _%hd171110171593%_
                           _%tl171111171595%_
                           _%e171112171598%_
                           _%hd171113171601%_
                           _%tl171114171603%_
                           _%e171115171606%_
                           _%hd171116171609%_
                           _%tl171117171611%_
                           _%e171118171614%_
                           _%hd171119171617%_
                           _%tl171120171619%_
                           _%e171121171622%_
                           _%hd171122171625%_
                           _%tl171123171627%_
                           _%e171124171630%_
                           _%hd171125171633%_
                           _%tl171126171635%_
                           _%e171127171638%_
                           _%hd171128171641%_
                           _%tl171129171643%_))))
                   (_%__match175728175729%_
                    (lambda (_%e171100171566%_
                             _%hd171101171569%_
                             _%tl171102171571%_
                             _%e171103171574%_
                             _%hd171104171577%_
                             _%tl171105171579%_
                             _%e171106171582%_
                             _%hd171107171585%_
                             _%tl171108171587%_
                             _%e171109171590%_
                             _%hd171110171593%_
                             _%tl171111171595%_
                             _%e171112171598%_
                             _%hd171113171601%_
                             _%tl171114171603%_
                             _%e171115171606%_
                             _%hd171116171609%_
                             _%tl171117171611%_
                             _%e171118171614%_
                             _%hd171119171617%_
                             _%tl171120171619%_
                             _%e171121171622%_
                             _%hd171122171625%_
                             _%tl171123171627%_
                             _%e171124171630%_
                             _%hd171125171633%_
                             _%tl171126171635%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd171125171633%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171126171635%_))
                              (let ((_%e171127171638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171126171635%_))))
                                (let ((_%tl171129171643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171127171638%_)))
                                      (_%hd171128171641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171127171638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171129171643%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl171123171627%_))
                                          (_%__match175740175741%_
                                           _%e171100171566%_
                                           _%hd171101171569%_
                                           _%tl171102171571%_
                                           _%e171103171574%_
                                           _%hd171104171577%_
                                           _%tl171105171579%_
                                           _%e171106171582%_
                                           _%hd171107171585%_
                                           _%tl171108171587%_
                                           _%e171109171590%_
                                           _%hd171110171593%_
                                           _%tl171111171595%_
                                           _%e171112171598%_
                                           _%hd171113171601%_
                                           _%tl171114171603%_
                                           _%e171115171606%_
                                           _%hd171116171609%_
                                           _%tl171117171611%_
                                           _%e171118171614%_
                                           _%hd171119171617%_
                                           _%tl171120171619%_
                                           _%e171121171622%_
                                           _%hd171122171625%_
                                           _%tl171123171627%_
                                           _%e171124171630%_
                                           _%hd171125171633%_
                                           _%tl171126171635%_
                                           _%e171127171638%_
                                           _%hd171128171641%_
                                           _%tl171129171643%_)
                                          (_%__match175818175819%_
                                           _%e171100171566%_
                                           _%hd171101171569%_
                                           _%tl171102171571%_
                                           _%e171103171574%_
                                           _%hd171104171577%_
                                           _%tl171105171579%_
                                           _%e171106171582%_
                                           _%hd171107171585%_
                                           _%tl171108171587%_
                                           _%e171109171590%_
                                           _%hd171110171593%_
                                           _%tl171111171595%_
                                           _%e171112171598%_
                                           _%hd171113171601%_
                                           _%tl171114171603%_
                                           _%e171115171606%_
                                           _%hd171116171609%_
                                           _%tl171117171611%_
                                           _%e171118171614%_
                                           _%hd171119171617%_
                                           _%tl171120171619%_
                                           _%e171121171622%_
                                           _%hd171122171625%_
                                           _%tl171123171627%_
                                           _%e171124171630%_
                                           _%hd171125171633%_
                                           _%tl171126171635%_
                                           _%e171127171638%_
                                           _%hd171128171641%_
                                           _%tl171129171643%_))
                                      (_%__match175942175943%_
                                       _%e171100171566%_
                                       _%hd171101171569%_
                                       _%tl171102171571%_
                                       _%e171103171574%_
                                       _%hd171104171577%_
                                       _%tl171105171579%_
                                       _%e171106171582%_
                                       _%hd171107171585%_
                                       _%tl171108171587%_
                                       _%e171109171590%_
                                       _%hd171110171593%_
                                       _%tl171111171595%_
                                       _%e171112171598%_
                                       _%hd171113171601%_
                                       _%tl171114171603%_
                                       _%e171115171606%_
                                       _%hd171116171609%_
                                       _%tl171117171611%_
                                       _%e171118171614%_
                                       _%hd171119171617%_
                                       _%tl171120171619%_
                                       _%e171121171622%_
                                       _%hd171122171625%_
                                       _%tl171123171627%_))))
                              (_%__match175942175943%_
                               _%e171100171566%_
                               _%hd171101171569%_
                               _%tl171102171571%_
                               _%e171103171574%_
                               _%hd171104171577%_
                               _%tl171105171579%_
                               _%e171106171582%_
                               _%hd171107171585%_
                               _%tl171108171587%_
                               _%e171109171590%_
                               _%hd171110171593%_
                               _%tl171111171595%_
                               _%e171112171598%_
                               _%hd171113171601%_
                               _%tl171114171603%_
                               _%e171115171606%_
                               _%hd171116171609%_
                               _%tl171117171611%_
                               _%e171118171614%_
                               _%hd171119171617%_
                               _%tl171120171619%_
                               _%e171121171622%_
                               _%hd171122171625%_
                               _%tl171123171627%_))
                          (_%__match175942175943%_
                           _%e171100171566%_
                           _%hd171101171569%_
                           _%tl171102171571%_
                           _%e171103171574%_
                           _%hd171104171577%_
                           _%tl171105171579%_
                           _%e171106171582%_
                           _%hd171107171585%_
                           _%tl171108171587%_
                           _%e171109171590%_
                           _%hd171110171593%_
                           _%tl171111171595%_
                           _%e171112171598%_
                           _%hd171113171601%_
                           _%tl171114171603%_
                           _%e171115171606%_
                           _%hd171116171609%_
                           _%tl171117171611%_
                           _%e171118171614%_
                           _%hd171119171617%_
                           _%tl171120171619%_
                           _%e171121171622%_
                           _%hd171122171625%_
                           _%tl171123171627%_))))
                   (_%__match175660175661%_
                    (lambda (_%e171049171685%_
                             _%hd171050171688%_
                             _%tl171051171690%_
                             _%e171052171693%_
                             _%hd171053171696%_
                             _%tl171054171698%_
                             _%e171055171701%_
                             _%hd171056171704%_
                             _%tl171057171706%_
                             _%e171058171709%_
                             _%hd171059171712%_
                             _%tl171060171714%_
                             _%e171061171717%_
                             _%hd171062171720%_
                             _%tl171063171722%_
                             _%e171064171725%_
                             _%hd171065171728%_
                             _%tl171066171730%_
                             _%e171067171733%_
                             _%hd171068171736%_
                             _%tl171069171738%_
                             _%e171070171741%_
                             _%hd171071171744%_
                             _%tl171072171746%_
                             _%e171073171749%_
                             _%hd171074171752%_
                             _%tl171075171754%_
                             _%e171076171757%_
                             _%hd171077171760%_
                             _%tl171078171762%_
                             _%e171079171765%_
                             _%hd171080171768%_
                             _%tl171081171770%_
                             _%e171082171773%_
                             _%hd171083171776%_
                             _%tl171084171778%_
                             _%e171085171781%_
                             _%hd171086171784%_
                             _%tl171087171786%_
                             _%__splice175453175454%_
                             _%target171088171789%_
                             _%tl171090171791%_)
                      (letrec ((_%loop171091171794%_
                                (lambda (_%hd171089171797%_
                                         _%args171095171799%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171089171797%_))
                                      (let ((_%e171092171802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171089171797%_))))
                                        (let ((_%lp-tl171094171807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171092171802%_)))
                                              (_%lp-hd171093171805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171092171802%_))))
                                          (_%loop171091171794%_
                                           _%lp-tl171094171807%_
                                           (cons _%lp-hd171093171805%_
                                                 _%args171095171799%_))))
                                      (let ((_%args171096171810%_
                                             (reverse _%args171095171799%_)))
                                        (let ((_%L171813%_
                                               _%args171096171810%_)
                                              (_%L171814%_ _%hd171086171784%_)
                                              (_%L171815%_ _%hd171077171760%_)
                                              (_%L171816%_ _%hd171068171736%_)
                                              (_%L171817%_ _%hd171059171712%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171817%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171816%_
                                                      'call-method))
                                                   (let ((__tmp176575
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170990%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171815%_
                                                      __tmp176575)))
                                              (_%__kont175451175452%_
                                               _%L171813%_
                                               _%L171814%_
                                               _%L171815%_
                                               _%L171816%_
                                               _%L171817%_)
                                              (_%__kont175463175464%_))))))))
                        (_%loop171091171794%_ _%target171088171789%_ '()))))
                   (_%__match175618175619%_
                    (lambda (_%e171049171685%_
                             _%hd171050171688%_
                             _%tl171051171690%_
                             _%e171052171693%_
                             _%hd171053171696%_
                             _%tl171054171698%_
                             _%e171055171701%_
                             _%hd171056171704%_
                             _%tl171057171706%_
                             _%e171058171709%_
                             _%hd171059171712%_
                             _%tl171060171714%_
                             _%e171061171717%_
                             _%hd171062171720%_
                             _%tl171063171722%_
                             _%e171064171725%_
                             _%hd171065171728%_
                             _%tl171066171730%_
                             _%e171067171733%_
                             _%hd171068171736%_
                             _%tl171069171738%_
                             _%e171070171741%_
                             _%hd171071171744%_
                             _%tl171072171746%_
                             _%e171073171749%_
                             _%hd171074171752%_
                             _%tl171075171754%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd171074171752%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171075171754%_))
                              (let ((_%e171076171757%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171075171754%_))))
                                (let ((_%tl171078171762%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171076171757%_)))
                                      (_%hd171077171760%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171076171757%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171078171762%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171072171746%_))
                                          (let ((_%e171079171765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171072171746%_))))
                                            (let ((_%tl171081171770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171079171765%_)))
                                                  (_%hd171080171768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171079171765%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd171080171768%_))
                                                  (let ((_%e171082171773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd171080171768%_))))
                                                    (let ((_%tl171084171778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171082171773%_)))
                                                          (_%hd171083171776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171082171773%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd171083171776%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd171083171776%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171084171778%_))
                          (let ((_%e171085171781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171084171778%_))))
                            (let ((_%tl171087171786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171085171781%_)))
                                  (_%hd171086171784%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171085171781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl171087171786%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl171081171770%_))
                                      (let ((_%__splice175453175454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl171081171770%_
                                                '0))))
                                        (let ((_%tl171090171791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175453175454%_
                                                  '1)))
                                              (_%target171088171789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice175453175454%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171090171791%_))
                                              (_%__match175660175661%_
                                               _%e171049171685%_
                                               _%hd171050171688%_
                                               _%tl171051171690%_
                                               _%e171052171693%_
                                               _%hd171053171696%_
                                               _%tl171054171698%_
                                               _%e171055171701%_
                                               _%hd171056171704%_
                                               _%tl171057171706%_
                                               _%e171058171709%_
                                               _%hd171059171712%_
                                               _%tl171060171714%_
                                               _%e171061171717%_
                                               _%hd171062171720%_
                                               _%tl171063171722%_
                                               _%e171064171725%_
                                               _%hd171065171728%_
                                               _%tl171066171730%_
                                               _%e171067171733%_
                                               _%hd171068171736%_
                                               _%tl171069171738%_
                                               _%e171070171741%_
                                               _%hd171071171744%_
                                               _%tl171072171746%_
                                               _%e171073171749%_
                                               _%hd171074171752%_
                                               _%tl171075171754%_
                                               _%e171076171757%_
                                               _%hd171077171760%_
                                               _%tl171078171762%_
                                               _%e171079171765%_
                                               _%hd171080171768%_
                                               _%tl171081171770%_
                                               _%e171082171773%_
                                               _%hd171083171776%_
                                               _%tl171084171778%_
                                               _%e171085171781%_
                                               _%hd171086171784%_
                                               _%tl171087171786%_
                                               _%__splice175453175454%_
                                               _%target171088171789%_
                                               _%tl171090171791%_)
                                              (_%__kont175463175464%_))))
                                      (_%__kont175463175464%_))
                                  (_%__kont175463175464%_))))
                          (_%__kont175463175464%_))
                      (_%__kont175463175464%_))
                  (_%__kont175463175464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175463175464%_))))
                                          (_%__match175942175943%_
                                           _%e171049171685%_
                                           _%hd171050171688%_
                                           _%tl171051171690%_
                                           _%e171052171693%_
                                           _%hd171053171696%_
                                           _%tl171054171698%_
                                           _%e171055171701%_
                                           _%hd171056171704%_
                                           _%tl171057171706%_
                                           _%e171058171709%_
                                           _%hd171059171712%_
                                           _%tl171060171714%_
                                           _%e171061171717%_
                                           _%hd171062171720%_
                                           _%tl171063171722%_
                                           _%e171064171725%_
                                           _%hd171065171728%_
                                           _%tl171066171730%_
                                           _%e171067171733%_
                                           _%hd171068171736%_
                                           _%tl171069171738%_
                                           _%e171070171741%_
                                           _%hd171071171744%_
                                           _%tl171072171746%_))
                                      (_%__match175942175943%_
                                       _%e171049171685%_
                                       _%hd171050171688%_
                                       _%tl171051171690%_
                                       _%e171052171693%_
                                       _%hd171053171696%_
                                       _%tl171054171698%_
                                       _%e171055171701%_
                                       _%hd171056171704%_
                                       _%tl171057171706%_
                                       _%e171058171709%_
                                       _%hd171059171712%_
                                       _%tl171060171714%_
                                       _%e171061171717%_
                                       _%hd171062171720%_
                                       _%tl171063171722%_
                                       _%e171064171725%_
                                       _%hd171065171728%_
                                       _%tl171066171730%_
                                       _%e171067171733%_
                                       _%hd171068171736%_
                                       _%tl171069171738%_
                                       _%e171070171741%_
                                       _%hd171071171744%_
                                       _%tl171072171746%_))))
                              (_%__match175942175943%_
                               _%e171049171685%_
                               _%hd171050171688%_
                               _%tl171051171690%_
                               _%e171052171693%_
                               _%hd171053171696%_
                               _%tl171054171698%_
                               _%e171055171701%_
                               _%hd171056171704%_
                               _%tl171057171706%_
                               _%e171058171709%_
                               _%hd171059171712%_
                               _%tl171060171714%_
                               _%e171061171717%_
                               _%hd171062171720%_
                               _%tl171063171722%_
                               _%e171064171725%_
                               _%hd171065171728%_
                               _%tl171066171730%_
                               _%e171067171733%_
                               _%hd171068171736%_
                               _%tl171069171738%_
                               _%e171070171741%_
                               _%hd171071171744%_
                               _%tl171072171746%_))
                          (_%__match175728175729%_
                           _%e171049171685%_
                           _%hd171050171688%_
                           _%tl171051171690%_
                           _%e171052171693%_
                           _%hd171053171696%_
                           _%tl171054171698%_
                           _%e171055171701%_
                           _%hd171056171704%_
                           _%tl171057171706%_
                           _%e171058171709%_
                           _%hd171059171712%_
                           _%tl171060171714%_
                           _%e171061171717%_
                           _%hd171062171720%_
                           _%tl171063171722%_
                           _%e171064171725%_
                           _%hd171065171728%_
                           _%tl171066171730%_
                           _%e171067171733%_
                           _%hd171068171736%_
                           _%tl171069171738%_
                           _%e171070171741%_
                           _%hd171071171744%_
                           _%tl171072171746%_
                           _%e171073171749%_
                           _%hd171074171752%_
                           _%tl171075171754%_))))
                   (_%__match175550175551%_
                    (lambda (_%e171005171874%_
                             _%hd171006171877%_
                             _%tl171007171879%_
                             _%e171008171882%_
                             _%hd171009171885%_
                             _%tl171010171887%_
                             _%e171011171890%_
                             _%hd171012171893%_
                             _%tl171013171895%_
                             _%e171014171898%_
                             _%hd171015171901%_
                             _%tl171016171903%_
                             _%e171017171906%_
                             _%hd171018171909%_
                             _%tl171019171911%_
                             _%e171020171914%_
                             _%hd171021171917%_
                             _%tl171022171919%_
                             _%e171023171922%_
                             _%hd171024171925%_
                             _%tl171025171927%_
                             _%e171026171930%_
                             _%hd171027171933%_
                             _%tl171028171935%_
                             _%e171029171938%_
                             _%hd171030171941%_
                             _%tl171031171943%_
                             _%e171032171946%_
                             _%hd171033171949%_
                             _%tl171034171951%_
                             _%__splice175449175450%_
                             _%target171035171954%_
                             _%tl171037171956%_)
                      (letrec ((_%loop171038171959%_
                                (lambda (_%hd171036171962%_
                                         _%args171042171964%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd171036171962%_))
                                      (let ((_%e171039171967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd171036171962%_))))
                                        (let ((_%lp-tl171041171972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171039171967%_)))
                                              (_%lp-hd171040171970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171039171967%_))))
                                          (_%loop171038171959%_
                                           _%lp-tl171041171972%_
                                           (cons _%lp-hd171040171970%_
                                                 _%args171042171964%_))))
                                      (let ((_%args171043171975%_
                                             (reverse _%args171042171964%_)))
                                        (let ((_%L171978%_
                                               _%args171043171975%_)
                                              (_%L171979%_ _%hd171033171949%_)
                                              (_%L171980%_ _%hd171024171925%_)
                                              (_%L171981%_ _%hd171015171901%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171981%_
                                                      'call-method))
                                                   (let ((__tmp176576
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170990%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171980%_
                                                      __tmp176576)))
                                              (_%__kont175447175448%_
                                               _%L171978%_
                                               _%L171979%_
                                               _%L171980%_
                                               _%L171981%_)
                                              (_%__match175738175739%_
                                               _%e171005171874%_
                                               _%hd171006171877%_
                                               _%tl171007171879%_
                                               _%e171008171882%_
                                               _%hd171009171885%_
                                               _%tl171010171887%_
                                               _%e171011171890%_
                                               _%hd171012171893%_
                                               _%tl171013171895%_
                                               _%e171014171898%_
                                               _%hd171015171901%_
                                               _%tl171016171903%_
                                               _%e171017171906%_
                                               _%hd171018171909%_
                                               _%tl171019171911%_
                                               _%e171020171914%_
                                               _%hd171021171917%_
                                               _%tl171022171919%_
                                               _%e171023171922%_
                                               _%hd171024171925%_
                                               _%tl171025171927%_
                                               _%e171026171930%_
                                               _%hd171027171933%_
                                               _%tl171028171935%_
                                               _%e171029171938%_
                                               _%hd171030171941%_
                                               _%tl171031171943%_
                                               _%e171032171946%_
                                               _%hd171033171949%_
                                               _%tl171034171951%_))))))))
                        (_%loop171038171959%_ _%target171035171954%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx175445175446%_))
                  (let ((_%e171005171874%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx175445175446%_))))
                    (let ((_%tl171007171879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171005171874%_)))
                          (_%hd171006171877%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171005171874%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl171007171879%_))
                          (let ((_%e171008171882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl171007171879%_))))
                            (let ((_%tl171010171887%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171008171882%_)))
                                  (_%hd171009171885%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171008171882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd171009171885%_))
                                  (let ((_%e171011171890%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd171009171885%_))))
                                    (let ((_%tl171013171895%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e171011171890%_)))
                                          (_%hd171012171893%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e171011171890%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd171012171893%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd171012171893%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl171013171895%_))
                                                  (let ((_%e171014171898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl171013171895%_))))
                                                    (let ((_%tl171016171903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171014171898%_)))
                                                          (_%hd171015171901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171014171898%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl171016171903%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl171010171887%_))
                      (let ((_%e171017171906%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl171010171887%_))))
                        (let ((_%tl171019171911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171017171906%_)))
                              (_%hd171018171909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171017171906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171018171909%_))
                              (let ((_%e171020171914%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171018171909%_))))
                                (let ((_%tl171022171919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171020171914%_)))
                                      (_%hd171021171917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171020171914%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd171021171917%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd171021171917%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171022171919%_))
                                              (let ((_%e171023171922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171022171919%_))))
                                                (let ((_%tl171025171927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171023171922%_)))
                                                      (_%hd171024171925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171023171922%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171025171927%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl171019171911%_))
                                                          (let ((_%e171026171930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl171019171911%_))))
                    (let ((_%tl171028171935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171026171930%_)))
                          (_%hd171027171933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171026171930%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd171027171933%_))
                          (let ((_%e171029171938%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd171027171933%_))))
                            (let ((_%tl171031171943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e171029171938%_)))
                                  (_%hd171030171941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e171029171938%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd171030171941%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd171030171941%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl171031171943%_))
                                          (let ((_%e171032171946%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl171031171943%_))))
                                            (let ((_%tl171034171951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e171032171946%_)))
                                                  (_%hd171033171949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e171032171946%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl171034171951%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl171028171935%_))
                                                      (let ((_%__splice175449175450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl171028171935%_ '0))))
                (let ((_%tl171037171956%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175449175450%_ '1)))
                      (_%target171035171954%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice175449175450%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl171037171956%_))
                      (_%__match175550175551%_
                       _%e171005171874%_
                       _%hd171006171877%_
                       _%tl171007171879%_
                       _%e171008171882%_
                       _%hd171009171885%_
                       _%tl171010171887%_
                       _%e171011171890%_
                       _%hd171012171893%_
                       _%tl171013171895%_
                       _%e171014171898%_
                       _%hd171015171901%_
                       _%tl171016171903%_
                       _%e171017171906%_
                       _%hd171018171909%_
                       _%tl171019171911%_
                       _%e171020171914%_
                       _%hd171021171917%_
                       _%tl171022171919%_
                       _%e171023171922%_
                       _%hd171024171925%_
                       _%tl171025171927%_
                       _%e171026171930%_
                       _%hd171027171933%_
                       _%tl171028171935%_
                       _%e171029171938%_
                       _%hd171030171941%_
                       _%tl171031171943%_
                       _%e171032171946%_
                       _%hd171033171949%_
                       _%tl171034171951%_
                       _%__splice175449175450%_
                       _%target171035171954%_
                       _%tl171037171956%_)
                      (_%__match175738175739%_
                       _%e171005171874%_
                       _%hd171006171877%_
                       _%tl171007171879%_
                       _%e171008171882%_
                       _%hd171009171885%_
                       _%tl171010171887%_
                       _%e171011171890%_
                       _%hd171012171893%_
                       _%tl171013171895%_
                       _%e171014171898%_
                       _%hd171015171901%_
                       _%tl171016171903%_
                       _%e171017171906%_
                       _%hd171018171909%_
                       _%tl171019171911%_
                       _%e171020171914%_
                       _%hd171021171917%_
                       _%tl171022171919%_
                       _%e171023171922%_
                       _%hd171024171925%_
                       _%tl171025171927%_
                       _%e171026171930%_
                       _%hd171027171933%_
                       _%tl171028171935%_
                       _%e171029171938%_
                       _%hd171030171941%_
                       _%tl171031171943%_
                       _%e171032171946%_
                       _%hd171033171949%_
                       _%tl171034171951%_))))
              (_%__match175738175739%_
               _%e171005171874%_
               _%hd171006171877%_
               _%tl171007171879%_
               _%e171008171882%_
               _%hd171009171885%_
               _%tl171010171887%_
               _%e171011171890%_
               _%hd171012171893%_
               _%tl171013171895%_
               _%e171014171898%_
               _%hd171015171901%_
               _%tl171016171903%_
               _%e171017171906%_
               _%hd171018171909%_
               _%tl171019171911%_
               _%e171020171914%_
               _%hd171021171917%_
               _%tl171022171919%_
               _%e171023171922%_
               _%hd171024171925%_
               _%tl171025171927%_
               _%e171026171930%_
               _%hd171027171933%_
               _%tl171028171935%_
               _%e171029171938%_
               _%hd171030171941%_
               _%tl171031171943%_
               _%e171032171946%_
               _%hd171033171949%_
               _%tl171034171951%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175942175943%_
                                                   _%e171005171874%_
                                                   _%hd171006171877%_
                                                   _%tl171007171879%_
                                                   _%e171008171882%_
                                                   _%hd171009171885%_
                                                   _%tl171010171887%_
                                                   _%e171011171890%_
                                                   _%hd171012171893%_
                                                   _%tl171013171895%_
                                                   _%e171014171898%_
                                                   _%hd171015171901%_
                                                   _%tl171016171903%_
                                                   _%e171017171906%_
                                                   _%hd171018171909%_
                                                   _%tl171019171911%_
                                                   _%e171020171914%_
                                                   _%hd171021171917%_
                                                   _%tl171022171919%_
                                                   _%e171023171922%_
                                                   _%hd171024171925%_
                                                   _%tl171025171927%_
                                                   _%e171026171930%_
                                                   _%hd171027171933%_
                                                   _%tl171028171935%_))))
                                          (_%__match175942175943%_
                                           _%e171005171874%_
                                           _%hd171006171877%_
                                           _%tl171007171879%_
                                           _%e171008171882%_
                                           _%hd171009171885%_
                                           _%tl171010171887%_
                                           _%e171011171890%_
                                           _%hd171012171893%_
                                           _%tl171013171895%_
                                           _%e171014171898%_
                                           _%hd171015171901%_
                                           _%tl171016171903%_
                                           _%e171017171906%_
                                           _%hd171018171909%_
                                           _%tl171019171911%_
                                           _%e171020171914%_
                                           _%hd171021171917%_
                                           _%tl171022171919%_
                                           _%e171023171922%_
                                           _%hd171024171925%_
                                           _%tl171025171927%_
                                           _%e171026171930%_
                                           _%hd171027171933%_
                                           _%tl171028171935%_))
                                      (_%__match175618175619%_
                                       _%e171005171874%_
                                       _%hd171006171877%_
                                       _%tl171007171879%_
                                       _%e171008171882%_
                                       _%hd171009171885%_
                                       _%tl171010171887%_
                                       _%e171011171890%_
                                       _%hd171012171893%_
                                       _%tl171013171895%_
                                       _%e171014171898%_
                                       _%hd171015171901%_
                                       _%tl171016171903%_
                                       _%e171017171906%_
                                       _%hd171018171909%_
                                       _%tl171019171911%_
                                       _%e171020171914%_
                                       _%hd171021171917%_
                                       _%tl171022171919%_
                                       _%e171023171922%_
                                       _%hd171024171925%_
                                       _%tl171025171927%_
                                       _%e171026171930%_
                                       _%hd171027171933%_
                                       _%tl171028171935%_
                                       _%e171029171938%_
                                       _%hd171030171941%_
                                       _%tl171031171943%_))
                                  (_%__match175942175943%_
                                   _%e171005171874%_
                                   _%hd171006171877%_
                                   _%tl171007171879%_
                                   _%e171008171882%_
                                   _%hd171009171885%_
                                   _%tl171010171887%_
                                   _%e171011171890%_
                                   _%hd171012171893%_
                                   _%tl171013171895%_
                                   _%e171014171898%_
                                   _%hd171015171901%_
                                   _%tl171016171903%_
                                   _%e171017171906%_
                                   _%hd171018171909%_
                                   _%tl171019171911%_
                                   _%e171020171914%_
                                   _%hd171021171917%_
                                   _%tl171022171919%_
                                   _%e171023171922%_
                                   _%hd171024171925%_
                                   _%tl171025171927%_
                                   _%e171026171930%_
                                   _%hd171027171933%_
                                   _%tl171028171935%_))))
                          (_%__match175942175943%_
                           _%e171005171874%_
                           _%hd171006171877%_
                           _%tl171007171879%_
                           _%e171008171882%_
                           _%hd171009171885%_
                           _%tl171010171887%_
                           _%e171011171890%_
                           _%hd171012171893%_
                           _%tl171013171895%_
                           _%e171014171898%_
                           _%hd171015171901%_
                           _%tl171016171903%_
                           _%e171017171906%_
                           _%hd171018171909%_
                           _%tl171019171911%_
                           _%e171020171914%_
                           _%hd171021171917%_
                           _%tl171022171919%_
                           _%e171023171922%_
                           _%hd171024171925%_
                           _%tl171025171927%_
                           _%e171026171930%_
                           _%hd171027171933%_
                           _%tl171028171935%_))))
                  (_%__match175880175881%_
                   _%e171005171874%_
                   _%hd171006171877%_
                   _%tl171007171879%_
                   _%e171008171882%_
                   _%hd171009171885%_
                   _%tl171010171887%_
                   _%e171011171890%_
                   _%hd171012171893%_
                   _%tl171013171895%_
                   _%e171014171898%_
                   _%hd171015171901%_
                   _%tl171016171903%_
                   _%e171017171906%_
                   _%hd171018171909%_
                   _%tl171019171911%_
                   _%e171020171914%_
                   _%hd171021171917%_
                   _%tl171022171919%_
                   _%e171023171922%_
                   _%hd171024171925%_
                   _%tl171025171927%_))
              (_%__kont175463175464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont175463175464%_))
                                          (_%__kont175463175464%_))
                                      (_%__kont175463175464%_))))
                              (_%__kont175463175464%_))))
                      (_%__kont175463175464%_))
                  (_%__kont175463175464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont175463175464%_))
                                              (_%__kont175463175464%_))
                                          (_%__kont175463175464%_))))
                                  (_%__kont175463175464%_))))
                          (_%__kont175463175464%_))))
                  (_%__kont175463175464%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169929%_ _%stx169930%_)
        (letrec ((_%force-e169932%_
                  (lambda (_%target170988%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170988%_ '()))
                                      '()))))))
          (let* ((_%__stx175947175948%_ _%stx169930%_)
                 (_%g169940170162%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175947175948%_)))))
            (let ((_%__kont175949175950%_
                   (lambda (_%L170934%_ _%L170935%_ _%L170936%_ _%L170937%_)
                     (let ((_%$method170982%_
                            (let ((__tmp176578
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169929%_ 'methods)))
                                  (__tmp176577
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170935%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176578 __tmp176577)))
                           (_%args170983%_
                            (map (lambda (_%g170970170972%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169929%_
                                      _%g170970170972%_)))
                                 (let ((__tmp176579
                                        (lambda (_%g170974170977%_
                                                 _%g170975170979%_)
                                          (cons _%g170974170977%_
                                                _%g170975170979%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176579 '() _%L170934%_)))))
                       (let ((__tmp176580
                              (cons '%#call
                                    (cons (_%force-e169932%_ _%$method170982%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169929%_
                                                               'receiver))
                                                            '()))
                                                _%args170983%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176580 _%stx169930%_)))))
                  (_%__kont175953175954%_
                   (lambda (_%L170766%_
                            _%L170767%_
                            _%L170768%_
                            _%L170769%_
                            _%L170770%_)
                     (let ((_%$method170822%_
                            (let ((__tmp176582
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169929%_ 'methods)))
                                  (__tmp176581
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170767%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176582 __tmp176581)))
                           (_%args170823%_
                            (map (lambda (_%g170810170812%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169929%_
                                      _%g170810170812%_)))
                                 (let ((__tmp176583
                                        (lambda (_%g170814170817%_
                                                 _%g170815170819%_)
                                          (cons _%g170814170817%_
                                                _%g170815170819%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp176583 '() _%L170766%_)))))
                       (let ((__tmp176584
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169932%_
                                                 _%$method170822%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169929%_ 'receiver))
                          '()))
              _%args170823%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176584 _%stx169930%_)))))
                  (_%__kont175957175958%_
                   (lambda (_%L170597%_ _%L170598%_ _%L170599%_)
                     (let* ((_%$field170631%_
                             (let ((__tmp176586
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169929%_ 'slots)))
                                   (__tmp176585
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L170597%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp176586 __tmp176585)))
                            (__tmp176587
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169929%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field170631%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169929%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp176587 _%stx169930%_))))
                  (_%__kont175959175960%_
                   (lambda (_%L170471%_ _%L170472%_ _%L170473%_ _%L170474%_)
                     (let ((_%$field170509%_
                            (let ((__tmp176589
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169929%_ 'slots)))
                                  (__tmp176588
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170472%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp176589 __tmp176588)))
                           (_%expr170510%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169929%_ _%L170471%_))))
                       (let ((__tmp176590
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169929%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field170509%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169929%_ 'receiver))
                          '()))
              (cons _%expr170510%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp176590 _%stx169930%_)))))
                  (_%__kont175961175962%_
                   (lambda (_%L170343%_ _%L170344%_)
                     (let* ((_%accessor170366%_
                             (let ((__tmp176591
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170344%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176591)))
                            (_%klass170368%_
                             (let ((__tmp176592
                                    (##structure-ref
                                     _%accessor170366%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169930%_
                                __tmp176592)))
                            (_%slot170370%_
                             (##structure-ref
                              _%accessor170366%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor170366%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170368%_
                                      _%slot170370%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170368%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169930%_
                           (let* ((_%$field170376%_
                                   (let ((__tmp176593
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176593 _%slot170370%_)))
                                  (__tmp176594
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169929%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169929%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176594
                              _%stx169930%_))))))
                  (_%__kont175963175964%_
                   (lambda (_%L170238%_ _%L170239%_ _%L170240%_)
                     (let* ((_%mutator170268%_
                             (let ((__tmp176595
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L170240%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp176595)))
                            (_%klass170270%_
                             (let ((__tmp176596
                                    (##structure-ref
                                     _%mutator170268%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169930%_
                                __tmp176596)))
                            (_%slot170272%_
                             (##structure-ref
                              _%mutator170268%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr170274%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169929%_ _%L170238%_))))
                       (if (if (##structure-ref
                                _%mutator170268%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass170270%_
                                      _%slot170272%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass170270%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp176597
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L170240%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L170239%_
                                                                '()))
                                                    (cons _%expr170274%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp176597 _%stx169930%_))
                           (let* ((_%$field170280%_
                                   (let ((__tmp176598
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp176598 _%slot170272%_)))
                                  (__tmp176599
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169929%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field170280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169929%_ 'receiver))
                               '()))
                   (cons _%expr170274%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp176599
                              _%stx169930%_))))))
                  (_%__kont175965175966%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169929%_ _%stx169930%_)))))
              (let* ((_%__match176446176447%_
                      (lambda (_%e170134170174%_
                               _%hd170135170177%_
                               _%tl170136170179%_
                               _%e170137170182%_
                               _%hd170138170185%_
                               _%tl170139170187%_
                               _%e170140170190%_
                               _%hd170141170193%_
                               _%tl170142170195%_
                               _%e170143170198%_
                               _%hd170144170201%_
                               _%tl170145170203%_
                               _%e170146170206%_
                               _%hd170147170209%_
                               _%tl170148170211%_
                               _%e170149170214%_
                               _%hd170150170217%_
                               _%tl170151170219%_
                               _%e170152170222%_
                               _%hd170153170225%_
                               _%tl170154170227%_
                               _%e170155170230%_
                               _%hd170156170233%_
                               _%tl170157170235%_)
                        (let ((_%L170238%_ _%hd170156170233%_)
                              (_%L170239%_ _%hd170153170225%_)
                              (_%L170240%_ _%hd170144170201%_))
                          (if (and (let ((__tmp176600
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170239%_
                                      __tmp176600))
                                   (let ((__tmp176601
                                          (let ((__tmp176602
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170240%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176602))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176601
                                      'gxc#!mutator::t)))
                              (_%__kont175963175964%_
                               _%L170238%_
                               _%L170239%_
                               _%L170240%_)
                              (_%__kont175965175966%_)))))
                     (_%__match176444176445%_
                      (lambda (_%e170134170174%_
                               _%hd170135170177%_
                               _%tl170136170179%_
                               _%e170137170182%_
                               _%hd170138170185%_
                               _%tl170139170187%_
                               _%e170140170190%_
                               _%hd170141170193%_
                               _%tl170142170195%_
                               _%e170143170198%_
                               _%hd170144170201%_
                               _%tl170145170203%_
                               _%e170146170206%_
                               _%hd170147170209%_
                               _%tl170148170211%_
                               _%e170149170214%_
                               _%hd170150170217%_
                               _%tl170151170219%_
                               _%e170152170222%_
                               _%hd170153170225%_
                               _%tl170154170227%_
                               _%e170155170230%_
                               _%hd170156170233%_
                               _%tl170157170235%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170157170235%_))
                            (_%__match176446176447%_
                             _%e170134170174%_
                             _%hd170135170177%_
                             _%tl170136170179%_
                             _%e170137170182%_
                             _%hd170138170185%_
                             _%tl170139170187%_
                             _%e170140170190%_
                             _%hd170141170193%_
                             _%tl170142170195%_
                             _%e170143170198%_
                             _%hd170144170201%_
                             _%tl170145170203%_
                             _%e170146170206%_
                             _%hd170147170209%_
                             _%tl170148170211%_
                             _%e170149170214%_
                             _%hd170150170217%_
                             _%tl170151170219%_
                             _%e170152170222%_
                             _%hd170153170225%_
                             _%tl170154170227%_
                             _%e170155170230%_
                             _%hd170156170233%_
                             _%tl170157170235%_)
                            (_%__kont175965175966%_))))
                     (_%__match176438176439%_
                      (lambda (_%e170134170174%_
                               _%hd170135170177%_
                               _%tl170136170179%_
                               _%e170137170182%_
                               _%hd170138170185%_
                               _%tl170139170187%_
                               _%e170140170190%_
                               _%hd170141170193%_
                               _%tl170142170195%_
                               _%e170143170198%_
                               _%hd170144170201%_
                               _%tl170145170203%_
                               _%e170146170206%_
                               _%hd170147170209%_
                               _%tl170148170211%_
                               _%e170149170214%_
                               _%hd170150170217%_
                               _%tl170151170219%_
                               _%e170152170222%_
                               _%hd170153170225%_
                               _%tl170154170227%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170148170211%_))
                            (let ((_%e170155170230%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170148170211%_))))
                              (let ((_%tl170157170235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170155170230%_)))
                                    (_%hd170156170233%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170155170230%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170157170235%_))
                                    (_%__match176446176447%_
                                     _%e170134170174%_
                                     _%hd170135170177%_
                                     _%tl170136170179%_
                                     _%e170137170182%_
                                     _%hd170138170185%_
                                     _%tl170139170187%_
                                     _%e170140170190%_
                                     _%hd170141170193%_
                                     _%tl170142170195%_
                                     _%e170143170198%_
                                     _%hd170144170201%_
                                     _%tl170145170203%_
                                     _%e170146170206%_
                                     _%hd170147170209%_
                                     _%tl170148170211%_
                                     _%e170149170214%_
                                     _%hd170150170217%_
                                     _%tl170151170219%_
                                     _%e170152170222%_
                                     _%hd170153170225%_
                                     _%tl170154170227%_
                                     _%e170155170230%_
                                     _%hd170156170233%_
                                     _%tl170157170235%_)
                                    (_%__kont175965175966%_))))
                            (_%__kont175965175966%_))))
                     (_%__match176384176385%_
                      (lambda (_%e170110170287%_
                               _%hd170111170290%_
                               _%tl170112170292%_
                               _%e170113170295%_
                               _%hd170114170298%_
                               _%tl170115170300%_
                               _%e170116170303%_
                               _%hd170117170306%_
                               _%tl170118170308%_
                               _%e170119170311%_
                               _%hd170120170314%_
                               _%tl170121170316%_
                               _%e170122170319%_
                               _%hd170123170322%_
                               _%tl170124170324%_
                               _%e170125170327%_
                               _%hd170126170330%_
                               _%tl170127170332%_
                               _%e170128170335%_
                               _%hd170129170338%_
                               _%tl170130170340%_)
                        (let ((_%L170343%_ _%hd170129170338%_)
                              (_%L170344%_ _%hd170120170314%_))
                          (if (and (let ((__tmp176603
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170343%_
                                      __tmp176603))
                                   (let ((__tmp176604
                                          (let ((__tmp176605
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L170344%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp176605))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp176604
                                      'gxc#!accessor::t)))
                              (_%__kont175961175962%_ _%L170343%_ _%L170344%_)
                              (_%__kont175965175966%_)))))
                     (_%__match176382176383%_
                      (lambda (_%e170110170287%_
                               _%hd170111170290%_
                               _%tl170112170292%_
                               _%e170113170295%_
                               _%hd170114170298%_
                               _%tl170115170300%_
                               _%e170116170303%_
                               _%hd170117170306%_
                               _%tl170118170308%_
                               _%e170119170311%_
                               _%hd170120170314%_
                               _%tl170121170316%_
                               _%e170122170319%_
                               _%hd170123170322%_
                               _%tl170124170324%_
                               _%e170125170327%_
                               _%hd170126170330%_
                               _%tl170127170332%_
                               _%e170128170335%_
                               _%hd170129170338%_
                               _%tl170130170340%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170124170324%_))
                            (_%__match176384176385%_
                             _%e170110170287%_
                             _%hd170111170290%_
                             _%tl170112170292%_
                             _%e170113170295%_
                             _%hd170114170298%_
                             _%tl170115170300%_
                             _%e170116170303%_
                             _%hd170117170306%_
                             _%tl170118170308%_
                             _%e170119170311%_
                             _%hd170120170314%_
                             _%tl170121170316%_
                             _%e170122170319%_
                             _%hd170123170322%_
                             _%tl170124170324%_
                             _%e170125170327%_
                             _%hd170126170330%_
                             _%tl170127170332%_
                             _%e170128170335%_
                             _%hd170129170338%_
                             _%tl170130170340%_)
                            (_%__match176438176439%_
                             _%e170110170287%_
                             _%hd170111170290%_
                             _%tl170112170292%_
                             _%e170113170295%_
                             _%hd170114170298%_
                             _%tl170115170300%_
                             _%e170116170303%_
                             _%hd170117170306%_
                             _%tl170118170308%_
                             _%e170119170311%_
                             _%hd170120170314%_
                             _%tl170121170316%_
                             _%e170122170319%_
                             _%hd170123170322%_
                             _%tl170124170324%_
                             _%e170125170327%_
                             _%hd170126170330%_
                             _%tl170127170332%_
                             _%e170128170335%_
                             _%hd170129170338%_
                             _%tl170130170340%_))))
                     (_%__match176328176329%_
                      (lambda (_%e170075170383%_
                               _%hd170076170386%_
                               _%tl170077170388%_
                               _%e170078170391%_
                               _%hd170079170394%_
                               _%tl170080170396%_
                               _%e170081170399%_
                               _%hd170082170402%_
                               _%tl170083170404%_
                               _%e170084170407%_
                               _%hd170085170410%_
                               _%tl170086170412%_
                               _%e170087170415%_
                               _%hd170088170418%_
                               _%tl170089170420%_
                               _%e170090170423%_
                               _%hd170091170426%_
                               _%tl170092170428%_
                               _%e170093170431%_
                               _%hd170094170434%_
                               _%tl170095170436%_
                               _%e170096170439%_
                               _%hd170097170442%_
                               _%tl170098170444%_
                               _%e170099170447%_
                               _%hd170100170450%_
                               _%tl170101170452%_
                               _%e170102170455%_
                               _%hd170103170458%_
                               _%tl170104170460%_
                               _%e170105170463%_
                               _%hd170106170466%_
                               _%tl170107170468%_)
                        (let ((_%L170471%_ _%hd170106170466%_)
                              (_%L170472%_ _%hd170103170458%_)
                              (_%L170473%_ _%hd170094170434%_)
                              (_%L170474%_ _%hd170085170410%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170474%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170474%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp176606
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170473%_
                                      __tmp176606)))
                              (_%__kont175959175960%_
                               _%L170471%_
                               _%L170472%_
                               _%L170473%_
                               _%L170474%_)
                              (_%__kont175965175966%_)))))
                     (_%__match176320176321%_
                      (lambda (_%e170075170383%_
                               _%hd170076170386%_
                               _%tl170077170388%_
                               _%e170078170391%_
                               _%hd170079170394%_
                               _%tl170080170396%_
                               _%e170081170399%_
                               _%hd170082170402%_
                               _%tl170083170404%_
                               _%e170084170407%_
                               _%hd170085170410%_
                               _%tl170086170412%_
                               _%e170087170415%_
                               _%hd170088170418%_
                               _%tl170089170420%_
                               _%e170090170423%_
                               _%hd170091170426%_
                               _%tl170092170428%_
                               _%e170093170431%_
                               _%hd170094170434%_
                               _%tl170095170436%_
                               _%e170096170439%_
                               _%hd170097170442%_
                               _%tl170098170444%_
                               _%e170099170447%_
                               _%hd170100170450%_
                               _%tl170101170452%_
                               _%e170102170455%_
                               _%hd170103170458%_
                               _%tl170104170460%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170098170444%_))
                            (let ((_%e170105170463%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170098170444%_))))
                              (let ((_%tl170107170468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170105170463%_)))
                                    (_%hd170106170466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170105170463%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170107170468%_))
                                    (_%__match176328176329%_
                                     _%e170075170383%_
                                     _%hd170076170386%_
                                     _%tl170077170388%_
                                     _%e170078170391%_
                                     _%hd170079170394%_
                                     _%tl170080170396%_
                                     _%e170081170399%_
                                     _%hd170082170402%_
                                     _%tl170083170404%_
                                     _%e170084170407%_
                                     _%hd170085170410%_
                                     _%tl170086170412%_
                                     _%e170087170415%_
                                     _%hd170088170418%_
                                     _%tl170089170420%_
                                     _%e170090170423%_
                                     _%hd170091170426%_
                                     _%tl170092170428%_
                                     _%e170093170431%_
                                     _%hd170094170434%_
                                     _%tl170095170436%_
                                     _%e170096170439%_
                                     _%hd170097170442%_
                                     _%tl170098170444%_
                                     _%e170099170447%_
                                     _%hd170100170450%_
                                     _%tl170101170452%_
                                     _%e170102170455%_
                                     _%hd170103170458%_
                                     _%tl170104170460%_
                                     _%e170105170463%_
                                     _%hd170106170466%_
                                     _%tl170107170468%_)
                                    (_%__kont175965175966%_))))
                            (_%__match176444176445%_
                             _%e170075170383%_
                             _%hd170076170386%_
                             _%tl170077170388%_
                             _%e170078170391%_
                             _%hd170079170394%_
                             _%tl170080170396%_
                             _%e170081170399%_
                             _%hd170082170402%_
                             _%tl170083170404%_
                             _%e170084170407%_
                             _%hd170085170410%_
                             _%tl170086170412%_
                             _%e170087170415%_
                             _%hd170088170418%_
                             _%tl170089170420%_
                             _%e170090170423%_
                             _%hd170091170426%_
                             _%tl170092170428%_
                             _%e170093170431%_
                             _%hd170094170434%_
                             _%tl170095170436%_
                             _%e170096170439%_
                             _%hd170097170442%_
                             _%tl170098170444%_))))
                     (_%__match176242176243%_
                      (lambda (_%e170041170517%_
                               _%hd170042170520%_
                               _%tl170043170522%_
                               _%e170044170525%_
                               _%hd170045170528%_
                               _%tl170046170530%_
                               _%e170047170533%_
                               _%hd170048170536%_
                               _%tl170049170538%_
                               _%e170050170541%_
                               _%hd170051170544%_
                               _%tl170052170546%_
                               _%e170053170549%_
                               _%hd170054170552%_
                               _%tl170055170554%_
                               _%e170056170557%_
                               _%hd170057170560%_
                               _%tl170058170562%_
                               _%e170059170565%_
                               _%hd170060170568%_
                               _%tl170061170570%_
                               _%e170062170573%_
                               _%hd170063170576%_
                               _%tl170064170578%_
                               _%e170065170581%_
                               _%hd170066170584%_
                               _%tl170067170586%_
                               _%e170068170589%_
                               _%hd170069170592%_
                               _%tl170070170594%_)
                        (let ((_%L170597%_ _%hd170069170592%_)
                              (_%L170598%_ _%hd170060170568%_)
                              (_%L170599%_ _%hd170051170544%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170599%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L170599%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp176607
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169929%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L170598%_
                                      __tmp176607)))
                              (_%__kont175957175958%_
                               _%L170597%_
                               _%L170598%_
                               _%L170599%_)
                              (_%__match176446176447%_
                               _%e170041170517%_
                               _%hd170042170520%_
                               _%tl170043170522%_
                               _%e170044170525%_
                               _%hd170045170528%_
                               _%tl170046170530%_
                               _%e170047170533%_
                               _%hd170048170536%_
                               _%tl170049170538%_
                               _%e170050170541%_
                               _%hd170051170544%_
                               _%tl170052170546%_
                               _%e170053170549%_
                               _%hd170054170552%_
                               _%tl170055170554%_
                               _%e170056170557%_
                               _%hd170057170560%_
                               _%tl170058170562%_
                               _%e170059170565%_
                               _%hd170060170568%_
                               _%tl170061170570%_
                               _%e170062170573%_
                               _%hd170063170576%_
                               _%tl170064170578%_)))))
                     (_%__match176240176241%_
                      (lambda (_%e170041170517%_
                               _%hd170042170520%_
                               _%tl170043170522%_
                               _%e170044170525%_
                               _%hd170045170528%_
                               _%tl170046170530%_
                               _%e170047170533%_
                               _%hd170048170536%_
                               _%tl170049170538%_
                               _%e170050170541%_
                               _%hd170051170544%_
                               _%tl170052170546%_
                               _%e170053170549%_
                               _%hd170054170552%_
                               _%tl170055170554%_
                               _%e170056170557%_
                               _%hd170057170560%_
                               _%tl170058170562%_
                               _%e170059170565%_
                               _%hd170060170568%_
                               _%tl170061170570%_
                               _%e170062170573%_
                               _%hd170063170576%_
                               _%tl170064170578%_
                               _%e170065170581%_
                               _%hd170066170584%_
                               _%tl170067170586%_
                               _%e170068170589%_
                               _%hd170069170592%_
                               _%tl170070170594%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl170064170578%_))
                            (_%__match176242176243%_
                             _%e170041170517%_
                             _%hd170042170520%_
                             _%tl170043170522%_
                             _%e170044170525%_
                             _%hd170045170528%_
                             _%tl170046170530%_
                             _%e170047170533%_
                             _%hd170048170536%_
                             _%tl170049170538%_
                             _%e170050170541%_
                             _%hd170051170544%_
                             _%tl170052170546%_
                             _%e170053170549%_
                             _%hd170054170552%_
                             _%tl170055170554%_
                             _%e170056170557%_
                             _%hd170057170560%_
                             _%tl170058170562%_
                             _%e170059170565%_
                             _%hd170060170568%_
                             _%tl170061170570%_
                             _%e170062170573%_
                             _%hd170063170576%_
                             _%tl170064170578%_
                             _%e170065170581%_
                             _%hd170066170584%_
                             _%tl170067170586%_
                             _%e170068170589%_
                             _%hd170069170592%_
                             _%tl170070170594%_)
                            (_%__match176320176321%_
                             _%e170041170517%_
                             _%hd170042170520%_
                             _%tl170043170522%_
                             _%e170044170525%_
                             _%hd170045170528%_
                             _%tl170046170530%_
                             _%e170047170533%_
                             _%hd170048170536%_
                             _%tl170049170538%_
                             _%e170050170541%_
                             _%hd170051170544%_
                             _%tl170052170546%_
                             _%e170053170549%_
                             _%hd170054170552%_
                             _%tl170055170554%_
                             _%e170056170557%_
                             _%hd170057170560%_
                             _%tl170058170562%_
                             _%e170059170565%_
                             _%hd170060170568%_
                             _%tl170061170570%_
                             _%e170062170573%_
                             _%hd170063170576%_
                             _%tl170064170578%_
                             _%e170065170581%_
                             _%hd170066170584%_
                             _%tl170067170586%_
                             _%e170068170589%_
                             _%hd170069170592%_
                             _%tl170070170594%_))))
                     (_%__match176230176231%_
                      (lambda (_%e170041170517%_
                               _%hd170042170520%_
                               _%tl170043170522%_
                               _%e170044170525%_
                               _%hd170045170528%_
                               _%tl170046170530%_
                               _%e170047170533%_
                               _%hd170048170536%_
                               _%tl170049170538%_
                               _%e170050170541%_
                               _%hd170051170544%_
                               _%tl170052170546%_
                               _%e170053170549%_
                               _%hd170054170552%_
                               _%tl170055170554%_
                               _%e170056170557%_
                               _%hd170057170560%_
                               _%tl170058170562%_
                               _%e170059170565%_
                               _%hd170060170568%_
                               _%tl170061170570%_
                               _%e170062170573%_
                               _%hd170063170576%_
                               _%tl170064170578%_
                               _%e170065170581%_
                               _%hd170066170584%_
                               _%tl170067170586%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd170066170584%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170067170586%_))
                                (let ((_%e170068170589%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170067170586%_))))
                                  (let ((_%tl170070170594%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170068170589%_)))
                                        (_%hd170069170592%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170068170589%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170070170594%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl170064170578%_))
                                            (_%__match176242176243%_
                                             _%e170041170517%_
                                             _%hd170042170520%_
                                             _%tl170043170522%_
                                             _%e170044170525%_
                                             _%hd170045170528%_
                                             _%tl170046170530%_
                                             _%e170047170533%_
                                             _%hd170048170536%_
                                             _%tl170049170538%_
                                             _%e170050170541%_
                                             _%hd170051170544%_
                                             _%tl170052170546%_
                                             _%e170053170549%_
                                             _%hd170054170552%_
                                             _%tl170055170554%_
                                             _%e170056170557%_
                                             _%hd170057170560%_
                                             _%tl170058170562%_
                                             _%e170059170565%_
                                             _%hd170060170568%_
                                             _%tl170061170570%_
                                             _%e170062170573%_
                                             _%hd170063170576%_
                                             _%tl170064170578%_
                                             _%e170065170581%_
                                             _%hd170066170584%_
                                             _%tl170067170586%_
                                             _%e170068170589%_
                                             _%hd170069170592%_
                                             _%tl170070170594%_)
                                            (_%__match176320176321%_
                                             _%e170041170517%_
                                             _%hd170042170520%_
                                             _%tl170043170522%_
                                             _%e170044170525%_
                                             _%hd170045170528%_
                                             _%tl170046170530%_
                                             _%e170047170533%_
                                             _%hd170048170536%_
                                             _%tl170049170538%_
                                             _%e170050170541%_
                                             _%hd170051170544%_
                                             _%tl170052170546%_
                                             _%e170053170549%_
                                             _%hd170054170552%_
                                             _%tl170055170554%_
                                             _%e170056170557%_
                                             _%hd170057170560%_
                                             _%tl170058170562%_
                                             _%e170059170565%_
                                             _%hd170060170568%_
                                             _%tl170061170570%_
                                             _%e170062170573%_
                                             _%hd170063170576%_
                                             _%tl170064170578%_
                                             _%e170065170581%_
                                             _%hd170066170584%_
                                             _%tl170067170586%_
                                             _%e170068170589%_
                                             _%hd170069170592%_
                                             _%tl170070170594%_))
                                        (_%__match176444176445%_
                                         _%e170041170517%_
                                         _%hd170042170520%_
                                         _%tl170043170522%_
                                         _%e170044170525%_
                                         _%hd170045170528%_
                                         _%tl170046170530%_
                                         _%e170047170533%_
                                         _%hd170048170536%_
                                         _%tl170049170538%_
                                         _%e170050170541%_
                                         _%hd170051170544%_
                                         _%tl170052170546%_
                                         _%e170053170549%_
                                         _%hd170054170552%_
                                         _%tl170055170554%_
                                         _%e170056170557%_
                                         _%hd170057170560%_
                                         _%tl170058170562%_
                                         _%e170059170565%_
                                         _%hd170060170568%_
                                         _%tl170061170570%_
                                         _%e170062170573%_
                                         _%hd170063170576%_
                                         _%tl170064170578%_))))
                                (_%__match176444176445%_
                                 _%e170041170517%_
                                 _%hd170042170520%_
                                 _%tl170043170522%_
                                 _%e170044170525%_
                                 _%hd170045170528%_
                                 _%tl170046170530%_
                                 _%e170047170533%_
                                 _%hd170048170536%_
                                 _%tl170049170538%_
                                 _%e170050170541%_
                                 _%hd170051170544%_
                                 _%tl170052170546%_
                                 _%e170053170549%_
                                 _%hd170054170552%_
                                 _%tl170055170554%_
                                 _%e170056170557%_
                                 _%hd170057170560%_
                                 _%tl170058170562%_
                                 _%e170059170565%_
                                 _%hd170060170568%_
                                 _%tl170061170570%_
                                 _%e170062170573%_
                                 _%hd170063170576%_
                                 _%tl170064170578%_))
                            (_%__match176444176445%_
                             _%e170041170517%_
                             _%hd170042170520%_
                             _%tl170043170522%_
                             _%e170044170525%_
                             _%hd170045170528%_
                             _%tl170046170530%_
                             _%e170047170533%_
                             _%hd170048170536%_
                             _%tl170049170538%_
                             _%e170050170541%_
                             _%hd170051170544%_
                             _%tl170052170546%_
                             _%e170053170549%_
                             _%hd170054170552%_
                             _%tl170055170554%_
                             _%e170056170557%_
                             _%hd170057170560%_
                             _%tl170058170562%_
                             _%e170059170565%_
                             _%hd170060170568%_
                             _%tl170061170570%_
                             _%e170062170573%_
                             _%hd170063170576%_
                             _%tl170064170578%_))))
                     (_%__match176162176163%_
                      (lambda (_%e169990170638%_
                               _%hd169991170641%_
                               _%tl169992170643%_
                               _%e169993170646%_
                               _%hd169994170649%_
                               _%tl169995170651%_
                               _%e169996170654%_
                               _%hd169997170657%_
                               _%tl169998170659%_
                               _%e169999170662%_
                               _%hd170000170665%_
                               _%tl170001170667%_
                               _%e170002170670%_
                               _%hd170003170673%_
                               _%tl170004170675%_
                               _%e170005170678%_
                               _%hd170006170681%_
                               _%tl170007170683%_
                               _%e170008170686%_
                               _%hd170009170689%_
                               _%tl170010170691%_
                               _%e170011170694%_
                               _%hd170012170697%_
                               _%tl170013170699%_
                               _%e170014170702%_
                               _%hd170015170705%_
                               _%tl170016170707%_
                               _%e170017170710%_
                               _%hd170018170713%_
                               _%tl170019170715%_
                               _%e170020170718%_
                               _%hd170021170721%_
                               _%tl170022170723%_
                               _%e170023170726%_
                               _%hd170024170729%_
                               _%tl170025170731%_
                               _%e170026170734%_
                               _%hd170027170737%_
                               _%tl170028170739%_
                               _%__splice175955175956%_
                               _%target170029170742%_
                               _%tl170031170744%_)
                        (letrec ((_%loop170032170747%_
                                  (lambda (_%hd170030170750%_
                                           _%args170036170752%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170030170750%_))
                                        (let ((_%e170033170755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170030170750%_))))
                                          (let ((_%lp-tl170035170760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170033170755%_)))
                                                (_%lp-hd170034170758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170033170755%_))))
                                            (_%loop170032170747%_
                                             _%lp-tl170035170760%_
                                             (cons _%lp-hd170034170758%_
                                                   _%args170036170752%_))))
                                        (let ((_%args170037170763%_
                                               (reverse _%args170036170752%_)))
                                          (let ((_%L170766%_
                                                 _%args170037170763%_)
                                                (_%L170767%_
                                                 _%hd170027170737%_)
                                                (_%L170768%_
                                                 _%hd170018170713%_)
                                                (_%L170769%_
                                                 _%hd170009170689%_)
                                                (_%L170770%_
                                                 _%hd170000170665%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170770%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170769%_
                                                        'call-method))
                                                     (let ((__tmp176608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169929%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170768%_
                                                        __tmp176608)))
                                                (_%__kont175953175954%_
                                                 _%L170766%_
                                                 _%L170767%_
                                                 _%L170768%_
                                                 _%L170769%_
                                                 _%L170770%_)
                                                (_%__kont175965175966%_))))))))
                          (_%loop170032170747%_ _%target170029170742%_ '()))))
                     (_%__match176120176121%_
                      (lambda (_%e169990170638%_
                               _%hd169991170641%_
                               _%tl169992170643%_
                               _%e169993170646%_
                               _%hd169994170649%_
                               _%tl169995170651%_
                               _%e169996170654%_
                               _%hd169997170657%_
                               _%tl169998170659%_
                               _%e169999170662%_
                               _%hd170000170665%_
                               _%tl170001170667%_
                               _%e170002170670%_
                               _%hd170003170673%_
                               _%tl170004170675%_
                               _%e170005170678%_
                               _%hd170006170681%_
                               _%tl170007170683%_
                               _%e170008170686%_
                               _%hd170009170689%_
                               _%tl170010170691%_
                               _%e170011170694%_
                               _%hd170012170697%_
                               _%tl170013170699%_
                               _%e170014170702%_
                               _%hd170015170705%_
                               _%tl170016170707%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd170015170705%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl170016170707%_))
                                (let ((_%e170017170710%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl170016170707%_))))
                                  (let ((_%tl170019170715%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170017170710%_)))
                                        (_%hd170018170713%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170017170710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl170019170715%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170013170699%_))
                                            (let ((_%e170020170718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170013170699%_))))
                                              (let ((_%tl170022170723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170020170718%_)))
                                                    (_%hd170021170721%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170020170718%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd170021170721%_))
                                                    (let ((_%e170023170726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd170021170721%_))))
                                                      (let ((_%tl170025170731%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170023170726%_)))
                    (_%hd170024170729%_
                     (let () (declare (not safe)) (##car _%e170023170726%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd170024170729%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd170024170729%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl170025170731%_))
                            (let ((_%e170026170734%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl170025170731%_))))
                              (let ((_%tl170028170739%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170026170734%_)))
                                    (_%hd170027170737%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170026170734%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl170028170739%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170022170723%_))
                                        (let ((_%__splice175955175956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170022170723%_
                                                  '0))))
                                          (let ((_%tl170031170744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175955175956%_
                                                    '1)))
                                                (_%target170029170742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175955175956%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170031170744%_))
                                                (_%__match176162176163%_
                                                 _%e169990170638%_
                                                 _%hd169991170641%_
                                                 _%tl169992170643%_
                                                 _%e169993170646%_
                                                 _%hd169994170649%_
                                                 _%tl169995170651%_
                                                 _%e169996170654%_
                                                 _%hd169997170657%_
                                                 _%tl169998170659%_
                                                 _%e169999170662%_
                                                 _%hd170000170665%_
                                                 _%tl170001170667%_
                                                 _%e170002170670%_
                                                 _%hd170003170673%_
                                                 _%tl170004170675%_
                                                 _%e170005170678%_
                                                 _%hd170006170681%_
                                                 _%tl170007170683%_
                                                 _%e170008170686%_
                                                 _%hd170009170689%_
                                                 _%tl170010170691%_
                                                 _%e170011170694%_
                                                 _%hd170012170697%_
                                                 _%tl170013170699%_
                                                 _%e170014170702%_
                                                 _%hd170015170705%_
                                                 _%tl170016170707%_
                                                 _%e170017170710%_
                                                 _%hd170018170713%_
                                                 _%tl170019170715%_
                                                 _%e170020170718%_
                                                 _%hd170021170721%_
                                                 _%tl170022170723%_
                                                 _%e170023170726%_
                                                 _%hd170024170729%_
                                                 _%tl170025170731%_
                                                 _%e170026170734%_
                                                 _%hd170027170737%_
                                                 _%tl170028170739%_
                                                 _%__splice175955175956%_
                                                 _%target170029170742%_
                                                 _%tl170031170744%_)
                                                (_%__kont175965175966%_))))
                                        (_%__kont175965175966%_))
                                    (_%__kont175965175966%_))))
                            (_%__kont175965175966%_))
                        (_%__kont175965175966%_))
                    (_%__kont175965175966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175965175966%_))))
                                            (_%__match176444176445%_
                                             _%e169990170638%_
                                             _%hd169991170641%_
                                             _%tl169992170643%_
                                             _%e169993170646%_
                                             _%hd169994170649%_
                                             _%tl169995170651%_
                                             _%e169996170654%_
                                             _%hd169997170657%_
                                             _%tl169998170659%_
                                             _%e169999170662%_
                                             _%hd170000170665%_
                                             _%tl170001170667%_
                                             _%e170002170670%_
                                             _%hd170003170673%_
                                             _%tl170004170675%_
                                             _%e170005170678%_
                                             _%hd170006170681%_
                                             _%tl170007170683%_
                                             _%e170008170686%_
                                             _%hd170009170689%_
                                             _%tl170010170691%_
                                             _%e170011170694%_
                                             _%hd170012170697%_
                                             _%tl170013170699%_))
                                        (_%__match176444176445%_
                                         _%e169990170638%_
                                         _%hd169991170641%_
                                         _%tl169992170643%_
                                         _%e169993170646%_
                                         _%hd169994170649%_
                                         _%tl169995170651%_
                                         _%e169996170654%_
                                         _%hd169997170657%_
                                         _%tl169998170659%_
                                         _%e169999170662%_
                                         _%hd170000170665%_
                                         _%tl170001170667%_
                                         _%e170002170670%_
                                         _%hd170003170673%_
                                         _%tl170004170675%_
                                         _%e170005170678%_
                                         _%hd170006170681%_
                                         _%tl170007170683%_
                                         _%e170008170686%_
                                         _%hd170009170689%_
                                         _%tl170010170691%_
                                         _%e170011170694%_
                                         _%hd170012170697%_
                                         _%tl170013170699%_))))
                                (_%__match176444176445%_
                                 _%e169990170638%_
                                 _%hd169991170641%_
                                 _%tl169992170643%_
                                 _%e169993170646%_
                                 _%hd169994170649%_
                                 _%tl169995170651%_
                                 _%e169996170654%_
                                 _%hd169997170657%_
                                 _%tl169998170659%_
                                 _%e169999170662%_
                                 _%hd170000170665%_
                                 _%tl170001170667%_
                                 _%e170002170670%_
                                 _%hd170003170673%_
                                 _%tl170004170675%_
                                 _%e170005170678%_
                                 _%hd170006170681%_
                                 _%tl170007170683%_
                                 _%e170008170686%_
                                 _%hd170009170689%_
                                 _%tl170010170691%_
                                 _%e170011170694%_
                                 _%hd170012170697%_
                                 _%tl170013170699%_))
                            (_%__match176230176231%_
                             _%e169990170638%_
                             _%hd169991170641%_
                             _%tl169992170643%_
                             _%e169993170646%_
                             _%hd169994170649%_
                             _%tl169995170651%_
                             _%e169996170654%_
                             _%hd169997170657%_
                             _%tl169998170659%_
                             _%e169999170662%_
                             _%hd170000170665%_
                             _%tl170001170667%_
                             _%e170002170670%_
                             _%hd170003170673%_
                             _%tl170004170675%_
                             _%e170005170678%_
                             _%hd170006170681%_
                             _%tl170007170683%_
                             _%e170008170686%_
                             _%hd170009170689%_
                             _%tl170010170691%_
                             _%e170011170694%_
                             _%hd170012170697%_
                             _%tl170013170699%_
                             _%e170014170702%_
                             _%hd170015170705%_
                             _%tl170016170707%_))))
                     (_%__match176052176053%_
                      (lambda (_%e169946170830%_
                               _%hd169947170833%_
                               _%tl169948170835%_
                               _%e169949170838%_
                               _%hd169950170841%_
                               _%tl169951170843%_
                               _%e169952170846%_
                               _%hd169953170849%_
                               _%tl169954170851%_
                               _%e169955170854%_
                               _%hd169956170857%_
                               _%tl169957170859%_
                               _%e169958170862%_
                               _%hd169959170865%_
                               _%tl169960170867%_
                               _%e169961170870%_
                               _%hd169962170873%_
                               _%tl169963170875%_
                               _%e169964170878%_
                               _%hd169965170881%_
                               _%tl169966170883%_
                               _%e169967170886%_
                               _%hd169968170889%_
                               _%tl169969170891%_
                               _%e169970170894%_
                               _%hd169971170897%_
                               _%tl169972170899%_
                               _%e169973170902%_
                               _%hd169974170905%_
                               _%tl169975170907%_
                               _%__splice175951175952%_
                               _%target169976170910%_
                               _%tl169978170912%_)
                        (letrec ((_%loop169979170915%_
                                  (lambda (_%hd169977170918%_
                                           _%args169983170920%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169977170918%_))
                                        (let ((_%e169980170923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169977170918%_))))
                                          (let ((_%lp-tl169982170928%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169980170923%_)))
                                                (_%lp-hd169981170926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169980170923%_))))
                                            (_%loop169979170915%_
                                             _%lp-tl169982170928%_
                                             (cons _%lp-hd169981170926%_
                                                   _%args169983170920%_))))
                                        (let ((_%args169984170931%_
                                               (reverse _%args169983170920%_)))
                                          (let ((_%L170934%_
                                                 _%args169984170931%_)
                                                (_%L170935%_
                                                 _%hd169974170905%_)
                                                (_%L170936%_
                                                 _%hd169965170881%_)
                                                (_%L170937%_
                                                 _%hd169956170857%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170937%_
                                                        'call-method))
                                                     (let ((__tmp176609
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169929%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170936%_
                                                        __tmp176609)))
                                                (_%__kont175949175950%_
                                                 _%L170934%_
                                                 _%L170935%_
                                                 _%L170936%_
                                                 _%L170937%_)
                                                (_%__match176240176241%_
                                                 _%e169946170830%_
                                                 _%hd169947170833%_
                                                 _%tl169948170835%_
                                                 _%e169949170838%_
                                                 _%hd169950170841%_
                                                 _%tl169951170843%_
                                                 _%e169952170846%_
                                                 _%hd169953170849%_
                                                 _%tl169954170851%_
                                                 _%e169955170854%_
                                                 _%hd169956170857%_
                                                 _%tl169957170859%_
                                                 _%e169958170862%_
                                                 _%hd169959170865%_
                                                 _%tl169960170867%_
                                                 _%e169961170870%_
                                                 _%hd169962170873%_
                                                 _%tl169963170875%_
                                                 _%e169964170878%_
                                                 _%hd169965170881%_
                                                 _%tl169966170883%_
                                                 _%e169967170886%_
                                                 _%hd169968170889%_
                                                 _%tl169969170891%_
                                                 _%e169970170894%_
                                                 _%hd169971170897%_
                                                 _%tl169972170899%_
                                                 _%e169973170902%_
                                                 _%hd169974170905%_
                                                 _%tl169975170907%_))))))))
                          (_%loop169979170915%_ _%target169976170910%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175947175948%_))
                    (let ((_%e169946170830%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175947175948%_))))
                      (let ((_%tl169948170835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169946170830%_)))
                            (_%hd169947170833%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169946170830%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169948170835%_))
                            (let ((_%e169949170838%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169948170835%_))))
                              (let ((_%tl169951170843%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169949170838%_)))
                                    (_%hd169950170841%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169949170838%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169950170841%_))
                                    (let ((_%e169952170846%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169950170841%_))))
                                      (let ((_%tl169954170851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169952170846%_)))
                                            (_%hd169953170849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169952170846%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169953170849%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169953170849%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169954170851%_))
                                                    (let ((_%e169955170854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169954170851%_))))
                                                      (let ((_%tl169957170859%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169955170854%_)))
                    (_%hd169956170857%_
                     (let () (declare (not safe)) (##car _%e169955170854%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169957170859%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169951170843%_))
                        (let ((_%e169958170862%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169951170843%_))))
                          (let ((_%tl169960170867%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169958170862%_)))
                                (_%hd169959170865%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169958170862%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169959170865%_))
                                (let ((_%e169961170870%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169959170865%_))))
                                  (let ((_%tl169963170875%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169961170870%_)))
                                        (_%hd169962170873%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169961170870%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169962170873%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169962170873%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169963170875%_))
                                                (let ((_%e169964170878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169963170875%_))))
                                                  (let ((_%tl169966170883%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169964170878%_)))
                                                        (_%hd169965170881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169964170878%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169966170883%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169960170867%_))
                                                            (let ((_%e169967170886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169960170867%_))))
                      (let ((_%tl169969170891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169967170886%_)))
                            (_%hd169968170889%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169967170886%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169968170889%_))
                            (let ((_%e169970170894%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169968170889%_))))
                              (let ((_%tl169972170899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169970170894%_)))
                                    (_%hd169971170897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169970170894%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169971170897%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169971170897%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169972170899%_))
                                            (let ((_%e169973170902%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169972170899%_))))
                                              (let ((_%tl169975170907%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169973170902%_)))
                                                    (_%hd169974170905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169973170902%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169975170907%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169969170891%_))
                                                        (let ((_%__splice175951175952%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169969170891%_ '0))))
                  (let ((_%tl169978170912%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175951175952%_ '1)))
                        (_%target169976170910%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175951175952%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169978170912%_))
                        (_%__match176052176053%_
                         _%e169946170830%_
                         _%hd169947170833%_
                         _%tl169948170835%_
                         _%e169949170838%_
                         _%hd169950170841%_
                         _%tl169951170843%_
                         _%e169952170846%_
                         _%hd169953170849%_
                         _%tl169954170851%_
                         _%e169955170854%_
                         _%hd169956170857%_
                         _%tl169957170859%_
                         _%e169958170862%_
                         _%hd169959170865%_
                         _%tl169960170867%_
                         _%e169961170870%_
                         _%hd169962170873%_
                         _%tl169963170875%_
                         _%e169964170878%_
                         _%hd169965170881%_
                         _%tl169966170883%_
                         _%e169967170886%_
                         _%hd169968170889%_
                         _%tl169969170891%_
                         _%e169970170894%_
                         _%hd169971170897%_
                         _%tl169972170899%_
                         _%e169973170902%_
                         _%hd169974170905%_
                         _%tl169975170907%_
                         _%__splice175951175952%_
                         _%target169976170910%_
                         _%tl169978170912%_)
                        (_%__match176240176241%_
                         _%e169946170830%_
                         _%hd169947170833%_
                         _%tl169948170835%_
                         _%e169949170838%_
                         _%hd169950170841%_
                         _%tl169951170843%_
                         _%e169952170846%_
                         _%hd169953170849%_
                         _%tl169954170851%_
                         _%e169955170854%_
                         _%hd169956170857%_
                         _%tl169957170859%_
                         _%e169958170862%_
                         _%hd169959170865%_
                         _%tl169960170867%_
                         _%e169961170870%_
                         _%hd169962170873%_
                         _%tl169963170875%_
                         _%e169964170878%_
                         _%hd169965170881%_
                         _%tl169966170883%_
                         _%e169967170886%_
                         _%hd169968170889%_
                         _%tl169969170891%_
                         _%e169970170894%_
                         _%hd169971170897%_
                         _%tl169972170899%_
                         _%e169973170902%_
                         _%hd169974170905%_
                         _%tl169975170907%_))))
                (_%__match176240176241%_
                 _%e169946170830%_
                 _%hd169947170833%_
                 _%tl169948170835%_
                 _%e169949170838%_
                 _%hd169950170841%_
                 _%tl169951170843%_
                 _%e169952170846%_
                 _%hd169953170849%_
                 _%tl169954170851%_
                 _%e169955170854%_
                 _%hd169956170857%_
                 _%tl169957170859%_
                 _%e169958170862%_
                 _%hd169959170865%_
                 _%tl169960170867%_
                 _%e169961170870%_
                 _%hd169962170873%_
                 _%tl169963170875%_
                 _%e169964170878%_
                 _%hd169965170881%_
                 _%tl169966170883%_
                 _%e169967170886%_
                 _%hd169968170889%_
                 _%tl169969170891%_
                 _%e169970170894%_
                 _%hd169971170897%_
                 _%tl169972170899%_
                 _%e169973170902%_
                 _%hd169974170905%_
                 _%tl169975170907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match176444176445%_
                                                     _%e169946170830%_
                                                     _%hd169947170833%_
                                                     _%tl169948170835%_
                                                     _%e169949170838%_
                                                     _%hd169950170841%_
                                                     _%tl169951170843%_
                                                     _%e169952170846%_
                                                     _%hd169953170849%_
                                                     _%tl169954170851%_
                                                     _%e169955170854%_
                                                     _%hd169956170857%_
                                                     _%tl169957170859%_
                                                     _%e169958170862%_
                                                     _%hd169959170865%_
                                                     _%tl169960170867%_
                                                     _%e169961170870%_
                                                     _%hd169962170873%_
                                                     _%tl169963170875%_
                                                     _%e169964170878%_
                                                     _%hd169965170881%_
                                                     _%tl169966170883%_
                                                     _%e169967170886%_
                                                     _%hd169968170889%_
                                                     _%tl169969170891%_))))
                                            (_%__match176444176445%_
                                             _%e169946170830%_
                                             _%hd169947170833%_
                                             _%tl169948170835%_
                                             _%e169949170838%_
                                             _%hd169950170841%_
                                             _%tl169951170843%_
                                             _%e169952170846%_
                                             _%hd169953170849%_
                                             _%tl169954170851%_
                                             _%e169955170854%_
                                             _%hd169956170857%_
                                             _%tl169957170859%_
                                             _%e169958170862%_
                                             _%hd169959170865%_
                                             _%tl169960170867%_
                                             _%e169961170870%_
                                             _%hd169962170873%_
                                             _%tl169963170875%_
                                             _%e169964170878%_
                                             _%hd169965170881%_
                                             _%tl169966170883%_
                                             _%e169967170886%_
                                             _%hd169968170889%_
                                             _%tl169969170891%_))
                                        (_%__match176120176121%_
                                         _%e169946170830%_
                                         _%hd169947170833%_
                                         _%tl169948170835%_
                                         _%e169949170838%_
                                         _%hd169950170841%_
                                         _%tl169951170843%_
                                         _%e169952170846%_
                                         _%hd169953170849%_
                                         _%tl169954170851%_
                                         _%e169955170854%_
                                         _%hd169956170857%_
                                         _%tl169957170859%_
                                         _%e169958170862%_
                                         _%hd169959170865%_
                                         _%tl169960170867%_
                                         _%e169961170870%_
                                         _%hd169962170873%_
                                         _%tl169963170875%_
                                         _%e169964170878%_
                                         _%hd169965170881%_
                                         _%tl169966170883%_
                                         _%e169967170886%_
                                         _%hd169968170889%_
                                         _%tl169969170891%_
                                         _%e169970170894%_
                                         _%hd169971170897%_
                                         _%tl169972170899%_))
                                    (_%__match176444176445%_
                                     _%e169946170830%_
                                     _%hd169947170833%_
                                     _%tl169948170835%_
                                     _%e169949170838%_
                                     _%hd169950170841%_
                                     _%tl169951170843%_
                                     _%e169952170846%_
                                     _%hd169953170849%_
                                     _%tl169954170851%_
                                     _%e169955170854%_
                                     _%hd169956170857%_
                                     _%tl169957170859%_
                                     _%e169958170862%_
                                     _%hd169959170865%_
                                     _%tl169960170867%_
                                     _%e169961170870%_
                                     _%hd169962170873%_
                                     _%tl169963170875%_
                                     _%e169964170878%_
                                     _%hd169965170881%_
                                     _%tl169966170883%_
                                     _%e169967170886%_
                                     _%hd169968170889%_
                                     _%tl169969170891%_))))
                            (_%__match176444176445%_
                             _%e169946170830%_
                             _%hd169947170833%_
                             _%tl169948170835%_
                             _%e169949170838%_
                             _%hd169950170841%_
                             _%tl169951170843%_
                             _%e169952170846%_
                             _%hd169953170849%_
                             _%tl169954170851%_
                             _%e169955170854%_
                             _%hd169956170857%_
                             _%tl169957170859%_
                             _%e169958170862%_
                             _%hd169959170865%_
                             _%tl169960170867%_
                             _%e169961170870%_
                             _%hd169962170873%_
                             _%tl169963170875%_
                             _%e169964170878%_
                             _%hd169965170881%_
                             _%tl169966170883%_
                             _%e169967170886%_
                             _%hd169968170889%_
                             _%tl169969170891%_))))
                    (_%__match176382176383%_
                     _%e169946170830%_
                     _%hd169947170833%_
                     _%tl169948170835%_
                     _%e169949170838%_
                     _%hd169950170841%_
                     _%tl169951170843%_
                     _%e169952170846%_
                     _%hd169953170849%_
                     _%tl169954170851%_
                     _%e169955170854%_
                     _%hd169956170857%_
                     _%tl169957170859%_
                     _%e169958170862%_
                     _%hd169959170865%_
                     _%tl169960170867%_
                     _%e169961170870%_
                     _%hd169962170873%_
                     _%tl169963170875%_
                     _%e169964170878%_
                     _%hd169965170881%_
                     _%tl169966170883%_))
                (_%__kont175965175966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175965175966%_))
                                            (_%__kont175965175966%_))
                                        (_%__kont175965175966%_))))
                                (_%__kont175965175966%_))))
                        (_%__kont175965175966%_))
                    (_%__kont175965175966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175965175966%_))
                                                (_%__kont175965175966%_))
                                            (_%__kont175965175966%_))))
                                    (_%__kont175965175966%_))))
                            (_%__kont175965175966%_))))
                    (_%__kont175965175966%_))))))))))
