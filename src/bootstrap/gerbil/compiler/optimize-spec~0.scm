(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1756715356)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp186685 (list gxc#::identity::t))
            (__tmp186684 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp186685
         '()
         __tmp186684
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args185482%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args185482%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp186686
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
        (__make-atomic-promise __tmp186686)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx185474%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self185477%_
                (let ((__obj186677
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj186677))
               (__tmp186687
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185477%_ _%stx185474%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186687
           gxc#current-compile-method
           _%self185477%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp186689 (list gxc#::false::t))
            (__tmp186688 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp186689
         '()
         __tmp186688
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args185471%_
        (apply make-instance gxc#::extract-receiver::t _%$args185471%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp186690
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
        (__make-atomic-promise __tmp186690)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx185463%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self185466%_
                (let ((__obj186679
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj186679))
               (__tmp186691
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self185466%_ _%stx185463%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp186691
           gxc#current-compile-method
           _%self185466%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp186693 (list gxc#::void::t))
            (__tmp186692 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp186693
         '(receiver methods slots)
         __tmp186692
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args185460%_
        (apply make-instance gxc#::collect-object-refs::t _%$args185460%_)))
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
      (let ((__tmp186694
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
        (__make-atomic-promise __tmp186694)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords185426%_
               _%receiver185421185427%_
               _%methods185422185429%_
               _%slots185423185431%_
               _%stx185433%_)
        (let* ((_%receiver185436%_
                (if (eq? _%receiver185421185427%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185421185427%_))
               (_%methods185438%_
                (if (eq? _%methods185422185429%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185422185429%_))
               (_%slots185440%_
                (if (eq? _%slots185423185431%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185423185431%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self185442%_
                  (let ((__obj186681
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
                       __obj186681
                       _%receiver185436%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186681
                       _%methods185438%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186681
                       _%slots185440%_
                       '3
                       '#f
                       '#f))
                    __obj186681))
                 (__tmp186695
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185442%_ _%stx185433%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186695
             gxc#current-compile-method
             _%self185442%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords185449%_ . _%args185450%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords185449%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185449%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185449%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185449%_
                  'slots:
                  absent-value))
               _%args185450%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args185424185456%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args185424185456%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp186697 (list gxc#::basic-xform-expression::t))
            (__tmp186696 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp186697
         '(receiver klass methods slots)
         __tmp186696
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args185417%_
        (apply make-instance gxc#::subst-object-refs::t _%$args185417%_)))
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
      (let ((__tmp186698
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
        (__make-atomic-promise __tmp186698)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords185379%_
               _%receiver185373185380%_
               _%klass185374185382%_
               _%methods185375185384%_
               _%slots185376185386%_
               _%stx185388%_)
        (let* ((_%receiver185391%_
                (if (eq? _%receiver185373185380%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver185373185380%_))
               (_%klass185393%_
                (if (eq? _%klass185374185382%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass185374185382%_))
               (_%methods185395%_
                (if (eq? _%methods185375185384%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods185375185384%_))
               (_%slots185397%_
                (if (eq? _%slots185376185386%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots185376185386%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self185399%_
                  (let ((__obj186683
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
                       __obj186683
                       _%receiver185391%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186683
                       _%klass185393%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186683
                       _%methods185395%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj186683
                       _%slots185397%_
                       '4
                       '#f
                       '#f))
                    __obj186683))
                 (__tmp186699
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self185399%_ _%stx185388%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp186699
             gxc#current-compile-method
             _%self185399%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords185406%_ . _%args185407%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords185406%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185406%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185406%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185406%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords185406%_
                  'slots:
                  absent-value))
               _%args185407%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args185377185413%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args185377185413%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self182488%_ _%stx182489%_)
        (letrec ((_%generate-method-bind182491%_
                  (lambda (_%$klass185365%_
                           _%$method-table185366%_
                           _%id185367%_
                           _%$id185368%_)
                    (let ((_%$tmp185370%_
                           (let ((__tmp186700
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186700))))
                      (cons (cons _%$id185368%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp185370%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table185366%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id185367%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp185370%_ '()))
                    (cons (cons '%#ref (cons _%$tmp185370%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id185367%_
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
                 (_%generate-slot-bind182492%_
                  (lambda (_%$klass185359%_ _%id185360%_ _%$id185361%_)
                    (let ((_%$tmp185363%_
                           (let ((__tmp186701
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp186701))))
                      (cons (cons _%$id185361%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp185363%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass185359%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id185360%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp185363%_ '()))
                        (cons (cons '%#ref (cons _%$tmp185363%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id185360%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl182493%_
                  (lambda (_%$klass185353%_
                           _%$method-table185354%_
                           _%methods-bind185355%_
                           _%slots-bind185356%_
                           _%specializer-impl185357%_)
                    (let ((__tmp186702
                           (cons '%#lambda
                                 (cons (cons _%$klass185353%_
                                             (cons _%$method-table185354%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind185356%_
                                                            _%methods-bind185355%_))
                                                         (cons _%specializer-impl185357%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186702 _%stx182489%_))))
                 (_%generate-specializer-def182494%_
                  (lambda (_%id185349%_
                           _%specializer-id185350%_
                           _%specializer-impl185351%_)
                    (let ((__tmp186703
                           (cons '%#begin
                                 (cons _%stx182489%_
                                       (cons (let ((__tmp186704
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id185350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl185351%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186704
                                                _%stx182489%_))
                                             (cons (let ((__tmp186705
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id185349%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id185350%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186705
                                                      _%stx182489%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp186703 _%stx182489%_)))))
          (let* ((_%__stx185571185572%_ _%stx182489%_)
                 (_%g182497182517%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx185571185572%_)))))
            (let ((_%__kont185573185574%_
                   (lambda (_%L182561%_ _%L182562%_)
                     (let ((_%method-calls182581%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs182582%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty182583%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?182585%_
                                 (lambda ()
                                   (if (let ((__tmp186706
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls182581%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186706))
                                       (let ((__tmp186707
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs182582%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp186707))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L182561%_))
                             (let* ((_%__stx185485185486%_ _%L182561%_)
                                    (_%g182973182991%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx185485185486%_)))))
                               (let ((_%__kont185487185488%_
                                      (lambda (_%L183027%_
                                               _%L183028%_
                                               _%L183029%_)
                                        (let ((_%receiver183049%_
                                               (let ((_%$e183046%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L183027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e183046%_
                                                     _%$e183046%_
                                                     _%L183029%_))))
                                          (for-each
                                           (lambda (_%g183050183052%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver183049%_
                                              _%method-calls182581%_
                                              _%slot-refs182582%_
                                              _%g183050183052%_))
                                           _%L183027%_)
                                          (if (_%no-specializer?182585%_)
                                              _%stx182489%_
                                              (let* ((_%specializer-id183061%_
                                                      (let* ((_%id183055%_
                                                              (let ((__tmp186708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182562%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186708 '"::specialize")))
                     (_%specializer-id183058%_
                      (let ((__tmp186709
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182489%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183055%_ __tmp186709))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183058%_))
                _%specializer-id183058%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183063%_
                                                      (let ((__tmp186710
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186710)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183065%_
                                                      (let ((__tmp186711
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186711)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183067%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182581%_)))
                                                     (_%$methods183071%_
                                                      (let ((__tmp186712
                                                             (lambda (_%id183069%_)
                                                               (let ((__tmp186713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183069%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186713)))))
                (declare (not safe))
                (##map __tmp186712 _%methods183067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183080%_
                                                      (let ((__tmp186714
                                                             (lambda (_%g183072183075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183073183077%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182581%_
                          _%g183072183075%_
                          _%g183073183077%_)))))
                (declare (not safe))
                (##for-each __tmp186714 _%methods183067%_ _%$methods183071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183090%_
                                                      (let ((__tmp186715
                                                             (lambda (_%g183082183085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183083183087%_)
                       (_%generate-method-bind182491%_
                        _%$klass183063%_
                        _%$method-table183065%_
                        _%g183082183085%_
                        _%g183083183087%_))))
                (declare (not safe))
                (##map __tmp186715 _%methods183067%_ _%$methods183071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182582%_)))
                                                     (_%$slots183096%_
                                                      (let ((__tmp186716
                                                             (lambda (_%id183094%_)
                                                               (let ((__tmp186717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183094%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186717)))))
                (declare (not safe))
                (##map __tmp186716 _%slots183092%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183105%_
                                                      (let ((__tmp186718
                                                             (lambda (_%g183097183100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183098183102%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182582%_
                          _%g183097183100%_
                          _%g183098183102%_)))))
                (declare (not safe))
                (##for-each __tmp186718 _%slots183092%_ _%$slots183096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183114%_
                                                      (let ((__tmp186719
                                                             (lambda (_%g183106183109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183107183111%_)
                       (_%generate-slot-bind182492%_
                        _%$klass183063%_
                        _%g183106183109%_
                        _%g183107183111%_))))
                (declare (not safe))
                (##map __tmp186719 _%slots183092%_ _%$slots183096%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body183120%_
                                                      (map (lambda (_%g183115183117%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver183049%_
                                                              _%$klass183063%_
                                                              _%method-calls182581%_
                                                              _%slot-refs182582%_
                                                              _%g183115183117%_))
                                                           _%L183027%_))
                                                     (_%specializer-impl183122%_
                                                      (let ((__tmp186720
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L183029%_ _%L183028%_)
                                 _%specializer-body183120%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186720 _%stx182489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl183124%_
                                                      (_%generate-specializer-impl182493%_
                                                       _%$klass183063%_
                                                       _%$method-table183065%_
                                                       _%methods-bind183090%_
                                                       _%slots-bind183114%_
                                                       _%specializer-impl183122%_)))
                                                (let ((__tmp186722
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182562%_)))
                                                      (__tmp186721
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183061%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186722
                                                   '" => "
                                                   __tmp186721))
                                                (_%generate-specializer-def182494%_
                                                 _%L182562%_
                                                 _%specializer-id183061%_
                                                 _%specializer-impl183124%_))))))
                                     (_%__kont185489185490%_
                                      (lambda () _%stx182489%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx185485185486%_))
                                     (let ((_%e182978183003%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx185485185486%_))))
                                       (let ((_%tl182980183008%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e182978183003%_)))
                                             (_%hd182979183006%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e182978183003%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl182980183008%_))
                                             (let ((_%e182981183011%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl182980183008%_))))
                                               (let ((_%tl182983183016%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e182981183011%_)))
                                                     (_%hd182982183014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e182981183011%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd182982183014%_))
                                                     (let ((_%e182984183019%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd182982183014%_))))
                                                       (let ((_%tl182986183024%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e182984183019%_)))
                     (_%hd182985183022%_
                      (let () (declare (not safe)) (##car _%e182984183019%_))))
                 (_%__kont185487185488%_
                  _%tl182983183016%_
                  _%tl182986183024%_
                  _%hd182985183022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont185489185490%_))))
                                             (_%__kont185489185490%_))))
                                     (_%__kont185489185490%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L182561%_))
                                 (let* ((_%g183131183150%_
                                         (lambda (_%g183132183147%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g183132183147%_))))
                                        (_%g183130183448%_
                                         (lambda (_%g183132183153%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g183132183153%_))
                                               (let ((_%e183134183155%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g183132183153%_))))
                                                 (let ((_%hd183135183158%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e183134183155%_)))
                                                       (_%tl183136183160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e183134183155%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl183136183160%_))
                                                       (let ((_g186723_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl183136183160%_ '0))))
                 (begin
                   (let ((_g186724_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g186723_)
                                (##values-length _g186723_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g186724_ 2)))
                         (error "Context expects 2 values" _g186724_)))
                   (let ((_%target183137183163%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186723_ 0)))
                         (_%tl183139183165%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g186723_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl183139183165%_))
                         (letrec ((_%loop183140183168%_
                                   (lambda (_%hd183138183171%_
                                            _%clause183144183173%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd183138183171%_))
                                         (let ((_%e183141183176%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd183138183171%_))))
                                           (let ((_%lp-hd183142183179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e183141183176%_)))
                                                 (_%lp-tl183143183181%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e183141183176%_))))
                                             (_%loop183140183168%_
                                              _%lp-tl183143183181%_
                                              (cons _%lp-hd183142183179%_
                                                    _%clause183144183173%_))))
                                         (let ((_%clause183145183184%_
                                                (reverse _%clause183144183173%_)))
                                           ((lambda (_%L183187%_)
                                              (for-each
                                               (lambda (_%clause183201%_)
                                                 (let* ((_%__stx185511185512%_
                                                         _%clause183201%_)
                                                        (_%g183204183219%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx185511185512%_)))))
                                                   (let ((_%__kont185513185514%_
                                                          (lambda (_%L183247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L183248%_
                           _%L183249%_)
                    (let ((_%receiver183268%_
                           (let ((_%$e183265%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L183247%_))))
                             (if _%$e183265%_ _%$e183265%_ _%L183249%_))))
                      (for-each
                       (lambda (_%g183269183271%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver183268%_
                          _%method-calls182581%_
                          _%slot-refs182582%_
                          _%g183269183271%_))
                       _%L183247%_))))
                 (_%__kont185515185516%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx185511185512%_))
                                                         (let ((_%e183209183231%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx185511185512%_))))
                   (let ((_%tl183211183236%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e183209183231%_)))
                         (_%hd183210183234%_
                          (let ()
                            (declare (not safe))
                            (##car _%e183209183231%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd183210183234%_))
                         (let ((_%e183212183239%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd183210183234%_))))
                           (let ((_%tl183214183244%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e183212183239%_)))
                                 (_%hd183213183242%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e183212183239%_))))
                             (_%__kont185513185514%_
                              _%tl183211183236%_
                              _%tl183214183244%_
                              _%hd183213183242%_)))
                         (_%__kont185515185516%_))))
                 (_%__kont185515185516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp186725
                                                      (lambda (_%g183276183279%_
                                                               _%g183277183281%_)
                                                        (cons _%g183276183279%_
                                                              _%g183277183281%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186725
                                                  '()
                                                  _%L183187%_)))
                                              (if (_%no-specializer?182585%_)
                                                  _%stx182489%_
                                                  (let* ((_%specializer-id183290%_
                                                          (let* ((_%id183284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186726
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182562%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186726 '"::specialize")))
                         (_%specializer-id183287%_
                          (let ((__tmp186727
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182489%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id183284%_
                             __tmp186727))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id183287%_))
                    _%specializer-id183287%_))
                 (_%$klass183292%_
                  (let ((__tmp186728
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186728)))
                 (_%$method-table183294%_
                  (let ((__tmp186729
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186729)))
                 (_%methods183296%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182581%_)))
                 (_%$methods183300%_
                  (let ((__tmp186730
                         (lambda (_%id183298%_)
                           (let ((__tmp186731 (gensym _%id183298%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186731)))))
                    (declare (not safe))
                    (##map __tmp186730 _%methods183296%_)))
                 (_%_183309%_
                  (let ((__tmp186732
                         (lambda (_%g183301183304%_ _%g183302183306%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182581%_
                              _%g183301183304%_
                              _%g183302183306%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186732
                     _%methods183296%_
                     _%$methods183300%_)))
                 (_%methods-bind183319%_
                  (let ((__tmp186733
                         (lambda (_%g183311183314%_ _%g183312183316%_)
                           (_%generate-method-bind182491%_
                            _%$klass183292%_
                            _%$method-table183294%_
                            _%g183311183314%_
                            _%g183312183316%_))))
                    (declare (not safe))
                    (##map __tmp186733 _%methods183296%_ _%$methods183300%_)))
                 (_%slots183321%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182582%_)))
                 (_%$slots183325%_
                  (let ((__tmp186734
                         (lambda (_%id183323%_)
                           (let ((__tmp186735 (gensym _%id183323%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186735)))))
                    (declare (not safe))
                    (##map __tmp186734 _%slots183321%_)))
                 (_%_183334%_
                  (let ((__tmp186736
                         (lambda (_%g183326183329%_ _%g183327183331%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182582%_
                              _%g183326183329%_
                              _%g183327183331%_)))))
                    (declare (not safe))
                    (##for-each __tmp186736 _%slots183321%_ _%$slots183325%_)))
                 (_%slots-bind183343%_
                  (let ((__tmp186737
                         (lambda (_%g183335183338%_ _%g183336183340%_)
                           (_%generate-slot-bind182492%_
                            _%$klass183292%_
                            _%g183335183338%_
                            _%g183336183340%_))))
                    (declare (not safe))
                    (##map __tmp186737 _%slots183321%_ _%$slots183325%_)))
                 (_%specializer-clauses183441%_
                  (map (lambda (_%clause183345%_)
                         (let* ((_%__stx185531185532%_ _%clause183345%_)
                                (_%g183348183363%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx185531185532%_)))))
                           (let ((_%__kont185533185534%_
                                  (lambda (_%L183391%_ _%L183392%_ _%L183393%_)
                                    (let* ((_%receiver183422%_
                                            (let ((_%$e183419%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L183391%_))))
                                              (if _%$e183419%_
                                                  _%$e183419%_
                                                  _%L183393%_)))
                                           (_%body183428%_
                                            (map (lambda (_%g183423183425%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver183422%_
                                                    _%$klass183292%_
                                                    _%method-calls182581%_
                                                    _%slot-refs182582%_
                                                    _%g183423183425%_))
                                                 _%L183391%_)))
                                      (cons (cons _%L183393%_ _%L183392%_)
                                            _%body183428%_))))
                                 (_%__kont185535185536%_
                                  (lambda () _%clause183345%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx185531185532%_))
                                 (let ((_%e183353183375%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx185531185532%_))))
                                   (let ((_%tl183355183380%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e183353183375%_)))
                                         (_%hd183354183378%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e183353183375%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd183354183378%_))
                                         (let ((_%e183356183383%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd183354183378%_))))
                                           (let ((_%tl183358183388%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e183356183383%_)))
                                                 (_%hd183357183386%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e183356183383%_))))
                                             (_%__kont185533185534%_
                                              _%tl183355183380%_
                                              _%tl183358183388%_
                                              _%hd183357183386%_)))
                                         (_%__kont185535185536%_))))
                                 (_%__kont185535185536%_)))))
                       (let ((__tmp186738
                              (lambda (_%g183433183436%_ _%g183434183438%_)
                                (cons _%g183433183436%_ _%g183434183438%_))))
                         (declare (not safe))
                         (__foldr1 __tmp186738 '() _%L183187%_))))
                 (_%specializer-impl183443%_
                  (let ((__tmp186739
                         (cons '%#case-lambda _%specializer-clauses183441%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186739 _%stx182489%_)))
                 (_%specializer-impl183445%_
                  (_%generate-specializer-impl182493%_
                   _%$klass183292%_
                   _%$method-table183294%_
                   _%methods-bind183319%_
                   _%slots-bind183343%_
                   _%specializer-impl183443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182562%_)))
                                                          (__tmp186740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id183290%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186741
                                                       '" => "
                                                       __tmp186740))
                                                    (_%generate-specializer-def182494%_
                                                     _%L182562%_
                                                     _%specializer-id183290%_
                                                     _%specializer-impl183445%_))))
                                            _%clause183145183184%_))))))
                           (_%loop183140183168%_ _%target183137183163%_ '()))
                         (_%g183131183150%_ _%g183132183153%_)))))
               (_%g183131183150%_ _%g183132183153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g183131183150%_
                                                _%g183132183153%_)))))
                                   (_%g183130183448%_ _%L182561%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L182561%_))
                                     (let* ((_%g183452183482%_
                                             (lambda (_%g183453183479%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g183453183479%_))))
                                            (_%g183451184113%_
                                             (lambda (_%g183453183485%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g183453183485%_))
                                                   (let ((_%e183457183487%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g183453183485%_))))
                                                     (let ((_%hd183458183490%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e183457183487%_)))
                                                           (_%tl183459183492%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e183457183487%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl183459183492%_))
                                                           (let ((_%e183460183495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl183459183492%_))))
                     (let ((_%hd183461183498%_
                            (let ()
                              (declare (not safe))
                              (##car _%e183460183495%_)))
                           (_%tl183462183500%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e183460183495%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd183461183498%_))
                           (let ((_%e183463183503%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd183461183498%_))))
                             (let ((_%hd183464183506%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e183463183503%_)))
                                   (_%tl183465183508%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e183463183503%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd183464183506%_))
                                   (let ((_%e183466183511%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd183464183506%_))))
                                     (let ((_%hd183467183514%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e183466183511%_)))
                                           (_%tl183468183516%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e183466183511%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd183467183514%_))
                                           (let ((_%e183469183519%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd183467183514%_))))
                                             (let ((_%hd183470183522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e183469183519%_)))
                                                   (_%tl183471183524%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e183469183519%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl183471183524%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl183468183516%_))
                                                       (let ((_%e183472183527%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl183468183516%_))))
                 (let ((_%hd183473183530%_
                        (let ()
                          (declare (not safe))
                          (##car _%e183472183527%_)))
                       (_%tl183474183532%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e183472183527%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl183474183532%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl183465183508%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl183462183500%_))
                               (let ((_%e183475183535%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl183462183500%_))))
                                 (let ((_%hd183476183538%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e183475183535%_)))
                                       (_%tl183477183540%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e183475183535%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl183477183540%_))
                                       ((lambda (_%L183543%_
                                                 _%L183544%_
                                                 _%L183545%_)
                                          (let* ((_%g183569183587%_
                                                  (lambda (_%g183570183584%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183570183584%_))))
                                                 (_%g183568183643%_
                                                  (lambda (_%g183570183590%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183570183590%_))
                                                        (let ((_%e183574183592%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183570183590%_))))
                  (let ((_%hd183575183595%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183574183592%_)))
                        (_%tl183576183597%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183574183592%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl183576183597%_))
                        (let ((_%e183577183600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl183576183597%_))))
                          (let ((_%hd183578183603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e183577183600%_)))
                                (_%tl183579183605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e183577183600%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd183578183603%_))
                                (let ((_%e183580183608%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd183578183603%_))))
                                  (let ((_%hd183581183611%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183580183608%_)))
                                        (_%tl183582183613%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183580183608%_))))
                                    ((lambda (_%L183616%_
                                              _%L183617%_
                                              _%L183618%_)
                                       (let ((_%receiver183637%_
                                              (let ((_%$e183634%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L183616%_))))
                                                (if _%$e183634%_
                                                    _%$e183634%_
                                                    _%L183618%_))))
                                         (for-each
                                          (lambda (_%g183638183640%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver183637%_
                                             _%method-calls182581%_
                                             _%slot-refs182582%_
                                             _%g183638183640%_))
                                          _%L183616%_)))
                                     _%tl183579183605%_
                                     _%tl183582183613%_
                                     _%hd183581183611%_)))
                                (_%g183569183587%_ _%g183570183590%_))))
                        (_%g183569183587%_ _%g183570183590%_))))
                (_%g183569183587%_ _%g183570183590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183568183643%_ _%L183544%_))
                                          (let* ((_%g183646183665%_
                                                  (lambda (_%g183647183662%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g183647183662%_))))
                                                 (_%g183645183789%_
                                                  (lambda (_%g183647183668%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g183647183668%_))
                                                        (let ((_%e183649183670%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g183647183668%_))))
                  (let ((_%hd183650183673%_
                         (let ()
                           (declare (not safe))
                           (##car _%e183649183670%_)))
                        (_%tl183651183675%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e183649183670%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl183651183675%_))
                        (let ((_g186742_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl183651183675%_
                                  '0))))
                          (begin
                            (let ((_g186743_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186742_)
                                         (##values-length _g186742_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186743_ 2)))
                                  (error "Context expects 2 values"
                                         _g186743_)))
                            (let ((_%target183652183678%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186742_ 0)))
                                  (_%tl183654183680%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g186742_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl183654183680%_))
                                  (letrec ((_%loop183655183683%_
                                            (lambda (_%hd183653183686%_
                                                     _%clause183659183688%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd183653183686%_))
                                                  (let ((_%e183656183691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd183653183686%_))))
                                                    (let ((_%lp-hd183657183694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e183656183691%_)))
                                                          (_%lp-tl183658183696%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e183656183691%_))))
                                                      (_%loop183655183683%_
                                                       _%lp-tl183658183696%_
                                                       (cons _%lp-hd183657183694%_
                                                             _%clause183659183688%_))))
                                                  (let ((_%clause183660183699%_
                                                         (reverse _%clause183659183688%_)))
                                                    ((lambda (_%L183702%_)
                                                       (for-each
                                                        (lambda (_%clause183715%_)
                                                          (let* ((_%g183717183732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g183718183729%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g183718183729%_))))
                         (_%g183716183779%_
                          (lambda (_%g183718183735%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g183718183735%_))
                                (let ((_%e183722183737%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g183718183735%_))))
                                  (let ((_%hd183723183740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e183722183737%_)))
                                        (_%tl183724183742%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e183722183737%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd183723183740%_))
                                        (let ((_%e183725183745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd183723183740%_))))
                                          (let ((_%hd183726183748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e183725183745%_)))
                                                (_%tl183727183750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e183725183745%_))))
                                            ((lambda (_%L183753%_
                                                      _%L183754%_
                                                      _%L183755%_)
                                               (let ((_%receiver183773%_
                                                      (let ((_%$e183770%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L183753%_))))
                (if _%$e183770%_ _%$e183770%_ _%L183755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g183774183776%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver183773%_
                                                     _%method-calls182581%_
                                                     _%slot-refs182582%_
                                                     _%g183774183776%_))
                                                  _%L183753%_)))
                                             _%tl183724183742%_
                                             _%tl183727183750%_
                                             _%hd183726183748%_)))
                                        (_%g183717183732%_
                                         _%g183718183735%_))))
                                (_%g183717183732%_ _%g183718183735%_)))))
                    (_%g183716183779%_ _%clause183715%_)))
                (let ((__tmp186744
                       (lambda (_%g183781183784%_ _%g183782183786%_)
                         (cons _%g183781183784%_ _%g183782183786%_))))
                  (declare (not safe))
                  (__foldr1 __tmp186744 '() _%L183702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause183660183699%_))))))
                                    (_%loop183655183683%_
                                     _%target183652183678%_
                                     '()))
                                  (_%g183646183665%_ _%g183647183668%_)))))
                        (_%g183646183665%_ _%g183647183668%_))))
                (_%g183646183665%_ _%g183647183668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g183645183789%_ _%L183543%_))
                                          (if (_%no-specializer?182585%_)
                                              _%stx182489%_
                                              (let* ((_%specializer-id183798%_
                                                      (let* ((_%id183792%_
                                                              (let ((__tmp186745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L182562%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp186745 '"::specialize")))
                     (_%specializer-id183795%_
                      (let ((__tmp186746
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx182489%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id183792%_ __tmp186746))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id183795%_))
                _%specializer-id183795%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass183800%_
                                                      (let ((__tmp186747
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp186747)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table183802%_
                                                      (let ((__tmp186748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp186748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods183804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls182581%_)))
                                                     (_%$methods183808%_
                                                      (let ((__tmp186749
                                                             (lambda (_%id183806%_)
                                                               (let ((__tmp186750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183806%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186750)))))
                (declare (not safe))
                (##map __tmp186749 _%methods183804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183817%_
                                                      (let ((__tmp186751
                                                             (lambda (_%g183809183812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183810183814%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls182581%_
                          _%g183809183812%_
                          _%g183810183814%_)))))
                (declare (not safe))
                (##for-each __tmp186751 _%methods183804%_ _%$methods183808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind183827%_
                                                      (let ((__tmp186752
                                                             (lambda (_%g183819183822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183820183824%_)
                       (_%generate-method-bind182491%_
                        _%$klass183800%_
                        _%$method-table183802%_
                        _%g183819183822%_
                        _%g183820183824%_))))
                (declare (not safe))
                (##map __tmp186752 _%methods183804%_ _%$methods183808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots183829%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs182582%_)))
                                                     (_%$slots183833%_
                                                      (let ((__tmp186753
                                                             (lambda (_%id183831%_)
                                                               (let ((__tmp186754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id183831%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp186754)))))
                (declare (not safe))
                (##map __tmp186753 _%slots183829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_183842%_
                                                      (let ((__tmp186755
                                                             (lambda (_%g183834183837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183835183839%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs182582%_
                          _%g183834183837%_
                          _%g183835183839%_)))))
                (declare (not safe))
                (##for-each __tmp186755 _%slots183829%_ _%$slots183833%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind183851%_
                                                      (let ((__tmp186756
                                                             (lambda (_%g183843183846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g183844183848%_)
                       (_%generate-slot-bind182492%_
                        _%$klass183800%_
                        _%g183843183846%_
                        _%g183844183848%_))))
                (declare (not safe))
                (##map __tmp186756 _%slots183829%_ _%$slots183833%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr183943%_
                                                      (let* ((_%g183853183871%_
                                                              (lambda (_%g183854183868%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183854183868%_))))
                     (_%g183852183940%_
                      (lambda (_%g183854183874%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183854183874%_))
                            (let ((_%e183858183876%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183854183874%_))))
                              (let ((_%hd183859183879%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183858183876%_)))
                                    (_%tl183860183881%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183858183876%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl183860183881%_))
                                    (let ((_%e183861183884%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl183860183881%_))))
                                      (let ((_%hd183862183887%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e183861183884%_)))
                                            (_%tl183863183889%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e183861183884%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd183862183887%_))
                                            (let ((_%e183864183892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd183862183887%_))))
                                              (let ((_%hd183865183895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e183864183892%_)))
                                                    (_%tl183866183897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e183864183892%_))))
                                                ((lambda (_%L183900%_
                                                          _%L183901%_
                                                          _%L183902%_)
                                                   (let* ((_%receiver183931%_
                                                           (let ((_%$e183928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L183900%_))))
                     (if _%$e183928%_ _%$e183928%_ _%L183902%_)))
                  (_%body183937%_
                   (map (lambda (_%g183932183934%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver183931%_
                           _%$klass183800%_
                           _%method-calls182581%_
                           _%slot-refs182582%_
                           _%g183932183934%_))
                        _%L183900%_))
                  (__tmp186757
                   (cons '%#lambda
                         (cons (cons _%L183902%_ _%L183901%_)
                               _%body183937%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp186757
                                                      _%L183544%_)))
                                                 _%tl183863183889%_
                                                 _%tl183866183897%_
                                                 _%hd183865183895%_)))
                                            (_%g183853183871%_
                                             _%g183854183874%_))))
                                    (_%g183853183871%_ _%g183854183874%_))))
                            (_%g183853183871%_ _%g183854183874%_)))))
                (_%g183852183940%_ _%L183544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr184106%_
                                                      (let* ((_%g183945183964%_
                                                              (lambda (_%g183946183961%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g183946183961%_))))
                     (_%g183944184103%_
                      (lambda (_%g183946183967%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g183946183967%_))
                            (let ((_%e183948183969%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g183946183967%_))))
                              (let ((_%hd183949183972%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e183948183969%_)))
                                    (_%tl183950183974%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e183948183969%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl183950183974%_))
                                    (let ((_g186758_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl183950183974%_
                                              '0))))
                                      (begin
                                        (let ((_g186759_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g186758_)
                                                     (##values-length
                                                      _g186758_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g186759_ 2)))
                                              (error "Context expects 2 values"
                                                     _g186759_)))
                                        (let ((_%target183951183977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186758_ 0)))
                                              (_%tl183953183979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g186758_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl183953183979%_))
                                              (letrec ((_%loop183954183982%_
                                                        (lambda (_%hd183952183985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause183958183987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd183952183985%_))
                      (let ((_%e183955183990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd183952183985%_))))
                        (let ((_%lp-hd183956183993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e183955183990%_)))
                              (_%lp-tl183957183995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e183955183990%_))))
                          (_%loop183954183982%_
                           _%lp-tl183957183995%_
                           (cons _%lp-hd183956183993%_
                                 _%clause183958183987%_))))
                      (let ((_%clause183959183998%_
                             (reverse _%clause183958183987%_)))
                        ((lambda (_%L184001%_)
                           (let* ((_%clauses184101%_
                                   (map (lambda (_%clause184015%_)
                                          (let* ((_%__stx185551185552%_
                                                  _%clause184015%_)
                                                 (_%g184018184033%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx185551185552%_)))))
                                            (let ((_%__kont185553185554%_
                                                   (lambda (_%L184061%_
                                                            _%L184062%_
                                                            _%L184063%_)
                                                     (let* ((_%receiver184082%_
                                                             (let ((_%$e184079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L184061%_))))
                       (if _%$e184079%_ _%$e184079%_ _%L184063%_)))
                    (_%body184088%_
                     (map (lambda (_%g184083184085%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver184082%_
                             _%$klass183800%_
                             _%method-calls182581%_
                             _%slot-refs182582%_
                             _%g184083184085%_))
                          _%L184061%_)))
               (cons (cons _%L184063%_ _%L184062%_) _%body184088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185555185556%_
                                                   (lambda ()
                                                     _%clause184015%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx185551185552%_))
                                                  (let ((_%e184023184045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx185551185552%_))))
                                                    (let ((_%tl184025184050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e184023184045%_)))
                                                          (_%hd184024184048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e184023184045%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd184024184048%_))
                                                          (let ((_%e184026184053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd184024184048%_))))
                    (let ((_%tl184028184058%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e184026184053%_)))
                          (_%hd184027184056%_
                           (let ()
                             (declare (not safe))
                             (##car _%e184026184053%_))))
                      (_%__kont185553185554%_
                       _%tl184025184050%_
                       _%tl184028184058%_
                       _%hd184027184056%_)))
                  (_%__kont185555185556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185555185556%_)))))
                                        (let ((__tmp186760
                                               (lambda (_%g184093184096%_
                                                        _%g184094184098%_)
                                                 (cons _%g184093184096%_
                                                       _%g184094184098%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp186760
                                           '()
                                           _%L184001%_))))
                                  (__tmp186761
                                   (cons '%#case-lambda _%clauses184101%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186761 _%L183543%_)))
                         _%clause183959183998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop183954183982%_
                                                 _%target183951183977%_
                                                 '()))
                                              (_%g183945183964%_
                                               _%g183946183967%_)))))
                                    (_%g183945183964%_ _%g183946183967%_))))
                            (_%g183945183964%_ _%g183946183967%_)))))
                (_%g183944184103%_ _%L183543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl184108%_
                                                      (let ((__tmp186762
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L183545%_ '())
                                             (cons _%specializer-lambda-expr183943%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr184106%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp186762 _%stx182489%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl184110%_
                                                      (_%generate-specializer-impl182493%_
                                                       _%$klass183800%_
                                                       _%$method-table183802%_
                                                       _%methods-bind183827%_
                                                       _%slots-bind183851%_
                                                       _%specializer-impl184108%_)))
                                                (let ((__tmp186764
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182562%_)))
                                                      (__tmp186763
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id183798%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp186764
                                                   '" => "
                                                   __tmp186763))
                                                (_%generate-specializer-def182494%_
                                                 _%L182562%_
                                                 _%specializer-id183798%_
                                                 _%specializer-impl184110%_))))
                                        _%hd183476183538%_
                                        _%hd183473183530%_
                                        _%hd183470183522%_)
                                       (_%g183452183482%_ _%g183453183485%_))))
                               (_%g183452183482%_ _%g183453183485%_))
                           (_%g183452183482%_ _%g183453183485%_))
                       (_%g183452183482%_ _%g183453183485%_))))
               (_%g183452183482%_ _%g183453183485%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183452183482%_
                                                    _%g183453183485%_))))
                                           (_%g183452183482%_
                                            _%g183453183485%_))))
                                   (_%g183452183482%_ _%g183453183485%_))))
                           (_%g183452183482%_ _%g183453183485%_))))
                   (_%g183452183482%_ _%g183453183485%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g183452183482%_
                                                    _%g183453183485%_)))))
                                       (_%g183451184113%_ _%L182561%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L182561%_))
                                         (let* ((_%g184117184170%_
                                                 (lambda (_%g184118184167%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184118184167%_))))
                                                (_%g184116185341%_
                                                 (lambda (_%g184118184173%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184118184173%_))
                                                       (let ((_%e184124184175%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184118184173%_))))
                 (let ((_%hd184125184178%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184124184175%_)))
                       (_%tl184126184180%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184124184175%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd184125184178%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd184125184178%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl184126184180%_))
                               (let ((_%e184127184183%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl184126184180%_))))
                                 (let ((_%hd184128184186%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184127184183%_)))
                                       (_%tl184129184188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184127184183%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184128184186%_))
                                       (let ((_%e184130184191%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184128184186%_))))
                                         (let ((_%hd184131184194%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184130184191%_)))
                                               (_%tl184132184196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184130184191%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184131184194%_))
                                               (let ((_%e184133184199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184131184194%_))))
                                                 (let ((_%hd184134184202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184133184199%_)))
                                                       (_%tl184135184204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184133184199%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd184134184202%_))
                                                       (let ((_%e184136184207%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd184134184202%_))))
                 (let ((_%hd184137184210%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184136184207%_)))
                       (_%tl184138184212%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184136184207%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl184138184212%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl184135184204%_))
                           (let ((_%e184139184215%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl184135184204%_))))
                             (let ((_%hd184140184218%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e184139184215%_)))
                                   (_%tl184141184220%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e184139184215%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd184140184218%_))
                                   (let ((_%e184142184223%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd184140184218%_))))
                                     (let ((_%hd184143184226%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184142184223%_)))
                                           (_%tl184144184228%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184142184223%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd184143184226%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd184143184226%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl184144184228%_))
                                                   (let ((_%e184145184231%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl184144184228%_))))
                                                     (let ((_%hd184146184234%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184145184231%_)))
                                                           (_%tl184147184236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184145184231%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd184146184234%_))
                                                           (let ((_%e184148184239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd184146184234%_))))
                     (let ((_%hd184149184242%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184148184239%_)))
                           (_%tl184150184244%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184148184239%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd184149184242%_))
                           (let ((_%e184151184247%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd184149184242%_))))
                             (let ((_%hd184152184250%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e184151184247%_)))
                                   (_%tl184153184252%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e184151184247%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd184152184250%_))
                                   (let ((_%e184154184255%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd184152184250%_))))
                                     (let ((_%hd184155184258%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184154184255%_)))
                                           (_%tl184156184260%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184154184255%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184156184260%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl184153184252%_))
                                               (let ((_%e184157184263%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl184153184252%_))))
                                                 (let ((_%hd184158184266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184157184263%_)))
                                                       (_%tl184159184268%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184157184263%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184159184268%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl184150184244%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl184147184236%_))
                       (let ((_%e184160184271%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184147184236%_))))
                         (let ((_%hd184161184274%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184160184271%_)))
                               (_%tl184162184276%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184160184271%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184162184276%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl184141184220%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl184132184196%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl184129184188%_))
                                           (let ((_%e184163184279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl184129184188%_))))
                                             (let ((_%hd184164184282%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e184163184279%_)))
                                                   (_%tl184165184284%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e184163184279%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl184165184284%_))
                                                   ((lambda (_%L184287%_
                                                             _%L184288%_
                                                             _%L184289%_
                                                             _%L184290%_
                                                             _%L184291%_)
                                                      (let* ((_%g184331184393%_
                                                              (lambda (_%g184332184390%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g184332184390%_))))
                     (_%g184330185338%_
                      (lambda (_%g184332184396%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g184332184396%_))
                            (let ((_%e184338184398%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g184332184396%_))))
                              (let ((_%hd184339184401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184338184398%_)))
                                    (_%tl184340184403%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184338184398%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd184339184401%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd184339184401%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl184340184403%_))
                                            (let ((_%e184341184406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl184340184403%_))))
                                              (let ((_%hd184342184409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e184341184406%_)))
                                                    (_%tl184343184411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e184341184406%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl184343184411%_))
                                                    (let ((_%e184344184414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl184343184411%_))))
                                                      (let ((_%hd184345184417%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e184344184414%_)))
                    (_%tl184346184419%_
                     (let () (declare (not safe)) (##cdr _%e184344184414%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd184345184417%_))
                    (let ((_%e184347184422%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd184345184417%_))))
                      (let ((_%hd184348184425%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184347184422%_)))
                            (_%tl184349184427%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184347184422%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd184348184425%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd184348184425%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl184349184427%_))
                                    (let ((_%e184350184430%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl184349184427%_))))
                                      (let ((_%hd184351184433%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184350184430%_)))
                                            (_%tl184352184435%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184350184430%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd184351184433%_))
                                            (let ((_%e184353184438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd184351184433%_))))
                                              (let ((_%hd184354184441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e184353184438%_)))
                                                    (_%tl184355184443%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e184353184438%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd184354184441%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd184354184441%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl184355184443%_))
                                                            (let ((_%e184356184446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl184355184443%_))))
                      (let ((_%hd184357184449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184356184446%_)))
                            (_%tl184358184451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184356184446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl184358184451%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl184352184435%_))
                                (let ((_%e184359184454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl184352184435%_))))
                                  (let ((_%hd184360184457%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e184359184454%_)))
                                        (_%tl184361184459%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e184359184454%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd184360184457%_))
                                        (let ((_%e184362184462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd184360184457%_))))
                                          (let ((_%hd184363184465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e184362184462%_)))
                                                (_%tl184364184467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e184362184462%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd184363184465%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd184363184465%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl184364184467%_))
                                                        (let ((_%e184365184470%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl184364184467%_))))
                  (let ((_%hd184366184473%_
                         (let ()
                           (declare (not safe))
                           (##car _%e184365184470%_)))
                        (_%tl184367184475%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e184365184470%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl184367184475%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184361184459%_))
                            (let ((_%e184368184478%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184361184459%_))))
                              (let ((_%hd184369184481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184368184478%_)))
                                    (_%tl184370184483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184368184478%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd184369184481%_))
                                    (let ((_%e184371184486%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd184369184481%_))))
                                      (let ((_%hd184372184489%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184371184486%_)))
                                            (_%tl184373184491%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184371184486%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd184372184489%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd184372184489%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl184373184491%_))
                                                    (let ((_%e184374184494%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl184373184491%_))))
                                                      (let ((_%hd184375184497%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e184374184494%_)))
                    (_%tl184376184499%_
                     (let () (declare (not safe)) (##cdr _%e184374184494%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl184376184499%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl184370184483%_))
                        (if (let ((__tmp186765
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl184370184483%_))))
                              (declare (not safe))
                              (##fx>= __tmp186765 '1))
                            (let ((_g186766_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184370184483%_
                                      '1))))
                              (begin
                                (let ((_g186767_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186766_)
                                             (##values-length _g186766_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186767_ 2)))
                                      (error "Context expects 2 values"
                                             _g186767_)))
                                (let ((_%target184377184502%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186766_ 0)))
                                      (_%tl184379184504%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186766_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl184379184504%_))
                                      (let ((_%e184386184507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl184379184504%_))))
                                        (let ((_%hd184387184510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e184386184507%_)))
                                              (_%tl184388184512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e184386184507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl184388184512%_))
                                              (letrec ((_%loop184380184515%_
                                                        (lambda (_%hd184378184518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref184384184520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd184378184518%_))
                      (let ((_%e184381184523%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd184378184518%_))))
                        (let ((_%lp-hd184382184526%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e184381184523%_)))
                              (_%lp-tl184383184528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e184381184523%_))))
                          (_%loop184380184515%_
                           _%lp-tl184383184528%_
                           (cons _%lp-hd184382184526%_
                                 _%kw-ref184384184520%_))))
                      (let ((_%kw-ref184385184531%_
                             (reverse _%kw-ref184384184520%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl184346184419%_))
                            ((lambda (_%L184534%_
                                      _%L184535%_
                                      _%L184536%_
                                      _%L184537%_
                                      _%L184538%_)
                               (let* ((_%kw-count184589%_
                                       (length (let ((__tmp186768
                                                      (lambda (_%g184581184584%_
                                                               _%g184582184586%_)
                                                        (cons _%g184581184584%_
                                                              _%g184582184586%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp186768
                                                  '()
                                                  _%L184535%_))))
                                      (_%self-index184591%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count184589%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L184289%_))
                                     (let* ((_%g184595184609%_
                                             (lambda (_%g184596184606%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g184596184606%_))))
                                            (_%g184594184732%_
                                             (lambda (_%g184596184612%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g184596184612%_))
                                                   (let ((_%e184599184614%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g184596184612%_))))
                                                     (let ((_%hd184600184617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e184599184614%_)))
                                                           (_%tl184601184619%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e184599184614%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184601184619%_))
                                                           (let ((_%e184602184622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184601184619%_))))
                     (let ((_%hd184603184625%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184602184622%_)))
                           (_%tl184604184627%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184602184622%_))))
                       ((lambda (_%L184630%_ _%L184631%_)
                          (let* ((_%self184648%_
                                  (list-ref _%L184631%_ _%self-index184591%_))
                                 (_%receiver184653%_
                                  (let ((_%$e184650%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L184630%_))))
                                    (if _%$e184650%_
                                        _%$e184650%_
                                        _%self184648%_))))
                            (for-each
                             (lambda (_%g184655184657%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver184653%_
                                _%method-calls182581%_
                                _%slot-refs182582%_
                                _%g184655184657%_))
                             _%L184630%_)
                            (if (_%no-specializer?182585%_)
                                _%stx182489%_
                                (let* ((_%specializer-id184666%_
                                        (let* ((_%id184660%_
                                                (let ((__tmp186769
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L182562%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp186769
                                                   '"::specialize")))
                                               (_%specializer-id184663%_
                                                (let ((__tmp186770
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx182489%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id184660%_
                                                   __tmp186770))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id184663%_))
                                          _%specializer-id184663%_))
                                       (_%$klass184668%_
                                        (let ((__tmp186771
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186771)))
                                       (_%$method-table184670%_
                                        (let ((__tmp186772
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp186772)))
                                       (_%methods184672%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls182581%_)))
                                       (_%$methods184676%_
                                        (let ((__tmp186773
                                               (lambda (_%id184674%_)
                                                 (let ((__tmp186774
                                                        (gensym _%id184674%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186774)))))
                                          (declare (not safe))
                                          (##map __tmp186773
                                                 _%methods184672%_)))
                                       (_%_184685%_
                                        (let ((__tmp186775
                                               (lambda (_%g184677184680%_
                                                        _%g184678184682%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls182581%_
                                                    _%g184677184680%_
                                                    _%g184678184682%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186775
                                           _%methods184672%_
                                           _%$methods184676%_)))
                                       (_%methods-bind184695%_
                                        (let ((__tmp186776
                                               (lambda (_%g184687184690%_
                                                        _%g184688184692%_)
                                                 (_%generate-method-bind182491%_
                                                  _%$klass184668%_
                                                  _%$method-table184670%_
                                                  _%g184687184690%_
                                                  _%g184688184692%_))))
                                          (declare (not safe))
                                          (##map __tmp186776
                                                 _%methods184672%_
                                                 _%$methods184676%_)))
                                       (_%slots184697%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs182582%_)))
                                       (_%$slots184701%_
                                        (let ((__tmp186777
                                               (lambda (_%id184699%_)
                                                 (let ((__tmp186778
                                                        (gensym _%id184699%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp186778)))))
                                          (declare (not safe))
                                          (##map __tmp186777 _%slots184697%_)))
                                       (_%_184710%_
                                        (let ((__tmp186779
                                               (lambda (_%g184702184705%_
                                                        _%g184703184707%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs182582%_
                                                    _%g184702184705%_
                                                    _%g184703184707%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp186779
                                           _%slots184697%_
                                           _%$slots184701%_)))
                                       (_%slots-bind184719%_
                                        (let ((__tmp186780
                                               (lambda (_%g184711184714%_
                                                        _%g184712184716%_)
                                                 (_%generate-slot-bind182492%_
                                                  _%$klass184668%_
                                                  _%g184711184714%_
                                                  _%g184712184716%_))))
                                          (declare (not safe))
                                          (##map __tmp186780
                                                 _%slots184697%_
                                                 _%$slots184701%_)))
                                       (_%specializer-impl184727%_
                                        (let* ((_%specializer-body184725%_
                                                (map (lambda (_%g184720184722%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver184653%_
                                                        _%$klass184668%_
                                                        _%method-calls182581%_
                                                        _%slot-refs182582%_
                                                        _%g184720184722%_))
                                                     _%L184630%_))
                                               (__tmp186781
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L184291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L184290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp186782
                                   (cons '%#lambda
                                         (cons _%L184631%_
                                               _%specializer-body184725%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp186782 _%L184289%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L184288%_ '())))
                                      '()))
                          '())
                    (cons _%L184287%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp186781
                                           _%stx182489%_)))
                                       (_%specializer-impl184729%_
                                        (_%generate-specializer-impl182493%_
                                         _%$klass184668%_
                                         _%$method-table184670%_
                                         _%methods-bind184695%_
                                         _%slots-bind184719%_
                                         _%specializer-impl184727%_)))
                                  (let ((__tmp186784
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L182562%_)))
                                        (__tmp186783
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id184666%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp186784
                                     '" => "
                                     __tmp186783))
                                  (_%generate-specializer-def182494%_
                                   _%L182562%_
                                   _%specializer-id184666%_
                                   _%specializer-impl184729%_)))))
                        _%tl184604184627%_
                        _%hd184603184625%_)))
                   (_%g184595184609%_ _%g184596184612%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184595184609%_
                                                    _%g184596184612%_)))))
                                       (_%g184594184732%_ _%L184289%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L184289%_))
                                         (let* ((_%g184736184766%_
                                                 (lambda (_%g184737184763%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g184737184763%_))))
                                                (_%g184735185334%_
                                                 (lambda (_%g184737184769%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g184737184769%_))
                                                       (let ((_%e184741184771%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g184737184769%_))))
                 (let ((_%hd184742184774%_
                        (let ()
                          (declare (not safe))
                          (##car _%e184741184771%_)))
                       (_%tl184743184776%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e184741184771%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl184743184776%_))
                       (let ((_%e184744184779%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl184743184776%_))))
                         (let ((_%hd184745184782%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e184744184779%_)))
                               (_%tl184746184784%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e184744184779%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd184745184782%_))
                               (let ((_%e184747184787%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd184745184782%_))))
                                 (let ((_%hd184748184790%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e184747184787%_)))
                                       (_%tl184749184792%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e184747184787%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd184748184790%_))
                                       (let ((_%e184750184795%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd184748184790%_))))
                                         (let ((_%hd184751184798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e184750184795%_)))
                                               (_%tl184752184800%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e184750184795%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd184751184798%_))
                                               (let ((_%e184753184803%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd184751184798%_))))
                                                 (let ((_%hd184754184806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e184753184803%_)))
                                                       (_%tl184755184808%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e184753184803%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl184755184808%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl184752184800%_))
                                                           (let ((_%e184756184811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl184752184800%_))))
                     (let ((_%hd184757184814%_
                            (let ()
                              (declare (not safe))
                              (##car _%e184756184811%_)))
                           (_%tl184758184816%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e184756184811%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl184758184816%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl184749184792%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl184746184784%_))
                                   (let ((_%e184759184819%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl184746184784%_))))
                                     (let ((_%hd184760184822%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e184759184819%_)))
                                           (_%tl184761184824%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e184759184819%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl184761184824%_))
                                           ((lambda (_%L184827%_
                                                     _%L184828%_
                                                     _%L184829%_)
                                              (let* ((_%g184853184867%_
                                                      (lambda (_%g184854184864%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184854184864%_))))
                                                     (_%g184852184914%_
                                                      (lambda (_%g184854184870%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184854184870%_))
                                                            (let ((_%e184857184872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184854184870%_))))
                      (let ((_%hd184858184875%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184857184872%_)))
                            (_%tl184859184877%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184857184872%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl184859184877%_))
                            (let ((_%e184860184880%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl184859184877%_))))
                              (let ((_%hd184861184883%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e184860184880%_)))
                                    (_%tl184862184885%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e184860184880%_))))
                                ((lambda (_%L184888%_ _%L184889%_)
                                   (let* ((_%self184902%_
                                           (list-ref
                                            _%L184889%_
                                            _%self-index184591%_))
                                          (_%receiver184907%_
                                           (let ((_%$e184904%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L184888%_))))
                                             (if _%$e184904%_
                                                 _%$e184904%_
                                                 _%self184902%_))))
                                     (for-each
                                      (lambda (_%g184909184911%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver184907%_
                                         _%method-calls182581%_
                                         _%slot-refs182582%_
                                         _%g184909184911%_))
                                      _%L184888%_)))
                                 _%tl184862184885%_
                                 _%hd184861184883%_)))
                            (_%g184853184867%_ _%g184854184870%_))))
                    (_%g184853184867%_ _%g184854184870%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184852184914%_
                                                 _%L184828%_))
                                              (let* ((_%g184917184936%_
                                                      (lambda (_%g184918184933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g184918184933%_))))
                                                     (_%g184916185047%_
                                                      (lambda (_%g184918184939%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g184918184939%_))
                                                            (let ((_%e184920184941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g184918184939%_))))
                      (let ((_%hd184921184944%_
                             (let ()
                               (declare (not safe))
                               (##car _%e184920184941%_)))
                            (_%tl184922184946%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e184920184941%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl184922184946%_))
                            (let ((_g186785_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl184922184946%_
                                      '0))))
                              (begin
                                (let ((_g186786_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g186785_)
                                             (##values-length _g186785_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g186786_ 2)))
                                      (error "Context expects 2 values"
                                             _g186786_)))
                                (let ((_%target184923184949%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186785_ 0)))
                                      (_%tl184925184951%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g186785_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl184925184951%_))
                                      (letrec ((_%loop184926184954%_
                                                (lambda (_%hd184924184957%_
                                                         _%clause184930184959%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd184924184957%_))
                                                      (let ((_%e184927184962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd184924184957%_))))
                (let ((_%lp-hd184928184965%_
                       (let () (declare (not safe)) (##car _%e184927184962%_)))
                      (_%lp-tl184929184967%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e184927184962%_))))
                  (_%loop184926184954%_
                   _%lp-tl184929184967%_
                   (cons _%lp-hd184928184965%_ _%clause184930184959%_))))
              (let ((_%clause184931184970%_ (reverse _%clause184930184959%_)))
                ((lambda (_%L184973%_)
                   (for-each
                    (lambda (_%clause184986%_)
                      (let* ((_%g184988184999%_
                              (lambda (_%g184989184996%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g184989184996%_))))
                             (_%g184987185037%_
                              (lambda (_%g184989185002%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g184989185002%_))
                                    (let ((_%e184992185004%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g184989185002%_))))
                                      (let ((_%hd184993185007%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e184992185004%_)))
                                            (_%tl184994185009%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e184992185004%_))))
                                        ((lambda (_%L185012%_ _%L185013%_)
                                           (let* ((_%self185025%_
                                                   (list-ref
                                                    _%L185013%_
                                                    _%self-index184591%_))
                                                  (_%receiver185030%_
                                                   (let ((_%$e185027%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L185012%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e185027%_
                                                         _%$e185027%_
                                                         _%self185025%_))))
                                             (for-each
                                              (lambda (_%g185032185034%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver185030%_
                                                 _%method-calls182581%_
                                                 _%slot-refs182582%_
                                                 _%g185032185034%_))
                                              _%L185012%_)))
                                         _%tl184994185009%_
                                         _%hd184993185007%_)))
                                    (_%g184988184999%_ _%g184989185002%_)))))
                        (_%g184987185037%_ _%clause184986%_)))
                    (let ((__tmp186787
                           (lambda (_%g185039185042%_ _%g185040185044%_)
                             (cons _%g185039185042%_ _%g185040185044%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186787 '() _%L184973%_))))
                 _%clause184931184970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop184926184954%_
                                         _%target184923184949%_
                                         '()))
                                      (_%g184917184936%_ _%g184918184939%_)))))
                            (_%g184917184936%_ _%g184918184939%_))))
                    (_%g184917184936%_ _%g184918184939%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g184916185047%_
                                                 _%L184827%_))
                                              (if (_%no-specializer?182585%_)
                                                  _%stx182489%_
                                                  (let* ((_%specializer-id185056%_
                                                          (let* ((_%id185050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186788
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L182562%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp186788 '"::specialize")))
                         (_%specializer-id185053%_
                          (let ((__tmp186789
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx182489%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id185050%_
                             __tmp186789))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id185053%_))
                    _%specializer-id185053%_))
                 (_%$klass185058%_
                  (let ((__tmp186790
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186790)))
                 (_%$method-table185060%_
                  (let ((__tmp186791
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp186791)))
                 (_%methods185062%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls182581%_)))
                 (_%$methods185066%_
                  (let ((__tmp186792
                         (lambda (_%id185064%_)
                           (let ((__tmp186793 (gensym _%id185064%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186793)))))
                    (declare (not safe))
                    (##map __tmp186792 _%methods185062%_)))
                 (_%_185075%_
                  (let ((__tmp186794
                         (lambda (_%g185067185070%_ _%g185068185072%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls182581%_
                              _%g185067185070%_
                              _%g185068185072%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp186794
                     _%methods185062%_
                     _%$methods185066%_)))
                 (_%methods-bind185085%_
                  (let ((__tmp186795
                         (lambda (_%g185077185080%_ _%g185078185082%_)
                           (_%generate-method-bind182491%_
                            _%$klass185058%_
                            _%$method-table185060%_
                            _%g185077185080%_
                            _%g185078185082%_))))
                    (declare (not safe))
                    (##map __tmp186795 _%methods185062%_ _%$methods185066%_)))
                 (_%slots185087%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs182582%_)))
                 (_%$slots185091%_
                  (let ((__tmp186796
                         (lambda (_%id185089%_)
                           (let ((__tmp186797 (gensym _%id185089%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp186797)))))
                    (declare (not safe))
                    (##map __tmp186796 _%slots185087%_)))
                 (_%_185100%_
                  (let ((__tmp186798
                         (lambda (_%g185092185095%_ _%g185093185097%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs182582%_
                              _%g185092185095%_
                              _%g185093185097%_)))))
                    (declare (not safe))
                    (##for-each __tmp186798 _%slots185087%_ _%$slots185091%_)))
                 (_%slots-bind185109%_
                  (let ((__tmp186799
                         (lambda (_%g185101185104%_ _%g185102185106%_)
                           (_%generate-slot-bind182492%_
                            _%$klass185058%_
                            _%g185101185104%_
                            _%g185102185106%_))))
                    (declare (not safe))
                    (##map __tmp186799 _%slots185087%_ _%$slots185091%_)))
                 (_%specializer-lambda-expr185187%_
                  (let* ((_%g185111185125%_
                          (lambda (_%g185112185122%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g185112185122%_))))
                         (_%g185110185184%_
                          (lambda (_%g185112185128%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g185112185128%_))
                                (let ((_%e185115185130%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g185112185128%_))))
                                  (let ((_%hd185116185133%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185115185130%_)))
                                        (_%tl185117185135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185115185130%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl185117185135%_))
                                        (let ((_%e185118185138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl185117185135%_))))
                                          (let ((_%hd185119185141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e185118185138%_)))
                                                (_%tl185120185143%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e185118185138%_))))
                                            ((lambda (_%L185146%_ _%L185147%_)
                                               (let* ((_%self185170%_
                                                       (list-ref
                                                        _%L185147%_
                                                        _%self-index184591%_))
                                                      (_%receiver185175%_
                                                       (let ((_%$e185172%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L185146%_))))
                 (if _%$e185172%_ _%$e185172%_ _%self185170%_)))
              (_%body185181%_
               (map (lambda (_%g185176185178%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver185175%_
                       _%$klass185058%_
                       _%method-calls182581%_
                       _%slot-refs182582%_
                       _%g185176185178%_))
                    _%L185146%_))
              (__tmp186800 (cons '%#lambda (cons _%L185147%_ _%body185181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp186800
                                                  _%L184828%_)))
                                             _%tl185120185143%_
                                             _%hd185119185141%_)))
                                        (_%g185111185125%_
                                         _%g185112185128%_))))
                                (_%g185111185125%_ _%g185112185128%_)))))
                    (_%g185110185184%_ _%L184828%_)))
                 (_%specializer-case-lambda-expr185327%_
                  (let* ((_%g185189185208%_
                          (lambda (_%g185190185205%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g185190185205%_))))
                         (_%g185188185324%_
                          (lambda (_%g185190185211%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g185190185211%_))
                                (let ((_%e185192185213%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g185190185211%_))))
                                  (let ((_%hd185193185216%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e185192185213%_)))
                                        (_%tl185194185218%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e185192185213%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl185194185218%_))
                                        (let ((_g186801_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl185194185218%_
                                                  '0))))
                                          (begin
                                            (let ((_g186802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g186801_)
                                                         (##values-length
                                                          _g186801_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g186802_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g186802_)))
                                            (let ((_%target185195185221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186801_
                                                      0)))
                                                  (_%tl185197185223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g186801_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl185197185223%_))
                                                  (letrec ((_%loop185198185226%_
                                                            (lambda (_%hd185196185229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause185202185231%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd185196185229%_))
                          (let ((_%e185199185234%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd185196185229%_))))
                            (let ((_%lp-hd185200185237%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185199185234%_)))
                                  (_%lp-tl185201185239%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185199185234%_))))
                              (_%loop185198185226%_
                               _%lp-tl185201185239%_
                               (cons _%lp-hd185200185237%_
                                     _%clause185202185231%_))))
                          (let ((_%clause185203185242%_
                                 (reverse _%clause185202185231%_)))
                            ((lambda (_%L185245%_)
                               (let* ((_%clauses185322%_
                                       (map (lambda (_%clause185259%_)
                                              (let* ((_%g185261185272%_
                                                      (lambda (_%g185262185269%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g185262185269%_))))
                                                     (_%g185260185312%_
                                                      (lambda (_%g185262185275%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g185262185275%_))
                                                            (let ((_%e185265185277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g185262185275%_))))
                      (let ((_%hd185266185280%_
                             (let ()
                               (declare (not safe))
                               (##car _%e185265185277%_)))
                            (_%tl185267185282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e185265185277%_))))
                        ((lambda (_%L185285%_ _%L185286%_)
                           (let* ((_%self185298%_
                                   (list-ref _%L185286%_ _%self-index184591%_))
                                  (_%receiver185303%_
                                   (let ((_%$e185300%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L185285%_))))
                                     (if _%$e185300%_
                                         _%$e185300%_
                                         _%self185298%_)))
                                  (_%body185309%_
                                   (map (lambda (_%g185304185306%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver185303%_
                                           _%$klass185058%_
                                           _%method-calls182581%_
                                           _%slot-refs182582%_
                                           _%g185304185306%_))
                                        _%L185285%_)))
                             (cons _%L185286%_ _%body185309%_)))
                         _%tl185267185282%_
                         _%hd185266185280%_)))
                    (_%g185261185272%_ _%g185262185275%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g185260185312%_
                                                 _%clause185259%_)))
                                            (let ((__tmp186803
                                                   (lambda (_%g185314185317%_
                                                            _%g185315185319%_)
                                                     (cons _%g185314185317%_
                                                           _%g185315185319%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp186803
                                               '()
                                               _%L185245%_))))
                                      (__tmp186804
                                       (cons '%#case-lambda
                                             _%clauses185322%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp186804
                                  _%L184827%_)))
                             _%clause185203185242%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop185198185226%_
                                                     _%target185195185221%_
                                                     '()))
                                                  (_%g185189185208%_
                                                   _%g185190185211%_)))))
                                        (_%g185189185208%_
                                         _%g185190185211%_))))
                                (_%g185189185208%_ _%g185190185211%_)))))
                    (_%g185188185324%_ _%L184827%_)))
                 (_%specializer-impl185329%_
                  (let ((__tmp186805
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L184291%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L184290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp186806
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L184829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr185187%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr185327%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp186806
                                                _%stx182489%_))
                                             '()))
                                 '())
                           (cons _%L184288%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L184287%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp186805 _%stx182489%_)))
                 (_%specializer-impl185331%_
                  (_%generate-specializer-impl182493%_
                   _%$klass185058%_
                   _%$method-table185060%_
                   _%methods-bind185085%_
                   _%slots-bind185109%_
                   _%specializer-impl185329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L182562%_)))
                                                          (__tmp186807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id185056%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp186808
                                                       '" => "
                                                       __tmp186807))
                                                    (_%generate-specializer-def182494%_
                                                     _%L182562%_
                                                     _%specializer-id185056%_
                                                     _%specializer-impl185331%_))))
                                            _%hd184760184822%_
                                            _%hd184757184814%_
                                            _%hd184754184806%_)
                                           (_%g184736184766%_
                                            _%g184737184769%_))))
                                   (_%g184736184766%_ _%g184737184769%_))
                               (_%g184736184766%_ _%g184737184769%_))
                           (_%g184736184766%_ _%g184737184769%_))))
                   (_%g184736184766%_ _%g184737184769%_))
               (_%g184736184766%_ _%g184737184769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184736184766%_
                                                _%g184737184769%_))))
                                       (_%g184736184766%_ _%g184737184769%_))))
                               (_%g184736184766%_ _%g184737184769%_))))
                       (_%g184736184766%_ _%g184737184769%_))))
               (_%g184736184766%_ _%g184737184769%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184735185334%_ _%L184289%_))
                                         _%stx182489%_))))
                             _%hd184387184510%_
                             _%kw-ref184385184531%_
                             _%hd184375184497%_
                             _%hd184366184473%_
                             _%hd184357184449%_)
                            (_%g184331184393%_ _%g184332184396%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop184380184515%_
                                                 _%target184377184502%_
                                                 '()))
                                              (_%g184331184393%_
                                               _%g184332184396%_))))
                                      (_%g184331184393%_ _%g184332184396%_)))))
                            (_%g184331184393%_ _%g184332184396%_))
                        (_%g184331184393%_ _%g184332184396%_))
                    (_%g184331184393%_ _%g184332184396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184331184393%_
                                                     _%g184332184396%_))
                                                (_%g184331184393%_
                                                 _%g184332184396%_))
                                            (_%g184331184393%_
                                             _%g184332184396%_))))
                                    (_%g184331184393%_ _%g184332184396%_))))
                            (_%g184331184393%_ _%g184332184396%_))
                        (_%g184331184393%_ _%g184332184396%_))))
                (_%g184331184393%_ _%g184332184396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184331184393%_
                                                     _%g184332184396%_))
                                                (_%g184331184393%_
                                                 _%g184332184396%_))))
                                        (_%g184331184393%_
                                         _%g184332184396%_))))
                                (_%g184331184393%_ _%g184332184396%_))
                            (_%g184331184393%_ _%g184332184396%_))))
                    (_%g184331184393%_ _%g184332184396%_))
                (_%g184331184393%_ _%g184332184396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184331184393%_
                                                     _%g184332184396%_))))
                                            (_%g184331184393%_
                                             _%g184332184396%_))))
                                    (_%g184331184393%_ _%g184332184396%_))
                                (_%g184331184393%_ _%g184332184396%_))
                            (_%g184331184393%_ _%g184332184396%_))))
                    (_%g184331184393%_ _%g184332184396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g184331184393%_
                                                     _%g184332184396%_))))
                                            (_%g184331184393%_
                                             _%g184332184396%_))
                                        (_%g184331184393%_ _%g184332184396%_))
                                    (_%g184331184393%_ _%g184332184396%_))))
                            (_%g184331184393%_ _%g184332184396%_)))))
                (_%g184330185338%_ _%L184288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd184164184282%_
                                                    _%hd184161184274%_
                                                    _%hd184158184266%_
                                                    _%hd184155184258%_
                                                    _%hd184137184210%_)
                                                   (_%g184117184170%_
                                                    _%g184118184173%_))))
                                           (_%g184117184170%_
                                            _%g184118184173%_))
                                       (_%g184117184170%_ _%g184118184173%_))
                                   (_%g184117184170%_ _%g184118184173%_))
                               (_%g184117184170%_ _%g184118184173%_))))
                       (_%g184117184170%_ _%g184118184173%_))
                   (_%g184117184170%_ _%g184118184173%_))
               (_%g184117184170%_ _%g184118184173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184117184170%_
                                                _%g184118184173%_))
                                           (_%g184117184170%_
                                            _%g184118184173%_))))
                                   (_%g184117184170%_ _%g184118184173%_))))
                           (_%g184117184170%_ _%g184118184173%_))))
                   (_%g184117184170%_ _%g184118184173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g184117184170%_
                                                    _%g184118184173%_))
                                               (_%g184117184170%_
                                                _%g184118184173%_))
                                           (_%g184117184170%_
                                            _%g184118184173%_))))
                                   (_%g184117184170%_ _%g184118184173%_))))
                           (_%g184117184170%_ _%g184118184173%_))
                       (_%g184117184170%_ _%g184118184173%_))))
               (_%g184117184170%_ _%g184118184173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g184117184170%_
                                                _%g184118184173%_))))
                                       (_%g184117184170%_ _%g184118184173%_))))
                               (_%g184117184170%_ _%g184118184173%_))
                           (_%g184117184170%_ _%g184118184173%_))
                       (_%g184117184170%_ _%g184118184173%_))))
               (_%g184117184170%_ _%g184118184173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g184116185341%_ _%L182561%_))
                                         _%stx182489%_))))))))
                  (_%__kont185575185576%_ (lambda () _%stx182489%_)))
              (let ((_%__match185604185605%_
                     (lambda (_%e182501182529%_
                              _%hd182502182532%_
                              _%tl182503182534%_
                              _%e182504182537%_
                              _%hd182505182540%_
                              _%tl182506182542%_
                              _%e182507182545%_
                              _%hd182508182548%_
                              _%tl182509182550%_
                              _%e182510182553%_
                              _%hd182511182556%_
                              _%tl182512182558%_)
                       (let ((_%L182561%_ _%hd182511182556%_)
                             (_%L182562%_ _%hd182508182548%_))
                         (if (let ((__tmp186809
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L182562%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp186809))
                             (_%__kont185573185574%_ _%L182561%_ _%L182562%_)
                             (_%__kont185575185576%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx185571185572%_))
                    (let ((_%e182501182529%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx185571185572%_))))
                      (let ((_%tl182503182534%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182501182529%_)))
                            (_%hd182502182532%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182501182529%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl182503182534%_))
                            (let ((_%e182504182537%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl182503182534%_))))
                              (let ((_%tl182506182542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e182504182537%_)))
                                    (_%hd182505182540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e182504182537%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd182505182540%_))
                                    (let ((_%e182507182545%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd182505182540%_))))
                                      (let ((_%tl182509182550%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182507182545%_)))
                                            (_%hd182508182548%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182507182545%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182509182550%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182506182542%_))
                                                (let ((_%e182510182553%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182506182542%_))))
                                                  (let ((_%tl182512182558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182510182553%_)))
                                                        (_%hd182511182556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182510182553%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182512182558%_))
                                                        (_%__match185604185605%_
                                                         _%e182501182529%_
                                                         _%hd182502182532%_
                                                         _%tl182503182534%_
                                                         _%e182504182537%_
                                                         _%hd182505182540%_
                                                         _%tl182506182542%_
                                                         _%e182507182545%_
                                                         _%hd182508182548%_
                                                         _%tl182509182550%_
                                                         _%e182510182553%_
                                                         _%hd182511182556%_
                                                         _%tl182512182558%_)
                                                        (_%__kont185575185576%_))))
                                                (_%__kont185575185576%_))
                                            (_%__kont185575185576%_))))
                                    (_%__kont185575185576%_))))
                            (_%__kont185575185576%_))))
                    (_%__kont185575185576%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self182341%_ _%stx182342%_)
        (let* ((_%__stx185607185608%_ _%stx182342%_)
               (_%g182345182378%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185607185608%_)))))
          (let ((_%__kont185609185610%_ (lambda (_%L182468%_) _%L182468%_))
                (_%__kont185611185612%_
                 (lambda (_%L182407%_ _%L182408%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self182341%_ _%L182407%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx185607185608%_))
                (let ((_%e182348182428%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx185607185608%_))))
                  (let ((_%tl182350182433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e182348182428%_)))
                        (_%hd182349182431%_
                         (let ()
                           (declare (not safe))
                           (##car _%e182348182428%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl182350182433%_))
                        (let ((_%e182351182436%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl182350182433%_))))
                          (let ((_%tl182353182441%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e182351182436%_)))
                                (_%hd182352182439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e182351182436%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd182352182439%_))
                                (let ((_%e182354182444%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd182352182439%_))))
                                  (let ((_%tl182356182449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e182354182444%_)))
                                        (_%hd182355182447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e182354182444%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd182355182447%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd182355182447%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182356182449%_))
                                                (let ((_%e182357182452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182356182449%_))))
                                                  (let ((_%tl182359182457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182357182452%_)))
                                                        (_%hd182358182455%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182357182452%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182359182457%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl182353182441%_))
                                                            (let ((_%e182360182460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl182353182441%_))))
                      (let ((_%tl182362182465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182360182460%_)))
                            (_%hd182361182463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182360182460%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182362182465%_))
                            (_%__kont185609185610%_ _%hd182358182455%_)
                            (let ()
                              (declare (not safe))
                              (_%g182345182378%_)))))
                    (let () (declare (not safe)) (_%g182345182378%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl182353182441%_))
                    (let ((_%e182371182399%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl182353182441%_))))
                      (let ((_%tl182373182404%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e182371182399%_)))
                            (_%hd182372182402%_
                             (let ()
                               (declare (not safe))
                               (##car _%e182371182399%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl182373182404%_))
                            (_%__kont185611185612%_
                             _%hd182372182402%_
                             _%hd182352182439%_)
                            (let ()
                              (declare (not safe))
                              (_%g182345182378%_)))))
                    (let () (declare (not safe)) (_%g182345182378%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl182353182441%_))
                                                    (let ((_%e182371182399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl182353182441%_))))
                                                      (let ((_%tl182373182404%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e182371182399%_)))
                    (_%hd182372182402%_
                     (let () (declare (not safe)) (##car _%e182371182399%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl182373182404%_))
                    (_%__kont185611185612%_
                     _%hd182372182402%_
                     _%hd182352182439%_)
                    (let () (declare (not safe)) (_%g182345182378%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g182345182378%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl182353182441%_))
                                                (let ((_%e182371182399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl182353182441%_))))
                                                  (let ((_%tl182373182404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e182371182399%_)))
                                                        (_%hd182372182402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e182371182399%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl182373182404%_))
                                                        (_%__kont185611185612%_
                                                         _%hd182372182402%_
                                                         _%hd182352182439%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g182345182378%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g182345182378%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl182353182441%_))
                                            (let ((_%e182371182399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl182353182441%_))))
                                              (let ((_%tl182373182404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e182371182399%_)))
                                                    (_%hd182372182402%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e182371182399%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl182373182404%_))
                                                    (_%__kont185611185612%_
                                                     _%hd182372182402%_
                                                     _%hd182352182439%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g182345182378%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g182345182378%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl182353182441%_))
                                    (let ((_%e182371182399%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl182353182441%_))))
                                      (let ((_%tl182373182404%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e182371182399%_)))
                                            (_%hd182372182402%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e182371182399%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl182373182404%_))
                                            (_%__kont185611185612%_
                                             _%hd182372182402%_
                                             _%hd182352182439%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g182345182378%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g182345182378%_))))))
                        (let () (declare (not safe)) (_%g182345182378%_)))))
                (let () (declare (not safe)) (_%g182345182378%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self182257%_ _%stx182258%_)
        (let* ((_%g182260182281%_
                (lambda (_%g182261182278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g182261182278%_))))
               (_%g182259182338%_
                (lambda (_%g182261182284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g182261182284%_))
                      (let ((_%e182265182286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g182261182284%_))))
                        (let ((_%hd182266182289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e182265182286%_)))
                              (_%tl182267182291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e182265182286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl182267182291%_))
                              (let ((_%e182268182294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl182267182291%_))))
                                (let ((_%hd182269182297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e182268182294%_)))
                                      (_%tl182270182299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e182268182294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl182270182299%_))
                                      (let ((_%e182271182302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl182270182299%_))))
                                        (let ((_%hd182272182305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e182271182302%_)))
                                              (_%tl182273182307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e182271182302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl182273182307%_))
                                              (let ((_%e182274182310%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl182273182307%_))))
                                                (let ((_%hd182275182313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e182274182310%_)))
                                                      (_%tl182276182315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e182274182310%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl182276182315%_))
                                                      ((lambda (_%L182318%_
                                                                _%L182319%_
                                                                _%L182320%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self182257%_
                                                            _%L182319%_)))
                                                       _%hd182275182313%_
                                                       _%hd182272182305%_
                                                       _%hd182269182297%_)
                                                      (_%g182260182281%_
                                                       _%g182261182284%_))))
                                              (_%g182260182281%_
                                               _%g182261182284%_))))
                                      (_%g182260182281%_ _%g182261182284%_))))
                              (_%g182260182281%_ _%g182261182284%_))))
                      (_%g182260182281%_ _%g182261182284%_)))))
          (_%g182259182338%_ _%stx182258%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self181218%_ _%stx181219%_)
        (let* ((_%__stx185673185674%_ _%stx181219%_)
               (_%g181227181449%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx185673185674%_)))))
          (let ((_%__kont185675185676%_
                 (lambda (_%L182206%_ _%L182207%_ _%L182208%_ _%L182209%_)
                   (let ((__tmp186811
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181218%_ 'methods)))
                         (__tmp186810
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L182207%_))))
                     (declare (not safe))
                     (hash-put! __tmp186811 __tmp186810 '#t))
                   (for-each
                    (lambda (_%g182242182244%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self181218%_ _%g182242182244%_)))
                    (let ((__tmp186812
                           (lambda (_%g182246182249%_ _%g182247182251%_)
                             (cons _%g182246182249%_ _%g182247182251%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186812 '() _%L182206%_)))))
                (_%__kont185679185680%_
                 (lambda (_%L182041%_
                          _%L182042%_
                          _%L182043%_
                          _%L182044%_
                          _%L182045%_)
                   (let ((__tmp186814
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181218%_ 'methods)))
                         (__tmp186813
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L182042%_))))
                     (declare (not safe))
                     (hash-put! __tmp186814 __tmp186813 '#t))
                   (for-each
                    (lambda (_%g182085182087%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self181218%_ _%g182085182087%_)))
                    (let ((__tmp186815
                           (lambda (_%g182089182092%_ _%g182090182094%_)
                             (cons _%g182089182092%_ _%g182090182094%_))))
                      (declare (not safe))
                      (__foldr1 __tmp186815 '() _%L182041%_)))))
                (_%__kont185683185684%_
                 (lambda (_%L181874%_ _%L181875%_ _%L181876%_)
                   (let ((__tmp186817
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181218%_ 'slots)))
                         (__tmp186816
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181874%_))))
                     (declare (not safe))
                     (hash-put! __tmp186817 __tmp186816 '#t))))
                (_%__kont185685185686%_
                 (lambda (_%L181751%_ _%L181752%_ _%L181753%_ _%L181754%_)
                   (let ((__tmp186819
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self181218%_ 'slots)))
                         (__tmp186818
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L181752%_))))
                     (declare (not safe))
                     (hash-put! __tmp186819 __tmp186818 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self181218%_ _%L181751%_))))
                (_%__kont185687185688%_
                 (lambda (_%L181625%_ _%L181626%_)
                   (let* ((_%accessor181648%_
                           (let ((__tmp186820
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181626%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186820)))
                          (_%klass181650%_
                           (let ((__tmp186821
                                  (##structure-ref
                                   _%accessor181648%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx181219%_
                              __tmp186821)))
                          (_%slot181652%_
                           (##structure-ref
                            _%accessor181648%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor181648%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181650%_
                                    _%slot181652%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181650%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186823
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self181218%_ 'slots)))
                               (__tmp186822
                                (##structure-ref
                                 _%accessor181648%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp186823 __tmp186822 '#t))))))
                (_%__kont185689185690%_
                 (lambda (_%L181525%_ _%L181526%_ _%L181527%_)
                   (let* ((_%mutator181554%_
                           (let ((__tmp186824
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L181527%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp186824)))
                          (_%klass181556%_
                           (let ((__tmp186825
                                  (##structure-ref
                                   _%mutator181554%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx181219%_
                              __tmp186825)))
                          (_%slot181558%_
                           (##structure-ref
                            _%mutator181554%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator181554%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass181556%_
                                    _%slot181558%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass181556%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp186826
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self181218%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp186826 _%slot181558%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self181218%_ _%L181525%_)))))
                (_%__kont185691185692%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self181218%_ _%stx181219%_)))))
            (let* ((_%__match186172186173%_
                    (lambda (_%e181421181461%_
                             _%hd181422181464%_
                             _%tl181423181466%_
                             _%e181424181469%_
                             _%hd181425181472%_
                             _%tl181426181474%_
                             _%e181427181477%_
                             _%hd181428181480%_
                             _%tl181429181482%_
                             _%e181430181485%_
                             _%hd181431181488%_
                             _%tl181432181490%_
                             _%e181433181493%_
                             _%hd181434181496%_
                             _%tl181435181498%_
                             _%e181436181501%_
                             _%hd181437181504%_
                             _%tl181438181506%_
                             _%e181439181509%_
                             _%hd181440181512%_
                             _%tl181441181514%_
                             _%e181442181517%_
                             _%hd181443181520%_
                             _%tl181444181522%_)
                      (let ((_%L181525%_ _%hd181443181520%_)
                            (_%L181526%_ _%hd181440181512%_)
                            (_%L181527%_ _%hd181431181488%_))
                        (if (and (let ((__tmp186827
                                        (let ((__tmp186828
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181527%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186828))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186827
                                    'gxc#!mutator::t))
                                 (let ((__tmp186829
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181218%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181526%_
                                    __tmp186829)))
                            (_%__kont185689185690%_
                             _%L181525%_
                             _%L181526%_
                             _%L181527%_)
                            (_%__kont185691185692%_)))))
                   (_%__match186170186171%_
                    (lambda (_%e181421181461%_
                             _%hd181422181464%_
                             _%tl181423181466%_
                             _%e181424181469%_
                             _%hd181425181472%_
                             _%tl181426181474%_
                             _%e181427181477%_
                             _%hd181428181480%_
                             _%tl181429181482%_
                             _%e181430181485%_
                             _%hd181431181488%_
                             _%tl181432181490%_
                             _%e181433181493%_
                             _%hd181434181496%_
                             _%tl181435181498%_
                             _%e181436181501%_
                             _%hd181437181504%_
                             _%tl181438181506%_
                             _%e181439181509%_
                             _%hd181440181512%_
                             _%tl181441181514%_
                             _%e181442181517%_
                             _%hd181443181520%_
                             _%tl181444181522%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181444181522%_))
                          (_%__match186172186173%_
                           _%e181421181461%_
                           _%hd181422181464%_
                           _%tl181423181466%_
                           _%e181424181469%_
                           _%hd181425181472%_
                           _%tl181426181474%_
                           _%e181427181477%_
                           _%hd181428181480%_
                           _%tl181429181482%_
                           _%e181430181485%_
                           _%hd181431181488%_
                           _%tl181432181490%_
                           _%e181433181493%_
                           _%hd181434181496%_
                           _%tl181435181498%_
                           _%e181436181501%_
                           _%hd181437181504%_
                           _%tl181438181506%_
                           _%e181439181509%_
                           _%hd181440181512%_
                           _%tl181441181514%_
                           _%e181442181517%_
                           _%hd181443181520%_
                           _%tl181444181522%_)
                          (_%__kont185691185692%_))))
                   (_%__match186164186165%_
                    (lambda (_%e181421181461%_
                             _%hd181422181464%_
                             _%tl181423181466%_
                             _%e181424181469%_
                             _%hd181425181472%_
                             _%tl181426181474%_
                             _%e181427181477%_
                             _%hd181428181480%_
                             _%tl181429181482%_
                             _%e181430181485%_
                             _%hd181431181488%_
                             _%tl181432181490%_
                             _%e181433181493%_
                             _%hd181434181496%_
                             _%tl181435181498%_
                             _%e181436181501%_
                             _%hd181437181504%_
                             _%tl181438181506%_
                             _%e181439181509%_
                             _%hd181440181512%_
                             _%tl181441181514%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181435181498%_))
                          (let ((_%e181442181517%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181435181498%_))))
                            (let ((_%tl181444181522%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181442181517%_)))
                                  (_%hd181443181520%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181442181517%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181444181522%_))
                                  (_%__match186172186173%_
                                   _%e181421181461%_
                                   _%hd181422181464%_
                                   _%tl181423181466%_
                                   _%e181424181469%_
                                   _%hd181425181472%_
                                   _%tl181426181474%_
                                   _%e181427181477%_
                                   _%hd181428181480%_
                                   _%tl181429181482%_
                                   _%e181430181485%_
                                   _%hd181431181488%_
                                   _%tl181432181490%_
                                   _%e181433181493%_
                                   _%hd181434181496%_
                                   _%tl181435181498%_
                                   _%e181436181501%_
                                   _%hd181437181504%_
                                   _%tl181438181506%_
                                   _%e181439181509%_
                                   _%hd181440181512%_
                                   _%tl181441181514%_
                                   _%e181442181517%_
                                   _%hd181443181520%_
                                   _%tl181444181522%_)
                                  (_%__kont185691185692%_))))
                          (_%__kont185691185692%_))))
                   (_%__match186110186111%_
                    (lambda (_%e181397181569%_
                             _%hd181398181572%_
                             _%tl181399181574%_
                             _%e181400181577%_
                             _%hd181401181580%_
                             _%tl181402181582%_
                             _%e181403181585%_
                             _%hd181404181588%_
                             _%tl181405181590%_
                             _%e181406181593%_
                             _%hd181407181596%_
                             _%tl181408181598%_
                             _%e181409181601%_
                             _%hd181410181604%_
                             _%tl181411181606%_
                             _%e181412181609%_
                             _%hd181413181612%_
                             _%tl181414181614%_
                             _%e181415181617%_
                             _%hd181416181620%_
                             _%tl181417181622%_)
                      (let ((_%L181625%_ _%hd181416181620%_)
                            (_%L181626%_ _%hd181407181596%_))
                        (if (and (let ((__tmp186830
                                        (let ((__tmp186831
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L181626%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp186831))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp186830
                                    'gxc#!accessor::t))
                                 (let ((__tmp186832
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181218%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181625%_
                                    __tmp186832)))
                            (_%__kont185687185688%_ _%L181625%_ _%L181626%_)
                            (_%__kont185691185692%_)))))
                   (_%__match186108186109%_
                    (lambda (_%e181397181569%_
                             _%hd181398181572%_
                             _%tl181399181574%_
                             _%e181400181577%_
                             _%hd181401181580%_
                             _%tl181402181582%_
                             _%e181403181585%_
                             _%hd181404181588%_
                             _%tl181405181590%_
                             _%e181406181593%_
                             _%hd181407181596%_
                             _%tl181408181598%_
                             _%e181409181601%_
                             _%hd181410181604%_
                             _%tl181411181606%_
                             _%e181412181609%_
                             _%hd181413181612%_
                             _%tl181414181614%_
                             _%e181415181617%_
                             _%hd181416181620%_
                             _%tl181417181622%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181411181606%_))
                          (_%__match186110186111%_
                           _%e181397181569%_
                           _%hd181398181572%_
                           _%tl181399181574%_
                           _%e181400181577%_
                           _%hd181401181580%_
                           _%tl181402181582%_
                           _%e181403181585%_
                           _%hd181404181588%_
                           _%tl181405181590%_
                           _%e181406181593%_
                           _%hd181407181596%_
                           _%tl181408181598%_
                           _%e181409181601%_
                           _%hd181410181604%_
                           _%tl181411181606%_
                           _%e181412181609%_
                           _%hd181413181612%_
                           _%tl181414181614%_
                           _%e181415181617%_
                           _%hd181416181620%_
                           _%tl181417181622%_)
                          (_%__match186164186165%_
                           _%e181397181569%_
                           _%hd181398181572%_
                           _%tl181399181574%_
                           _%e181400181577%_
                           _%hd181401181580%_
                           _%tl181402181582%_
                           _%e181403181585%_
                           _%hd181404181588%_
                           _%tl181405181590%_
                           _%e181406181593%_
                           _%hd181407181596%_
                           _%tl181408181598%_
                           _%e181409181601%_
                           _%hd181410181604%_
                           _%tl181411181606%_
                           _%e181412181609%_
                           _%hd181413181612%_
                           _%tl181414181614%_
                           _%e181415181617%_
                           _%hd181416181620%_
                           _%tl181417181622%_))))
                   (_%__match186054186055%_
                    (lambda (_%e181362181663%_
                             _%hd181363181666%_
                             _%tl181364181668%_
                             _%e181365181671%_
                             _%hd181366181674%_
                             _%tl181367181676%_
                             _%e181368181679%_
                             _%hd181369181682%_
                             _%tl181370181684%_
                             _%e181371181687%_
                             _%hd181372181690%_
                             _%tl181373181692%_
                             _%e181374181695%_
                             _%hd181375181698%_
                             _%tl181376181700%_
                             _%e181377181703%_
                             _%hd181378181706%_
                             _%tl181379181708%_
                             _%e181380181711%_
                             _%hd181381181714%_
                             _%tl181382181716%_
                             _%e181383181719%_
                             _%hd181384181722%_
                             _%tl181385181724%_
                             _%e181386181727%_
                             _%hd181387181730%_
                             _%tl181388181732%_
                             _%e181389181735%_
                             _%hd181390181738%_
                             _%tl181391181740%_
                             _%e181392181743%_
                             _%hd181393181746%_
                             _%tl181394181748%_)
                      (let ((_%L181751%_ _%hd181393181746%_)
                            (_%L181752%_ _%hd181390181738%_)
                            (_%L181753%_ _%hd181381181714%_)
                            (_%L181754%_ _%hd181372181690%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181754%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181754%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp186833
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181218%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181753%_
                                    __tmp186833)))
                            (_%__kont185685185686%_
                             _%L181751%_
                             _%L181752%_
                             _%L181753%_
                             _%L181754%_)
                            (_%__kont185691185692%_)))))
                   (_%__match186046186047%_
                    (lambda (_%e181362181663%_
                             _%hd181363181666%_
                             _%tl181364181668%_
                             _%e181365181671%_
                             _%hd181366181674%_
                             _%tl181367181676%_
                             _%e181368181679%_
                             _%hd181369181682%_
                             _%tl181370181684%_
                             _%e181371181687%_
                             _%hd181372181690%_
                             _%tl181373181692%_
                             _%e181374181695%_
                             _%hd181375181698%_
                             _%tl181376181700%_
                             _%e181377181703%_
                             _%hd181378181706%_
                             _%tl181379181708%_
                             _%e181380181711%_
                             _%hd181381181714%_
                             _%tl181382181716%_
                             _%e181383181719%_
                             _%hd181384181722%_
                             _%tl181385181724%_
                             _%e181386181727%_
                             _%hd181387181730%_
                             _%tl181388181732%_
                             _%e181389181735%_
                             _%hd181390181738%_
                             _%tl181391181740%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181385181724%_))
                          (let ((_%e181392181743%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181385181724%_))))
                            (let ((_%tl181394181748%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181392181743%_)))
                                  (_%hd181393181746%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181392181743%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181394181748%_))
                                  (_%__match186054186055%_
                                   _%e181362181663%_
                                   _%hd181363181666%_
                                   _%tl181364181668%_
                                   _%e181365181671%_
                                   _%hd181366181674%_
                                   _%tl181367181676%_
                                   _%e181368181679%_
                                   _%hd181369181682%_
                                   _%tl181370181684%_
                                   _%e181371181687%_
                                   _%hd181372181690%_
                                   _%tl181373181692%_
                                   _%e181374181695%_
                                   _%hd181375181698%_
                                   _%tl181376181700%_
                                   _%e181377181703%_
                                   _%hd181378181706%_
                                   _%tl181379181708%_
                                   _%e181380181711%_
                                   _%hd181381181714%_
                                   _%tl181382181716%_
                                   _%e181383181719%_
                                   _%hd181384181722%_
                                   _%tl181385181724%_
                                   _%e181386181727%_
                                   _%hd181387181730%_
                                   _%tl181388181732%_
                                   _%e181389181735%_
                                   _%hd181390181738%_
                                   _%tl181391181740%_
                                   _%e181392181743%_
                                   _%hd181393181746%_
                                   _%tl181394181748%_)
                                  (_%__kont185691185692%_))))
                          (_%__match186170186171%_
                           _%e181362181663%_
                           _%hd181363181666%_
                           _%tl181364181668%_
                           _%e181365181671%_
                           _%hd181366181674%_
                           _%tl181367181676%_
                           _%e181368181679%_
                           _%hd181369181682%_
                           _%tl181370181684%_
                           _%e181371181687%_
                           _%hd181372181690%_
                           _%tl181373181692%_
                           _%e181374181695%_
                           _%hd181375181698%_
                           _%tl181376181700%_
                           _%e181377181703%_
                           _%hd181378181706%_
                           _%tl181379181708%_
                           _%e181380181711%_
                           _%hd181381181714%_
                           _%tl181382181716%_
                           _%e181383181719%_
                           _%hd181384181722%_
                           _%tl181385181724%_))))
                   (_%__match185968185969%_
                    (lambda (_%e181328181794%_
                             _%hd181329181797%_
                             _%tl181330181799%_
                             _%e181331181802%_
                             _%hd181332181805%_
                             _%tl181333181807%_
                             _%e181334181810%_
                             _%hd181335181813%_
                             _%tl181336181815%_
                             _%e181337181818%_
                             _%hd181338181821%_
                             _%tl181339181823%_
                             _%e181340181826%_
                             _%hd181341181829%_
                             _%tl181342181831%_
                             _%e181343181834%_
                             _%hd181344181837%_
                             _%tl181345181839%_
                             _%e181346181842%_
                             _%hd181347181845%_
                             _%tl181348181847%_
                             _%e181349181850%_
                             _%hd181350181853%_
                             _%tl181351181855%_
                             _%e181352181858%_
                             _%hd181353181861%_
                             _%tl181354181863%_
                             _%e181355181866%_
                             _%hd181356181869%_
                             _%tl181357181871%_)
                      (let ((_%L181874%_ _%hd181356181869%_)
                            (_%L181875%_ _%hd181347181845%_)
                            (_%L181876%_ _%hd181338181821%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181876%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L181876%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp186834
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self181218%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L181875%_
                                    __tmp186834)))
                            (_%__kont185683185684%_
                             _%L181874%_
                             _%L181875%_
                             _%L181876%_)
                            (_%__match186172186173%_
                             _%e181328181794%_
                             _%hd181329181797%_
                             _%tl181330181799%_
                             _%e181331181802%_
                             _%hd181332181805%_
                             _%tl181333181807%_
                             _%e181334181810%_
                             _%hd181335181813%_
                             _%tl181336181815%_
                             _%e181337181818%_
                             _%hd181338181821%_
                             _%tl181339181823%_
                             _%e181340181826%_
                             _%hd181341181829%_
                             _%tl181342181831%_
                             _%e181343181834%_
                             _%hd181344181837%_
                             _%tl181345181839%_
                             _%e181346181842%_
                             _%hd181347181845%_
                             _%tl181348181847%_
                             _%e181349181850%_
                             _%hd181350181853%_
                             _%tl181351181855%_)))))
                   (_%__match185966185967%_
                    (lambda (_%e181328181794%_
                             _%hd181329181797%_
                             _%tl181330181799%_
                             _%e181331181802%_
                             _%hd181332181805%_
                             _%tl181333181807%_
                             _%e181334181810%_
                             _%hd181335181813%_
                             _%tl181336181815%_
                             _%e181337181818%_
                             _%hd181338181821%_
                             _%tl181339181823%_
                             _%e181340181826%_
                             _%hd181341181829%_
                             _%tl181342181831%_
                             _%e181343181834%_
                             _%hd181344181837%_
                             _%tl181345181839%_
                             _%e181346181842%_
                             _%hd181347181845%_
                             _%tl181348181847%_
                             _%e181349181850%_
                             _%hd181350181853%_
                             _%tl181351181855%_
                             _%e181352181858%_
                             _%hd181353181861%_
                             _%tl181354181863%_
                             _%e181355181866%_
                             _%hd181356181869%_
                             _%tl181357181871%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl181351181855%_))
                          (_%__match185968185969%_
                           _%e181328181794%_
                           _%hd181329181797%_
                           _%tl181330181799%_
                           _%e181331181802%_
                           _%hd181332181805%_
                           _%tl181333181807%_
                           _%e181334181810%_
                           _%hd181335181813%_
                           _%tl181336181815%_
                           _%e181337181818%_
                           _%hd181338181821%_
                           _%tl181339181823%_
                           _%e181340181826%_
                           _%hd181341181829%_
                           _%tl181342181831%_
                           _%e181343181834%_
                           _%hd181344181837%_
                           _%tl181345181839%_
                           _%e181346181842%_
                           _%hd181347181845%_
                           _%tl181348181847%_
                           _%e181349181850%_
                           _%hd181350181853%_
                           _%tl181351181855%_
                           _%e181352181858%_
                           _%hd181353181861%_
                           _%tl181354181863%_
                           _%e181355181866%_
                           _%hd181356181869%_
                           _%tl181357181871%_)
                          (_%__match186046186047%_
                           _%e181328181794%_
                           _%hd181329181797%_
                           _%tl181330181799%_
                           _%e181331181802%_
                           _%hd181332181805%_
                           _%tl181333181807%_
                           _%e181334181810%_
                           _%hd181335181813%_
                           _%tl181336181815%_
                           _%e181337181818%_
                           _%hd181338181821%_
                           _%tl181339181823%_
                           _%e181340181826%_
                           _%hd181341181829%_
                           _%tl181342181831%_
                           _%e181343181834%_
                           _%hd181344181837%_
                           _%tl181345181839%_
                           _%e181346181842%_
                           _%hd181347181845%_
                           _%tl181348181847%_
                           _%e181349181850%_
                           _%hd181350181853%_
                           _%tl181351181855%_
                           _%e181352181858%_
                           _%hd181353181861%_
                           _%tl181354181863%_
                           _%e181355181866%_
                           _%hd181356181869%_
                           _%tl181357181871%_))))
                   (_%__match185956185957%_
                    (lambda (_%e181328181794%_
                             _%hd181329181797%_
                             _%tl181330181799%_
                             _%e181331181802%_
                             _%hd181332181805%_
                             _%tl181333181807%_
                             _%e181334181810%_
                             _%hd181335181813%_
                             _%tl181336181815%_
                             _%e181337181818%_
                             _%hd181338181821%_
                             _%tl181339181823%_
                             _%e181340181826%_
                             _%hd181341181829%_
                             _%tl181342181831%_
                             _%e181343181834%_
                             _%hd181344181837%_
                             _%tl181345181839%_
                             _%e181346181842%_
                             _%hd181347181845%_
                             _%tl181348181847%_
                             _%e181349181850%_
                             _%hd181350181853%_
                             _%tl181351181855%_
                             _%e181352181858%_
                             _%hd181353181861%_
                             _%tl181354181863%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd181353181861%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181354181863%_))
                              (let ((_%e181355181866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181354181863%_))))
                                (let ((_%tl181357181871%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181355181866%_)))
                                      (_%hd181356181869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181355181866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl181357181871%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl181351181855%_))
                                          (_%__match185968185969%_
                                           _%e181328181794%_
                                           _%hd181329181797%_
                                           _%tl181330181799%_
                                           _%e181331181802%_
                                           _%hd181332181805%_
                                           _%tl181333181807%_
                                           _%e181334181810%_
                                           _%hd181335181813%_
                                           _%tl181336181815%_
                                           _%e181337181818%_
                                           _%hd181338181821%_
                                           _%tl181339181823%_
                                           _%e181340181826%_
                                           _%hd181341181829%_
                                           _%tl181342181831%_
                                           _%e181343181834%_
                                           _%hd181344181837%_
                                           _%tl181345181839%_
                                           _%e181346181842%_
                                           _%hd181347181845%_
                                           _%tl181348181847%_
                                           _%e181349181850%_
                                           _%hd181350181853%_
                                           _%tl181351181855%_
                                           _%e181352181858%_
                                           _%hd181353181861%_
                                           _%tl181354181863%_
                                           _%e181355181866%_
                                           _%hd181356181869%_
                                           _%tl181357181871%_)
                                          (_%__match186046186047%_
                                           _%e181328181794%_
                                           _%hd181329181797%_
                                           _%tl181330181799%_
                                           _%e181331181802%_
                                           _%hd181332181805%_
                                           _%tl181333181807%_
                                           _%e181334181810%_
                                           _%hd181335181813%_
                                           _%tl181336181815%_
                                           _%e181337181818%_
                                           _%hd181338181821%_
                                           _%tl181339181823%_
                                           _%e181340181826%_
                                           _%hd181341181829%_
                                           _%tl181342181831%_
                                           _%e181343181834%_
                                           _%hd181344181837%_
                                           _%tl181345181839%_
                                           _%e181346181842%_
                                           _%hd181347181845%_
                                           _%tl181348181847%_
                                           _%e181349181850%_
                                           _%hd181350181853%_
                                           _%tl181351181855%_
                                           _%e181352181858%_
                                           _%hd181353181861%_
                                           _%tl181354181863%_
                                           _%e181355181866%_
                                           _%hd181356181869%_
                                           _%tl181357181871%_))
                                      (_%__match186170186171%_
                                       _%e181328181794%_
                                       _%hd181329181797%_
                                       _%tl181330181799%_
                                       _%e181331181802%_
                                       _%hd181332181805%_
                                       _%tl181333181807%_
                                       _%e181334181810%_
                                       _%hd181335181813%_
                                       _%tl181336181815%_
                                       _%e181337181818%_
                                       _%hd181338181821%_
                                       _%tl181339181823%_
                                       _%e181340181826%_
                                       _%hd181341181829%_
                                       _%tl181342181831%_
                                       _%e181343181834%_
                                       _%hd181344181837%_
                                       _%tl181345181839%_
                                       _%e181346181842%_
                                       _%hd181347181845%_
                                       _%tl181348181847%_
                                       _%e181349181850%_
                                       _%hd181350181853%_
                                       _%tl181351181855%_))))
                              (_%__match186170186171%_
                               _%e181328181794%_
                               _%hd181329181797%_
                               _%tl181330181799%_
                               _%e181331181802%_
                               _%hd181332181805%_
                               _%tl181333181807%_
                               _%e181334181810%_
                               _%hd181335181813%_
                               _%tl181336181815%_
                               _%e181337181818%_
                               _%hd181338181821%_
                               _%tl181339181823%_
                               _%e181340181826%_
                               _%hd181341181829%_
                               _%tl181342181831%_
                               _%e181343181834%_
                               _%hd181344181837%_
                               _%tl181345181839%_
                               _%e181346181842%_
                               _%hd181347181845%_
                               _%tl181348181847%_
                               _%e181349181850%_
                               _%hd181350181853%_
                               _%tl181351181855%_))
                          (_%__match186170186171%_
                           _%e181328181794%_
                           _%hd181329181797%_
                           _%tl181330181799%_
                           _%e181331181802%_
                           _%hd181332181805%_
                           _%tl181333181807%_
                           _%e181334181810%_
                           _%hd181335181813%_
                           _%tl181336181815%_
                           _%e181337181818%_
                           _%hd181338181821%_
                           _%tl181339181823%_
                           _%e181340181826%_
                           _%hd181341181829%_
                           _%tl181342181831%_
                           _%e181343181834%_
                           _%hd181344181837%_
                           _%tl181345181839%_
                           _%e181346181842%_
                           _%hd181347181845%_
                           _%tl181348181847%_
                           _%e181349181850%_
                           _%hd181350181853%_
                           _%tl181351181855%_))))
                   (_%__match185888185889%_
                    (lambda (_%e181277181913%_
                             _%hd181278181916%_
                             _%tl181279181918%_
                             _%e181280181921%_
                             _%hd181281181924%_
                             _%tl181282181926%_
                             _%e181283181929%_
                             _%hd181284181932%_
                             _%tl181285181934%_
                             _%e181286181937%_
                             _%hd181287181940%_
                             _%tl181288181942%_
                             _%e181289181945%_
                             _%hd181290181948%_
                             _%tl181291181950%_
                             _%e181292181953%_
                             _%hd181293181956%_
                             _%tl181294181958%_
                             _%e181295181961%_
                             _%hd181296181964%_
                             _%tl181297181966%_
                             _%e181298181969%_
                             _%hd181299181972%_
                             _%tl181300181974%_
                             _%e181301181977%_
                             _%hd181302181980%_
                             _%tl181303181982%_
                             _%e181304181985%_
                             _%hd181305181988%_
                             _%tl181306181990%_
                             _%e181307181993%_
                             _%hd181308181996%_
                             _%tl181309181998%_
                             _%e181310182001%_
                             _%hd181311182004%_
                             _%tl181312182006%_
                             _%e181313182009%_
                             _%hd181314182012%_
                             _%tl181315182014%_
                             _%__splice185681185682%_
                             _%target181316182017%_
                             _%tl181318182019%_)
                      (letrec ((_%loop181319182022%_
                                (lambda (_%hd181317182025%_
                                         _%args181323182027%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd181317182025%_))
                                      (let ((_%e181320182030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd181317182025%_))))
                                        (let ((_%lp-tl181322182035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181320182030%_)))
                                              (_%lp-hd181321182033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181320182030%_))))
                                          (_%loop181319182022%_
                                           _%lp-tl181322182035%_
                                           (cons _%lp-hd181321182033%_
                                                 _%args181323182027%_))))
                                      (let ((_%args181324182038%_
                                             (reverse _%args181323182027%_)))
                                        (let ((_%L182041%_
                                               _%args181324182038%_)
                                              (_%L182042%_ _%hd181314182012%_)
                                              (_%L182043%_ _%hd181305181988%_)
                                              (_%L182044%_ _%hd181296181964%_)
                                              (_%L182045%_ _%hd181287181940%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182045%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182044%_
                                                      'call-method))
                                                   (let ((__tmp186835
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self181218%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L182043%_
                                                      __tmp186835)))
                                              (_%__kont185679185680%_
                                               _%L182041%_
                                               _%L182042%_
                                               _%L182043%_
                                               _%L182044%_
                                               _%L182045%_)
                                              (_%__kont185691185692%_))))))))
                        (_%loop181319182022%_ _%target181316182017%_ '()))))
                   (_%__match185846185847%_
                    (lambda (_%e181277181913%_
                             _%hd181278181916%_
                             _%tl181279181918%_
                             _%e181280181921%_
                             _%hd181281181924%_
                             _%tl181282181926%_
                             _%e181283181929%_
                             _%hd181284181932%_
                             _%tl181285181934%_
                             _%e181286181937%_
                             _%hd181287181940%_
                             _%tl181288181942%_
                             _%e181289181945%_
                             _%hd181290181948%_
                             _%tl181291181950%_
                             _%e181292181953%_
                             _%hd181293181956%_
                             _%tl181294181958%_
                             _%e181295181961%_
                             _%hd181296181964%_
                             _%tl181297181966%_
                             _%e181298181969%_
                             _%hd181299181972%_
                             _%tl181300181974%_
                             _%e181301181977%_
                             _%hd181302181980%_
                             _%tl181303181982%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd181302181980%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl181303181982%_))
                              (let ((_%e181304181985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl181303181982%_))))
                                (let ((_%tl181306181990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181304181985%_)))
                                      (_%hd181305181988%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181304181985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl181306181990%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl181300181974%_))
                                          (let ((_%e181307181993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl181300181974%_))))
                                            (let ((_%tl181309181998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e181307181993%_)))
                                                  (_%hd181308181996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e181307181993%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd181308181996%_))
                                                  (let ((_%e181310182001%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd181308181996%_))))
                                                    (let ((_%tl181312182006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e181310182001%_)))
                                                          (_%hd181311182004%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e181310182001%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd181311182004%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd181311182004%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181312182006%_))
                          (let ((_%e181313182009%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181312182006%_))))
                            (let ((_%tl181315182014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181313182009%_)))
                                  (_%hd181314182012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181313182009%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl181315182014%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl181309181998%_))
                                      (let ((_%__splice185681185682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl181309181998%_
                                                '0))))
                                        (let ((_%tl181318182019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185681185682%_
                                                  '1)))
                                              (_%target181316182017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice185681185682%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl181318182019%_))
                                              (_%__match185888185889%_
                                               _%e181277181913%_
                                               _%hd181278181916%_
                                               _%tl181279181918%_
                                               _%e181280181921%_
                                               _%hd181281181924%_
                                               _%tl181282181926%_
                                               _%e181283181929%_
                                               _%hd181284181932%_
                                               _%tl181285181934%_
                                               _%e181286181937%_
                                               _%hd181287181940%_
                                               _%tl181288181942%_
                                               _%e181289181945%_
                                               _%hd181290181948%_
                                               _%tl181291181950%_
                                               _%e181292181953%_
                                               _%hd181293181956%_
                                               _%tl181294181958%_
                                               _%e181295181961%_
                                               _%hd181296181964%_
                                               _%tl181297181966%_
                                               _%e181298181969%_
                                               _%hd181299181972%_
                                               _%tl181300181974%_
                                               _%e181301181977%_
                                               _%hd181302181980%_
                                               _%tl181303181982%_
                                               _%e181304181985%_
                                               _%hd181305181988%_
                                               _%tl181306181990%_
                                               _%e181307181993%_
                                               _%hd181308181996%_
                                               _%tl181309181998%_
                                               _%e181310182001%_
                                               _%hd181311182004%_
                                               _%tl181312182006%_
                                               _%e181313182009%_
                                               _%hd181314182012%_
                                               _%tl181315182014%_
                                               _%__splice185681185682%_
                                               _%target181316182017%_
                                               _%tl181318182019%_)
                                              (_%__kont185691185692%_))))
                                      (_%__kont185691185692%_))
                                  (_%__kont185691185692%_))))
                          (_%__kont185691185692%_))
                      (_%__kont185691185692%_))
                  (_%__kont185691185692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185691185692%_))))
                                          (_%__match186170186171%_
                                           _%e181277181913%_
                                           _%hd181278181916%_
                                           _%tl181279181918%_
                                           _%e181280181921%_
                                           _%hd181281181924%_
                                           _%tl181282181926%_
                                           _%e181283181929%_
                                           _%hd181284181932%_
                                           _%tl181285181934%_
                                           _%e181286181937%_
                                           _%hd181287181940%_
                                           _%tl181288181942%_
                                           _%e181289181945%_
                                           _%hd181290181948%_
                                           _%tl181291181950%_
                                           _%e181292181953%_
                                           _%hd181293181956%_
                                           _%tl181294181958%_
                                           _%e181295181961%_
                                           _%hd181296181964%_
                                           _%tl181297181966%_
                                           _%e181298181969%_
                                           _%hd181299181972%_
                                           _%tl181300181974%_))
                                      (_%__match186170186171%_
                                       _%e181277181913%_
                                       _%hd181278181916%_
                                       _%tl181279181918%_
                                       _%e181280181921%_
                                       _%hd181281181924%_
                                       _%tl181282181926%_
                                       _%e181283181929%_
                                       _%hd181284181932%_
                                       _%tl181285181934%_
                                       _%e181286181937%_
                                       _%hd181287181940%_
                                       _%tl181288181942%_
                                       _%e181289181945%_
                                       _%hd181290181948%_
                                       _%tl181291181950%_
                                       _%e181292181953%_
                                       _%hd181293181956%_
                                       _%tl181294181958%_
                                       _%e181295181961%_
                                       _%hd181296181964%_
                                       _%tl181297181966%_
                                       _%e181298181969%_
                                       _%hd181299181972%_
                                       _%tl181300181974%_))))
                              (_%__match186170186171%_
                               _%e181277181913%_
                               _%hd181278181916%_
                               _%tl181279181918%_
                               _%e181280181921%_
                               _%hd181281181924%_
                               _%tl181282181926%_
                               _%e181283181929%_
                               _%hd181284181932%_
                               _%tl181285181934%_
                               _%e181286181937%_
                               _%hd181287181940%_
                               _%tl181288181942%_
                               _%e181289181945%_
                               _%hd181290181948%_
                               _%tl181291181950%_
                               _%e181292181953%_
                               _%hd181293181956%_
                               _%tl181294181958%_
                               _%e181295181961%_
                               _%hd181296181964%_
                               _%tl181297181966%_
                               _%e181298181969%_
                               _%hd181299181972%_
                               _%tl181300181974%_))
                          (_%__match185956185957%_
                           _%e181277181913%_
                           _%hd181278181916%_
                           _%tl181279181918%_
                           _%e181280181921%_
                           _%hd181281181924%_
                           _%tl181282181926%_
                           _%e181283181929%_
                           _%hd181284181932%_
                           _%tl181285181934%_
                           _%e181286181937%_
                           _%hd181287181940%_
                           _%tl181288181942%_
                           _%e181289181945%_
                           _%hd181290181948%_
                           _%tl181291181950%_
                           _%e181292181953%_
                           _%hd181293181956%_
                           _%tl181294181958%_
                           _%e181295181961%_
                           _%hd181296181964%_
                           _%tl181297181966%_
                           _%e181298181969%_
                           _%hd181299181972%_
                           _%tl181300181974%_
                           _%e181301181977%_
                           _%hd181302181980%_
                           _%tl181303181982%_))))
                   (_%__match185778185779%_
                    (lambda (_%e181233182102%_
                             _%hd181234182105%_
                             _%tl181235182107%_
                             _%e181236182110%_
                             _%hd181237182113%_
                             _%tl181238182115%_
                             _%e181239182118%_
                             _%hd181240182121%_
                             _%tl181241182123%_
                             _%e181242182126%_
                             _%hd181243182129%_
                             _%tl181244182131%_
                             _%e181245182134%_
                             _%hd181246182137%_
                             _%tl181247182139%_
                             _%e181248182142%_
                             _%hd181249182145%_
                             _%tl181250182147%_
                             _%e181251182150%_
                             _%hd181252182153%_
                             _%tl181253182155%_
                             _%e181254182158%_
                             _%hd181255182161%_
                             _%tl181256182163%_
                             _%e181257182166%_
                             _%hd181258182169%_
                             _%tl181259182171%_
                             _%e181260182174%_
                             _%hd181261182177%_
                             _%tl181262182179%_
                             _%__splice185677185678%_
                             _%target181263182182%_
                             _%tl181265182184%_)
                      (letrec ((_%loop181266182187%_
                                (lambda (_%hd181264182190%_
                                         _%args181270182192%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd181264182190%_))
                                      (let ((_%e181267182195%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd181264182190%_))))
                                        (let ((_%lp-tl181269182200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e181267182195%_)))
                                              (_%lp-hd181268182198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e181267182195%_))))
                                          (_%loop181266182187%_
                                           _%lp-tl181269182200%_
                                           (cons _%lp-hd181268182198%_
                                                 _%args181270182192%_))))
                                      (let ((_%args181271182203%_
                                             (reverse _%args181270182192%_)))
                                        (let ((_%L182206%_
                                               _%args181271182203%_)
                                              (_%L182207%_ _%hd181261182177%_)
                                              (_%L182208%_ _%hd181252182153%_)
                                              (_%L182209%_ _%hd181243182129%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L182209%_
                                                      'call-method))
                                                   (let ((__tmp186836
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self181218%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L182208%_
                                                      __tmp186836)))
                                              (_%__kont185675185676%_
                                               _%L182206%_
                                               _%L182207%_
                                               _%L182208%_
                                               _%L182209%_)
                                              (_%__match185966185967%_
                                               _%e181233182102%_
                                               _%hd181234182105%_
                                               _%tl181235182107%_
                                               _%e181236182110%_
                                               _%hd181237182113%_
                                               _%tl181238182115%_
                                               _%e181239182118%_
                                               _%hd181240182121%_
                                               _%tl181241182123%_
                                               _%e181242182126%_
                                               _%hd181243182129%_
                                               _%tl181244182131%_
                                               _%e181245182134%_
                                               _%hd181246182137%_
                                               _%tl181247182139%_
                                               _%e181248182142%_
                                               _%hd181249182145%_
                                               _%tl181250182147%_
                                               _%e181251182150%_
                                               _%hd181252182153%_
                                               _%tl181253182155%_
                                               _%e181254182158%_
                                               _%hd181255182161%_
                                               _%tl181256182163%_
                                               _%e181257182166%_
                                               _%hd181258182169%_
                                               _%tl181259182171%_
                                               _%e181260182174%_
                                               _%hd181261182177%_
                                               _%tl181262182179%_))))))))
                        (_%loop181266182187%_ _%target181263182182%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx185673185674%_))
                  (let ((_%e181233182102%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx185673185674%_))))
                    (let ((_%tl181235182107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e181233182102%_)))
                          (_%hd181234182105%_
                           (let ()
                             (declare (not safe))
                             (##car _%e181233182102%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl181235182107%_))
                          (let ((_%e181236182110%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl181235182107%_))))
                            (let ((_%tl181238182115%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181236182110%_)))
                                  (_%hd181237182113%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181236182110%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd181237182113%_))
                                  (let ((_%e181239182118%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd181237182113%_))))
                                    (let ((_%tl181241182123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e181239182118%_)))
                                          (_%hd181240182121%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e181239182118%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd181240182121%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd181240182121%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl181241182123%_))
                                                  (let ((_%e181242182126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl181241182123%_))))
                                                    (let ((_%tl181244182131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e181242182126%_)))
                                                          (_%hd181243182129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e181242182126%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl181244182131%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl181238182115%_))
                      (let ((_%e181245182134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl181238182115%_))))
                        (let ((_%tl181247182139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e181245182134%_)))
                              (_%hd181246182137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e181245182134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd181246182137%_))
                              (let ((_%e181248182142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd181246182137%_))))
                                (let ((_%tl181250182147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e181248182142%_)))
                                      (_%hd181249182145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e181248182142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd181249182145%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd181249182145%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl181250182147%_))
                                              (let ((_%e181251182150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl181250182147%_))))
                                                (let ((_%tl181253182155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e181251182150%_)))
                                                      (_%hd181252182153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e181251182150%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl181253182155%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl181247182139%_))
                                                          (let ((_%e181254182158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl181247182139%_))))
                    (let ((_%tl181256182163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e181254182158%_)))
                          (_%hd181255182161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e181254182158%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd181255182161%_))
                          (let ((_%e181257182166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd181255182161%_))))
                            (let ((_%tl181259182171%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e181257182166%_)))
                                  (_%hd181258182169%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e181257182166%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd181258182169%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd181258182169%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl181259182171%_))
                                          (let ((_%e181260182174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl181259182171%_))))
                                            (let ((_%tl181262182179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e181260182174%_)))
                                                  (_%hd181261182177%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e181260182174%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl181262182179%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl181256182163%_))
                                                      (let ((_%__splice185677185678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl181256182163%_
                        '0))))
                (let ((_%tl181265182184%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185677185678%_ '1)))
                      (_%target181263182182%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice185677185678%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl181265182184%_))
                      (_%__match185778185779%_
                       _%e181233182102%_
                       _%hd181234182105%_
                       _%tl181235182107%_
                       _%e181236182110%_
                       _%hd181237182113%_
                       _%tl181238182115%_
                       _%e181239182118%_
                       _%hd181240182121%_
                       _%tl181241182123%_
                       _%e181242182126%_
                       _%hd181243182129%_
                       _%tl181244182131%_
                       _%e181245182134%_
                       _%hd181246182137%_
                       _%tl181247182139%_
                       _%e181248182142%_
                       _%hd181249182145%_
                       _%tl181250182147%_
                       _%e181251182150%_
                       _%hd181252182153%_
                       _%tl181253182155%_
                       _%e181254182158%_
                       _%hd181255182161%_
                       _%tl181256182163%_
                       _%e181257182166%_
                       _%hd181258182169%_
                       _%tl181259182171%_
                       _%e181260182174%_
                       _%hd181261182177%_
                       _%tl181262182179%_
                       _%__splice185677185678%_
                       _%target181263182182%_
                       _%tl181265182184%_)
                      (_%__match185966185967%_
                       _%e181233182102%_
                       _%hd181234182105%_
                       _%tl181235182107%_
                       _%e181236182110%_
                       _%hd181237182113%_
                       _%tl181238182115%_
                       _%e181239182118%_
                       _%hd181240182121%_
                       _%tl181241182123%_
                       _%e181242182126%_
                       _%hd181243182129%_
                       _%tl181244182131%_
                       _%e181245182134%_
                       _%hd181246182137%_
                       _%tl181247182139%_
                       _%e181248182142%_
                       _%hd181249182145%_
                       _%tl181250182147%_
                       _%e181251182150%_
                       _%hd181252182153%_
                       _%tl181253182155%_
                       _%e181254182158%_
                       _%hd181255182161%_
                       _%tl181256182163%_
                       _%e181257182166%_
                       _%hd181258182169%_
                       _%tl181259182171%_
                       _%e181260182174%_
                       _%hd181261182177%_
                       _%tl181262182179%_))))
              (_%__match185966185967%_
               _%e181233182102%_
               _%hd181234182105%_
               _%tl181235182107%_
               _%e181236182110%_
               _%hd181237182113%_
               _%tl181238182115%_
               _%e181239182118%_
               _%hd181240182121%_
               _%tl181241182123%_
               _%e181242182126%_
               _%hd181243182129%_
               _%tl181244182131%_
               _%e181245182134%_
               _%hd181246182137%_
               _%tl181247182139%_
               _%e181248182142%_
               _%hd181249182145%_
               _%tl181250182147%_
               _%e181251182150%_
               _%hd181252182153%_
               _%tl181253182155%_
               _%e181254182158%_
               _%hd181255182161%_
               _%tl181256182163%_
               _%e181257182166%_
               _%hd181258182169%_
               _%tl181259182171%_
               _%e181260182174%_
               _%hd181261182177%_
               _%tl181262182179%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match186170186171%_
                                                   _%e181233182102%_
                                                   _%hd181234182105%_
                                                   _%tl181235182107%_
                                                   _%e181236182110%_
                                                   _%hd181237182113%_
                                                   _%tl181238182115%_
                                                   _%e181239182118%_
                                                   _%hd181240182121%_
                                                   _%tl181241182123%_
                                                   _%e181242182126%_
                                                   _%hd181243182129%_
                                                   _%tl181244182131%_
                                                   _%e181245182134%_
                                                   _%hd181246182137%_
                                                   _%tl181247182139%_
                                                   _%e181248182142%_
                                                   _%hd181249182145%_
                                                   _%tl181250182147%_
                                                   _%e181251182150%_
                                                   _%hd181252182153%_
                                                   _%tl181253182155%_
                                                   _%e181254182158%_
                                                   _%hd181255182161%_
                                                   _%tl181256182163%_))))
                                          (_%__match186170186171%_
                                           _%e181233182102%_
                                           _%hd181234182105%_
                                           _%tl181235182107%_
                                           _%e181236182110%_
                                           _%hd181237182113%_
                                           _%tl181238182115%_
                                           _%e181239182118%_
                                           _%hd181240182121%_
                                           _%tl181241182123%_
                                           _%e181242182126%_
                                           _%hd181243182129%_
                                           _%tl181244182131%_
                                           _%e181245182134%_
                                           _%hd181246182137%_
                                           _%tl181247182139%_
                                           _%e181248182142%_
                                           _%hd181249182145%_
                                           _%tl181250182147%_
                                           _%e181251182150%_
                                           _%hd181252182153%_
                                           _%tl181253182155%_
                                           _%e181254182158%_
                                           _%hd181255182161%_
                                           _%tl181256182163%_))
                                      (_%__match185846185847%_
                                       _%e181233182102%_
                                       _%hd181234182105%_
                                       _%tl181235182107%_
                                       _%e181236182110%_
                                       _%hd181237182113%_
                                       _%tl181238182115%_
                                       _%e181239182118%_
                                       _%hd181240182121%_
                                       _%tl181241182123%_
                                       _%e181242182126%_
                                       _%hd181243182129%_
                                       _%tl181244182131%_
                                       _%e181245182134%_
                                       _%hd181246182137%_
                                       _%tl181247182139%_
                                       _%e181248182142%_
                                       _%hd181249182145%_
                                       _%tl181250182147%_
                                       _%e181251182150%_
                                       _%hd181252182153%_
                                       _%tl181253182155%_
                                       _%e181254182158%_
                                       _%hd181255182161%_
                                       _%tl181256182163%_
                                       _%e181257182166%_
                                       _%hd181258182169%_
                                       _%tl181259182171%_))
                                  (_%__match186170186171%_
                                   _%e181233182102%_
                                   _%hd181234182105%_
                                   _%tl181235182107%_
                                   _%e181236182110%_
                                   _%hd181237182113%_
                                   _%tl181238182115%_
                                   _%e181239182118%_
                                   _%hd181240182121%_
                                   _%tl181241182123%_
                                   _%e181242182126%_
                                   _%hd181243182129%_
                                   _%tl181244182131%_
                                   _%e181245182134%_
                                   _%hd181246182137%_
                                   _%tl181247182139%_
                                   _%e181248182142%_
                                   _%hd181249182145%_
                                   _%tl181250182147%_
                                   _%e181251182150%_
                                   _%hd181252182153%_
                                   _%tl181253182155%_
                                   _%e181254182158%_
                                   _%hd181255182161%_
                                   _%tl181256182163%_))))
                          (_%__match186170186171%_
                           _%e181233182102%_
                           _%hd181234182105%_
                           _%tl181235182107%_
                           _%e181236182110%_
                           _%hd181237182113%_
                           _%tl181238182115%_
                           _%e181239182118%_
                           _%hd181240182121%_
                           _%tl181241182123%_
                           _%e181242182126%_
                           _%hd181243182129%_
                           _%tl181244182131%_
                           _%e181245182134%_
                           _%hd181246182137%_
                           _%tl181247182139%_
                           _%e181248182142%_
                           _%hd181249182145%_
                           _%tl181250182147%_
                           _%e181251182150%_
                           _%hd181252182153%_
                           _%tl181253182155%_
                           _%e181254182158%_
                           _%hd181255182161%_
                           _%tl181256182163%_))))
                  (_%__match186108186109%_
                   _%e181233182102%_
                   _%hd181234182105%_
                   _%tl181235182107%_
                   _%e181236182110%_
                   _%hd181237182113%_
                   _%tl181238182115%_
                   _%e181239182118%_
                   _%hd181240182121%_
                   _%tl181241182123%_
                   _%e181242182126%_
                   _%hd181243182129%_
                   _%tl181244182131%_
                   _%e181245182134%_
                   _%hd181246182137%_
                   _%tl181247182139%_
                   _%e181248182142%_
                   _%hd181249182145%_
                   _%tl181250182147%_
                   _%e181251182150%_
                   _%hd181252182153%_
                   _%tl181253182155%_))
              (_%__kont185691185692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont185691185692%_))
                                          (_%__kont185691185692%_))
                                      (_%__kont185691185692%_))))
                              (_%__kont185691185692%_))))
                      (_%__kont185691185692%_))
                  (_%__kont185691185692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont185691185692%_))
                                              (_%__kont185691185692%_))
                                          (_%__kont185691185692%_))))
                                  (_%__kont185691185692%_))))
                          (_%__kont185691185692%_))))
                  (_%__kont185691185692%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self180157%_ _%stx180158%_)
        (letrec ((_%force-e180160%_
                  (lambda (_%target181216%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target181216%_ '()))
                                      '()))))))
          (let* ((_%__stx186175186176%_ _%stx180158%_)
                 (_%g180168180390%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx186175186176%_)))))
            (let ((_%__kont186177186178%_
                   (lambda (_%L181162%_ _%L181163%_ _%L181164%_ _%L181165%_)
                     (let ((_%$method181210%_
                            (let ((__tmp186838
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180157%_ 'methods)))
                                  (__tmp186837
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L181163%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186838 __tmp186837)))
                           (_%args181211%_
                            (map (lambda (_%g181198181200%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self180157%_
                                      _%g181198181200%_)))
                                 (let ((__tmp186839
                                        (lambda (_%g181202181205%_
                                                 _%g181203181207%_)
                                          (cons _%g181202181205%_
                                                _%g181203181207%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186839 '() _%L181162%_)))))
                       (let ((__tmp186840
                              (cons '%#call
                                    (cons (_%force-e180160%_ _%$method181210%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180157%_
                                                               'receiver))
                                                            '()))
                                                _%args181211%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186840 _%stx180158%_)))))
                  (_%__kont186181186182%_
                   (lambda (_%L180994%_
                            _%L180995%_
                            _%L180996%_
                            _%L180997%_
                            _%L180998%_)
                     (let ((_%$method181050%_
                            (let ((__tmp186842
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180157%_ 'methods)))
                                  (__tmp186841
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180995%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186842 __tmp186841)))
                           (_%args181051%_
                            (map (lambda (_%g181038181040%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self180157%_
                                      _%g181038181040%_)))
                                 (let ((__tmp186843
                                        (lambda (_%g181042181045%_
                                                 _%g181043181047%_)
                                          (cons _%g181042181045%_
                                                _%g181043181047%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp186843 '() _%L180994%_)))))
                       (let ((__tmp186844
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e180160%_
                                                 _%$method181050%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self180157%_ 'receiver))
                          '()))
              _%args181051%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186844 _%stx180158%_)))))
                  (_%__kont186185186186%_
                   (lambda (_%L180825%_ _%L180826%_ _%L180827%_)
                     (let* ((_%$field180859%_
                             (let ((__tmp186846
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self180157%_ 'slots)))
                                   (__tmp186845
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L180825%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp186846 __tmp186845)))
                            (__tmp186847
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self180157%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field180859%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self180157%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp186847 _%stx180158%_))))
                  (_%__kont186187186188%_
                   (lambda (_%L180699%_ _%L180700%_ _%L180701%_ _%L180702%_)
                     (let ((_%$field180737%_
                            (let ((__tmp186849
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self180157%_ 'slots)))
                                  (__tmp186848
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L180700%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp186849 __tmp186848)))
                           (_%expr180738%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self180157%_ _%L180699%_))))
                       (let ((__tmp186850
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self180157%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field180737%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self180157%_ 'receiver))
                          '()))
              (cons _%expr180738%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp186850 _%stx180158%_)))))
                  (_%__kont186189186190%_
                   (lambda (_%L180571%_ _%L180572%_)
                     (let* ((_%accessor180594%_
                             (let ((__tmp186851
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180572%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186851)))
                            (_%klass180596%_
                             (let ((__tmp186852
                                    (##structure-ref
                                     _%accessor180594%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx180158%_
                                __tmp186852)))
                            (_%slot180598%_
                             (##structure-ref
                              _%accessor180594%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor180594%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180596%_
                                      _%slot180598%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180596%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx180158%_
                           (let* ((_%$field180604%_
                                   (let ((__tmp186853
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186853 _%slot180598%_)))
                                  (__tmp186854
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self180157%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self180157%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186854
                              _%stx180158%_))))))
                  (_%__kont186191186192%_
                   (lambda (_%L180466%_ _%L180467%_ _%L180468%_)
                     (let* ((_%mutator180496%_
                             (let ((__tmp186855
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L180468%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp186855)))
                            (_%klass180498%_
                             (let ((__tmp186856
                                    (##structure-ref
                                     _%mutator180496%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx180158%_
                                __tmp186856)))
                            (_%slot180500%_
                             (##structure-ref
                              _%mutator180496%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr180502%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self180157%_ _%L180466%_))))
                       (if (if (##structure-ref
                                _%mutator180496%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass180498%_
                                      _%slot180500%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass180498%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp186857
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L180468%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L180467%_
                                                                '()))
                                                    (cons _%expr180502%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp186857 _%stx180158%_))
                           (let* ((_%$field180508%_
                                   (let ((__tmp186858
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp186858 _%slot180500%_)))
                                  (__tmp186859
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self180157%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field180508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self180157%_ 'receiver))
                               '()))
                   (cons _%expr180502%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp186859
                              _%stx180158%_))))))
                  (_%__kont186193186194%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self180157%_ _%stx180158%_)))))
              (let* ((_%__match186674186675%_
                      (lambda (_%e180362180402%_
                               _%hd180363180405%_
                               _%tl180364180407%_
                               _%e180365180410%_
                               _%hd180366180413%_
                               _%tl180367180415%_
                               _%e180368180418%_
                               _%hd180369180421%_
                               _%tl180370180423%_
                               _%e180371180426%_
                               _%hd180372180429%_
                               _%tl180373180431%_
                               _%e180374180434%_
                               _%hd180375180437%_
                               _%tl180376180439%_
                               _%e180377180442%_
                               _%hd180378180445%_
                               _%tl180379180447%_
                               _%e180380180450%_
                               _%hd180381180453%_
                               _%tl180382180455%_
                               _%e180383180458%_
                               _%hd180384180461%_
                               _%tl180385180463%_)
                        (let ((_%L180466%_ _%hd180384180461%_)
                              (_%L180467%_ _%hd180381180453%_)
                              (_%L180468%_ _%hd180372180429%_))
                          (if (and (let ((__tmp186860
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180467%_
                                      __tmp186860))
                                   (let ((__tmp186861
                                          (let ((__tmp186862
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180468%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186862))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186861
                                      'gxc#!mutator::t)))
                              (_%__kont186191186192%_
                               _%L180466%_
                               _%L180467%_
                               _%L180468%_)
                              (_%__kont186193186194%_)))))
                     (_%__match186672186673%_
                      (lambda (_%e180362180402%_
                               _%hd180363180405%_
                               _%tl180364180407%_
                               _%e180365180410%_
                               _%hd180366180413%_
                               _%tl180367180415%_
                               _%e180368180418%_
                               _%hd180369180421%_
                               _%tl180370180423%_
                               _%e180371180426%_
                               _%hd180372180429%_
                               _%tl180373180431%_
                               _%e180374180434%_
                               _%hd180375180437%_
                               _%tl180376180439%_
                               _%e180377180442%_
                               _%hd180378180445%_
                               _%tl180379180447%_
                               _%e180380180450%_
                               _%hd180381180453%_
                               _%tl180382180455%_
                               _%e180383180458%_
                               _%hd180384180461%_
                               _%tl180385180463%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180385180463%_))
                            (_%__match186674186675%_
                             _%e180362180402%_
                             _%hd180363180405%_
                             _%tl180364180407%_
                             _%e180365180410%_
                             _%hd180366180413%_
                             _%tl180367180415%_
                             _%e180368180418%_
                             _%hd180369180421%_
                             _%tl180370180423%_
                             _%e180371180426%_
                             _%hd180372180429%_
                             _%tl180373180431%_
                             _%e180374180434%_
                             _%hd180375180437%_
                             _%tl180376180439%_
                             _%e180377180442%_
                             _%hd180378180445%_
                             _%tl180379180447%_
                             _%e180380180450%_
                             _%hd180381180453%_
                             _%tl180382180455%_
                             _%e180383180458%_
                             _%hd180384180461%_
                             _%tl180385180463%_)
                            (_%__kont186193186194%_))))
                     (_%__match186666186667%_
                      (lambda (_%e180362180402%_
                               _%hd180363180405%_
                               _%tl180364180407%_
                               _%e180365180410%_
                               _%hd180366180413%_
                               _%tl180367180415%_
                               _%e180368180418%_
                               _%hd180369180421%_
                               _%tl180370180423%_
                               _%e180371180426%_
                               _%hd180372180429%_
                               _%tl180373180431%_
                               _%e180374180434%_
                               _%hd180375180437%_
                               _%tl180376180439%_
                               _%e180377180442%_
                               _%hd180378180445%_
                               _%tl180379180447%_
                               _%e180380180450%_
                               _%hd180381180453%_
                               _%tl180382180455%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180376180439%_))
                            (let ((_%e180383180458%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180376180439%_))))
                              (let ((_%tl180385180463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180383180458%_)))
                                    (_%hd180384180461%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180383180458%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180385180463%_))
                                    (_%__match186674186675%_
                                     _%e180362180402%_
                                     _%hd180363180405%_
                                     _%tl180364180407%_
                                     _%e180365180410%_
                                     _%hd180366180413%_
                                     _%tl180367180415%_
                                     _%e180368180418%_
                                     _%hd180369180421%_
                                     _%tl180370180423%_
                                     _%e180371180426%_
                                     _%hd180372180429%_
                                     _%tl180373180431%_
                                     _%e180374180434%_
                                     _%hd180375180437%_
                                     _%tl180376180439%_
                                     _%e180377180442%_
                                     _%hd180378180445%_
                                     _%tl180379180447%_
                                     _%e180380180450%_
                                     _%hd180381180453%_
                                     _%tl180382180455%_
                                     _%e180383180458%_
                                     _%hd180384180461%_
                                     _%tl180385180463%_)
                                    (_%__kont186193186194%_))))
                            (_%__kont186193186194%_))))
                     (_%__match186612186613%_
                      (lambda (_%e180338180515%_
                               _%hd180339180518%_
                               _%tl180340180520%_
                               _%e180341180523%_
                               _%hd180342180526%_
                               _%tl180343180528%_
                               _%e180344180531%_
                               _%hd180345180534%_
                               _%tl180346180536%_
                               _%e180347180539%_
                               _%hd180348180542%_
                               _%tl180349180544%_
                               _%e180350180547%_
                               _%hd180351180550%_
                               _%tl180352180552%_
                               _%e180353180555%_
                               _%hd180354180558%_
                               _%tl180355180560%_
                               _%e180356180563%_
                               _%hd180357180566%_
                               _%tl180358180568%_)
                        (let ((_%L180571%_ _%hd180357180566%_)
                              (_%L180572%_ _%hd180348180542%_))
                          (if (and (let ((__tmp186863
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180571%_
                                      __tmp186863))
                                   (let ((__tmp186864
                                          (let ((__tmp186865
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L180572%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp186865))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp186864
                                      'gxc#!accessor::t)))
                              (_%__kont186189186190%_ _%L180571%_ _%L180572%_)
                              (_%__kont186193186194%_)))))
                     (_%__match186610186611%_
                      (lambda (_%e180338180515%_
                               _%hd180339180518%_
                               _%tl180340180520%_
                               _%e180341180523%_
                               _%hd180342180526%_
                               _%tl180343180528%_
                               _%e180344180531%_
                               _%hd180345180534%_
                               _%tl180346180536%_
                               _%e180347180539%_
                               _%hd180348180542%_
                               _%tl180349180544%_
                               _%e180350180547%_
                               _%hd180351180550%_
                               _%tl180352180552%_
                               _%e180353180555%_
                               _%hd180354180558%_
                               _%tl180355180560%_
                               _%e180356180563%_
                               _%hd180357180566%_
                               _%tl180358180568%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180352180552%_))
                            (_%__match186612186613%_
                             _%e180338180515%_
                             _%hd180339180518%_
                             _%tl180340180520%_
                             _%e180341180523%_
                             _%hd180342180526%_
                             _%tl180343180528%_
                             _%e180344180531%_
                             _%hd180345180534%_
                             _%tl180346180536%_
                             _%e180347180539%_
                             _%hd180348180542%_
                             _%tl180349180544%_
                             _%e180350180547%_
                             _%hd180351180550%_
                             _%tl180352180552%_
                             _%e180353180555%_
                             _%hd180354180558%_
                             _%tl180355180560%_
                             _%e180356180563%_
                             _%hd180357180566%_
                             _%tl180358180568%_)
                            (_%__match186666186667%_
                             _%e180338180515%_
                             _%hd180339180518%_
                             _%tl180340180520%_
                             _%e180341180523%_
                             _%hd180342180526%_
                             _%tl180343180528%_
                             _%e180344180531%_
                             _%hd180345180534%_
                             _%tl180346180536%_
                             _%e180347180539%_
                             _%hd180348180542%_
                             _%tl180349180544%_
                             _%e180350180547%_
                             _%hd180351180550%_
                             _%tl180352180552%_
                             _%e180353180555%_
                             _%hd180354180558%_
                             _%tl180355180560%_
                             _%e180356180563%_
                             _%hd180357180566%_
                             _%tl180358180568%_))))
                     (_%__match186556186557%_
                      (lambda (_%e180303180611%_
                               _%hd180304180614%_
                               _%tl180305180616%_
                               _%e180306180619%_
                               _%hd180307180622%_
                               _%tl180308180624%_
                               _%e180309180627%_
                               _%hd180310180630%_
                               _%tl180311180632%_
                               _%e180312180635%_
                               _%hd180313180638%_
                               _%tl180314180640%_
                               _%e180315180643%_
                               _%hd180316180646%_
                               _%tl180317180648%_
                               _%e180318180651%_
                               _%hd180319180654%_
                               _%tl180320180656%_
                               _%e180321180659%_
                               _%hd180322180662%_
                               _%tl180323180664%_
                               _%e180324180667%_
                               _%hd180325180670%_
                               _%tl180326180672%_
                               _%e180327180675%_
                               _%hd180328180678%_
                               _%tl180329180680%_
                               _%e180330180683%_
                               _%hd180331180686%_
                               _%tl180332180688%_
                               _%e180333180691%_
                               _%hd180334180694%_
                               _%tl180335180696%_)
                        (let ((_%L180699%_ _%hd180334180694%_)
                              (_%L180700%_ _%hd180331180686%_)
                              (_%L180701%_ _%hd180322180662%_)
                              (_%L180702%_ _%hd180313180638%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180702%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180702%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp186866
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180701%_
                                      __tmp186866)))
                              (_%__kont186187186188%_
                               _%L180699%_
                               _%L180700%_
                               _%L180701%_
                               _%L180702%_)
                              (_%__kont186193186194%_)))))
                     (_%__match186548186549%_
                      (lambda (_%e180303180611%_
                               _%hd180304180614%_
                               _%tl180305180616%_
                               _%e180306180619%_
                               _%hd180307180622%_
                               _%tl180308180624%_
                               _%e180309180627%_
                               _%hd180310180630%_
                               _%tl180311180632%_
                               _%e180312180635%_
                               _%hd180313180638%_
                               _%tl180314180640%_
                               _%e180315180643%_
                               _%hd180316180646%_
                               _%tl180317180648%_
                               _%e180318180651%_
                               _%hd180319180654%_
                               _%tl180320180656%_
                               _%e180321180659%_
                               _%hd180322180662%_
                               _%tl180323180664%_
                               _%e180324180667%_
                               _%hd180325180670%_
                               _%tl180326180672%_
                               _%e180327180675%_
                               _%hd180328180678%_
                               _%tl180329180680%_
                               _%e180330180683%_
                               _%hd180331180686%_
                               _%tl180332180688%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180326180672%_))
                            (let ((_%e180333180691%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180326180672%_))))
                              (let ((_%tl180335180696%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180333180691%_)))
                                    (_%hd180334180694%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180333180691%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180335180696%_))
                                    (_%__match186556186557%_
                                     _%e180303180611%_
                                     _%hd180304180614%_
                                     _%tl180305180616%_
                                     _%e180306180619%_
                                     _%hd180307180622%_
                                     _%tl180308180624%_
                                     _%e180309180627%_
                                     _%hd180310180630%_
                                     _%tl180311180632%_
                                     _%e180312180635%_
                                     _%hd180313180638%_
                                     _%tl180314180640%_
                                     _%e180315180643%_
                                     _%hd180316180646%_
                                     _%tl180317180648%_
                                     _%e180318180651%_
                                     _%hd180319180654%_
                                     _%tl180320180656%_
                                     _%e180321180659%_
                                     _%hd180322180662%_
                                     _%tl180323180664%_
                                     _%e180324180667%_
                                     _%hd180325180670%_
                                     _%tl180326180672%_
                                     _%e180327180675%_
                                     _%hd180328180678%_
                                     _%tl180329180680%_
                                     _%e180330180683%_
                                     _%hd180331180686%_
                                     _%tl180332180688%_
                                     _%e180333180691%_
                                     _%hd180334180694%_
                                     _%tl180335180696%_)
                                    (_%__kont186193186194%_))))
                            (_%__match186672186673%_
                             _%e180303180611%_
                             _%hd180304180614%_
                             _%tl180305180616%_
                             _%e180306180619%_
                             _%hd180307180622%_
                             _%tl180308180624%_
                             _%e180309180627%_
                             _%hd180310180630%_
                             _%tl180311180632%_
                             _%e180312180635%_
                             _%hd180313180638%_
                             _%tl180314180640%_
                             _%e180315180643%_
                             _%hd180316180646%_
                             _%tl180317180648%_
                             _%e180318180651%_
                             _%hd180319180654%_
                             _%tl180320180656%_
                             _%e180321180659%_
                             _%hd180322180662%_
                             _%tl180323180664%_
                             _%e180324180667%_
                             _%hd180325180670%_
                             _%tl180326180672%_))))
                     (_%__match186470186471%_
                      (lambda (_%e180269180745%_
                               _%hd180270180748%_
                               _%tl180271180750%_
                               _%e180272180753%_
                               _%hd180273180756%_
                               _%tl180274180758%_
                               _%e180275180761%_
                               _%hd180276180764%_
                               _%tl180277180766%_
                               _%e180278180769%_
                               _%hd180279180772%_
                               _%tl180280180774%_
                               _%e180281180777%_
                               _%hd180282180780%_
                               _%tl180283180782%_
                               _%e180284180785%_
                               _%hd180285180788%_
                               _%tl180286180790%_
                               _%e180287180793%_
                               _%hd180288180796%_
                               _%tl180289180798%_
                               _%e180290180801%_
                               _%hd180291180804%_
                               _%tl180292180806%_
                               _%e180293180809%_
                               _%hd180294180812%_
                               _%tl180295180814%_
                               _%e180296180817%_
                               _%hd180297180820%_
                               _%tl180298180822%_)
                        (let ((_%L180825%_ _%hd180297180820%_)
                              (_%L180826%_ _%hd180288180796%_)
                              (_%L180827%_ _%hd180279180772%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180827%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L180827%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp186867
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self180157%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L180826%_
                                      __tmp186867)))
                              (_%__kont186185186186%_
                               _%L180825%_
                               _%L180826%_
                               _%L180827%_)
                              (_%__match186674186675%_
                               _%e180269180745%_
                               _%hd180270180748%_
                               _%tl180271180750%_
                               _%e180272180753%_
                               _%hd180273180756%_
                               _%tl180274180758%_
                               _%e180275180761%_
                               _%hd180276180764%_
                               _%tl180277180766%_
                               _%e180278180769%_
                               _%hd180279180772%_
                               _%tl180280180774%_
                               _%e180281180777%_
                               _%hd180282180780%_
                               _%tl180283180782%_
                               _%e180284180785%_
                               _%hd180285180788%_
                               _%tl180286180790%_
                               _%e180287180793%_
                               _%hd180288180796%_
                               _%tl180289180798%_
                               _%e180290180801%_
                               _%hd180291180804%_
                               _%tl180292180806%_)))))
                     (_%__match186468186469%_
                      (lambda (_%e180269180745%_
                               _%hd180270180748%_
                               _%tl180271180750%_
                               _%e180272180753%_
                               _%hd180273180756%_
                               _%tl180274180758%_
                               _%e180275180761%_
                               _%hd180276180764%_
                               _%tl180277180766%_
                               _%e180278180769%_
                               _%hd180279180772%_
                               _%tl180280180774%_
                               _%e180281180777%_
                               _%hd180282180780%_
                               _%tl180283180782%_
                               _%e180284180785%_
                               _%hd180285180788%_
                               _%tl180286180790%_
                               _%e180287180793%_
                               _%hd180288180796%_
                               _%tl180289180798%_
                               _%e180290180801%_
                               _%hd180291180804%_
                               _%tl180292180806%_
                               _%e180293180809%_
                               _%hd180294180812%_
                               _%tl180295180814%_
                               _%e180296180817%_
                               _%hd180297180820%_
                               _%tl180298180822%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl180292180806%_))
                            (_%__match186470186471%_
                             _%e180269180745%_
                             _%hd180270180748%_
                             _%tl180271180750%_
                             _%e180272180753%_
                             _%hd180273180756%_
                             _%tl180274180758%_
                             _%e180275180761%_
                             _%hd180276180764%_
                             _%tl180277180766%_
                             _%e180278180769%_
                             _%hd180279180772%_
                             _%tl180280180774%_
                             _%e180281180777%_
                             _%hd180282180780%_
                             _%tl180283180782%_
                             _%e180284180785%_
                             _%hd180285180788%_
                             _%tl180286180790%_
                             _%e180287180793%_
                             _%hd180288180796%_
                             _%tl180289180798%_
                             _%e180290180801%_
                             _%hd180291180804%_
                             _%tl180292180806%_
                             _%e180293180809%_
                             _%hd180294180812%_
                             _%tl180295180814%_
                             _%e180296180817%_
                             _%hd180297180820%_
                             _%tl180298180822%_)
                            (_%__match186548186549%_
                             _%e180269180745%_
                             _%hd180270180748%_
                             _%tl180271180750%_
                             _%e180272180753%_
                             _%hd180273180756%_
                             _%tl180274180758%_
                             _%e180275180761%_
                             _%hd180276180764%_
                             _%tl180277180766%_
                             _%e180278180769%_
                             _%hd180279180772%_
                             _%tl180280180774%_
                             _%e180281180777%_
                             _%hd180282180780%_
                             _%tl180283180782%_
                             _%e180284180785%_
                             _%hd180285180788%_
                             _%tl180286180790%_
                             _%e180287180793%_
                             _%hd180288180796%_
                             _%tl180289180798%_
                             _%e180290180801%_
                             _%hd180291180804%_
                             _%tl180292180806%_
                             _%e180293180809%_
                             _%hd180294180812%_
                             _%tl180295180814%_
                             _%e180296180817%_
                             _%hd180297180820%_
                             _%tl180298180822%_))))
                     (_%__match186458186459%_
                      (lambda (_%e180269180745%_
                               _%hd180270180748%_
                               _%tl180271180750%_
                               _%e180272180753%_
                               _%hd180273180756%_
                               _%tl180274180758%_
                               _%e180275180761%_
                               _%hd180276180764%_
                               _%tl180277180766%_
                               _%e180278180769%_
                               _%hd180279180772%_
                               _%tl180280180774%_
                               _%e180281180777%_
                               _%hd180282180780%_
                               _%tl180283180782%_
                               _%e180284180785%_
                               _%hd180285180788%_
                               _%tl180286180790%_
                               _%e180287180793%_
                               _%hd180288180796%_
                               _%tl180289180798%_
                               _%e180290180801%_
                               _%hd180291180804%_
                               _%tl180292180806%_
                               _%e180293180809%_
                               _%hd180294180812%_
                               _%tl180295180814%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd180294180812%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl180295180814%_))
                                (let ((_%e180296180817%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl180295180814%_))))
                                  (let ((_%tl180298180822%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180296180817%_)))
                                        (_%hd180297180820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180296180817%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl180298180822%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl180292180806%_))
                                            (_%__match186470186471%_
                                             _%e180269180745%_
                                             _%hd180270180748%_
                                             _%tl180271180750%_
                                             _%e180272180753%_
                                             _%hd180273180756%_
                                             _%tl180274180758%_
                                             _%e180275180761%_
                                             _%hd180276180764%_
                                             _%tl180277180766%_
                                             _%e180278180769%_
                                             _%hd180279180772%_
                                             _%tl180280180774%_
                                             _%e180281180777%_
                                             _%hd180282180780%_
                                             _%tl180283180782%_
                                             _%e180284180785%_
                                             _%hd180285180788%_
                                             _%tl180286180790%_
                                             _%e180287180793%_
                                             _%hd180288180796%_
                                             _%tl180289180798%_
                                             _%e180290180801%_
                                             _%hd180291180804%_
                                             _%tl180292180806%_
                                             _%e180293180809%_
                                             _%hd180294180812%_
                                             _%tl180295180814%_
                                             _%e180296180817%_
                                             _%hd180297180820%_
                                             _%tl180298180822%_)
                                            (_%__match186548186549%_
                                             _%e180269180745%_
                                             _%hd180270180748%_
                                             _%tl180271180750%_
                                             _%e180272180753%_
                                             _%hd180273180756%_
                                             _%tl180274180758%_
                                             _%e180275180761%_
                                             _%hd180276180764%_
                                             _%tl180277180766%_
                                             _%e180278180769%_
                                             _%hd180279180772%_
                                             _%tl180280180774%_
                                             _%e180281180777%_
                                             _%hd180282180780%_
                                             _%tl180283180782%_
                                             _%e180284180785%_
                                             _%hd180285180788%_
                                             _%tl180286180790%_
                                             _%e180287180793%_
                                             _%hd180288180796%_
                                             _%tl180289180798%_
                                             _%e180290180801%_
                                             _%hd180291180804%_
                                             _%tl180292180806%_
                                             _%e180293180809%_
                                             _%hd180294180812%_
                                             _%tl180295180814%_
                                             _%e180296180817%_
                                             _%hd180297180820%_
                                             _%tl180298180822%_))
                                        (_%__match186672186673%_
                                         _%e180269180745%_
                                         _%hd180270180748%_
                                         _%tl180271180750%_
                                         _%e180272180753%_
                                         _%hd180273180756%_
                                         _%tl180274180758%_
                                         _%e180275180761%_
                                         _%hd180276180764%_
                                         _%tl180277180766%_
                                         _%e180278180769%_
                                         _%hd180279180772%_
                                         _%tl180280180774%_
                                         _%e180281180777%_
                                         _%hd180282180780%_
                                         _%tl180283180782%_
                                         _%e180284180785%_
                                         _%hd180285180788%_
                                         _%tl180286180790%_
                                         _%e180287180793%_
                                         _%hd180288180796%_
                                         _%tl180289180798%_
                                         _%e180290180801%_
                                         _%hd180291180804%_
                                         _%tl180292180806%_))))
                                (_%__match186672186673%_
                                 _%e180269180745%_
                                 _%hd180270180748%_
                                 _%tl180271180750%_
                                 _%e180272180753%_
                                 _%hd180273180756%_
                                 _%tl180274180758%_
                                 _%e180275180761%_
                                 _%hd180276180764%_
                                 _%tl180277180766%_
                                 _%e180278180769%_
                                 _%hd180279180772%_
                                 _%tl180280180774%_
                                 _%e180281180777%_
                                 _%hd180282180780%_
                                 _%tl180283180782%_
                                 _%e180284180785%_
                                 _%hd180285180788%_
                                 _%tl180286180790%_
                                 _%e180287180793%_
                                 _%hd180288180796%_
                                 _%tl180289180798%_
                                 _%e180290180801%_
                                 _%hd180291180804%_
                                 _%tl180292180806%_))
                            (_%__match186672186673%_
                             _%e180269180745%_
                             _%hd180270180748%_
                             _%tl180271180750%_
                             _%e180272180753%_
                             _%hd180273180756%_
                             _%tl180274180758%_
                             _%e180275180761%_
                             _%hd180276180764%_
                             _%tl180277180766%_
                             _%e180278180769%_
                             _%hd180279180772%_
                             _%tl180280180774%_
                             _%e180281180777%_
                             _%hd180282180780%_
                             _%tl180283180782%_
                             _%e180284180785%_
                             _%hd180285180788%_
                             _%tl180286180790%_
                             _%e180287180793%_
                             _%hd180288180796%_
                             _%tl180289180798%_
                             _%e180290180801%_
                             _%hd180291180804%_
                             _%tl180292180806%_))))
                     (_%__match186390186391%_
                      (lambda (_%e180218180866%_
                               _%hd180219180869%_
                               _%tl180220180871%_
                               _%e180221180874%_
                               _%hd180222180877%_
                               _%tl180223180879%_
                               _%e180224180882%_
                               _%hd180225180885%_
                               _%tl180226180887%_
                               _%e180227180890%_
                               _%hd180228180893%_
                               _%tl180229180895%_
                               _%e180230180898%_
                               _%hd180231180901%_
                               _%tl180232180903%_
                               _%e180233180906%_
                               _%hd180234180909%_
                               _%tl180235180911%_
                               _%e180236180914%_
                               _%hd180237180917%_
                               _%tl180238180919%_
                               _%e180239180922%_
                               _%hd180240180925%_
                               _%tl180241180927%_
                               _%e180242180930%_
                               _%hd180243180933%_
                               _%tl180244180935%_
                               _%e180245180938%_
                               _%hd180246180941%_
                               _%tl180247180943%_
                               _%e180248180946%_
                               _%hd180249180949%_
                               _%tl180250180951%_
                               _%e180251180954%_
                               _%hd180252180957%_
                               _%tl180253180959%_
                               _%e180254180962%_
                               _%hd180255180965%_
                               _%tl180256180967%_
                               _%__splice186183186184%_
                               _%target180257180970%_
                               _%tl180259180972%_)
                        (letrec ((_%loop180260180975%_
                                  (lambda (_%hd180258180978%_
                                           _%args180264180980%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd180258180978%_))
                                        (let ((_%e180261180983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd180258180978%_))))
                                          (let ((_%lp-tl180263180988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180261180983%_)))
                                                (_%lp-hd180262180986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180261180983%_))))
                                            (_%loop180260180975%_
                                             _%lp-tl180263180988%_
                                             (cons _%lp-hd180262180986%_
                                                   _%args180264180980%_))))
                                        (let ((_%args180265180991%_
                                               (reverse _%args180264180980%_)))
                                          (let ((_%L180994%_
                                                 _%args180265180991%_)
                                                (_%L180995%_
                                                 _%hd180255180965%_)
                                                (_%L180996%_
                                                 _%hd180246180941%_)
                                                (_%L180997%_
                                                 _%hd180237180917%_)
                                                (_%L180998%_
                                                 _%hd180228180893%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180998%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L180997%_
                                                        'call-method))
                                                     (let ((__tmp186868
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180157%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L180996%_
                                                        __tmp186868)))
                                                (_%__kont186181186182%_
                                                 _%L180994%_
                                                 _%L180995%_
                                                 _%L180996%_
                                                 _%L180997%_
                                                 _%L180998%_)
                                                (_%__kont186193186194%_))))))))
                          (_%loop180260180975%_ _%target180257180970%_ '()))))
                     (_%__match186348186349%_
                      (lambda (_%e180218180866%_
                               _%hd180219180869%_
                               _%tl180220180871%_
                               _%e180221180874%_
                               _%hd180222180877%_
                               _%tl180223180879%_
                               _%e180224180882%_
                               _%hd180225180885%_
                               _%tl180226180887%_
                               _%e180227180890%_
                               _%hd180228180893%_
                               _%tl180229180895%_
                               _%e180230180898%_
                               _%hd180231180901%_
                               _%tl180232180903%_
                               _%e180233180906%_
                               _%hd180234180909%_
                               _%tl180235180911%_
                               _%e180236180914%_
                               _%hd180237180917%_
                               _%tl180238180919%_
                               _%e180239180922%_
                               _%hd180240180925%_
                               _%tl180241180927%_
                               _%e180242180930%_
                               _%hd180243180933%_
                               _%tl180244180935%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd180243180933%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl180244180935%_))
                                (let ((_%e180245180938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl180244180935%_))))
                                  (let ((_%tl180247180943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180245180938%_)))
                                        (_%hd180246180941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180245180938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl180247180943%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180241180927%_))
                                            (let ((_%e180248180946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180241180927%_))))
                                              (let ((_%tl180250180951%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180248180946%_)))
                                                    (_%hd180249180949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180248180946%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd180249180949%_))
                                                    (let ((_%e180251180954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd180249180949%_))))
                                                      (let ((_%tl180253180959%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180251180954%_)))
                    (_%hd180252180957%_
                     (let () (declare (not safe)) (##car _%e180251180954%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd180252180957%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd180252180957%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180253180959%_))
                            (let ((_%e180254180962%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180253180959%_))))
                              (let ((_%tl180256180967%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180254180962%_)))
                                    (_%hd180255180965%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180254180962%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl180256180967%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl180250180951%_))
                                        (let ((_%__splice186183186184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl180250180951%_
                                                  '0))))
                                          (let ((_%tl180259180972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice186183186184%_
                                                    '1)))
                                                (_%target180257180970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice186183186184%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl180259180972%_))
                                                (_%__match186390186391%_
                                                 _%e180218180866%_
                                                 _%hd180219180869%_
                                                 _%tl180220180871%_
                                                 _%e180221180874%_
                                                 _%hd180222180877%_
                                                 _%tl180223180879%_
                                                 _%e180224180882%_
                                                 _%hd180225180885%_
                                                 _%tl180226180887%_
                                                 _%e180227180890%_
                                                 _%hd180228180893%_
                                                 _%tl180229180895%_
                                                 _%e180230180898%_
                                                 _%hd180231180901%_
                                                 _%tl180232180903%_
                                                 _%e180233180906%_
                                                 _%hd180234180909%_
                                                 _%tl180235180911%_
                                                 _%e180236180914%_
                                                 _%hd180237180917%_
                                                 _%tl180238180919%_
                                                 _%e180239180922%_
                                                 _%hd180240180925%_
                                                 _%tl180241180927%_
                                                 _%e180242180930%_
                                                 _%hd180243180933%_
                                                 _%tl180244180935%_
                                                 _%e180245180938%_
                                                 _%hd180246180941%_
                                                 _%tl180247180943%_
                                                 _%e180248180946%_
                                                 _%hd180249180949%_
                                                 _%tl180250180951%_
                                                 _%e180251180954%_
                                                 _%hd180252180957%_
                                                 _%tl180253180959%_
                                                 _%e180254180962%_
                                                 _%hd180255180965%_
                                                 _%tl180256180967%_
                                                 _%__splice186183186184%_
                                                 _%target180257180970%_
                                                 _%tl180259180972%_)
                                                (_%__kont186193186194%_))))
                                        (_%__kont186193186194%_))
                                    (_%__kont186193186194%_))))
                            (_%__kont186193186194%_))
                        (_%__kont186193186194%_))
                    (_%__kont186193186194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont186193186194%_))))
                                            (_%__match186672186673%_
                                             _%e180218180866%_
                                             _%hd180219180869%_
                                             _%tl180220180871%_
                                             _%e180221180874%_
                                             _%hd180222180877%_
                                             _%tl180223180879%_
                                             _%e180224180882%_
                                             _%hd180225180885%_
                                             _%tl180226180887%_
                                             _%e180227180890%_
                                             _%hd180228180893%_
                                             _%tl180229180895%_
                                             _%e180230180898%_
                                             _%hd180231180901%_
                                             _%tl180232180903%_
                                             _%e180233180906%_
                                             _%hd180234180909%_
                                             _%tl180235180911%_
                                             _%e180236180914%_
                                             _%hd180237180917%_
                                             _%tl180238180919%_
                                             _%e180239180922%_
                                             _%hd180240180925%_
                                             _%tl180241180927%_))
                                        (_%__match186672186673%_
                                         _%e180218180866%_
                                         _%hd180219180869%_
                                         _%tl180220180871%_
                                         _%e180221180874%_
                                         _%hd180222180877%_
                                         _%tl180223180879%_
                                         _%e180224180882%_
                                         _%hd180225180885%_
                                         _%tl180226180887%_
                                         _%e180227180890%_
                                         _%hd180228180893%_
                                         _%tl180229180895%_
                                         _%e180230180898%_
                                         _%hd180231180901%_
                                         _%tl180232180903%_
                                         _%e180233180906%_
                                         _%hd180234180909%_
                                         _%tl180235180911%_
                                         _%e180236180914%_
                                         _%hd180237180917%_
                                         _%tl180238180919%_
                                         _%e180239180922%_
                                         _%hd180240180925%_
                                         _%tl180241180927%_))))
                                (_%__match186672186673%_
                                 _%e180218180866%_
                                 _%hd180219180869%_
                                 _%tl180220180871%_
                                 _%e180221180874%_
                                 _%hd180222180877%_
                                 _%tl180223180879%_
                                 _%e180224180882%_
                                 _%hd180225180885%_
                                 _%tl180226180887%_
                                 _%e180227180890%_
                                 _%hd180228180893%_
                                 _%tl180229180895%_
                                 _%e180230180898%_
                                 _%hd180231180901%_
                                 _%tl180232180903%_
                                 _%e180233180906%_
                                 _%hd180234180909%_
                                 _%tl180235180911%_
                                 _%e180236180914%_
                                 _%hd180237180917%_
                                 _%tl180238180919%_
                                 _%e180239180922%_
                                 _%hd180240180925%_
                                 _%tl180241180927%_))
                            (_%__match186458186459%_
                             _%e180218180866%_
                             _%hd180219180869%_
                             _%tl180220180871%_
                             _%e180221180874%_
                             _%hd180222180877%_
                             _%tl180223180879%_
                             _%e180224180882%_
                             _%hd180225180885%_
                             _%tl180226180887%_
                             _%e180227180890%_
                             _%hd180228180893%_
                             _%tl180229180895%_
                             _%e180230180898%_
                             _%hd180231180901%_
                             _%tl180232180903%_
                             _%e180233180906%_
                             _%hd180234180909%_
                             _%tl180235180911%_
                             _%e180236180914%_
                             _%hd180237180917%_
                             _%tl180238180919%_
                             _%e180239180922%_
                             _%hd180240180925%_
                             _%tl180241180927%_
                             _%e180242180930%_
                             _%hd180243180933%_
                             _%tl180244180935%_))))
                     (_%__match186280186281%_
                      (lambda (_%e180174181058%_
                               _%hd180175181061%_
                               _%tl180176181063%_
                               _%e180177181066%_
                               _%hd180178181069%_
                               _%tl180179181071%_
                               _%e180180181074%_
                               _%hd180181181077%_
                               _%tl180182181079%_
                               _%e180183181082%_
                               _%hd180184181085%_
                               _%tl180185181087%_
                               _%e180186181090%_
                               _%hd180187181093%_
                               _%tl180188181095%_
                               _%e180189181098%_
                               _%hd180190181101%_
                               _%tl180191181103%_
                               _%e180192181106%_
                               _%hd180193181109%_
                               _%tl180194181111%_
                               _%e180195181114%_
                               _%hd180196181117%_
                               _%tl180197181119%_
                               _%e180198181122%_
                               _%hd180199181125%_
                               _%tl180200181127%_
                               _%e180201181130%_
                               _%hd180202181133%_
                               _%tl180203181135%_
                               _%__splice186179186180%_
                               _%target180204181138%_
                               _%tl180206181140%_)
                        (letrec ((_%loop180207181143%_
                                  (lambda (_%hd180205181146%_
                                           _%args180211181148%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd180205181146%_))
                                        (let ((_%e180208181151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd180205181146%_))))
                                          (let ((_%lp-tl180210181156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e180208181151%_)))
                                                (_%lp-hd180209181154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e180208181151%_))))
                                            (_%loop180207181143%_
                                             _%lp-tl180210181156%_
                                             (cons _%lp-hd180209181154%_
                                                   _%args180211181148%_))))
                                        (let ((_%args180212181159%_
                                               (reverse _%args180211181148%_)))
                                          (let ((_%L181162%_
                                                 _%args180212181159%_)
                                                (_%L181163%_
                                                 _%hd180202181133%_)
                                                (_%L181164%_
                                                 _%hd180193181109%_)
                                                (_%L181165%_
                                                 _%hd180184181085%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L181165%_
                                                        'call-method))
                                                     (let ((__tmp186869
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self180157%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L181164%_
                                                        __tmp186869)))
                                                (_%__kont186177186178%_
                                                 _%L181162%_
                                                 _%L181163%_
                                                 _%L181164%_
                                                 _%L181165%_)
                                                (_%__match186468186469%_
                                                 _%e180174181058%_
                                                 _%hd180175181061%_
                                                 _%tl180176181063%_
                                                 _%e180177181066%_
                                                 _%hd180178181069%_
                                                 _%tl180179181071%_
                                                 _%e180180181074%_
                                                 _%hd180181181077%_
                                                 _%tl180182181079%_
                                                 _%e180183181082%_
                                                 _%hd180184181085%_
                                                 _%tl180185181087%_
                                                 _%e180186181090%_
                                                 _%hd180187181093%_
                                                 _%tl180188181095%_
                                                 _%e180189181098%_
                                                 _%hd180190181101%_
                                                 _%tl180191181103%_
                                                 _%e180192181106%_
                                                 _%hd180193181109%_
                                                 _%tl180194181111%_
                                                 _%e180195181114%_
                                                 _%hd180196181117%_
                                                 _%tl180197181119%_
                                                 _%e180198181122%_
                                                 _%hd180199181125%_
                                                 _%tl180200181127%_
                                                 _%e180201181130%_
                                                 _%hd180202181133%_
                                                 _%tl180203181135%_))))))))
                          (_%loop180207181143%_ _%target180204181138%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx186175186176%_))
                    (let ((_%e180174181058%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx186175186176%_))))
                      (let ((_%tl180176181063%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180174181058%_)))
                            (_%hd180175181061%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180174181058%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl180176181063%_))
                            (let ((_%e180177181066%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl180176181063%_))))
                              (let ((_%tl180179181071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180177181066%_)))
                                    (_%hd180178181069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180177181066%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd180178181069%_))
                                    (let ((_%e180180181074%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd180178181069%_))))
                                      (let ((_%tl180182181079%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e180180181074%_)))
                                            (_%hd180181181077%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e180180181074%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd180181181077%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd180181181077%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl180182181079%_))
                                                    (let ((_%e180183181082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl180182181079%_))))
                                                      (let ((_%tl180185181087%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e180183181082%_)))
                    (_%hd180184181085%_
                     (let () (declare (not safe)) (##car _%e180183181082%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl180185181087%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl180179181071%_))
                        (let ((_%e180186181090%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl180179181071%_))))
                          (let ((_%tl180188181095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e180186181090%_)))
                                (_%hd180187181093%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e180186181090%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd180187181093%_))
                                (let ((_%e180189181098%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd180187181093%_))))
                                  (let ((_%tl180191181103%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e180189181098%_)))
                                        (_%hd180190181101%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e180189181098%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd180190181101%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd180190181101%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl180191181103%_))
                                                (let ((_%e180192181106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl180191181103%_))))
                                                  (let ((_%tl180194181111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e180192181106%_)))
                                                        (_%hd180193181109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e180192181106%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl180194181111%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl180188181095%_))
                                                            (let ((_%e180195181114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl180188181095%_))))
                      (let ((_%tl180197181119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e180195181114%_)))
                            (_%hd180196181117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e180195181114%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd180196181117%_))
                            (let ((_%e180198181122%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd180196181117%_))))
                              (let ((_%tl180200181127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e180198181122%_)))
                                    (_%hd180199181125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e180198181122%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd180199181125%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd180199181125%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl180200181127%_))
                                            (let ((_%e180201181130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl180200181127%_))))
                                              (let ((_%tl180203181135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e180201181130%_)))
                                                    (_%hd180202181133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e180201181130%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl180203181135%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl180197181119%_))
                                                        (let ((_%__splice186179186180%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl180197181119%_
                          '0))))
                  (let ((_%tl180206181140%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice186179186180%_ '1)))
                        (_%target180204181138%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice186179186180%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl180206181140%_))
                        (_%__match186280186281%_
                         _%e180174181058%_
                         _%hd180175181061%_
                         _%tl180176181063%_
                         _%e180177181066%_
                         _%hd180178181069%_
                         _%tl180179181071%_
                         _%e180180181074%_
                         _%hd180181181077%_
                         _%tl180182181079%_
                         _%e180183181082%_
                         _%hd180184181085%_
                         _%tl180185181087%_
                         _%e180186181090%_
                         _%hd180187181093%_
                         _%tl180188181095%_
                         _%e180189181098%_
                         _%hd180190181101%_
                         _%tl180191181103%_
                         _%e180192181106%_
                         _%hd180193181109%_
                         _%tl180194181111%_
                         _%e180195181114%_
                         _%hd180196181117%_
                         _%tl180197181119%_
                         _%e180198181122%_
                         _%hd180199181125%_
                         _%tl180200181127%_
                         _%e180201181130%_
                         _%hd180202181133%_
                         _%tl180203181135%_
                         _%__splice186179186180%_
                         _%target180204181138%_
                         _%tl180206181140%_)
                        (_%__match186468186469%_
                         _%e180174181058%_
                         _%hd180175181061%_
                         _%tl180176181063%_
                         _%e180177181066%_
                         _%hd180178181069%_
                         _%tl180179181071%_
                         _%e180180181074%_
                         _%hd180181181077%_
                         _%tl180182181079%_
                         _%e180183181082%_
                         _%hd180184181085%_
                         _%tl180185181087%_
                         _%e180186181090%_
                         _%hd180187181093%_
                         _%tl180188181095%_
                         _%e180189181098%_
                         _%hd180190181101%_
                         _%tl180191181103%_
                         _%e180192181106%_
                         _%hd180193181109%_
                         _%tl180194181111%_
                         _%e180195181114%_
                         _%hd180196181117%_
                         _%tl180197181119%_
                         _%e180198181122%_
                         _%hd180199181125%_
                         _%tl180200181127%_
                         _%e180201181130%_
                         _%hd180202181133%_
                         _%tl180203181135%_))))
                (_%__match186468186469%_
                 _%e180174181058%_
                 _%hd180175181061%_
                 _%tl180176181063%_
                 _%e180177181066%_
                 _%hd180178181069%_
                 _%tl180179181071%_
                 _%e180180181074%_
                 _%hd180181181077%_
                 _%tl180182181079%_
                 _%e180183181082%_
                 _%hd180184181085%_
                 _%tl180185181087%_
                 _%e180186181090%_
                 _%hd180187181093%_
                 _%tl180188181095%_
                 _%e180189181098%_
                 _%hd180190181101%_
                 _%tl180191181103%_
                 _%e180192181106%_
                 _%hd180193181109%_
                 _%tl180194181111%_
                 _%e180195181114%_
                 _%hd180196181117%_
                 _%tl180197181119%_
                 _%e180198181122%_
                 _%hd180199181125%_
                 _%tl180200181127%_
                 _%e180201181130%_
                 _%hd180202181133%_
                 _%tl180203181135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match186672186673%_
                                                     _%e180174181058%_
                                                     _%hd180175181061%_
                                                     _%tl180176181063%_
                                                     _%e180177181066%_
                                                     _%hd180178181069%_
                                                     _%tl180179181071%_
                                                     _%e180180181074%_
                                                     _%hd180181181077%_
                                                     _%tl180182181079%_
                                                     _%e180183181082%_
                                                     _%hd180184181085%_
                                                     _%tl180185181087%_
                                                     _%e180186181090%_
                                                     _%hd180187181093%_
                                                     _%tl180188181095%_
                                                     _%e180189181098%_
                                                     _%hd180190181101%_
                                                     _%tl180191181103%_
                                                     _%e180192181106%_
                                                     _%hd180193181109%_
                                                     _%tl180194181111%_
                                                     _%e180195181114%_
                                                     _%hd180196181117%_
                                                     _%tl180197181119%_))))
                                            (_%__match186672186673%_
                                             _%e180174181058%_
                                             _%hd180175181061%_
                                             _%tl180176181063%_
                                             _%e180177181066%_
                                             _%hd180178181069%_
                                             _%tl180179181071%_
                                             _%e180180181074%_
                                             _%hd180181181077%_
                                             _%tl180182181079%_
                                             _%e180183181082%_
                                             _%hd180184181085%_
                                             _%tl180185181087%_
                                             _%e180186181090%_
                                             _%hd180187181093%_
                                             _%tl180188181095%_
                                             _%e180189181098%_
                                             _%hd180190181101%_
                                             _%tl180191181103%_
                                             _%e180192181106%_
                                             _%hd180193181109%_
                                             _%tl180194181111%_
                                             _%e180195181114%_
                                             _%hd180196181117%_
                                             _%tl180197181119%_))
                                        (_%__match186348186349%_
                                         _%e180174181058%_
                                         _%hd180175181061%_
                                         _%tl180176181063%_
                                         _%e180177181066%_
                                         _%hd180178181069%_
                                         _%tl180179181071%_
                                         _%e180180181074%_
                                         _%hd180181181077%_
                                         _%tl180182181079%_
                                         _%e180183181082%_
                                         _%hd180184181085%_
                                         _%tl180185181087%_
                                         _%e180186181090%_
                                         _%hd180187181093%_
                                         _%tl180188181095%_
                                         _%e180189181098%_
                                         _%hd180190181101%_
                                         _%tl180191181103%_
                                         _%e180192181106%_
                                         _%hd180193181109%_
                                         _%tl180194181111%_
                                         _%e180195181114%_
                                         _%hd180196181117%_
                                         _%tl180197181119%_
                                         _%e180198181122%_
                                         _%hd180199181125%_
                                         _%tl180200181127%_))
                                    (_%__match186672186673%_
                                     _%e180174181058%_
                                     _%hd180175181061%_
                                     _%tl180176181063%_
                                     _%e180177181066%_
                                     _%hd180178181069%_
                                     _%tl180179181071%_
                                     _%e180180181074%_
                                     _%hd180181181077%_
                                     _%tl180182181079%_
                                     _%e180183181082%_
                                     _%hd180184181085%_
                                     _%tl180185181087%_
                                     _%e180186181090%_
                                     _%hd180187181093%_
                                     _%tl180188181095%_
                                     _%e180189181098%_
                                     _%hd180190181101%_
                                     _%tl180191181103%_
                                     _%e180192181106%_
                                     _%hd180193181109%_
                                     _%tl180194181111%_
                                     _%e180195181114%_
                                     _%hd180196181117%_
                                     _%tl180197181119%_))))
                            (_%__match186672186673%_
                             _%e180174181058%_
                             _%hd180175181061%_
                             _%tl180176181063%_
                             _%e180177181066%_
                             _%hd180178181069%_
                             _%tl180179181071%_
                             _%e180180181074%_
                             _%hd180181181077%_
                             _%tl180182181079%_
                             _%e180183181082%_
                             _%hd180184181085%_
                             _%tl180185181087%_
                             _%e180186181090%_
                             _%hd180187181093%_
                             _%tl180188181095%_
                             _%e180189181098%_
                             _%hd180190181101%_
                             _%tl180191181103%_
                             _%e180192181106%_
                             _%hd180193181109%_
                             _%tl180194181111%_
                             _%e180195181114%_
                             _%hd180196181117%_
                             _%tl180197181119%_))))
                    (_%__match186610186611%_
                     _%e180174181058%_
                     _%hd180175181061%_
                     _%tl180176181063%_
                     _%e180177181066%_
                     _%hd180178181069%_
                     _%tl180179181071%_
                     _%e180180181074%_
                     _%hd180181181077%_
                     _%tl180182181079%_
                     _%e180183181082%_
                     _%hd180184181085%_
                     _%tl180185181087%_
                     _%e180186181090%_
                     _%hd180187181093%_
                     _%tl180188181095%_
                     _%e180189181098%_
                     _%hd180190181101%_
                     _%tl180191181103%_
                     _%e180192181106%_
                     _%hd180193181109%_
                     _%tl180194181111%_))
                (_%__kont186193186194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont186193186194%_))
                                            (_%__kont186193186194%_))
                                        (_%__kont186193186194%_))))
                                (_%__kont186193186194%_))))
                        (_%__kont186193186194%_))
                    (_%__kont186193186194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont186193186194%_))
                                                (_%__kont186193186194%_))
                                            (_%__kont186193186194%_))))
                                    (_%__kont186193186194%_))))
                            (_%__kont186193186194%_))))
                    (_%__kont186193186194%_))))))))))
