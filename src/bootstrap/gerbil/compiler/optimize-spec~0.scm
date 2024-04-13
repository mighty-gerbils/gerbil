(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712991656)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp175699 (list gxc#::identity::t))
            (__tmp175698 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp175699
         '()
         __tmp175698
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args174496%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args174496%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp175700
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
        (__make-promise __tmp175700)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx174488%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self174491%_
                (let ((__obj175691
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj175691))
               (__tmp175701
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174491%_ _%stx174488%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp175701
           gxc#current-compile-method
           _%self174491%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp175703 (list gxc#::false::t))
            (__tmp175702 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp175703
         '()
         __tmp175702
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args174485%_
        (apply make-instance gxc#::extract-receiver::t _%$args174485%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp175704
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
        (__make-promise __tmp175704)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx174477%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self174480%_
                (let ((__obj175693
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj175693))
               (__tmp175705
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self174480%_ _%stx174477%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp175705
           gxc#current-compile-method
           _%self174480%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp175707 (list gxc#::void::t))
            (__tmp175706 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp175707
         '(receiver methods slots)
         __tmp175706
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args174474%_
        (apply make-instance gxc#::collect-object-refs::t _%$args174474%_)))
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
      (let ((__tmp175708
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
        (__make-promise __tmp175708)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords174440%_
               _%receiver174435174441%_
               _%methods174436174443%_
               _%slots174437174445%_
               _%stx174447%_)
        (let* ((_%receiver174450%_
                (if (eq? _%receiver174435174441%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174435174441%_))
               (_%methods174452%_
                (if (eq? _%methods174436174443%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174436174443%_))
               (_%slots174454%_
                (if (eq? _%slots174437174445%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174437174445%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self174456%_
                  (let ((__obj175695
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
                       __obj175695
                       _%receiver174450%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175695
                       _%methods174452%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175695
                       _%slots174454%_
                       '3
                       '#f
                       '#f))
                    __obj175695))
                 (__tmp175709
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174456%_ _%stx174447%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp175709
             gxc#current-compile-method
             _%self174456%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords174463%_ . _%args174464%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords174463%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174463%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174463%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174463%_
                  'slots:
                  absent-value))
               _%args174464%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args174438174470%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args174438174470%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp175711 (list gxc#::basic-xform-expression::t))
            (__tmp175710 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp175711
         '(receiver klass methods slots)
         __tmp175710
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args174431%_
        (apply make-instance gxc#::subst-object-refs::t _%$args174431%_)))
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
      (let ((__tmp175712
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
        (__make-promise __tmp175712)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords174393%_
               _%receiver174387174394%_
               _%klass174388174396%_
               _%methods174389174398%_
               _%slots174390174400%_
               _%stx174402%_)
        (let* ((_%receiver174405%_
                (if (eq? _%receiver174387174394%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver174387174394%_))
               (_%klass174407%_
                (if (eq? _%klass174388174396%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass174388174396%_))
               (_%methods174409%_
                (if (eq? _%methods174389174398%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods174389174398%_))
               (_%slots174411%_
                (if (eq? _%slots174390174400%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots174390174400%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self174413%_
                  (let ((__obj175697
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
                       __obj175697
                       _%receiver174405%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175697
                       _%klass174407%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175697
                       _%methods174409%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj175697
                       _%slots174411%_
                       '4
                       '#f
                       '#f))
                    __obj175697))
                 (__tmp175713
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self174413%_ _%stx174402%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp175713
             gxc#current-compile-method
             _%self174413%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords174420%_ . _%args174421%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords174420%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174420%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174420%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174420%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174420%_
                  'slots:
                  absent-value))
               _%args174421%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args174391174427%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args174391174427%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self171502%_ _%stx171503%_)
        (letrec ((_%generate-method-bind171505%_
                  (lambda (_%$klass174379%_
                           _%$method-table174380%_
                           _%id174381%_
                           _%$id174382%_)
                    (let ((_%$tmp174384%_
                           (let ((__tmp175714
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp175714))))
                      (cons (cons _%$id174382%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp174384%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table174380%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id174381%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp174384%_ '()))
                    (cons (cons '%#ref (cons _%$tmp174384%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id174381%_
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
                 (_%generate-slot-bind171506%_
                  (lambda (_%$klass174373%_ _%id174374%_ _%$id174375%_)
                    (let ((_%$tmp174377%_
                           (let ((__tmp175715
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp175715))))
                      (cons (cons _%$id174375%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp174377%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass174373%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id174374%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp174377%_ '()))
                        (cons (cons '%#ref (cons _%$tmp174377%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id174374%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl171507%_
                  (lambda (_%$klass174367%_
                           _%$method-table174368%_
                           _%methods-bind174369%_
                           _%slots-bind174370%_
                           _%specializer-impl174371%_)
                    (let ((__tmp175716
                           (cons '%#lambda
                                 (cons (cons _%$klass174367%_
                                             (cons _%$method-table174368%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind174370%_
                                                            _%methods-bind174369%_))
                                                         (cons _%specializer-impl174371%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp175716 _%stx171503%_))))
                 (_%generate-specializer-def171508%_
                  (lambda (_%id174363%_
                           _%specializer-id174364%_
                           _%specializer-impl174365%_)
                    (let ((__tmp175717
                           (cons '%#begin
                                 (cons _%stx171503%_
                                       (cons (let ((__tmp175718
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id174364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl174365%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp175718
                                                _%stx171503%_))
                                             (cons (let ((__tmp175719
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id174363%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id174364%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp175719
                                                      _%stx171503%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp175717 _%stx171503%_)))))
          (let* ((_%__stx174585174586%_ _%stx171503%_)
                 (_%g171511171531%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx174585174586%_)))))
            (let ((_%__kont174587174588%_
                   (lambda (_%L171575%_ _%L171576%_)
                     (let ((_%method-calls171595%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs171596%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty171597%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?171599%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%method-calls171595%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (__hash-length
                                                   _%slot-refs171596%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L171575%_))
                             (let* ((_%__stx174499174500%_ _%L171575%_)
                                    (_%g171987172005%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx174499174500%_)))))
                               (let ((_%__kont174501174502%_
                                      (lambda (_%L172041%_
                                               _%L172042%_
                                               _%L172043%_)
                                        (let ((_%receiver172063%_
                                               (let ((_%$e172060%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L172041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e172060%_
                                                     _%$e172060%_
                                                     _%L172043%_))))
                                          (for-each
                                           (lambda (_%g172064172066%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver172063%_
                                              _%method-calls171595%_
                                              _%slot-refs171596%_
                                              _%g172064172066%_))
                                           _%L172041%_)
                                          (if (_%no-specializer?171599%_)
                                              _%stx171503%_
                                              (let* ((_%specializer-id172075%_
                                                      (let* ((_%id172069%_
                                                              (let ((__tmp175720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171576%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp175720 '"::specialize")))
                     (_%specializer-id172072%_
                      (let ((__tmp175721
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171503%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172069%_ __tmp175721))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172072%_))
                _%specializer-id172072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172077%_
                                                      (let ((__tmp175722
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp175722)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172079%_
                                                      (let ((__tmp175723
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp175723)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171595%_)))
                                                     (_%$methods172085%_
                                                      (map (lambda (_%id172083%_)
                                                             (let ((__tmp175724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172083%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175724)))
                   _%methods172081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172094%_
                                                      (for-each
                                                       (lambda (_%g172086172089%_
                                                                _%g172087172091%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171595%_
                                                            _%g172086172089%_
                                                            _%g172087172091%_)))
                                                       _%methods172081%_
                                                       _%$methods172085%_))
                                                     (_%methods-bind172104%_
                                                      (map (lambda (_%g172096172099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172097172101%_)
                     (_%generate-method-bind171505%_
                      _%$klass172077%_
                      _%$method-table172079%_
                      _%g172096172099%_
                      _%g172097172101%_))
                   _%methods172081%_
                   _%$methods172085%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172106%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171596%_)))
                                                     (_%$slots172110%_
                                                      (map (lambda (_%id172108%_)
                                                             (let ((__tmp175725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172108%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175725)))
                   _%slots172106%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172119%_
                                                      (for-each
                                                       (lambda (_%g172111172114%_
                                                                _%g172112172116%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171596%_
                                                            _%g172111172114%_
                                                            _%g172112172116%_)))
                                                       _%slots172106%_
                                                       _%$slots172110%_))
                                                     (_%slots-bind172128%_
                                                      (map (lambda (_%g172120172123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172121172125%_)
                     (_%generate-slot-bind171506%_
                      _%$klass172077%_
                      _%g172120172123%_
                      _%g172121172125%_))
                   _%slots172106%_
                   _%$slots172110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body172134%_
                                                      (map (lambda (_%g172129172131%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver172063%_
                                                              _%$klass172077%_
                                                              _%method-calls171595%_
                                                              _%slot-refs171596%_
                                                              _%g172129172131%_))
                                                           _%L172041%_))
                                                     (_%specializer-impl172136%_
                                                      (let ((__tmp175726
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L172043%_ _%L172042%_)
                                 _%specializer-body172134%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp175726 _%stx171503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl172138%_
                                                      (_%generate-specializer-impl171507%_
                                                       _%$klass172077%_
                                                       _%$method-table172079%_
                                                       _%methods-bind172104%_
                                                       _%slots-bind172128%_
                                                       _%specializer-impl172136%_)))
                                                (let ((__tmp175728
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171576%_)))
                                                      (__tmp175727
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172075%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp175728
                                                   '" => "
                                                   __tmp175727))
                                                (_%generate-specializer-def171508%_
                                                 _%L171576%_
                                                 _%specializer-id172075%_
                                                 _%specializer-impl172138%_))))))
                                     (_%__kont174503174504%_
                                      (lambda () _%stx171503%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx174499174500%_))
                                     (let ((_%e171992172017%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx174499174500%_))))
                                       (let ((_%tl171994172022%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e171992172017%_)))
                                             (_%hd171993172020%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e171992172017%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl171994172022%_))
                                             (let ((_%e171995172025%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl171994172022%_))))
                                               (let ((_%tl171997172030%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e171995172025%_)))
                                                     (_%hd171996172028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e171995172025%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd171996172028%_))
                                                     (let ((_%e171998172033%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd171996172028%_))))
                                                       (let ((_%tl172000172038%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e171998172033%_)))
                     (_%hd171999172036%_
                      (let () (declare (not safe)) (##car _%e171998172033%_))))
                 (_%__kont174501174502%_
                  _%tl171997172030%_
                  _%tl172000172038%_
                  _%hd171999172036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont174503174504%_))))
                                             (_%__kont174503174504%_))))
                                     (_%__kont174503174504%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L171575%_))
                                 (let* ((_%g172145172164%_
                                         (lambda (_%g172146172161%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g172146172161%_))))
                                        (_%g172144172462%_
                                         (lambda (_%g172146172167%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g172146172167%_))
                                               (let ((_%e172148172169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g172146172167%_))))
                                                 (let ((_%hd172149172172%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e172148172169%_)))
                                                       (_%tl172150172174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e172148172169%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl172150172174%_))
                                                       (let ((_g175729_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl172150172174%_ '0))))
                 (begin
                   (let ((_g175730_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g175729_)
                                (##vector-length _g175729_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g175730_ 2)))
                         (error "Context expects 2 values" _g175730_)))
                   (let ((_%target172151172177%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g175729_ 0)))
                         (_%tl172153172179%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g175729_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl172153172179%_))
                         (letrec ((_%loop172154172182%_
                                   (lambda (_%hd172152172185%_
                                            _%clause172158172187%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172152172185%_))
                                         (let ((_%e172155172190%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172152172185%_))))
                                           (let ((_%lp-hd172156172193%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172155172190%_)))
                                                 (_%lp-tl172157172195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172155172190%_))))
                                             (_%loop172154172182%_
                                              _%lp-tl172157172195%_
                                              (cons _%lp-hd172156172193%_
                                                    _%clause172158172187%_))))
                                         (let ((_%clause172159172198%_
                                                (reverse _%clause172158172187%_)))
                                           ((lambda (_%L172201%_)
                                              (for-each
                                               (lambda (_%clause172215%_)
                                                 (let* ((_%__stx174525174526%_
                                                         _%clause172215%_)
                                                        (_%g172218172233%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx174525174526%_)))))
                                                   (let ((_%__kont174527174528%_
                                                          (lambda (_%L172261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L172262%_
                           _%L172263%_)
                    (let ((_%receiver172282%_
                           (let ((_%$e172279%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L172261%_))))
                             (if _%$e172279%_ _%$e172279%_ _%L172263%_))))
                      (for-each
                       (lambda (_%g172283172285%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver172282%_
                          _%method-calls171595%_
                          _%slot-refs171596%_
                          _%g172283172285%_))
                       _%L172261%_))))
                 (_%__kont174529174530%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx174525174526%_))
                                                         (let ((_%e172223172245%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx174525174526%_))))
                   (let ((_%tl172225172250%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e172223172245%_)))
                         (_%hd172224172248%_
                          (let ()
                            (declare (not safe))
                            (##car _%e172223172245%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd172224172248%_))
                         (let ((_%e172226172253%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd172224172248%_))))
                           (let ((_%tl172228172258%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e172226172253%_)))
                                 (_%hd172227172256%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e172226172253%_))))
                             (_%__kont174527174528%_
                              _%tl172225172250%_
                              _%tl172228172258%_
                              _%hd172227172256%_)))
                         (_%__kont174529174530%_))))
                 (_%__kont174529174530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp175731
                                                      (lambda (_%g172290172293%_
                                                               _%g172291172295%_)
                                                        (cons _%g172290172293%_
                                                              _%g172291172295%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175731
                                                  '()
                                                  _%L172201%_)))
                                              (if (_%no-specializer?171599%_)
                                                  _%stx171503%_
                                                  (let* ((_%specializer-id172304%_
                                                          (let* ((_%id172298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp175732
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171576%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp175732 '"::specialize")))
                         (_%specializer-id172301%_
                          (let ((__tmp175733
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171503%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172298%_
                             __tmp175733))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172301%_))
                    _%specializer-id172301%_))
                 (_%$klass172306%_
                  (let ((__tmp175734
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175734)))
                 (_%$method-table172308%_
                  (let ((__tmp175735
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175735)))
                 (_%methods172310%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171595%_)))
                 (_%$methods172314%_
                  (map (lambda (_%id172312%_)
                         (let ((__tmp175736 (gensym _%id172312%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175736)))
                       _%methods172310%_))
                 (_%_172323%_
                  (for-each
                   (lambda (_%g172315172318%_ _%g172316172320%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171595%_
                        _%g172315172318%_
                        _%g172316172320%_)))
                   _%methods172310%_
                   _%$methods172314%_))
                 (_%methods-bind172333%_
                  (map (lambda (_%g172325172328%_ _%g172326172330%_)
                         (_%generate-method-bind171505%_
                          _%$klass172306%_
                          _%$method-table172308%_
                          _%g172325172328%_
                          _%g172326172330%_))
                       _%methods172310%_
                       _%$methods172314%_))
                 (_%slots172335%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171596%_)))
                 (_%$slots172339%_
                  (map (lambda (_%id172337%_)
                         (let ((__tmp175737 (gensym _%id172337%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175737)))
                       _%slots172335%_))
                 (_%_172348%_
                  (for-each
                   (lambda (_%g172340172343%_ _%g172341172345%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171596%_
                        _%g172340172343%_
                        _%g172341172345%_)))
                   _%slots172335%_
                   _%$slots172339%_))
                 (_%slots-bind172357%_
                  (map (lambda (_%g172349172352%_ _%g172350172354%_)
                         (_%generate-slot-bind171506%_
                          _%$klass172306%_
                          _%g172349172352%_
                          _%g172350172354%_))
                       _%slots172335%_
                       _%$slots172339%_))
                 (_%specializer-clauses172455%_
                  (map (lambda (_%clause172359%_)
                         (let* ((_%__stx174545174546%_ _%clause172359%_)
                                (_%g172362172377%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx174545174546%_)))))
                           (let ((_%__kont174547174548%_
                                  (lambda (_%L172405%_ _%L172406%_ _%L172407%_)
                                    (let* ((_%receiver172436%_
                                            (let ((_%$e172433%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L172405%_))))
                                              (if _%$e172433%_
                                                  _%$e172433%_
                                                  _%L172407%_)))
                                           (_%body172442%_
                                            (map (lambda (_%g172437172439%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver172436%_
                                                    _%$klass172306%_
                                                    _%method-calls171595%_
                                                    _%slot-refs171596%_
                                                    _%g172437172439%_))
                                                 _%L172405%_)))
                                      (cons (cons _%L172407%_ _%L172406%_)
                                            _%body172442%_))))
                                 (_%__kont174549174550%_
                                  (lambda () _%clause172359%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx174545174546%_))
                                 (let ((_%e172367172389%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx174545174546%_))))
                                   (let ((_%tl172369172394%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e172367172389%_)))
                                         (_%hd172368172392%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e172367172389%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd172368172392%_))
                                         (let ((_%e172370172397%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd172368172392%_))))
                                           (let ((_%tl172372172402%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e172370172397%_)))
                                                 (_%hd172371172400%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e172370172397%_))))
                                             (_%__kont174547174548%_
                                              _%tl172369172394%_
                                              _%tl172372172402%_
                                              _%hd172371172400%_)))
                                         (_%__kont174549174550%_))))
                                 (_%__kont174549174550%_)))))
                       (let ((__tmp175738
                              (lambda (_%g172447172450%_ _%g172448172452%_)
                                (cons _%g172447172450%_ _%g172448172452%_))))
                         (declare (not safe))
                         (__foldr1 __tmp175738 '() _%L172201%_))))
                 (_%specializer-impl172457%_
                  (let ((__tmp175739
                         (cons '%#case-lambda _%specializer-clauses172455%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp175739 _%stx171503%_)))
                 (_%specializer-impl172459%_
                  (_%generate-specializer-impl171507%_
                   _%$klass172306%_
                   _%$method-table172308%_
                   _%methods-bind172333%_
                   _%slots-bind172357%_
                   _%specializer-impl172457%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171576%_)))
                                                          (__tmp175740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172304%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175741
                                                       '" => "
                                                       __tmp175740))
                                                    (_%generate-specializer-def171508%_
                                                     _%L171576%_
                                                     _%specializer-id172304%_
                                                     _%specializer-impl172459%_))))
                                            _%clause172159172198%_))))))
                           (_%loop172154172182%_ _%target172151172177%_ '()))
                         (_%g172145172164%_ _%g172146172167%_)))))
               (_%g172145172164%_ _%g172146172167%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g172145172164%_
                                                _%g172146172167%_)))))
                                   (_%g172144172462%_ _%L171575%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L171575%_))
                                     (let* ((_%g172466172496%_
                                             (lambda (_%g172467172493%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g172467172493%_))))
                                            (_%g172465173127%_
                                             (lambda (_%g172467172499%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g172467172499%_))
                                                   (let ((_%e172471172501%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g172467172499%_))))
                                                     (let ((_%hd172472172504%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e172471172501%_)))
                                                           (_%tl172473172506%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e172471172501%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl172473172506%_))
                                                           (let ((_%e172474172509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl172473172506%_))))
                     (let ((_%hd172475172512%_
                            (let ()
                              (declare (not safe))
                              (##car _%e172474172509%_)))
                           (_%tl172476172514%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e172474172509%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd172475172512%_))
                           (let ((_%e172477172517%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd172475172512%_))))
                             (let ((_%hd172478172520%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e172477172517%_)))
                                   (_%tl172479172522%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e172477172517%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd172478172520%_))
                                   (let ((_%e172480172525%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd172478172520%_))))
                                     (let ((_%hd172481172528%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e172480172525%_)))
                                           (_%tl172482172530%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e172480172525%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd172481172528%_))
                                           (let ((_%e172483172533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd172481172528%_))))
                                             (let ((_%hd172484172536%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e172483172533%_)))
                                                   (_%tl172485172538%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e172483172533%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl172485172538%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl172482172530%_))
                                                       (let ((_%e172486172541%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl172482172530%_))))
                 (let ((_%hd172487172544%_
                        (let ()
                          (declare (not safe))
                          (##car _%e172486172541%_)))
                       (_%tl172488172546%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e172486172541%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl172488172546%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl172479172522%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl172476172514%_))
                               (let ((_%e172489172549%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl172476172514%_))))
                                 (let ((_%hd172490172552%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e172489172549%_)))
                                       (_%tl172491172554%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e172489172549%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl172491172554%_))
                                       ((lambda (_%L172557%_
                                                 _%L172558%_
                                                 _%L172559%_)
                                          (let* ((_%g172583172601%_
                                                  (lambda (_%g172584172598%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g172584172598%_))))
                                                 (_%g172582172657%_
                                                  (lambda (_%g172584172604%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g172584172604%_))
                                                        (let ((_%e172588172606%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g172584172604%_))))
                  (let ((_%hd172589172609%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172588172606%_)))
                        (_%tl172590172611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172588172606%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl172590172611%_))
                        (let ((_%e172591172614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl172590172611%_))))
                          (let ((_%hd172592172617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e172591172614%_)))
                                (_%tl172593172619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e172591172614%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd172592172617%_))
                                (let ((_%e172594172622%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd172592172617%_))))
                                  (let ((_%hd172595172625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172594172622%_)))
                                        (_%tl172596172627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172594172622%_))))
                                    ((lambda (_%L172630%_
                                              _%L172631%_
                                              _%L172632%_)
                                       (let ((_%receiver172651%_
                                              (let ((_%$e172648%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L172630%_))))
                                                (if _%$e172648%_
                                                    _%$e172648%_
                                                    _%L172632%_))))
                                         (for-each
                                          (lambda (_%g172652172654%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver172651%_
                                             _%method-calls171595%_
                                             _%slot-refs171596%_
                                             _%g172652172654%_))
                                          _%L172630%_)))
                                     _%tl172593172619%_
                                     _%tl172596172627%_
                                     _%hd172595172625%_)))
                                (_%g172583172601%_ _%g172584172604%_))))
                        (_%g172583172601%_ _%g172584172604%_))))
                (_%g172583172601%_ _%g172584172604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g172582172657%_ _%L172558%_))
                                          (let* ((_%g172660172679%_
                                                  (lambda (_%g172661172676%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g172661172676%_))))
                                                 (_%g172659172803%_
                                                  (lambda (_%g172661172682%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g172661172682%_))
                                                        (let ((_%e172663172684%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g172661172682%_))))
                  (let ((_%hd172664172687%_
                         (let ()
                           (declare (not safe))
                           (##car _%e172663172684%_)))
                        (_%tl172665172689%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e172663172684%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl172665172689%_))
                        (let ((_g175742_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl172665172689%_
                                  '0))))
                          (begin
                            (let ((_g175743_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g175742_)
                                         (##vector-length _g175742_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g175743_ 2)))
                                  (error "Context expects 2 values"
                                         _g175743_)))
                            (let ((_%target172666172692%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175742_ 0)))
                                  (_%tl172668172694%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g175742_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl172668172694%_))
                                  (letrec ((_%loop172669172697%_
                                            (lambda (_%hd172667172700%_
                                                     _%clause172673172702%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd172667172700%_))
                                                  (let ((_%e172670172705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd172667172700%_))))
                                                    (let ((_%lp-hd172671172708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e172670172705%_)))
                                                          (_%lp-tl172672172710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e172670172705%_))))
                                                      (_%loop172669172697%_
                                                       _%lp-tl172672172710%_
                                                       (cons _%lp-hd172671172708%_
                                                             _%clause172673172702%_))))
                                                  (let ((_%clause172674172713%_
                                                         (reverse _%clause172673172702%_)))
                                                    ((lambda (_%L172716%_)
                                                       (for-each
                                                        (lambda (_%clause172729%_)
                                                          (let* ((_%g172731172746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g172732172743%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172732172743%_))))
                         (_%g172730172793%_
                          (lambda (_%g172732172749%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172732172749%_))
                                (let ((_%e172736172751%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172732172749%_))))
                                  (let ((_%hd172737172754%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172736172751%_)))
                                        (_%tl172738172756%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172736172751%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd172737172754%_))
                                        (let ((_%e172739172759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd172737172754%_))))
                                          (let ((_%hd172740172762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172739172759%_)))
                                                (_%tl172741172764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172739172759%_))))
                                            ((lambda (_%L172767%_
                                                      _%L172768%_
                                                      _%L172769%_)
                                               (let ((_%receiver172787%_
                                                      (let ((_%$e172784%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L172767%_))))
                (if _%$e172784%_ _%$e172784%_ _%L172769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g172788172790%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver172787%_
                                                     _%method-calls171595%_
                                                     _%slot-refs171596%_
                                                     _%g172788172790%_))
                                                  _%L172767%_)))
                                             _%tl172738172756%_
                                             _%tl172741172764%_
                                             _%hd172740172762%_)))
                                        (_%g172731172746%_
                                         _%g172732172749%_))))
                                (_%g172731172746%_ _%g172732172749%_)))))
                    (_%g172730172793%_ _%clause172729%_)))
                (let ((__tmp175744
                       (lambda (_%g172795172798%_ _%g172796172800%_)
                         (cons _%g172795172798%_ _%g172796172800%_))))
                  (declare (not safe))
                  (__foldr1 __tmp175744 '() _%L172716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause172674172713%_))))))
                                    (_%loop172669172697%_
                                     _%target172666172692%_
                                     '()))
                                  (_%g172660172679%_ _%g172661172682%_)))))
                        (_%g172660172679%_ _%g172661172682%_))))
                (_%g172660172679%_ _%g172661172682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g172659172803%_ _%L172557%_))
                                          (if (_%no-specializer?171599%_)
                                              _%stx171503%_
                                              (let* ((_%specializer-id172812%_
                                                      (let* ((_%id172806%_
                                                              (let ((__tmp175745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L171576%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp175745 '"::specialize")))
                     (_%specializer-id172809%_
                      (let ((__tmp175746
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx171503%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id172806%_ __tmp175746))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id172809%_))
                _%specializer-id172809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass172814%_
                                                      (let ((__tmp175747
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp175747)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table172816%_
                                                      (let ((__tmp175748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp175748)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods172818%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls171595%_)))
                                                     (_%$methods172822%_
                                                      (map (lambda (_%id172820%_)
                                                             (let ((__tmp175749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172820%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175749)))
                   _%methods172818%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172831%_
                                                      (for-each
                                                       (lambda (_%g172823172826%_
                                                                _%g172824172828%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%method-calls171595%_
                                                            _%g172823172826%_
                                                            _%g172824172828%_)))
                                                       _%methods172818%_
                                                       _%$methods172822%_))
                                                     (_%methods-bind172841%_
                                                      (map (lambda (_%g172833172836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172834172838%_)
                     (_%generate-method-bind171505%_
                      _%$klass172814%_
                      _%$method-table172816%_
                      _%g172833172836%_
                      _%g172834172838%_))
                   _%methods172818%_
                   _%$methods172822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots172843%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs171596%_)))
                                                     (_%$slots172847%_
                                                      (map (lambda (_%id172845%_)
                                                             (let ((__tmp175750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id172845%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp175750)))
                   _%slots172843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_172856%_
                                                      (for-each
                                                       (lambda (_%g172848172851%_
                                                                _%g172849172853%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (__hash-put!
                                                            _%slot-refs171596%_
                                                            _%g172848172851%_
                                                            _%g172849172853%_)))
                                                       _%slots172843%_
                                                       _%$slots172847%_))
                                                     (_%slots-bind172865%_
                                                      (map (lambda (_%g172857172860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g172858172862%_)
                     (_%generate-slot-bind171506%_
                      _%$klass172814%_
                      _%g172857172860%_
                      _%g172858172862%_))
                   _%slots172843%_
                   _%$slots172847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr172957%_
                                                      (let* ((_%g172867172885%_
                                                              (lambda (_%g172868172882%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172868172882%_))))
                     (_%g172866172954%_
                      (lambda (_%g172868172888%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172868172888%_))
                            (let ((_%e172872172890%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172868172888%_))))
                              (let ((_%hd172873172893%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172872172890%_)))
                                    (_%tl172874172895%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172872172890%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl172874172895%_))
                                    (let ((_%e172875172898%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl172874172895%_))))
                                      (let ((_%hd172876172901%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172875172898%_)))
                                            (_%tl172877172903%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172875172898%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd172876172901%_))
                                            (let ((_%e172878172906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd172876172901%_))))
                                              (let ((_%hd172879172909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e172878172906%_)))
                                                    (_%tl172880172911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e172878172906%_))))
                                                ((lambda (_%L172914%_
                                                          _%L172915%_
                                                          _%L172916%_)
                                                   (let* ((_%receiver172945%_
                                                           (let ((_%$e172942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L172914%_))))
                     (if _%$e172942%_ _%$e172942%_ _%L172916%_)))
                  (_%body172951%_
                   (map (lambda (_%g172946172948%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver172945%_
                           _%$klass172814%_
                           _%method-calls171595%_
                           _%slot-refs171596%_
                           _%g172946172948%_))
                        _%L172914%_))
                  (__tmp175751
                   (cons '%#lambda
                         (cons (cons _%L172916%_ _%L172915%_)
                               _%body172951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp175751
                                                      _%L172558%_)))
                                                 _%tl172877172903%_
                                                 _%tl172880172911%_
                                                 _%hd172879172909%_)))
                                            (_%g172867172885%_
                                             _%g172868172888%_))))
                                    (_%g172867172885%_ _%g172868172888%_))))
                            (_%g172867172885%_ _%g172868172888%_)))))
                (_%g172866172954%_ _%L172558%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr173120%_
                                                      (let* ((_%g172959172978%_
                                                              (lambda (_%g172960172975%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g172960172975%_))))
                     (_%g172958173117%_
                      (lambda (_%g172960172981%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g172960172981%_))
                            (let ((_%e172962172983%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g172960172981%_))))
                              (let ((_%hd172963172986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e172962172983%_)))
                                    (_%tl172964172988%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e172962172983%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl172964172988%_))
                                    (let ((_g175752_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl172964172988%_
                                              '0))))
                                      (begin
                                        (let ((_g175753_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g175752_)
                                                     (##vector-length
                                                      _g175752_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g175753_ 2)))
                                              (error "Context expects 2 values"
                                                     _g175753_)))
                                        (let ((_%target172965172991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175752_ 0)))
                                              (_%tl172967172993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g175752_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl172967172993%_))
                                              (letrec ((_%loop172968172996%_
                                                        (lambda (_%hd172966172999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause172972173001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd172966172999%_))
                      (let ((_%e172969173004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd172966172999%_))))
                        (let ((_%lp-hd172970173007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e172969173004%_)))
                              (_%lp-tl172971173009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e172969173004%_))))
                          (_%loop172968172996%_
                           _%lp-tl172971173009%_
                           (cons _%lp-hd172970173007%_
                                 _%clause172972173001%_))))
                      (let ((_%clause172973173012%_
                             (reverse _%clause172972173001%_)))
                        ((lambda (_%L173015%_)
                           (let* ((_%clauses173115%_
                                   (map (lambda (_%clause173029%_)
                                          (let* ((_%__stx174565174566%_
                                                  _%clause173029%_)
                                                 (_%g173032173047%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx174565174566%_)))))
                                            (let ((_%__kont174567174568%_
                                                   (lambda (_%L173075%_
                                                            _%L173076%_
                                                            _%L173077%_)
                                                     (let* ((_%receiver173096%_
                                                             (let ((_%$e173093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L173075%_))))
                       (if _%$e173093%_ _%$e173093%_ _%L173077%_)))
                    (_%body173102%_
                     (map (lambda (_%g173097173099%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver173096%_
                             _%$klass172814%_
                             _%method-calls171595%_
                             _%slot-refs171596%_
                             _%g173097173099%_))
                          _%L173075%_)))
               (cons (cons _%L173077%_ _%L173076%_) _%body173102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174569174570%_
                                                   (lambda ()
                                                     _%clause173029%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx174565174566%_))
                                                  (let ((_%e173037173059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx174565174566%_))))
                                                    (let ((_%tl173039173064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e173037173059%_)))
                                                          (_%hd173038173062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e173037173059%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd173038173062%_))
                                                          (let ((_%e173040173067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd173038173062%_))))
                    (let ((_%tl173042173072%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e173040173067%_)))
                          (_%hd173041173070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e173040173067%_))))
                      (_%__kont174567174568%_
                       _%tl173039173064%_
                       _%tl173042173072%_
                       _%hd173041173070%_)))
                  (_%__kont174569174570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174569174570%_)))))
                                        (let ((__tmp175754
                                               (lambda (_%g173107173110%_
                                                        _%g173108173112%_)
                                                 (cons _%g173107173110%_
                                                       _%g173108173112%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp175754
                                           '()
                                           _%L173015%_))))
                                  (__tmp175755
                                   (cons '%#case-lambda _%clauses173115%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175755 _%L172557%_)))
                         _%clause172973173012%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop172968172996%_
                                                 _%target172965172991%_
                                                 '()))
                                              (_%g172959172978%_
                                               _%g172960172981%_)))))
                                    (_%g172959172978%_ _%g172960172981%_))))
                            (_%g172959172978%_ _%g172960172981%_)))))
                (_%g172958173117%_ _%L172557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173122%_
                                                      (let ((__tmp175756
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L172559%_ '())
                                             (cons _%specializer-lambda-expr172957%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr173120%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp175756 _%stx171503%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl173124%_
                                                      (_%generate-specializer-impl171507%_
                                                       _%$klass172814%_
                                                       _%$method-table172816%_
                                                       _%methods-bind172841%_
                                                       _%slots-bind172865%_
                                                       _%specializer-impl173122%_)))
                                                (let ((__tmp175758
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171576%_)))
                                                      (__tmp175757
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id172812%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp175758
                                                   '" => "
                                                   __tmp175757))
                                                (_%generate-specializer-def171508%_
                                                 _%L171576%_
                                                 _%specializer-id172812%_
                                                 _%specializer-impl173124%_))))
                                        _%hd172490172552%_
                                        _%hd172487172544%_
                                        _%hd172484172536%_)
                                       (_%g172466172496%_ _%g172467172499%_))))
                               (_%g172466172496%_ _%g172467172499%_))
                           (_%g172466172496%_ _%g172467172499%_))
                       (_%g172466172496%_ _%g172467172499%_))))
               (_%g172466172496%_ _%g172467172499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172466172496%_
                                                    _%g172467172499%_))))
                                           (_%g172466172496%_
                                            _%g172467172499%_))))
                                   (_%g172466172496%_ _%g172467172499%_))))
                           (_%g172466172496%_ _%g172467172499%_))))
                   (_%g172466172496%_ _%g172467172499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g172466172496%_
                                                    _%g172467172499%_)))))
                                       (_%g172465173127%_ _%L171575%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L171575%_))
                                         (let* ((_%g173131173184%_
                                                 (lambda (_%g173132173181%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173132173181%_))))
                                                (_%g173130174355%_
                                                 (lambda (_%g173132173187%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173132173187%_))
                                                       (let ((_%e173138173189%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173132173187%_))))
                 (let ((_%hd173139173192%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173138173189%_)))
                       (_%tl173140173194%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173138173189%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd173139173192%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd173139173192%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl173140173194%_))
                               (let ((_%e173141173197%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl173140173194%_))))
                                 (let ((_%hd173142173200%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173141173197%_)))
                                       (_%tl173143173202%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173141173197%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173142173200%_))
                                       (let ((_%e173144173205%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173142173200%_))))
                                         (let ((_%hd173145173208%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173144173205%_)))
                                               (_%tl173146173210%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173144173205%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173145173208%_))
                                               (let ((_%e173147173213%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173145173208%_))))
                                                 (let ((_%hd173148173216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173147173213%_)))
                                                       (_%tl173149173218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173147173213%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd173148173216%_))
                                                       (let ((_%e173150173221%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd173148173216%_))))
                 (let ((_%hd173151173224%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173150173221%_)))
                       (_%tl173152173226%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173150173221%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl173152173226%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl173149173218%_))
                           (let ((_%e173153173229%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl173149173218%_))))
                             (let ((_%hd173154173232%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173153173229%_)))
                                   (_%tl173155173234%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173153173229%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173154173232%_))
                                   (let ((_%e173156173237%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173154173232%_))))
                                     (let ((_%hd173157173240%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173156173237%_)))
                                           (_%tl173158173242%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173156173237%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd173157173240%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd173157173240%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl173158173242%_))
                                                   (let ((_%e173159173245%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl173158173242%_))))
                                                     (let ((_%hd173160173248%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173159173245%_)))
                                                           (_%tl173161173250%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173159173245%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd173160173248%_))
                                                           (let ((_%e173162173253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd173160173248%_))))
                     (let ((_%hd173163173256%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173162173253%_)))
                           (_%tl173164173258%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173162173253%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd173163173256%_))
                           (let ((_%e173165173261%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd173163173256%_))))
                             (let ((_%hd173166173264%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e173165173261%_)))
                                   (_%tl173167173266%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e173165173261%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd173166173264%_))
                                   (let ((_%e173168173269%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd173166173264%_))))
                                     (let ((_%hd173169173272%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173168173269%_)))
                                           (_%tl173170173274%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173168173269%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173170173274%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl173167173266%_))
                                               (let ((_%e173171173277%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl173167173266%_))))
                                                 (let ((_%hd173172173280%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173171173277%_)))
                                                       (_%tl173173173282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173171173277%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173173173282%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl173164173258%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl173161173250%_))
                       (let ((_%e173174173285%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173161173250%_))))
                         (let ((_%hd173175173288%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173174173285%_)))
                               (_%tl173176173290%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173174173285%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173176173290%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl173155173234%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl173146173210%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl173143173202%_))
                                           (let ((_%e173177173293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl173143173202%_))))
                                             (let ((_%hd173178173296%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e173177173293%_)))
                                                   (_%tl173179173298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e173177173293%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl173179173298%_))
                                                   ((lambda (_%L173301%_
                                                             _%L173302%_
                                                             _%L173303%_
                                                             _%L173304%_
                                                             _%L173305%_)
                                                      (let* ((_%g173345173407%_
                                                              (lambda (_%g173346173404%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g173346173404%_))))
                     (_%g173344174352%_
                      (lambda (_%g173346173410%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g173346173410%_))
                            (let ((_%e173352173412%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g173346173410%_))))
                              (let ((_%hd173353173415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173352173412%_)))
                                    (_%tl173354173417%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173352173412%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd173353173415%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd173353173415%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl173354173417%_))
                                            (let ((_%e173355173420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl173354173417%_))))
                                              (let ((_%hd173356173423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173355173420%_)))
                                                    (_%tl173357173425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173355173420%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173357173425%_))
                                                    (let ((_%e173358173428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173357173425%_))))
                                                      (let ((_%hd173359173431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173358173428%_)))
                    (_%tl173360173433%_
                     (let () (declare (not safe)) (##cdr _%e173358173428%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd173359173431%_))
                    (let ((_%e173361173436%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd173359173431%_))))
                      (let ((_%hd173362173439%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173361173436%_)))
                            (_%tl173363173441%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173361173436%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd173362173439%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd173362173439%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl173363173441%_))
                                    (let ((_%e173364173444%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl173363173441%_))))
                                      (let ((_%hd173365173447%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173364173444%_)))
                                            (_%tl173366173449%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173364173444%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd173365173447%_))
                                            (let ((_%e173367173452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd173365173447%_))))
                                              (let ((_%hd173368173455%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e173367173452%_)))
                                                    (_%tl173369173457%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e173367173452%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd173368173455%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd173368173455%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl173369173457%_))
                                                            (let ((_%e173370173460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl173369173457%_))))
                      (let ((_%hd173371173463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173370173460%_)))
                            (_%tl173372173465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173370173460%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173372173465%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl173366173449%_))
                                (let ((_%e173373173468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl173366173449%_))))
                                  (let ((_%hd173374173471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e173373173468%_)))
                                        (_%tl173375173473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e173373173468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd173374173471%_))
                                        (let ((_%e173376173476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd173374173471%_))))
                                          (let ((_%hd173377173479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e173376173476%_)))
                                                (_%tl173378173481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e173376173476%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd173377173479%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd173377173479%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl173378173481%_))
                                                        (let ((_%e173379173484%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl173378173481%_))))
                  (let ((_%hd173380173487%_
                         (let ()
                           (declare (not safe))
                           (##car _%e173379173484%_)))
                        (_%tl173381173489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e173379173484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl173381173489%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173375173473%_))
                            (let ((_%e173382173492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173375173473%_))))
                              (let ((_%hd173383173495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173382173492%_)))
                                    (_%tl173384173497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173382173492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd173383173495%_))
                                    (let ((_%e173385173500%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd173383173495%_))))
                                      (let ((_%hd173386173503%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e173385173500%_)))
                                            (_%tl173387173505%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e173385173500%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd173386173503%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd173386173503%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl173387173505%_))
                                                    (let ((_%e173388173508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl173387173505%_))))
                                                      (let ((_%hd173389173511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e173388173508%_)))
                    (_%tl173390173513%_
                     (let () (declare (not safe)) (##cdr _%e173388173508%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl173390173513%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl173384173497%_))
                        (if (let ((__tmp175759
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl173384173497%_))))
                              (declare (not safe))
                              (##fx>= __tmp175759 '1))
                            (let ((_g175760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173384173497%_
                                      '1))))
                              (begin
                                (let ((_g175761_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g175760_)
                                             (##vector-length _g175760_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g175761_ 2)))
                                      (error "Context expects 2 values"
                                             _g175761_)))
                                (let ((_%target173391173516%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175760_ 0)))
                                      (_%tl173393173518%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175760_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl173393173518%_))
                                      (let ((_%e173400173521%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl173393173518%_))))
                                        (let ((_%hd173401173524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e173400173521%_)))
                                              (_%tl173402173526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e173400173521%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl173402173526%_))
                                              (letrec ((_%loop173394173529%_
                                                        (lambda (_%hd173392173532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref173398173534%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd173392173532%_))
                      (let ((_%e173395173537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd173392173532%_))))
                        (let ((_%lp-hd173396173540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e173395173537%_)))
                              (_%lp-tl173397173542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e173395173537%_))))
                          (_%loop173394173529%_
                           _%lp-tl173397173542%_
                           (cons _%lp-hd173396173540%_
                                 _%kw-ref173398173534%_))))
                      (let ((_%kw-ref173399173545%_
                             (reverse _%kw-ref173398173534%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl173360173433%_))
                            ((lambda (_%L173548%_
                                      _%L173549%_
                                      _%L173550%_
                                      _%L173551%_
                                      _%L173552%_)
                               (let* ((_%kw-count173603%_
                                       (length (let ((__tmp175762
                                                      (lambda (_%g173595173598%_
                                                               _%g173596173600%_)
                                                        (cons _%g173595173598%_
                                                              _%g173596173600%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp175762
                                                  '()
                                                  _%L173549%_))))
                                      (_%self-index173605%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count173603%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L173303%_))
                                     (let* ((_%g173609173623%_
                                             (lambda (_%g173610173620%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g173610173620%_))))
                                            (_%g173608173746%_
                                             (lambda (_%g173610173626%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g173610173626%_))
                                                   (let ((_%e173613173628%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g173610173626%_))))
                                                     (let ((_%hd173614173631%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e173613173628%_)))
                                                           (_%tl173615173633%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e173613173628%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173615173633%_))
                                                           (let ((_%e173616173636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173615173633%_))))
                     (let ((_%hd173617173639%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173616173636%_)))
                           (_%tl173618173641%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173616173636%_))))
                       ((lambda (_%L173644%_ _%L173645%_)
                          (let* ((_%self173662%_
                                  (list-ref _%L173645%_ _%self-index173605%_))
                                 (_%receiver173667%_
                                  (let ((_%$e173664%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L173644%_))))
                                    (if _%$e173664%_
                                        _%$e173664%_
                                        _%self173662%_))))
                            (for-each
                             (lambda (_%g173669173671%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver173667%_
                                _%method-calls171595%_
                                _%slot-refs171596%_
                                _%g173669173671%_))
                             _%L173644%_)
                            (if (_%no-specializer?171599%_)
                                _%stx171503%_
                                (let* ((_%specializer-id173680%_
                                        (let* ((_%id173674%_
                                                (let ((__tmp175763
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L171576%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp175763
                                                   '"::specialize")))
                                               (_%specializer-id173677%_
                                                (let ((__tmp175764
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx171503%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id173674%_
                                                   __tmp175764))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id173677%_))
                                          _%specializer-id173677%_))
                                       (_%$klass173682%_
                                        (let ((__tmp175765
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp175765)))
                                       (_%$method-table173684%_
                                        (let ((__tmp175766
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp175766)))
                                       (_%methods173686%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls171595%_)))
                                       (_%$methods173690%_
                                        (map (lambda (_%id173688%_)
                                               (let ((__tmp175767
                                                      (gensym _%id173688%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp175767)))
                                             _%methods173686%_))
                                       (_%_173699%_
                                        (for-each
                                         (lambda (_%g173691173694%_
                                                  _%g173692173696%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%method-calls171595%_
                                              _%g173691173694%_
                                              _%g173692173696%_)))
                                         _%methods173686%_
                                         _%$methods173690%_))
                                       (_%methods-bind173709%_
                                        (map (lambda (_%g173701173704%_
                                                      _%g173702173706%_)
                                               (_%generate-method-bind171505%_
                                                _%$klass173682%_
                                                _%$method-table173684%_
                                                _%g173701173704%_
                                                _%g173702173706%_))
                                             _%methods173686%_
                                             _%$methods173690%_))
                                       (_%slots173711%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs171596%_)))
                                       (_%$slots173715%_
                                        (map (lambda (_%id173713%_)
                                               (let ((__tmp175768
                                                      (gensym _%id173713%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp175768)))
                                             _%slots173711%_))
                                       (_%_173724%_
                                        (for-each
                                         (lambda (_%g173716173719%_
                                                  _%g173717173721%_)
                                           (let ()
                                             (declare (not safe))
                                             (__hash-put!
                                              _%slot-refs171596%_
                                              _%g173716173719%_
                                              _%g173717173721%_)))
                                         _%slots173711%_
                                         _%$slots173715%_))
                                       (_%slots-bind173733%_
                                        (map (lambda (_%g173725173728%_
                                                      _%g173726173730%_)
                                               (_%generate-slot-bind171506%_
                                                _%$klass173682%_
                                                _%g173725173728%_
                                                _%g173726173730%_))
                                             _%slots173711%_
                                             _%$slots173715%_))
                                       (_%specializer-impl173741%_
                                        (let* ((_%specializer-body173739%_
                                                (map (lambda (_%g173734173736%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver173667%_
                                                        _%$klass173682%_
                                                        _%method-calls171595%_
                                                        _%slot-refs171596%_
                                                        _%g173734173736%_))
                                                     _%L173644%_))
                                               (__tmp175769
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L173305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L173304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp175770
                                   (cons '%#lambda
                                         (cons _%L173645%_
                                               _%specializer-body173739%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp175770 _%L173303%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L173302%_ '())))
                                      '()))
                          '())
                    (cons _%L173301%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp175769
                                           _%stx171503%_)))
                                       (_%specializer-impl173743%_
                                        (_%generate-specializer-impl171507%_
                                         _%$klass173682%_
                                         _%$method-table173684%_
                                         _%methods-bind173709%_
                                         _%slots-bind173733%_
                                         _%specializer-impl173741%_)))
                                  (let ((__tmp175772
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L171576%_)))
                                        (__tmp175771
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id173680%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp175772
                                     '" => "
                                     __tmp175771))
                                  (_%generate-specializer-def171508%_
                                   _%L171576%_
                                   _%specializer-id173680%_
                                   _%specializer-impl173743%_)))))
                        _%tl173618173641%_
                        _%hd173617173639%_)))
                   (_%g173609173623%_ _%g173610173626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173609173623%_
                                                    _%g173610173626%_)))))
                                       (_%g173608173746%_ _%L173303%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L173303%_))
                                         (let* ((_%g173750173780%_
                                                 (lambda (_%g173751173777%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g173751173777%_))))
                                                (_%g173749174348%_
                                                 (lambda (_%g173751173783%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g173751173783%_))
                                                       (let ((_%e173755173785%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g173751173783%_))))
                 (let ((_%hd173756173788%_
                        (let ()
                          (declare (not safe))
                          (##car _%e173755173785%_)))
                       (_%tl173757173790%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e173755173785%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl173757173790%_))
                       (let ((_%e173758173793%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl173757173790%_))))
                         (let ((_%hd173759173796%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e173758173793%_)))
                               (_%tl173760173798%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e173758173793%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd173759173796%_))
                               (let ((_%e173761173801%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd173759173796%_))))
                                 (let ((_%hd173762173804%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e173761173801%_)))
                                       (_%tl173763173806%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e173761173801%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd173762173804%_))
                                       (let ((_%e173764173809%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd173762173804%_))))
                                         (let ((_%hd173765173812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e173764173809%_)))
                                               (_%tl173766173814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e173764173809%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd173765173812%_))
                                               (let ((_%e173767173817%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd173765173812%_))))
                                                 (let ((_%hd173768173820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e173767173817%_)))
                                                       (_%tl173769173822%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e173767173817%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl173769173822%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl173766173814%_))
                                                           (let ((_%e173770173825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl173766173814%_))))
                     (let ((_%hd173771173828%_
                            (let ()
                              (declare (not safe))
                              (##car _%e173770173825%_)))
                           (_%tl173772173830%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e173770173825%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl173772173830%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl173763173806%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl173760173798%_))
                                   (let ((_%e173773173833%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl173760173798%_))))
                                     (let ((_%hd173774173836%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e173773173833%_)))
                                           (_%tl173775173838%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e173773173833%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl173775173838%_))
                                           ((lambda (_%L173841%_
                                                     _%L173842%_
                                                     _%L173843%_)
                                              (let* ((_%g173867173881%_
                                                      (lambda (_%g173868173878%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173868173878%_))))
                                                     (_%g173866173928%_
                                                      (lambda (_%g173868173884%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173868173884%_))
                                                            (let ((_%e173871173886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173868173884%_))))
                      (let ((_%hd173872173889%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173871173886%_)))
                            (_%tl173873173891%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173871173886%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl173873173891%_))
                            (let ((_%e173874173894%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl173873173891%_))))
                              (let ((_%hd173875173897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e173874173894%_)))
                                    (_%tl173876173899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e173874173894%_))))
                                ((lambda (_%L173902%_ _%L173903%_)
                                   (let* ((_%self173916%_
                                           (list-ref
                                            _%L173903%_
                                            _%self-index173605%_))
                                          (_%receiver173921%_
                                           (let ((_%$e173918%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L173902%_))))
                                             (if _%$e173918%_
                                                 _%$e173918%_
                                                 _%self173916%_))))
                                     (for-each
                                      (lambda (_%g173923173925%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver173921%_
                                         _%method-calls171595%_
                                         _%slot-refs171596%_
                                         _%g173923173925%_))
                                      _%L173902%_)))
                                 _%tl173876173899%_
                                 _%hd173875173897%_)))
                            (_%g173867173881%_ _%g173868173884%_))))
                    (_%g173867173881%_ _%g173868173884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173866173928%_
                                                 _%L173842%_))
                                              (let* ((_%g173931173950%_
                                                      (lambda (_%g173932173947%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g173932173947%_))))
                                                     (_%g173930174061%_
                                                      (lambda (_%g173932173953%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g173932173953%_))
                                                            (let ((_%e173934173955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g173932173953%_))))
                      (let ((_%hd173935173958%_
                             (let ()
                               (declare (not safe))
                               (##car _%e173934173955%_)))
                            (_%tl173936173960%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e173934173955%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl173936173960%_))
                            (let ((_g175773_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl173936173960%_
                                      '0))))
                              (begin
                                (let ((_g175774_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g175773_)
                                             (##vector-length _g175773_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g175774_ 2)))
                                      (error "Context expects 2 values"
                                             _g175774_)))
                                (let ((_%target173937173963%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175773_ 0)))
                                      (_%tl173939173965%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g175773_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl173939173965%_))
                                      (letrec ((_%loop173940173968%_
                                                (lambda (_%hd173938173971%_
                                                         _%clause173944173973%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd173938173971%_))
                                                      (let ((_%e173941173976%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd173938173971%_))))
                (let ((_%lp-hd173942173979%_
                       (let () (declare (not safe)) (##car _%e173941173976%_)))
                      (_%lp-tl173943173981%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e173941173976%_))))
                  (_%loop173940173968%_
                   _%lp-tl173943173981%_
                   (cons _%lp-hd173942173979%_ _%clause173944173973%_))))
              (let ((_%clause173945173984%_ (reverse _%clause173944173973%_)))
                ((lambda (_%L173987%_)
                   (for-each
                    (lambda (_%clause174000%_)
                      (let* ((_%g174002174013%_
                              (lambda (_%g174003174010%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g174003174010%_))))
                             (_%g174001174051%_
                              (lambda (_%g174003174016%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g174003174016%_))
                                    (let ((_%e174006174018%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g174003174016%_))))
                                      (let ((_%hd174007174021%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e174006174018%_)))
                                            (_%tl174008174023%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e174006174018%_))))
                                        ((lambda (_%L174026%_ _%L174027%_)
                                           (let* ((_%self174039%_
                                                   (list-ref
                                                    _%L174027%_
                                                    _%self-index173605%_))
                                                  (_%receiver174044%_
                                                   (let ((_%$e174041%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L174026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e174041%_
                                                         _%$e174041%_
                                                         _%self174039%_))))
                                             (for-each
                                              (lambda (_%g174046174048%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver174044%_
                                                 _%method-calls171595%_
                                                 _%slot-refs171596%_
                                                 _%g174046174048%_))
                                              _%L174026%_)))
                                         _%tl174008174023%_
                                         _%hd174007174021%_)))
                                    (_%g174002174013%_ _%g174003174016%_)))))
                        (_%g174001174051%_ _%clause174000%_)))
                    (let ((__tmp175775
                           (lambda (_%g174053174056%_ _%g174054174058%_)
                             (cons _%g174053174056%_ _%g174054174058%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175775 '() _%L173987%_))))
                 _%clause173945173984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop173940173968%_
                                         _%target173937173963%_
                                         '()))
                                      (_%g173931173950%_ _%g173932173953%_)))))
                            (_%g173931173950%_ _%g173932173953%_))))
                    (_%g173931173950%_ _%g173932173953%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g173930174061%_
                                                 _%L173841%_))
                                              (if (_%no-specializer?171599%_)
                                                  _%stx171503%_
                                                  (let* ((_%specializer-id174070%_
                                                          (let* ((_%id174064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp175776
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L171576%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp175776 '"::specialize")))
                         (_%specializer-id174067%_
                          (let ((__tmp175777
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx171503%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id174064%_
                             __tmp175777))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id174067%_))
                    _%specializer-id174067%_))
                 (_%$klass174072%_
                  (let ((__tmp175778
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175778)))
                 (_%$method-table174074%_
                  (let ((__tmp175779
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp175779)))
                 (_%methods174076%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls171595%_)))
                 (_%$methods174080%_
                  (map (lambda (_%id174078%_)
                         (let ((__tmp175780 (gensym _%id174078%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175780)))
                       _%methods174076%_))
                 (_%_174089%_
                  (for-each
                   (lambda (_%g174081174084%_ _%g174082174086%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%method-calls171595%_
                        _%g174081174084%_
                        _%g174082174086%_)))
                   _%methods174076%_
                   _%$methods174080%_))
                 (_%methods-bind174099%_
                  (map (lambda (_%g174091174094%_ _%g174092174096%_)
                         (_%generate-method-bind171505%_
                          _%$klass174072%_
                          _%$method-table174074%_
                          _%g174091174094%_
                          _%g174092174096%_))
                       _%methods174076%_
                       _%$methods174080%_))
                 (_%slots174101%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs171596%_)))
                 (_%$slots174105%_
                  (map (lambda (_%id174103%_)
                         (let ((__tmp175781 (gensym _%id174103%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp175781)))
                       _%slots174101%_))
                 (_%_174114%_
                  (for-each
                   (lambda (_%g174106174109%_ _%g174107174111%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put!
                        _%slot-refs171596%_
                        _%g174106174109%_
                        _%g174107174111%_)))
                   _%slots174101%_
                   _%$slots174105%_))
                 (_%slots-bind174123%_
                  (map (lambda (_%g174115174118%_ _%g174116174120%_)
                         (_%generate-slot-bind171506%_
                          _%$klass174072%_
                          _%g174115174118%_
                          _%g174116174120%_))
                       _%slots174101%_
                       _%$slots174105%_))
                 (_%specializer-lambda-expr174201%_
                  (let* ((_%g174125174139%_
                          (lambda (_%g174126174136%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174126174136%_))))
                         (_%g174124174198%_
                          (lambda (_%g174126174142%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174126174142%_))
                                (let ((_%e174129174144%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174126174142%_))))
                                  (let ((_%hd174130174147%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174129174144%_)))
                                        (_%tl174131174149%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174129174144%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl174131174149%_))
                                        (let ((_%e174132174152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl174131174149%_))))
                                          (let ((_%hd174133174155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e174132174152%_)))
                                                (_%tl174134174157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e174132174152%_))))
                                            ((lambda (_%L174160%_ _%L174161%_)
                                               (let* ((_%self174184%_
                                                       (list-ref
                                                        _%L174161%_
                                                        _%self-index173605%_))
                                                      (_%receiver174189%_
                                                       (let ((_%$e174186%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L174160%_))))
                 (if _%$e174186%_ _%$e174186%_ _%self174184%_)))
              (_%body174195%_
               (map (lambda (_%g174190174192%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver174189%_
                       _%$klass174072%_
                       _%method-calls171595%_
                       _%slot-refs171596%_
                       _%g174190174192%_))
                    _%L174160%_))
              (__tmp175782 (cons '%#lambda (cons _%L174161%_ _%body174195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp175782
                                                  _%L173842%_)))
                                             _%tl174134174157%_
                                             _%hd174133174155%_)))
                                        (_%g174125174139%_
                                         _%g174126174142%_))))
                                (_%g174125174139%_ _%g174126174142%_)))))
                    (_%g174124174198%_ _%L173842%_)))
                 (_%specializer-case-lambda-expr174341%_
                  (let* ((_%g174203174222%_
                          (lambda (_%g174204174219%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g174204174219%_))))
                         (_%g174202174338%_
                          (lambda (_%g174204174225%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g174204174225%_))
                                (let ((_%e174206174227%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g174204174225%_))))
                                  (let ((_%hd174207174230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e174206174227%_)))
                                        (_%tl174208174232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e174206174227%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl174208174232%_))
                                        (let ((_g175783_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl174208174232%_
                                                  '0))))
                                          (begin
                                            (let ((_g175784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g175783_)
                                                         (##vector-length
                                                          _g175783_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g175784_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g175784_)))
                                            (let ((_%target174209174235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g175783_
                                                      0)))
                                                  (_%tl174211174237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g175783_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl174211174237%_))
                                                  (letrec ((_%loop174212174240%_
                                                            (lambda (_%hd174210174243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause174216174245%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd174210174243%_))
                          (let ((_%e174213174248%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd174210174243%_))))
                            (let ((_%lp-hd174214174251%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e174213174248%_)))
                                  (_%lp-tl174215174253%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e174213174248%_))))
                              (_%loop174212174240%_
                               _%lp-tl174215174253%_
                               (cons _%lp-hd174214174251%_
                                     _%clause174216174245%_))))
                          (let ((_%clause174217174256%_
                                 (reverse _%clause174216174245%_)))
                            ((lambda (_%L174259%_)
                               (let* ((_%clauses174336%_
                                       (map (lambda (_%clause174273%_)
                                              (let* ((_%g174275174286%_
                                                      (lambda (_%g174276174283%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g174276174283%_))))
                                                     (_%g174274174326%_
                                                      (lambda (_%g174276174289%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g174276174289%_))
                                                            (let ((_%e174279174291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g174276174289%_))))
                      (let ((_%hd174280174294%_
                             (let ()
                               (declare (not safe))
                               (##car _%e174279174291%_)))
                            (_%tl174281174296%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e174279174291%_))))
                        ((lambda (_%L174299%_ _%L174300%_)
                           (let* ((_%self174312%_
                                   (list-ref _%L174300%_ _%self-index173605%_))
                                  (_%receiver174317%_
                                   (let ((_%$e174314%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L174299%_))))
                                     (if _%$e174314%_
                                         _%$e174314%_
                                         _%self174312%_)))
                                  (_%body174323%_
                                   (map (lambda (_%g174318174320%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver174317%_
                                           _%$klass174072%_
                                           _%method-calls171595%_
                                           _%slot-refs171596%_
                                           _%g174318174320%_))
                                        _%L174299%_)))
                             (cons _%L174300%_ _%body174323%_)))
                         _%tl174281174296%_
                         _%hd174280174294%_)))
                    (_%g174275174286%_ _%g174276174289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g174274174326%_
                                                 _%clause174273%_)))
                                            (let ((__tmp175785
                                                   (lambda (_%g174328174331%_
                                                            _%g174329174333%_)
                                                     (cons _%g174328174331%_
                                                           _%g174329174333%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp175785
                                               '()
                                               _%L174259%_))))
                                      (__tmp175786
                                       (cons '%#case-lambda
                                             _%clauses174336%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp175786
                                  _%L173841%_)))
                             _%clause174217174256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop174212174240%_
                                                     _%target174209174235%_
                                                     '()))
                                                  (_%g174203174222%_
                                                   _%g174204174225%_)))))
                                        (_%g174203174222%_
                                         _%g174204174225%_))))
                                (_%g174203174222%_ _%g174204174225%_)))))
                    (_%g174202174338%_ _%L173841%_)))
                 (_%specializer-impl174343%_
                  (let ((__tmp175787
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L173305%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L173304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp175788
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L173843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr174201%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr174341%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp175788
                                                _%stx171503%_))
                                             '()))
                                 '())
                           (cons _%L173302%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L173301%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp175787 _%stx171503%_)))
                 (_%specializer-impl174345%_
                  (_%generate-specializer-impl171507%_
                   _%$klass174072%_
                   _%$method-table174074%_
                   _%methods-bind174099%_
                   _%slots-bind174123%_
                   _%specializer-impl174343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp175790
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L171576%_)))
                                                          (__tmp175789
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id174070%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp175790
                                                       '" => "
                                                       __tmp175789))
                                                    (_%generate-specializer-def171508%_
                                                     _%L171576%_
                                                     _%specializer-id174070%_
                                                     _%specializer-impl174345%_))))
                                            _%hd173774173836%_
                                            _%hd173771173828%_
                                            _%hd173768173820%_)
                                           (_%g173750173780%_
                                            _%g173751173783%_))))
                                   (_%g173750173780%_ _%g173751173783%_))
                               (_%g173750173780%_ _%g173751173783%_))
                           (_%g173750173780%_ _%g173751173783%_))))
                   (_%g173750173780%_ _%g173751173783%_))
               (_%g173750173780%_ _%g173751173783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173750173780%_
                                                _%g173751173783%_))))
                                       (_%g173750173780%_ _%g173751173783%_))))
                               (_%g173750173780%_ _%g173751173783%_))))
                       (_%g173750173780%_ _%g173751173783%_))))
               (_%g173750173780%_ _%g173751173783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173749174348%_ _%L173303%_))
                                         _%stx171503%_))))
                             _%hd173401173524%_
                             _%kw-ref173399173545%_
                             _%hd173389173511%_
                             _%hd173380173487%_
                             _%hd173371173463%_)
                            (_%g173345173407%_ _%g173346173410%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop173394173529%_
                                                 _%target173391173516%_
                                                 '()))
                                              (_%g173345173407%_
                                               _%g173346173410%_))))
                                      (_%g173345173407%_ _%g173346173410%_)))))
                            (_%g173345173407%_ _%g173346173410%_))
                        (_%g173345173407%_ _%g173346173410%_))
                    (_%g173345173407%_ _%g173346173410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173345173407%_
                                                     _%g173346173410%_))
                                                (_%g173345173407%_
                                                 _%g173346173410%_))
                                            (_%g173345173407%_
                                             _%g173346173410%_))))
                                    (_%g173345173407%_ _%g173346173410%_))))
                            (_%g173345173407%_ _%g173346173410%_))
                        (_%g173345173407%_ _%g173346173410%_))))
                (_%g173345173407%_ _%g173346173410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173345173407%_
                                                     _%g173346173410%_))
                                                (_%g173345173407%_
                                                 _%g173346173410%_))))
                                        (_%g173345173407%_
                                         _%g173346173410%_))))
                                (_%g173345173407%_ _%g173346173410%_))
                            (_%g173345173407%_ _%g173346173410%_))))
                    (_%g173345173407%_ _%g173346173410%_))
                (_%g173345173407%_ _%g173346173410%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173345173407%_
                                                     _%g173346173410%_))))
                                            (_%g173345173407%_
                                             _%g173346173410%_))))
                                    (_%g173345173407%_ _%g173346173410%_))
                                (_%g173345173407%_ _%g173346173410%_))
                            (_%g173345173407%_ _%g173346173410%_))))
                    (_%g173345173407%_ _%g173346173410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g173345173407%_
                                                     _%g173346173410%_))))
                                            (_%g173345173407%_
                                             _%g173346173410%_))
                                        (_%g173345173407%_ _%g173346173410%_))
                                    (_%g173345173407%_ _%g173346173410%_))))
                            (_%g173345173407%_ _%g173346173410%_)))))
                (_%g173344174352%_ _%L173302%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd173178173296%_
                                                    _%hd173175173288%_
                                                    _%hd173172173280%_
                                                    _%hd173169173272%_
                                                    _%hd173151173224%_)
                                                   (_%g173131173184%_
                                                    _%g173132173187%_))))
                                           (_%g173131173184%_
                                            _%g173132173187%_))
                                       (_%g173131173184%_ _%g173132173187%_))
                                   (_%g173131173184%_ _%g173132173187%_))
                               (_%g173131173184%_ _%g173132173187%_))))
                       (_%g173131173184%_ _%g173132173187%_))
                   (_%g173131173184%_ _%g173132173187%_))
               (_%g173131173184%_ _%g173132173187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173131173184%_
                                                _%g173132173187%_))
                                           (_%g173131173184%_
                                            _%g173132173187%_))))
                                   (_%g173131173184%_ _%g173132173187%_))))
                           (_%g173131173184%_ _%g173132173187%_))))
                   (_%g173131173184%_ _%g173132173187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g173131173184%_
                                                    _%g173132173187%_))
                                               (_%g173131173184%_
                                                _%g173132173187%_))
                                           (_%g173131173184%_
                                            _%g173132173187%_))))
                                   (_%g173131173184%_ _%g173132173187%_))))
                           (_%g173131173184%_ _%g173132173187%_))
                       (_%g173131173184%_ _%g173132173187%_))))
               (_%g173131173184%_ _%g173132173187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g173131173184%_
                                                _%g173132173187%_))))
                                       (_%g173131173184%_ _%g173132173187%_))))
                               (_%g173131173184%_ _%g173132173187%_))
                           (_%g173131173184%_ _%g173132173187%_))
                       (_%g173131173184%_ _%g173132173187%_))))
               (_%g173131173184%_ _%g173132173187%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g173130174355%_ _%L171575%_))
                                         _%stx171503%_))))))))
                  (_%__kont174589174590%_ (lambda () _%stx171503%_)))
              (let ((_%__match174618174619%_
                     (lambda (_%e171515171543%_
                              _%hd171516171546%_
                              _%tl171517171548%_
                              _%e171518171551%_
                              _%hd171519171554%_
                              _%tl171520171556%_
                              _%e171521171559%_
                              _%hd171522171562%_
                              _%tl171523171564%_
                              _%e171524171567%_
                              _%hd171525171570%_
                              _%tl171526171572%_)
                       (let ((_%L171575%_ _%hd171525171570%_)
                             (_%L171576%_ _%hd171522171562%_))
                         (if (let ((__tmp175791
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L171576%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp175791))
                             (_%__kont174587174588%_ _%L171575%_ _%L171576%_)
                             (_%__kont174589174590%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx174585174586%_))
                    (let ((_%e171515171543%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx174585174586%_))))
                      (let ((_%tl171517171548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171515171543%_)))
                            (_%hd171516171546%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171515171543%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171517171548%_))
                            (let ((_%e171518171551%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171517171548%_))))
                              (let ((_%tl171520171556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171518171551%_)))
                                    (_%hd171519171554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171518171551%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171519171554%_))
                                    (let ((_%e171521171559%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171519171554%_))))
                                      (let ((_%tl171523171564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171521171559%_)))
                                            (_%hd171522171562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171521171559%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171523171564%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171520171556%_))
                                                (let ((_%e171524171567%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171520171556%_))))
                                                  (let ((_%tl171526171572%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171524171567%_)))
                                                        (_%hd171525171570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171524171567%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171526171572%_))
                                                        (_%__match174618174619%_
                                                         _%e171515171543%_
                                                         _%hd171516171546%_
                                                         _%tl171517171548%_
                                                         _%e171518171551%_
                                                         _%hd171519171554%_
                                                         _%tl171520171556%_
                                                         _%e171521171559%_
                                                         _%hd171522171562%_
                                                         _%tl171523171564%_
                                                         _%e171524171567%_
                                                         _%hd171525171570%_
                                                         _%tl171526171572%_)
                                                        (_%__kont174589174590%_))))
                                                (_%__kont174589174590%_))
                                            (_%__kont174589174590%_))))
                                    (_%__kont174589174590%_))))
                            (_%__kont174589174590%_))))
                    (_%__kont174589174590%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self171355%_ _%stx171356%_)
        (let* ((_%__stx174621174622%_ _%stx171356%_)
               (_%g171359171392%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx174621174622%_)))))
          (let ((_%__kont174623174624%_ (lambda (_%L171482%_) _%L171482%_))
                (_%__kont174625174626%_
                 (lambda (_%L171421%_ _%L171422%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self171355%_ _%L171421%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx174621174622%_))
                (let ((_%e171362171442%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx174621174622%_))))
                  (let ((_%tl171364171447%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171362171442%_)))
                        (_%hd171363171445%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171362171442%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl171364171447%_))
                        (let ((_%e171365171450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl171364171447%_))))
                          (let ((_%tl171367171455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171365171450%_)))
                                (_%hd171366171453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171365171450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd171366171453%_))
                                (let ((_%e171368171458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd171366171453%_))))
                                  (let ((_%tl171370171463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171368171458%_)))
                                        (_%hd171369171461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171368171458%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd171369171461%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd171369171461%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171370171463%_))
                                                (let ((_%e171371171466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171370171463%_))))
                                                  (let ((_%tl171373171471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171371171466%_)))
                                                        (_%hd171372171469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171371171466%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171373171471%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171367171455%_))
                                                            (let ((_%e171374171474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171367171455%_))))
                      (let ((_%tl171376171479%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171374171474%_)))
                            (_%hd171375171477%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171374171474%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171376171479%_))
                            (_%__kont174623174624%_ _%hd171372171469%_)
                            (let ()
                              (declare (not safe))
                              (_%g171359171392%_)))))
                    (let () (declare (not safe)) (_%g171359171392%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl171367171455%_))
                    (let ((_%e171385171413%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171367171455%_))))
                      (let ((_%tl171387171418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171385171413%_)))
                            (_%hd171386171416%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171385171413%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171387171418%_))
                            (_%__kont174625174626%_
                             _%hd171386171416%_
                             _%hd171366171453%_)
                            (let ()
                              (declare (not safe))
                              (_%g171359171392%_)))))
                    (let () (declare (not safe)) (_%g171359171392%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171367171455%_))
                                                    (let ((_%e171385171413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171367171455%_))))
                                                      (let ((_%tl171387171418%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e171385171413%_)))
                    (_%hd171386171416%_
                     (let () (declare (not safe)) (##car _%e171385171413%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171387171418%_))
                    (_%__kont174625174626%_
                     _%hd171386171416%_
                     _%hd171366171453%_)
                    (let () (declare (not safe)) (_%g171359171392%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171359171392%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl171367171455%_))
                                                (let ((_%e171385171413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl171367171455%_))))
                                                  (let ((_%tl171387171418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e171385171413%_)))
                                                        (_%hd171386171416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e171385171413%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl171387171418%_))
                                                        (_%__kont174625174626%_
                                                         _%hd171386171416%_
                                                         _%hd171366171453%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g171359171392%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g171359171392%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171367171455%_))
                                            (let ((_%e171385171413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171367171455%_))))
                                              (let ((_%tl171387171418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171385171413%_)))
                                                    (_%hd171386171416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171385171413%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl171387171418%_))
                                                    (_%__kont174625174626%_
                                                     _%hd171386171416%_
                                                     _%hd171366171453%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g171359171392%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171359171392%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl171367171455%_))
                                    (let ((_%e171385171413%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl171367171455%_))))
                                      (let ((_%tl171387171418%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171385171413%_)))
                                            (_%hd171386171416%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171385171413%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl171387171418%_))
                                            (_%__kont174625174626%_
                                             _%hd171386171416%_
                                             _%hd171366171453%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g171359171392%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171359171392%_))))))
                        (let () (declare (not safe)) (_%g171359171392%_)))))
                (let () (declare (not safe)) (_%g171359171392%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self171271%_ _%stx171272%_)
        (let* ((_%g171274171295%_
                (lambda (_%g171275171292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171275171292%_))))
               (_%g171273171352%_
                (lambda (_%g171275171298%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171275171298%_))
                      (let ((_%e171279171300%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171275171298%_))))
                        (let ((_%hd171280171303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171279171300%_)))
                              (_%tl171281171305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171279171300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171281171305%_))
                              (let ((_%e171282171308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171281171305%_))))
                                (let ((_%hd171283171311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171282171308%_)))
                                      (_%tl171284171313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171282171308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171284171313%_))
                                      (let ((_%e171285171316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171284171313%_))))
                                        (let ((_%hd171286171319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171285171316%_)))
                                              (_%tl171287171321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171285171316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl171287171321%_))
                                              (let ((_%e171288171324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl171287171321%_))))
                                                (let ((_%hd171289171327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e171288171324%_)))
                                                      (_%tl171290171329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e171288171324%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171290171329%_))
                                                      ((lambda (_%L171332%_
                                                                _%L171333%_
                                                                _%L171334%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self171271%_
                                                            _%L171333%_)))
                                                       _%hd171289171327%_
                                                       _%hd171286171319%_
                                                       _%hd171283171311%_)
                                                      (_%g171274171295%_
                                                       _%g171275171298%_))))
                                              (_%g171274171295%_
                                               _%g171275171298%_))))
                                      (_%g171274171295%_ _%g171275171298%_))))
                              (_%g171274171295%_ _%g171275171298%_))))
                      (_%g171274171295%_ _%g171275171298%_)))))
          (_%g171273171352%_ _%stx171272%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self170232%_ _%stx170233%_)
        (let* ((_%__stx174687174688%_ _%stx170233%_)
               (_%g170241170463%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx174687174688%_)))))
          (let ((_%__kont174689174690%_
                 (lambda (_%L171220%_ _%L171221%_ _%L171222%_ _%L171223%_)
                   (let ((__tmp175793
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170232%_ 'methods)))
                         (__tmp175792
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171221%_))))
                     (declare (not safe))
                     (hash-put! __tmp175793 __tmp175792 '#t))
                   (for-each
                    (lambda (_%g171256171258%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170232%_ _%g171256171258%_)))
                    (let ((__tmp175794
                           (lambda (_%g171260171263%_ _%g171261171265%_)
                             (cons _%g171260171263%_ _%g171261171265%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175794 '() _%L171220%_)))))
                (_%__kont174693174694%_
                 (lambda (_%L171055%_
                          _%L171056%_
                          _%L171057%_
                          _%L171058%_
                          _%L171059%_)
                   (let ((__tmp175796
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170232%_ 'methods)))
                         (__tmp175795
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L171056%_))))
                     (declare (not safe))
                     (hash-put! __tmp175796 __tmp175795 '#t))
                   (for-each
                    (lambda (_%g171099171101%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self170232%_ _%g171099171101%_)))
                    (let ((__tmp175797
                           (lambda (_%g171103171106%_ _%g171104171108%_)
                             (cons _%g171103171106%_ _%g171104171108%_))))
                      (declare (not safe))
                      (__foldr1 __tmp175797 '() _%L171055%_)))))
                (_%__kont174697174698%_
                 (lambda (_%L170888%_ _%L170889%_ _%L170890%_)
                   (let ((__tmp175799
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170232%_ 'slots)))
                         (__tmp175798
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170888%_))))
                     (declare (not safe))
                     (hash-put! __tmp175799 __tmp175798 '#t))))
                (_%__kont174699174700%_
                 (lambda (_%L170765%_ _%L170766%_ _%L170767%_ _%L170768%_)
                   (let ((__tmp175801
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self170232%_ 'slots)))
                         (__tmp175800
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L170766%_))))
                     (declare (not safe))
                     (hash-put! __tmp175801 __tmp175800 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170232%_ _%L170765%_))))
                (_%__kont174701174702%_
                 (lambda (_%L170639%_ _%L170640%_)
                   (let* ((_%accessor170662%_
                           (let ((__tmp175802
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L170640%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175802)))
                          (_%klass170664%_
                           (let ((__tmp175803
                                  (##structure-ref
                                   _%accessor170662%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170233%_
                              __tmp175803)))
                          (_%slot170666%_
                           (##structure-ref
                            _%accessor170662%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor170662%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass170664%_
                                    _%slot170666%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass170664%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175805
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170232%_ 'slots)))
                               (__tmp175804
                                (##structure-ref
                                 _%accessor170662%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp175805 __tmp175804 '#t))))))
                (_%__kont174703174704%_
                 (lambda (_%L170539%_ _%L170540%_ _%L170541%_)
                   (let* ((_%mutator170568%_
                           (let ((__tmp175806
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L170541%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp175806)))
                          (_%klass170570%_
                           (let ((__tmp175807
                                  (##structure-ref
                                   _%mutator170568%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx170233%_
                              __tmp175807)))
                          (_%slot170572%_
                           (##structure-ref
                            _%mutator170568%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator170568%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass170570%_
                                    _%slot170572%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass170570%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp175808
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self170232%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp175808 _%slot170572%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self170232%_ _%L170539%_)))))
                (_%__kont174705174706%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self170232%_ _%stx170233%_)))))
            (let* ((_%__match175186175187%_
                    (lambda (_%e170435170475%_
                             _%hd170436170478%_
                             _%tl170437170480%_
                             _%e170438170483%_
                             _%hd170439170486%_
                             _%tl170440170488%_
                             _%e170441170491%_
                             _%hd170442170494%_
                             _%tl170443170496%_
                             _%e170444170499%_
                             _%hd170445170502%_
                             _%tl170446170504%_
                             _%e170447170507%_
                             _%hd170448170510%_
                             _%tl170449170512%_
                             _%e170450170515%_
                             _%hd170451170518%_
                             _%tl170452170520%_
                             _%e170453170523%_
                             _%hd170454170526%_
                             _%tl170455170528%_
                             _%e170456170531%_
                             _%hd170457170534%_
                             _%tl170458170536%_)
                      (let ((_%L170539%_ _%hd170457170534%_)
                            (_%L170540%_ _%hd170454170526%_)
                            (_%L170541%_ _%hd170445170502%_))
                        (if (and (let ((__tmp175809
                                        (let ((__tmp175810
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L170541%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175810))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175809
                                    'gxc#!mutator::t))
                                 (let ((__tmp175811
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170232%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170540%_
                                    __tmp175811)))
                            (_%__kont174703174704%_
                             _%L170539%_
                             _%L170540%_
                             _%L170541%_)
                            (_%__kont174705174706%_)))))
                   (_%__match175184175185%_
                    (lambda (_%e170435170475%_
                             _%hd170436170478%_
                             _%tl170437170480%_
                             _%e170438170483%_
                             _%hd170439170486%_
                             _%tl170440170488%_
                             _%e170441170491%_
                             _%hd170442170494%_
                             _%tl170443170496%_
                             _%e170444170499%_
                             _%hd170445170502%_
                             _%tl170446170504%_
                             _%e170447170507%_
                             _%hd170448170510%_
                             _%tl170449170512%_
                             _%e170450170515%_
                             _%hd170451170518%_
                             _%tl170452170520%_
                             _%e170453170523%_
                             _%hd170454170526%_
                             _%tl170455170528%_
                             _%e170456170531%_
                             _%hd170457170534%_
                             _%tl170458170536%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170458170536%_))
                          (_%__match175186175187%_
                           _%e170435170475%_
                           _%hd170436170478%_
                           _%tl170437170480%_
                           _%e170438170483%_
                           _%hd170439170486%_
                           _%tl170440170488%_
                           _%e170441170491%_
                           _%hd170442170494%_
                           _%tl170443170496%_
                           _%e170444170499%_
                           _%hd170445170502%_
                           _%tl170446170504%_
                           _%e170447170507%_
                           _%hd170448170510%_
                           _%tl170449170512%_
                           _%e170450170515%_
                           _%hd170451170518%_
                           _%tl170452170520%_
                           _%e170453170523%_
                           _%hd170454170526%_
                           _%tl170455170528%_
                           _%e170456170531%_
                           _%hd170457170534%_
                           _%tl170458170536%_)
                          (_%__kont174705174706%_))))
                   (_%__match175178175179%_
                    (lambda (_%e170435170475%_
                             _%hd170436170478%_
                             _%tl170437170480%_
                             _%e170438170483%_
                             _%hd170439170486%_
                             _%tl170440170488%_
                             _%e170441170491%_
                             _%hd170442170494%_
                             _%tl170443170496%_
                             _%e170444170499%_
                             _%hd170445170502%_
                             _%tl170446170504%_
                             _%e170447170507%_
                             _%hd170448170510%_
                             _%tl170449170512%_
                             _%e170450170515%_
                             _%hd170451170518%_
                             _%tl170452170520%_
                             _%e170453170523%_
                             _%hd170454170526%_
                             _%tl170455170528%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170449170512%_))
                          (let ((_%e170456170531%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170449170512%_))))
                            (let ((_%tl170458170536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170456170531%_)))
                                  (_%hd170457170534%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170456170531%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170458170536%_))
                                  (_%__match175186175187%_
                                   _%e170435170475%_
                                   _%hd170436170478%_
                                   _%tl170437170480%_
                                   _%e170438170483%_
                                   _%hd170439170486%_
                                   _%tl170440170488%_
                                   _%e170441170491%_
                                   _%hd170442170494%_
                                   _%tl170443170496%_
                                   _%e170444170499%_
                                   _%hd170445170502%_
                                   _%tl170446170504%_
                                   _%e170447170507%_
                                   _%hd170448170510%_
                                   _%tl170449170512%_
                                   _%e170450170515%_
                                   _%hd170451170518%_
                                   _%tl170452170520%_
                                   _%e170453170523%_
                                   _%hd170454170526%_
                                   _%tl170455170528%_
                                   _%e170456170531%_
                                   _%hd170457170534%_
                                   _%tl170458170536%_)
                                  (_%__kont174705174706%_))))
                          (_%__kont174705174706%_))))
                   (_%__match175124175125%_
                    (lambda (_%e170411170583%_
                             _%hd170412170586%_
                             _%tl170413170588%_
                             _%e170414170591%_
                             _%hd170415170594%_
                             _%tl170416170596%_
                             _%e170417170599%_
                             _%hd170418170602%_
                             _%tl170419170604%_
                             _%e170420170607%_
                             _%hd170421170610%_
                             _%tl170422170612%_
                             _%e170423170615%_
                             _%hd170424170618%_
                             _%tl170425170620%_
                             _%e170426170623%_
                             _%hd170427170626%_
                             _%tl170428170628%_
                             _%e170429170631%_
                             _%hd170430170634%_
                             _%tl170431170636%_)
                      (let ((_%L170639%_ _%hd170430170634%_)
                            (_%L170640%_ _%hd170421170610%_))
                        (if (and (let ((__tmp175812
                                        (let ((__tmp175813
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L170640%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp175813))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp175812
                                    'gxc#!accessor::t))
                                 (let ((__tmp175814
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170232%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170639%_
                                    __tmp175814)))
                            (_%__kont174701174702%_ _%L170639%_ _%L170640%_)
                            (_%__kont174705174706%_)))))
                   (_%__match175122175123%_
                    (lambda (_%e170411170583%_
                             _%hd170412170586%_
                             _%tl170413170588%_
                             _%e170414170591%_
                             _%hd170415170594%_
                             _%tl170416170596%_
                             _%e170417170599%_
                             _%hd170418170602%_
                             _%tl170419170604%_
                             _%e170420170607%_
                             _%hd170421170610%_
                             _%tl170422170612%_
                             _%e170423170615%_
                             _%hd170424170618%_
                             _%tl170425170620%_
                             _%e170426170623%_
                             _%hd170427170626%_
                             _%tl170428170628%_
                             _%e170429170631%_
                             _%hd170430170634%_
                             _%tl170431170636%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170425170620%_))
                          (_%__match175124175125%_
                           _%e170411170583%_
                           _%hd170412170586%_
                           _%tl170413170588%_
                           _%e170414170591%_
                           _%hd170415170594%_
                           _%tl170416170596%_
                           _%e170417170599%_
                           _%hd170418170602%_
                           _%tl170419170604%_
                           _%e170420170607%_
                           _%hd170421170610%_
                           _%tl170422170612%_
                           _%e170423170615%_
                           _%hd170424170618%_
                           _%tl170425170620%_
                           _%e170426170623%_
                           _%hd170427170626%_
                           _%tl170428170628%_
                           _%e170429170631%_
                           _%hd170430170634%_
                           _%tl170431170636%_)
                          (_%__match175178175179%_
                           _%e170411170583%_
                           _%hd170412170586%_
                           _%tl170413170588%_
                           _%e170414170591%_
                           _%hd170415170594%_
                           _%tl170416170596%_
                           _%e170417170599%_
                           _%hd170418170602%_
                           _%tl170419170604%_
                           _%e170420170607%_
                           _%hd170421170610%_
                           _%tl170422170612%_
                           _%e170423170615%_
                           _%hd170424170618%_
                           _%tl170425170620%_
                           _%e170426170623%_
                           _%hd170427170626%_
                           _%tl170428170628%_
                           _%e170429170631%_
                           _%hd170430170634%_
                           _%tl170431170636%_))))
                   (_%__match175068175069%_
                    (lambda (_%e170376170677%_
                             _%hd170377170680%_
                             _%tl170378170682%_
                             _%e170379170685%_
                             _%hd170380170688%_
                             _%tl170381170690%_
                             _%e170382170693%_
                             _%hd170383170696%_
                             _%tl170384170698%_
                             _%e170385170701%_
                             _%hd170386170704%_
                             _%tl170387170706%_
                             _%e170388170709%_
                             _%hd170389170712%_
                             _%tl170390170714%_
                             _%e170391170717%_
                             _%hd170392170720%_
                             _%tl170393170722%_
                             _%e170394170725%_
                             _%hd170395170728%_
                             _%tl170396170730%_
                             _%e170397170733%_
                             _%hd170398170736%_
                             _%tl170399170738%_
                             _%e170400170741%_
                             _%hd170401170744%_
                             _%tl170402170746%_
                             _%e170403170749%_
                             _%hd170404170752%_
                             _%tl170405170754%_
                             _%e170406170757%_
                             _%hd170407170760%_
                             _%tl170408170762%_)
                      (let ((_%L170765%_ _%hd170407170760%_)
                            (_%L170766%_ _%hd170404170752%_)
                            (_%L170767%_ _%hd170395170728%_)
                            (_%L170768%_ _%hd170386170704%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170768%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170768%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp175815
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170232%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170767%_
                                    __tmp175815)))
                            (_%__kont174699174700%_
                             _%L170765%_
                             _%L170766%_
                             _%L170767%_
                             _%L170768%_)
                            (_%__kont174705174706%_)))))
                   (_%__match175060175061%_
                    (lambda (_%e170376170677%_
                             _%hd170377170680%_
                             _%tl170378170682%_
                             _%e170379170685%_
                             _%hd170380170688%_
                             _%tl170381170690%_
                             _%e170382170693%_
                             _%hd170383170696%_
                             _%tl170384170698%_
                             _%e170385170701%_
                             _%hd170386170704%_
                             _%tl170387170706%_
                             _%e170388170709%_
                             _%hd170389170712%_
                             _%tl170390170714%_
                             _%e170391170717%_
                             _%hd170392170720%_
                             _%tl170393170722%_
                             _%e170394170725%_
                             _%hd170395170728%_
                             _%tl170396170730%_
                             _%e170397170733%_
                             _%hd170398170736%_
                             _%tl170399170738%_
                             _%e170400170741%_
                             _%hd170401170744%_
                             _%tl170402170746%_
                             _%e170403170749%_
                             _%hd170404170752%_
                             _%tl170405170754%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170399170738%_))
                          (let ((_%e170406170757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170399170738%_))))
                            (let ((_%tl170408170762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170406170757%_)))
                                  (_%hd170407170760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170406170757%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170408170762%_))
                                  (_%__match175068175069%_
                                   _%e170376170677%_
                                   _%hd170377170680%_
                                   _%tl170378170682%_
                                   _%e170379170685%_
                                   _%hd170380170688%_
                                   _%tl170381170690%_
                                   _%e170382170693%_
                                   _%hd170383170696%_
                                   _%tl170384170698%_
                                   _%e170385170701%_
                                   _%hd170386170704%_
                                   _%tl170387170706%_
                                   _%e170388170709%_
                                   _%hd170389170712%_
                                   _%tl170390170714%_
                                   _%e170391170717%_
                                   _%hd170392170720%_
                                   _%tl170393170722%_
                                   _%e170394170725%_
                                   _%hd170395170728%_
                                   _%tl170396170730%_
                                   _%e170397170733%_
                                   _%hd170398170736%_
                                   _%tl170399170738%_
                                   _%e170400170741%_
                                   _%hd170401170744%_
                                   _%tl170402170746%_
                                   _%e170403170749%_
                                   _%hd170404170752%_
                                   _%tl170405170754%_
                                   _%e170406170757%_
                                   _%hd170407170760%_
                                   _%tl170408170762%_)
                                  (_%__kont174705174706%_))))
                          (_%__match175184175185%_
                           _%e170376170677%_
                           _%hd170377170680%_
                           _%tl170378170682%_
                           _%e170379170685%_
                           _%hd170380170688%_
                           _%tl170381170690%_
                           _%e170382170693%_
                           _%hd170383170696%_
                           _%tl170384170698%_
                           _%e170385170701%_
                           _%hd170386170704%_
                           _%tl170387170706%_
                           _%e170388170709%_
                           _%hd170389170712%_
                           _%tl170390170714%_
                           _%e170391170717%_
                           _%hd170392170720%_
                           _%tl170393170722%_
                           _%e170394170725%_
                           _%hd170395170728%_
                           _%tl170396170730%_
                           _%e170397170733%_
                           _%hd170398170736%_
                           _%tl170399170738%_))))
                   (_%__match174982174983%_
                    (lambda (_%e170342170808%_
                             _%hd170343170811%_
                             _%tl170344170813%_
                             _%e170345170816%_
                             _%hd170346170819%_
                             _%tl170347170821%_
                             _%e170348170824%_
                             _%hd170349170827%_
                             _%tl170350170829%_
                             _%e170351170832%_
                             _%hd170352170835%_
                             _%tl170353170837%_
                             _%e170354170840%_
                             _%hd170355170843%_
                             _%tl170356170845%_
                             _%e170357170848%_
                             _%hd170358170851%_
                             _%tl170359170853%_
                             _%e170360170856%_
                             _%hd170361170859%_
                             _%tl170362170861%_
                             _%e170363170864%_
                             _%hd170364170867%_
                             _%tl170365170869%_
                             _%e170366170872%_
                             _%hd170367170875%_
                             _%tl170368170877%_
                             _%e170369170880%_
                             _%hd170370170883%_
                             _%tl170371170885%_)
                      (let ((_%L170888%_ _%hd170370170883%_)
                            (_%L170889%_ _%hd170361170859%_)
                            (_%L170890%_ _%hd170352170835%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170890%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L170890%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp175816
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self170232%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L170889%_
                                    __tmp175816)))
                            (_%__kont174697174698%_
                             _%L170888%_
                             _%L170889%_
                             _%L170890%_)
                            (_%__match175186175187%_
                             _%e170342170808%_
                             _%hd170343170811%_
                             _%tl170344170813%_
                             _%e170345170816%_
                             _%hd170346170819%_
                             _%tl170347170821%_
                             _%e170348170824%_
                             _%hd170349170827%_
                             _%tl170350170829%_
                             _%e170351170832%_
                             _%hd170352170835%_
                             _%tl170353170837%_
                             _%e170354170840%_
                             _%hd170355170843%_
                             _%tl170356170845%_
                             _%e170357170848%_
                             _%hd170358170851%_
                             _%tl170359170853%_
                             _%e170360170856%_
                             _%hd170361170859%_
                             _%tl170362170861%_
                             _%e170363170864%_
                             _%hd170364170867%_
                             _%tl170365170869%_)))))
                   (_%__match174980174981%_
                    (lambda (_%e170342170808%_
                             _%hd170343170811%_
                             _%tl170344170813%_
                             _%e170345170816%_
                             _%hd170346170819%_
                             _%tl170347170821%_
                             _%e170348170824%_
                             _%hd170349170827%_
                             _%tl170350170829%_
                             _%e170351170832%_
                             _%hd170352170835%_
                             _%tl170353170837%_
                             _%e170354170840%_
                             _%hd170355170843%_
                             _%tl170356170845%_
                             _%e170357170848%_
                             _%hd170358170851%_
                             _%tl170359170853%_
                             _%e170360170856%_
                             _%hd170361170859%_
                             _%tl170362170861%_
                             _%e170363170864%_
                             _%hd170364170867%_
                             _%tl170365170869%_
                             _%e170366170872%_
                             _%hd170367170875%_
                             _%tl170368170877%_
                             _%e170369170880%_
                             _%hd170370170883%_
                             _%tl170371170885%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170365170869%_))
                          (_%__match174982174983%_
                           _%e170342170808%_
                           _%hd170343170811%_
                           _%tl170344170813%_
                           _%e170345170816%_
                           _%hd170346170819%_
                           _%tl170347170821%_
                           _%e170348170824%_
                           _%hd170349170827%_
                           _%tl170350170829%_
                           _%e170351170832%_
                           _%hd170352170835%_
                           _%tl170353170837%_
                           _%e170354170840%_
                           _%hd170355170843%_
                           _%tl170356170845%_
                           _%e170357170848%_
                           _%hd170358170851%_
                           _%tl170359170853%_
                           _%e170360170856%_
                           _%hd170361170859%_
                           _%tl170362170861%_
                           _%e170363170864%_
                           _%hd170364170867%_
                           _%tl170365170869%_
                           _%e170366170872%_
                           _%hd170367170875%_
                           _%tl170368170877%_
                           _%e170369170880%_
                           _%hd170370170883%_
                           _%tl170371170885%_)
                          (_%__match175060175061%_
                           _%e170342170808%_
                           _%hd170343170811%_
                           _%tl170344170813%_
                           _%e170345170816%_
                           _%hd170346170819%_
                           _%tl170347170821%_
                           _%e170348170824%_
                           _%hd170349170827%_
                           _%tl170350170829%_
                           _%e170351170832%_
                           _%hd170352170835%_
                           _%tl170353170837%_
                           _%e170354170840%_
                           _%hd170355170843%_
                           _%tl170356170845%_
                           _%e170357170848%_
                           _%hd170358170851%_
                           _%tl170359170853%_
                           _%e170360170856%_
                           _%hd170361170859%_
                           _%tl170362170861%_
                           _%e170363170864%_
                           _%hd170364170867%_
                           _%tl170365170869%_
                           _%e170366170872%_
                           _%hd170367170875%_
                           _%tl170368170877%_
                           _%e170369170880%_
                           _%hd170370170883%_
                           _%tl170371170885%_))))
                   (_%__match174970174971%_
                    (lambda (_%e170342170808%_
                             _%hd170343170811%_
                             _%tl170344170813%_
                             _%e170345170816%_
                             _%hd170346170819%_
                             _%tl170347170821%_
                             _%e170348170824%_
                             _%hd170349170827%_
                             _%tl170350170829%_
                             _%e170351170832%_
                             _%hd170352170835%_
                             _%tl170353170837%_
                             _%e170354170840%_
                             _%hd170355170843%_
                             _%tl170356170845%_
                             _%e170357170848%_
                             _%hd170358170851%_
                             _%tl170359170853%_
                             _%e170360170856%_
                             _%hd170361170859%_
                             _%tl170362170861%_
                             _%e170363170864%_
                             _%hd170364170867%_
                             _%tl170365170869%_
                             _%e170366170872%_
                             _%hd170367170875%_
                             _%tl170368170877%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd170367170875%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170368170877%_))
                              (let ((_%e170369170880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170368170877%_))))
                                (let ((_%tl170371170885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170369170880%_)))
                                      (_%hd170370170883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170369170880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170371170885%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170365170869%_))
                                          (_%__match174982174983%_
                                           _%e170342170808%_
                                           _%hd170343170811%_
                                           _%tl170344170813%_
                                           _%e170345170816%_
                                           _%hd170346170819%_
                                           _%tl170347170821%_
                                           _%e170348170824%_
                                           _%hd170349170827%_
                                           _%tl170350170829%_
                                           _%e170351170832%_
                                           _%hd170352170835%_
                                           _%tl170353170837%_
                                           _%e170354170840%_
                                           _%hd170355170843%_
                                           _%tl170356170845%_
                                           _%e170357170848%_
                                           _%hd170358170851%_
                                           _%tl170359170853%_
                                           _%e170360170856%_
                                           _%hd170361170859%_
                                           _%tl170362170861%_
                                           _%e170363170864%_
                                           _%hd170364170867%_
                                           _%tl170365170869%_
                                           _%e170366170872%_
                                           _%hd170367170875%_
                                           _%tl170368170877%_
                                           _%e170369170880%_
                                           _%hd170370170883%_
                                           _%tl170371170885%_)
                                          (_%__match175060175061%_
                                           _%e170342170808%_
                                           _%hd170343170811%_
                                           _%tl170344170813%_
                                           _%e170345170816%_
                                           _%hd170346170819%_
                                           _%tl170347170821%_
                                           _%e170348170824%_
                                           _%hd170349170827%_
                                           _%tl170350170829%_
                                           _%e170351170832%_
                                           _%hd170352170835%_
                                           _%tl170353170837%_
                                           _%e170354170840%_
                                           _%hd170355170843%_
                                           _%tl170356170845%_
                                           _%e170357170848%_
                                           _%hd170358170851%_
                                           _%tl170359170853%_
                                           _%e170360170856%_
                                           _%hd170361170859%_
                                           _%tl170362170861%_
                                           _%e170363170864%_
                                           _%hd170364170867%_
                                           _%tl170365170869%_
                                           _%e170366170872%_
                                           _%hd170367170875%_
                                           _%tl170368170877%_
                                           _%e170369170880%_
                                           _%hd170370170883%_
                                           _%tl170371170885%_))
                                      (_%__match175184175185%_
                                       _%e170342170808%_
                                       _%hd170343170811%_
                                       _%tl170344170813%_
                                       _%e170345170816%_
                                       _%hd170346170819%_
                                       _%tl170347170821%_
                                       _%e170348170824%_
                                       _%hd170349170827%_
                                       _%tl170350170829%_
                                       _%e170351170832%_
                                       _%hd170352170835%_
                                       _%tl170353170837%_
                                       _%e170354170840%_
                                       _%hd170355170843%_
                                       _%tl170356170845%_
                                       _%e170357170848%_
                                       _%hd170358170851%_
                                       _%tl170359170853%_
                                       _%e170360170856%_
                                       _%hd170361170859%_
                                       _%tl170362170861%_
                                       _%e170363170864%_
                                       _%hd170364170867%_
                                       _%tl170365170869%_))))
                              (_%__match175184175185%_
                               _%e170342170808%_
                               _%hd170343170811%_
                               _%tl170344170813%_
                               _%e170345170816%_
                               _%hd170346170819%_
                               _%tl170347170821%_
                               _%e170348170824%_
                               _%hd170349170827%_
                               _%tl170350170829%_
                               _%e170351170832%_
                               _%hd170352170835%_
                               _%tl170353170837%_
                               _%e170354170840%_
                               _%hd170355170843%_
                               _%tl170356170845%_
                               _%e170357170848%_
                               _%hd170358170851%_
                               _%tl170359170853%_
                               _%e170360170856%_
                               _%hd170361170859%_
                               _%tl170362170861%_
                               _%e170363170864%_
                               _%hd170364170867%_
                               _%tl170365170869%_))
                          (_%__match175184175185%_
                           _%e170342170808%_
                           _%hd170343170811%_
                           _%tl170344170813%_
                           _%e170345170816%_
                           _%hd170346170819%_
                           _%tl170347170821%_
                           _%e170348170824%_
                           _%hd170349170827%_
                           _%tl170350170829%_
                           _%e170351170832%_
                           _%hd170352170835%_
                           _%tl170353170837%_
                           _%e170354170840%_
                           _%hd170355170843%_
                           _%tl170356170845%_
                           _%e170357170848%_
                           _%hd170358170851%_
                           _%tl170359170853%_
                           _%e170360170856%_
                           _%hd170361170859%_
                           _%tl170362170861%_
                           _%e170363170864%_
                           _%hd170364170867%_
                           _%tl170365170869%_))))
                   (_%__match174902174903%_
                    (lambda (_%e170291170927%_
                             _%hd170292170930%_
                             _%tl170293170932%_
                             _%e170294170935%_
                             _%hd170295170938%_
                             _%tl170296170940%_
                             _%e170297170943%_
                             _%hd170298170946%_
                             _%tl170299170948%_
                             _%e170300170951%_
                             _%hd170301170954%_
                             _%tl170302170956%_
                             _%e170303170959%_
                             _%hd170304170962%_
                             _%tl170305170964%_
                             _%e170306170967%_
                             _%hd170307170970%_
                             _%tl170308170972%_
                             _%e170309170975%_
                             _%hd170310170978%_
                             _%tl170311170980%_
                             _%e170312170983%_
                             _%hd170313170986%_
                             _%tl170314170988%_
                             _%e170315170991%_
                             _%hd170316170994%_
                             _%tl170317170996%_
                             _%e170318170999%_
                             _%hd170319171002%_
                             _%tl170320171004%_
                             _%e170321171007%_
                             _%hd170322171010%_
                             _%tl170323171012%_
                             _%e170324171015%_
                             _%hd170325171018%_
                             _%tl170326171020%_
                             _%e170327171023%_
                             _%hd170328171026%_
                             _%tl170329171028%_
                             _%__splice174695174696%_
                             _%target170330171031%_
                             _%tl170332171033%_)
                      (letrec ((_%loop170333171036%_
                                (lambda (_%hd170331171039%_
                                         _%args170337171041%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170331171039%_))
                                      (let ((_%e170334171044%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170331171039%_))))
                                        (let ((_%lp-tl170336171049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170334171044%_)))
                                              (_%lp-hd170335171047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170334171044%_))))
                                          (_%loop170333171036%_
                                           _%lp-tl170336171049%_
                                           (cons _%lp-hd170335171047%_
                                                 _%args170337171041%_))))
                                      (let ((_%args170338171052%_
                                             (reverse _%args170337171041%_)))
                                        (let ((_%L171055%_
                                               _%args170338171052%_)
                                              (_%L171056%_ _%hd170328171026%_)
                                              (_%L171057%_ _%hd170319171002%_)
                                              (_%L171058%_ _%hd170310170978%_)
                                              (_%L171059%_ _%hd170301170954%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171059%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171058%_
                                                      'call-method))
                                                   (let ((__tmp175817
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170232%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171057%_
                                                      __tmp175817)))
                                              (_%__kont174693174694%_
                                               _%L171055%_
                                               _%L171056%_
                                               _%L171057%_
                                               _%L171058%_
                                               _%L171059%_)
                                              (_%__kont174705174706%_))))))))
                        (_%loop170333171036%_ _%target170330171031%_ '()))))
                   (_%__match174860174861%_
                    (lambda (_%e170291170927%_
                             _%hd170292170930%_
                             _%tl170293170932%_
                             _%e170294170935%_
                             _%hd170295170938%_
                             _%tl170296170940%_
                             _%e170297170943%_
                             _%hd170298170946%_
                             _%tl170299170948%_
                             _%e170300170951%_
                             _%hd170301170954%_
                             _%tl170302170956%_
                             _%e170303170959%_
                             _%hd170304170962%_
                             _%tl170305170964%_
                             _%e170306170967%_
                             _%hd170307170970%_
                             _%tl170308170972%_
                             _%e170309170975%_
                             _%hd170310170978%_
                             _%tl170311170980%_
                             _%e170312170983%_
                             _%hd170313170986%_
                             _%tl170314170988%_
                             _%e170315170991%_
                             _%hd170316170994%_
                             _%tl170317170996%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd170316170994%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170317170996%_))
                              (let ((_%e170318170999%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170317170996%_))))
                                (let ((_%tl170320171004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170318170999%_)))
                                      (_%hd170319171002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170318170999%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170320171004%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170314170988%_))
                                          (let ((_%e170321171007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170314170988%_))))
                                            (let ((_%tl170323171012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170321171007%_)))
                                                  (_%hd170322171010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170321171007%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170322171010%_))
                                                  (let ((_%e170324171015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170322171010%_))))
                                                    (let ((_%tl170326171020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170324171015%_)))
                                                          (_%hd170325171018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170324171015%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd170325171018%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd170325171018%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170326171020%_))
                          (let ((_%e170327171023%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170326171020%_))))
                            (let ((_%tl170329171028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170327171023%_)))
                                  (_%hd170328171026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170327171023%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170329171028%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170323171012%_))
                                      (let ((_%__splice174695174696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170323171012%_
                                                '0))))
                                        (let ((_%tl170332171033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice174695174696%_
                                                  '1)))
                                              (_%target170330171031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice174695174696%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170332171033%_))
                                              (_%__match174902174903%_
                                               _%e170291170927%_
                                               _%hd170292170930%_
                                               _%tl170293170932%_
                                               _%e170294170935%_
                                               _%hd170295170938%_
                                               _%tl170296170940%_
                                               _%e170297170943%_
                                               _%hd170298170946%_
                                               _%tl170299170948%_
                                               _%e170300170951%_
                                               _%hd170301170954%_
                                               _%tl170302170956%_
                                               _%e170303170959%_
                                               _%hd170304170962%_
                                               _%tl170305170964%_
                                               _%e170306170967%_
                                               _%hd170307170970%_
                                               _%tl170308170972%_
                                               _%e170309170975%_
                                               _%hd170310170978%_
                                               _%tl170311170980%_
                                               _%e170312170983%_
                                               _%hd170313170986%_
                                               _%tl170314170988%_
                                               _%e170315170991%_
                                               _%hd170316170994%_
                                               _%tl170317170996%_
                                               _%e170318170999%_
                                               _%hd170319171002%_
                                               _%tl170320171004%_
                                               _%e170321171007%_
                                               _%hd170322171010%_
                                               _%tl170323171012%_
                                               _%e170324171015%_
                                               _%hd170325171018%_
                                               _%tl170326171020%_
                                               _%e170327171023%_
                                               _%hd170328171026%_
                                               _%tl170329171028%_
                                               _%__splice174695174696%_
                                               _%target170330171031%_
                                               _%tl170332171033%_)
                                              (_%__kont174705174706%_))))
                                      (_%__kont174705174706%_))
                                  (_%__kont174705174706%_))))
                          (_%__kont174705174706%_))
                      (_%__kont174705174706%_))
                  (_%__kont174705174706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174705174706%_))))
                                          (_%__match175184175185%_
                                           _%e170291170927%_
                                           _%hd170292170930%_
                                           _%tl170293170932%_
                                           _%e170294170935%_
                                           _%hd170295170938%_
                                           _%tl170296170940%_
                                           _%e170297170943%_
                                           _%hd170298170946%_
                                           _%tl170299170948%_
                                           _%e170300170951%_
                                           _%hd170301170954%_
                                           _%tl170302170956%_
                                           _%e170303170959%_
                                           _%hd170304170962%_
                                           _%tl170305170964%_
                                           _%e170306170967%_
                                           _%hd170307170970%_
                                           _%tl170308170972%_
                                           _%e170309170975%_
                                           _%hd170310170978%_
                                           _%tl170311170980%_
                                           _%e170312170983%_
                                           _%hd170313170986%_
                                           _%tl170314170988%_))
                                      (_%__match175184175185%_
                                       _%e170291170927%_
                                       _%hd170292170930%_
                                       _%tl170293170932%_
                                       _%e170294170935%_
                                       _%hd170295170938%_
                                       _%tl170296170940%_
                                       _%e170297170943%_
                                       _%hd170298170946%_
                                       _%tl170299170948%_
                                       _%e170300170951%_
                                       _%hd170301170954%_
                                       _%tl170302170956%_
                                       _%e170303170959%_
                                       _%hd170304170962%_
                                       _%tl170305170964%_
                                       _%e170306170967%_
                                       _%hd170307170970%_
                                       _%tl170308170972%_
                                       _%e170309170975%_
                                       _%hd170310170978%_
                                       _%tl170311170980%_
                                       _%e170312170983%_
                                       _%hd170313170986%_
                                       _%tl170314170988%_))))
                              (_%__match175184175185%_
                               _%e170291170927%_
                               _%hd170292170930%_
                               _%tl170293170932%_
                               _%e170294170935%_
                               _%hd170295170938%_
                               _%tl170296170940%_
                               _%e170297170943%_
                               _%hd170298170946%_
                               _%tl170299170948%_
                               _%e170300170951%_
                               _%hd170301170954%_
                               _%tl170302170956%_
                               _%e170303170959%_
                               _%hd170304170962%_
                               _%tl170305170964%_
                               _%e170306170967%_
                               _%hd170307170970%_
                               _%tl170308170972%_
                               _%e170309170975%_
                               _%hd170310170978%_
                               _%tl170311170980%_
                               _%e170312170983%_
                               _%hd170313170986%_
                               _%tl170314170988%_))
                          (_%__match174970174971%_
                           _%e170291170927%_
                           _%hd170292170930%_
                           _%tl170293170932%_
                           _%e170294170935%_
                           _%hd170295170938%_
                           _%tl170296170940%_
                           _%e170297170943%_
                           _%hd170298170946%_
                           _%tl170299170948%_
                           _%e170300170951%_
                           _%hd170301170954%_
                           _%tl170302170956%_
                           _%e170303170959%_
                           _%hd170304170962%_
                           _%tl170305170964%_
                           _%e170306170967%_
                           _%hd170307170970%_
                           _%tl170308170972%_
                           _%e170309170975%_
                           _%hd170310170978%_
                           _%tl170311170980%_
                           _%e170312170983%_
                           _%hd170313170986%_
                           _%tl170314170988%_
                           _%e170315170991%_
                           _%hd170316170994%_
                           _%tl170317170996%_))))
                   (_%__match174792174793%_
                    (lambda (_%e170247171116%_
                             _%hd170248171119%_
                             _%tl170249171121%_
                             _%e170250171124%_
                             _%hd170251171127%_
                             _%tl170252171129%_
                             _%e170253171132%_
                             _%hd170254171135%_
                             _%tl170255171137%_
                             _%e170256171140%_
                             _%hd170257171143%_
                             _%tl170258171145%_
                             _%e170259171148%_
                             _%hd170260171151%_
                             _%tl170261171153%_
                             _%e170262171156%_
                             _%hd170263171159%_
                             _%tl170264171161%_
                             _%e170265171164%_
                             _%hd170266171167%_
                             _%tl170267171169%_
                             _%e170268171172%_
                             _%hd170269171175%_
                             _%tl170270171177%_
                             _%e170271171180%_
                             _%hd170272171183%_
                             _%tl170273171185%_
                             _%e170274171188%_
                             _%hd170275171191%_
                             _%tl170276171193%_
                             _%__splice174691174692%_
                             _%target170277171196%_
                             _%tl170279171198%_)
                      (letrec ((_%loop170280171201%_
                                (lambda (_%hd170278171204%_
                                         _%args170284171206%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170278171204%_))
                                      (let ((_%e170281171209%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170278171204%_))))
                                        (let ((_%lp-tl170283171214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170281171209%_)))
                                              (_%lp-hd170282171212%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170281171209%_))))
                                          (_%loop170280171201%_
                                           _%lp-tl170283171214%_
                                           (cons _%lp-hd170282171212%_
                                                 _%args170284171206%_))))
                                      (let ((_%args170285171217%_
                                             (reverse _%args170284171206%_)))
                                        (let ((_%L171220%_
                                               _%args170285171217%_)
                                              (_%L171221%_ _%hd170275171191%_)
                                              (_%L171222%_ _%hd170266171167%_)
                                              (_%L171223%_ _%hd170257171143%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L171223%_
                                                      'call-method))
                                                   (let ((__tmp175818
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self170232%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L171222%_
                                                      __tmp175818)))
                                              (_%__kont174689174690%_
                                               _%L171220%_
                                               _%L171221%_
                                               _%L171222%_
                                               _%L171223%_)
                                              (_%__match174980174981%_
                                               _%e170247171116%_
                                               _%hd170248171119%_
                                               _%tl170249171121%_
                                               _%e170250171124%_
                                               _%hd170251171127%_
                                               _%tl170252171129%_
                                               _%e170253171132%_
                                               _%hd170254171135%_
                                               _%tl170255171137%_
                                               _%e170256171140%_
                                               _%hd170257171143%_
                                               _%tl170258171145%_
                                               _%e170259171148%_
                                               _%hd170260171151%_
                                               _%tl170261171153%_
                                               _%e170262171156%_
                                               _%hd170263171159%_
                                               _%tl170264171161%_
                                               _%e170265171164%_
                                               _%hd170266171167%_
                                               _%tl170267171169%_
                                               _%e170268171172%_
                                               _%hd170269171175%_
                                               _%tl170270171177%_
                                               _%e170271171180%_
                                               _%hd170272171183%_
                                               _%tl170273171185%_
                                               _%e170274171188%_
                                               _%hd170275171191%_
                                               _%tl170276171193%_))))))))
                        (_%loop170280171201%_ _%target170277171196%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx174687174688%_))
                  (let ((_%e170247171116%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx174687174688%_))))
                    (let ((_%tl170249171121%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170247171116%_)))
                          (_%hd170248171119%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170247171116%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170249171121%_))
                          (let ((_%e170250171124%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170249171121%_))))
                            (let ((_%tl170252171129%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170250171124%_)))
                                  (_%hd170251171127%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170250171124%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd170251171127%_))
                                  (let ((_%e170253171132%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd170251171127%_))))
                                    (let ((_%tl170255171137%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170253171132%_)))
                                          (_%hd170254171135%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170253171132%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd170254171135%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd170254171135%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl170255171137%_))
                                                  (let ((_%e170256171140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl170255171137%_))))
                                                    (let ((_%tl170258171145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170256171140%_)))
                                                          (_%hd170257171143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170256171140%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl170258171145%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170252171129%_))
                      (let ((_%e170259171148%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170252171129%_))))
                        (let ((_%tl170261171153%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170259171148%_)))
                              (_%hd170260171151%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170259171148%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd170260171151%_))
                              (let ((_%e170262171156%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd170260171151%_))))
                                (let ((_%tl170264171161%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170262171156%_)))
                                      (_%hd170263171159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170262171156%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170263171159%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd170263171159%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170264171161%_))
                                              (let ((_%e170265171164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170264171161%_))))
                                                (let ((_%tl170267171169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170265171164%_)))
                                                      (_%hd170266171167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170265171164%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170267171169%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170261171153%_))
                                                          (let ((_%e170268171172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170261171153%_))))
                    (let ((_%tl170270171177%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170268171172%_)))
                          (_%hd170269171175%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170268171172%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170269171175%_))
                          (let ((_%e170271171180%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170269171175%_))))
                            (let ((_%tl170273171185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170271171180%_)))
                                  (_%hd170272171183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170271171180%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd170272171183%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd170272171183%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl170273171185%_))
                                          (let ((_%e170274171188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl170273171185%_))))
                                            (let ((_%tl170276171193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170274171188%_)))
                                                  (_%hd170275171191%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170274171188%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170276171193%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170270171177%_))
                                                      (let ((_%__splice174691174692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl170270171177%_ '0))))
                (let ((_%tl170279171198%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice174691174692%_ '1)))
                      (_%target170277171196%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice174691174692%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170279171198%_))
                      (_%__match174792174793%_
                       _%e170247171116%_
                       _%hd170248171119%_
                       _%tl170249171121%_
                       _%e170250171124%_
                       _%hd170251171127%_
                       _%tl170252171129%_
                       _%e170253171132%_
                       _%hd170254171135%_
                       _%tl170255171137%_
                       _%e170256171140%_
                       _%hd170257171143%_
                       _%tl170258171145%_
                       _%e170259171148%_
                       _%hd170260171151%_
                       _%tl170261171153%_
                       _%e170262171156%_
                       _%hd170263171159%_
                       _%tl170264171161%_
                       _%e170265171164%_
                       _%hd170266171167%_
                       _%tl170267171169%_
                       _%e170268171172%_
                       _%hd170269171175%_
                       _%tl170270171177%_
                       _%e170271171180%_
                       _%hd170272171183%_
                       _%tl170273171185%_
                       _%e170274171188%_
                       _%hd170275171191%_
                       _%tl170276171193%_
                       _%__splice174691174692%_
                       _%target170277171196%_
                       _%tl170279171198%_)
                      (_%__match174980174981%_
                       _%e170247171116%_
                       _%hd170248171119%_
                       _%tl170249171121%_
                       _%e170250171124%_
                       _%hd170251171127%_
                       _%tl170252171129%_
                       _%e170253171132%_
                       _%hd170254171135%_
                       _%tl170255171137%_
                       _%e170256171140%_
                       _%hd170257171143%_
                       _%tl170258171145%_
                       _%e170259171148%_
                       _%hd170260171151%_
                       _%tl170261171153%_
                       _%e170262171156%_
                       _%hd170263171159%_
                       _%tl170264171161%_
                       _%e170265171164%_
                       _%hd170266171167%_
                       _%tl170267171169%_
                       _%e170268171172%_
                       _%hd170269171175%_
                       _%tl170270171177%_
                       _%e170271171180%_
                       _%hd170272171183%_
                       _%tl170273171185%_
                       _%e170274171188%_
                       _%hd170275171191%_
                       _%tl170276171193%_))))
              (_%__match174980174981%_
               _%e170247171116%_
               _%hd170248171119%_
               _%tl170249171121%_
               _%e170250171124%_
               _%hd170251171127%_
               _%tl170252171129%_
               _%e170253171132%_
               _%hd170254171135%_
               _%tl170255171137%_
               _%e170256171140%_
               _%hd170257171143%_
               _%tl170258171145%_
               _%e170259171148%_
               _%hd170260171151%_
               _%tl170261171153%_
               _%e170262171156%_
               _%hd170263171159%_
               _%tl170264171161%_
               _%e170265171164%_
               _%hd170266171167%_
               _%tl170267171169%_
               _%e170268171172%_
               _%hd170269171175%_
               _%tl170270171177%_
               _%e170271171180%_
               _%hd170272171183%_
               _%tl170273171185%_
               _%e170274171188%_
               _%hd170275171191%_
               _%tl170276171193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match175184175185%_
                                                   _%e170247171116%_
                                                   _%hd170248171119%_
                                                   _%tl170249171121%_
                                                   _%e170250171124%_
                                                   _%hd170251171127%_
                                                   _%tl170252171129%_
                                                   _%e170253171132%_
                                                   _%hd170254171135%_
                                                   _%tl170255171137%_
                                                   _%e170256171140%_
                                                   _%hd170257171143%_
                                                   _%tl170258171145%_
                                                   _%e170259171148%_
                                                   _%hd170260171151%_
                                                   _%tl170261171153%_
                                                   _%e170262171156%_
                                                   _%hd170263171159%_
                                                   _%tl170264171161%_
                                                   _%e170265171164%_
                                                   _%hd170266171167%_
                                                   _%tl170267171169%_
                                                   _%e170268171172%_
                                                   _%hd170269171175%_
                                                   _%tl170270171177%_))))
                                          (_%__match175184175185%_
                                           _%e170247171116%_
                                           _%hd170248171119%_
                                           _%tl170249171121%_
                                           _%e170250171124%_
                                           _%hd170251171127%_
                                           _%tl170252171129%_
                                           _%e170253171132%_
                                           _%hd170254171135%_
                                           _%tl170255171137%_
                                           _%e170256171140%_
                                           _%hd170257171143%_
                                           _%tl170258171145%_
                                           _%e170259171148%_
                                           _%hd170260171151%_
                                           _%tl170261171153%_
                                           _%e170262171156%_
                                           _%hd170263171159%_
                                           _%tl170264171161%_
                                           _%e170265171164%_
                                           _%hd170266171167%_
                                           _%tl170267171169%_
                                           _%e170268171172%_
                                           _%hd170269171175%_
                                           _%tl170270171177%_))
                                      (_%__match174860174861%_
                                       _%e170247171116%_
                                       _%hd170248171119%_
                                       _%tl170249171121%_
                                       _%e170250171124%_
                                       _%hd170251171127%_
                                       _%tl170252171129%_
                                       _%e170253171132%_
                                       _%hd170254171135%_
                                       _%tl170255171137%_
                                       _%e170256171140%_
                                       _%hd170257171143%_
                                       _%tl170258171145%_
                                       _%e170259171148%_
                                       _%hd170260171151%_
                                       _%tl170261171153%_
                                       _%e170262171156%_
                                       _%hd170263171159%_
                                       _%tl170264171161%_
                                       _%e170265171164%_
                                       _%hd170266171167%_
                                       _%tl170267171169%_
                                       _%e170268171172%_
                                       _%hd170269171175%_
                                       _%tl170270171177%_
                                       _%e170271171180%_
                                       _%hd170272171183%_
                                       _%tl170273171185%_))
                                  (_%__match175184175185%_
                                   _%e170247171116%_
                                   _%hd170248171119%_
                                   _%tl170249171121%_
                                   _%e170250171124%_
                                   _%hd170251171127%_
                                   _%tl170252171129%_
                                   _%e170253171132%_
                                   _%hd170254171135%_
                                   _%tl170255171137%_
                                   _%e170256171140%_
                                   _%hd170257171143%_
                                   _%tl170258171145%_
                                   _%e170259171148%_
                                   _%hd170260171151%_
                                   _%tl170261171153%_
                                   _%e170262171156%_
                                   _%hd170263171159%_
                                   _%tl170264171161%_
                                   _%e170265171164%_
                                   _%hd170266171167%_
                                   _%tl170267171169%_
                                   _%e170268171172%_
                                   _%hd170269171175%_
                                   _%tl170270171177%_))))
                          (_%__match175184175185%_
                           _%e170247171116%_
                           _%hd170248171119%_
                           _%tl170249171121%_
                           _%e170250171124%_
                           _%hd170251171127%_
                           _%tl170252171129%_
                           _%e170253171132%_
                           _%hd170254171135%_
                           _%tl170255171137%_
                           _%e170256171140%_
                           _%hd170257171143%_
                           _%tl170258171145%_
                           _%e170259171148%_
                           _%hd170260171151%_
                           _%tl170261171153%_
                           _%e170262171156%_
                           _%hd170263171159%_
                           _%tl170264171161%_
                           _%e170265171164%_
                           _%hd170266171167%_
                           _%tl170267171169%_
                           _%e170268171172%_
                           _%hd170269171175%_
                           _%tl170270171177%_))))
                  (_%__match175122175123%_
                   _%e170247171116%_
                   _%hd170248171119%_
                   _%tl170249171121%_
                   _%e170250171124%_
                   _%hd170251171127%_
                   _%tl170252171129%_
                   _%e170253171132%_
                   _%hd170254171135%_
                   _%tl170255171137%_
                   _%e170256171140%_
                   _%hd170257171143%_
                   _%tl170258171145%_
                   _%e170259171148%_
                   _%hd170260171151%_
                   _%tl170261171153%_
                   _%e170262171156%_
                   _%hd170263171159%_
                   _%tl170264171161%_
                   _%e170265171164%_
                   _%hd170266171167%_
                   _%tl170267171169%_))
              (_%__kont174705174706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont174705174706%_))
                                          (_%__kont174705174706%_))
                                      (_%__kont174705174706%_))))
                              (_%__kont174705174706%_))))
                      (_%__kont174705174706%_))
                  (_%__kont174705174706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont174705174706%_))
                                              (_%__kont174705174706%_))
                                          (_%__kont174705174706%_))))
                                  (_%__kont174705174706%_))))
                          (_%__kont174705174706%_))))
                  (_%__kont174705174706%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self169171%_ _%stx169172%_)
        (letrec ((_%force-e169174%_
                  (lambda (_%target170230%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target170230%_ '()))
                                      '()))))))
          (let* ((_%__stx175189175190%_ _%stx169172%_)
                 (_%g169182169404%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx175189175190%_)))))
            (let ((_%__kont175191175192%_
                   (lambda (_%L170176%_ _%L170177%_ _%L170178%_ _%L170179%_)
                     (let ((_%$method170224%_
                            (let ((__tmp175820
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169171%_ 'methods)))
                                  (__tmp175819
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170177%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175820 __tmp175819)))
                           (_%args170225%_
                            (map (lambda (_%g170212170214%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169171%_
                                      _%g170212170214%_)))
                                 (let ((__tmp175821
                                        (lambda (_%g170216170219%_
                                                 _%g170217170221%_)
                                          (cons _%g170216170219%_
                                                _%g170217170221%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175821 '() _%L170176%_)))))
                       (let ((__tmp175822
                              (cons '%#call
                                    (cons (_%force-e169174%_ _%$method170224%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169171%_
                                                               'receiver))
                                                            '()))
                                                _%args170225%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175822 _%stx169172%_)))))
                  (_%__kont175195175196%_
                   (lambda (_%L170008%_
                            _%L170009%_
                            _%L170010%_
                            _%L170011%_
                            _%L170012%_)
                     (let ((_%$method170064%_
                            (let ((__tmp175824
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169171%_ 'methods)))
                                  (__tmp175823
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L170009%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175824 __tmp175823)))
                           (_%args170065%_
                            (map (lambda (_%g170052170054%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self169171%_
                                      _%g170052170054%_)))
                                 (let ((__tmp175825
                                        (lambda (_%g170056170059%_
                                                 _%g170057170061%_)
                                          (cons _%g170056170059%_
                                                _%g170057170061%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp175825 '() _%L170008%_)))))
                       (let ((__tmp175826
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e169174%_
                                                 _%$method170064%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169171%_ 'receiver))
                          '()))
              _%args170065%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175826 _%stx169172%_)))))
                  (_%__kont175199175200%_
                   (lambda (_%L169839%_ _%L169840%_ _%L169841%_)
                     (let* ((_%$field169873%_
                             (let ((__tmp175828
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self169171%_ 'slots)))
                                   (__tmp175827
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L169839%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp175828 __tmp175827)))
                            (__tmp175829
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self169171%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field169873%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self169171%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp175829 _%stx169172%_))))
                  (_%__kont175201175202%_
                   (lambda (_%L169713%_ _%L169714%_ _%L169715%_ _%L169716%_)
                     (let ((_%$field169751%_
                            (let ((__tmp175831
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self169171%_ 'slots)))
                                  (__tmp175830
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L169714%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp175831 __tmp175830)))
                           (_%expr169752%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self169171%_ _%L169713%_))))
                       (let ((__tmp175832
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self169171%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field169751%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self169171%_ 'receiver))
                          '()))
              (cons _%expr169752%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp175832 _%stx169172%_)))))
                  (_%__kont175203175204%_
                   (lambda (_%L169585%_ _%L169586%_)
                     (let* ((_%accessor169608%_
                             (let ((__tmp175833
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169586%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175833)))
                            (_%klass169610%_
                             (let ((__tmp175834
                                    (##structure-ref
                                     _%accessor169608%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169172%_
                                __tmp175834)))
                            (_%slot169612%_
                             (##structure-ref
                              _%accessor169608%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor169608%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169610%_
                                      _%slot169612%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169610%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx169172%_
                           (let* ((_%$field169618%_
                                   (let ((__tmp175835
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175835 _%slot169612%_)))
                                  (__tmp175836
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169171%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169171%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175836
                              _%stx169172%_))))))
                  (_%__kont175205175206%_
                   (lambda (_%L169480%_ _%L169481%_ _%L169482%_)
                     (let* ((_%mutator169510%_
                             (let ((__tmp175837
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169482%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp175837)))
                            (_%klass169512%_
                             (let ((__tmp175838
                                    (##structure-ref
                                     _%mutator169510%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx169172%_
                                __tmp175838)))
                            (_%slot169514%_
                             (##structure-ref
                              _%mutator169510%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr169516%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self169171%_ _%L169480%_))))
                       (if (if (##structure-ref
                                _%mutator169510%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass169512%_
                                      _%slot169514%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass169512%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp175839
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L169482%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L169481%_
                                                                '()))
                                                    (cons _%expr169516%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp175839 _%stx169172%_))
                           (let* ((_%$field169522%_
                                   (let ((__tmp175840
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp175840 _%slot169514%_)))
                                  (__tmp175841
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self169171%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field169522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self169171%_ 'receiver))
                               '()))
                   (cons _%expr169516%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp175841
                              _%stx169172%_))))))
                  (_%__kont175207175208%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self169171%_ _%stx169172%_)))))
              (let* ((_%__match175688175689%_
                      (lambda (_%e169376169416%_
                               _%hd169377169419%_
                               _%tl169378169421%_
                               _%e169379169424%_
                               _%hd169380169427%_
                               _%tl169381169429%_
                               _%e169382169432%_
                               _%hd169383169435%_
                               _%tl169384169437%_
                               _%e169385169440%_
                               _%hd169386169443%_
                               _%tl169387169445%_
                               _%e169388169448%_
                               _%hd169389169451%_
                               _%tl169390169453%_
                               _%e169391169456%_
                               _%hd169392169459%_
                               _%tl169393169461%_
                               _%e169394169464%_
                               _%hd169395169467%_
                               _%tl169396169469%_
                               _%e169397169472%_
                               _%hd169398169475%_
                               _%tl169399169477%_)
                        (let ((_%L169480%_ _%hd169398169475%_)
                              (_%L169481%_ _%hd169395169467%_)
                              (_%L169482%_ _%hd169386169443%_))
                          (if (and (let ((__tmp175842
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169481%_
                                      __tmp175842))
                                   (let ((__tmp175843
                                          (let ((__tmp175844
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169482%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175844))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175843
                                      'gxc#!mutator::t)))
                              (_%__kont175205175206%_
                               _%L169480%_
                               _%L169481%_
                               _%L169482%_)
                              (_%__kont175207175208%_)))))
                     (_%__match175686175687%_
                      (lambda (_%e169376169416%_
                               _%hd169377169419%_
                               _%tl169378169421%_
                               _%e169379169424%_
                               _%hd169380169427%_
                               _%tl169381169429%_
                               _%e169382169432%_
                               _%hd169383169435%_
                               _%tl169384169437%_
                               _%e169385169440%_
                               _%hd169386169443%_
                               _%tl169387169445%_
                               _%e169388169448%_
                               _%hd169389169451%_
                               _%tl169390169453%_
                               _%e169391169456%_
                               _%hd169392169459%_
                               _%tl169393169461%_
                               _%e169394169464%_
                               _%hd169395169467%_
                               _%tl169396169469%_
                               _%e169397169472%_
                               _%hd169398169475%_
                               _%tl169399169477%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169399169477%_))
                            (_%__match175688175689%_
                             _%e169376169416%_
                             _%hd169377169419%_
                             _%tl169378169421%_
                             _%e169379169424%_
                             _%hd169380169427%_
                             _%tl169381169429%_
                             _%e169382169432%_
                             _%hd169383169435%_
                             _%tl169384169437%_
                             _%e169385169440%_
                             _%hd169386169443%_
                             _%tl169387169445%_
                             _%e169388169448%_
                             _%hd169389169451%_
                             _%tl169390169453%_
                             _%e169391169456%_
                             _%hd169392169459%_
                             _%tl169393169461%_
                             _%e169394169464%_
                             _%hd169395169467%_
                             _%tl169396169469%_
                             _%e169397169472%_
                             _%hd169398169475%_
                             _%tl169399169477%_)
                            (_%__kont175207175208%_))))
                     (_%__match175680175681%_
                      (lambda (_%e169376169416%_
                               _%hd169377169419%_
                               _%tl169378169421%_
                               _%e169379169424%_
                               _%hd169380169427%_
                               _%tl169381169429%_
                               _%e169382169432%_
                               _%hd169383169435%_
                               _%tl169384169437%_
                               _%e169385169440%_
                               _%hd169386169443%_
                               _%tl169387169445%_
                               _%e169388169448%_
                               _%hd169389169451%_
                               _%tl169390169453%_
                               _%e169391169456%_
                               _%hd169392169459%_
                               _%tl169393169461%_
                               _%e169394169464%_
                               _%hd169395169467%_
                               _%tl169396169469%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169390169453%_))
                            (let ((_%e169397169472%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169390169453%_))))
                              (let ((_%tl169399169477%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169397169472%_)))
                                    (_%hd169398169475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169397169472%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169399169477%_))
                                    (_%__match175688175689%_
                                     _%e169376169416%_
                                     _%hd169377169419%_
                                     _%tl169378169421%_
                                     _%e169379169424%_
                                     _%hd169380169427%_
                                     _%tl169381169429%_
                                     _%e169382169432%_
                                     _%hd169383169435%_
                                     _%tl169384169437%_
                                     _%e169385169440%_
                                     _%hd169386169443%_
                                     _%tl169387169445%_
                                     _%e169388169448%_
                                     _%hd169389169451%_
                                     _%tl169390169453%_
                                     _%e169391169456%_
                                     _%hd169392169459%_
                                     _%tl169393169461%_
                                     _%e169394169464%_
                                     _%hd169395169467%_
                                     _%tl169396169469%_
                                     _%e169397169472%_
                                     _%hd169398169475%_
                                     _%tl169399169477%_)
                                    (_%__kont175207175208%_))))
                            (_%__kont175207175208%_))))
                     (_%__match175626175627%_
                      (lambda (_%e169352169529%_
                               _%hd169353169532%_
                               _%tl169354169534%_
                               _%e169355169537%_
                               _%hd169356169540%_
                               _%tl169357169542%_
                               _%e169358169545%_
                               _%hd169359169548%_
                               _%tl169360169550%_
                               _%e169361169553%_
                               _%hd169362169556%_
                               _%tl169363169558%_
                               _%e169364169561%_
                               _%hd169365169564%_
                               _%tl169366169566%_
                               _%e169367169569%_
                               _%hd169368169572%_
                               _%tl169369169574%_
                               _%e169370169577%_
                               _%hd169371169580%_
                               _%tl169372169582%_)
                        (let ((_%L169585%_ _%hd169371169580%_)
                              (_%L169586%_ _%hd169362169556%_))
                          (if (and (let ((__tmp175845
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169585%_
                                      __tmp175845))
                                   (let ((__tmp175846
                                          (let ((__tmp175847
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L169586%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp175847))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp175846
                                      'gxc#!accessor::t)))
                              (_%__kont175203175204%_ _%L169585%_ _%L169586%_)
                              (_%__kont175207175208%_)))))
                     (_%__match175624175625%_
                      (lambda (_%e169352169529%_
                               _%hd169353169532%_
                               _%tl169354169534%_
                               _%e169355169537%_
                               _%hd169356169540%_
                               _%tl169357169542%_
                               _%e169358169545%_
                               _%hd169359169548%_
                               _%tl169360169550%_
                               _%e169361169553%_
                               _%hd169362169556%_
                               _%tl169363169558%_
                               _%e169364169561%_
                               _%hd169365169564%_
                               _%tl169366169566%_
                               _%e169367169569%_
                               _%hd169368169572%_
                               _%tl169369169574%_
                               _%e169370169577%_
                               _%hd169371169580%_
                               _%tl169372169582%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169366169566%_))
                            (_%__match175626175627%_
                             _%e169352169529%_
                             _%hd169353169532%_
                             _%tl169354169534%_
                             _%e169355169537%_
                             _%hd169356169540%_
                             _%tl169357169542%_
                             _%e169358169545%_
                             _%hd169359169548%_
                             _%tl169360169550%_
                             _%e169361169553%_
                             _%hd169362169556%_
                             _%tl169363169558%_
                             _%e169364169561%_
                             _%hd169365169564%_
                             _%tl169366169566%_
                             _%e169367169569%_
                             _%hd169368169572%_
                             _%tl169369169574%_
                             _%e169370169577%_
                             _%hd169371169580%_
                             _%tl169372169582%_)
                            (_%__match175680175681%_
                             _%e169352169529%_
                             _%hd169353169532%_
                             _%tl169354169534%_
                             _%e169355169537%_
                             _%hd169356169540%_
                             _%tl169357169542%_
                             _%e169358169545%_
                             _%hd169359169548%_
                             _%tl169360169550%_
                             _%e169361169553%_
                             _%hd169362169556%_
                             _%tl169363169558%_
                             _%e169364169561%_
                             _%hd169365169564%_
                             _%tl169366169566%_
                             _%e169367169569%_
                             _%hd169368169572%_
                             _%tl169369169574%_
                             _%e169370169577%_
                             _%hd169371169580%_
                             _%tl169372169582%_))))
                     (_%__match175570175571%_
                      (lambda (_%e169317169625%_
                               _%hd169318169628%_
                               _%tl169319169630%_
                               _%e169320169633%_
                               _%hd169321169636%_
                               _%tl169322169638%_
                               _%e169323169641%_
                               _%hd169324169644%_
                               _%tl169325169646%_
                               _%e169326169649%_
                               _%hd169327169652%_
                               _%tl169328169654%_
                               _%e169329169657%_
                               _%hd169330169660%_
                               _%tl169331169662%_
                               _%e169332169665%_
                               _%hd169333169668%_
                               _%tl169334169670%_
                               _%e169335169673%_
                               _%hd169336169676%_
                               _%tl169337169678%_
                               _%e169338169681%_
                               _%hd169339169684%_
                               _%tl169340169686%_
                               _%e169341169689%_
                               _%hd169342169692%_
                               _%tl169343169694%_
                               _%e169344169697%_
                               _%hd169345169700%_
                               _%tl169346169702%_
                               _%e169347169705%_
                               _%hd169348169708%_
                               _%tl169349169710%_)
                        (let ((_%L169713%_ _%hd169348169708%_)
                              (_%L169714%_ _%hd169345169700%_)
                              (_%L169715%_ _%hd169336169676%_)
                              (_%L169716%_ _%hd169327169652%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169716%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169716%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp175848
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169715%_
                                      __tmp175848)))
                              (_%__kont175201175202%_
                               _%L169713%_
                               _%L169714%_
                               _%L169715%_
                               _%L169716%_)
                              (_%__kont175207175208%_)))))
                     (_%__match175562175563%_
                      (lambda (_%e169317169625%_
                               _%hd169318169628%_
                               _%tl169319169630%_
                               _%e169320169633%_
                               _%hd169321169636%_
                               _%tl169322169638%_
                               _%e169323169641%_
                               _%hd169324169644%_
                               _%tl169325169646%_
                               _%e169326169649%_
                               _%hd169327169652%_
                               _%tl169328169654%_
                               _%e169329169657%_
                               _%hd169330169660%_
                               _%tl169331169662%_
                               _%e169332169665%_
                               _%hd169333169668%_
                               _%tl169334169670%_
                               _%e169335169673%_
                               _%hd169336169676%_
                               _%tl169337169678%_
                               _%e169338169681%_
                               _%hd169339169684%_
                               _%tl169340169686%_
                               _%e169341169689%_
                               _%hd169342169692%_
                               _%tl169343169694%_
                               _%e169344169697%_
                               _%hd169345169700%_
                               _%tl169346169702%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169340169686%_))
                            (let ((_%e169347169705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169340169686%_))))
                              (let ((_%tl169349169710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169347169705%_)))
                                    (_%hd169348169708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169347169705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169349169710%_))
                                    (_%__match175570175571%_
                                     _%e169317169625%_
                                     _%hd169318169628%_
                                     _%tl169319169630%_
                                     _%e169320169633%_
                                     _%hd169321169636%_
                                     _%tl169322169638%_
                                     _%e169323169641%_
                                     _%hd169324169644%_
                                     _%tl169325169646%_
                                     _%e169326169649%_
                                     _%hd169327169652%_
                                     _%tl169328169654%_
                                     _%e169329169657%_
                                     _%hd169330169660%_
                                     _%tl169331169662%_
                                     _%e169332169665%_
                                     _%hd169333169668%_
                                     _%tl169334169670%_
                                     _%e169335169673%_
                                     _%hd169336169676%_
                                     _%tl169337169678%_
                                     _%e169338169681%_
                                     _%hd169339169684%_
                                     _%tl169340169686%_
                                     _%e169341169689%_
                                     _%hd169342169692%_
                                     _%tl169343169694%_
                                     _%e169344169697%_
                                     _%hd169345169700%_
                                     _%tl169346169702%_
                                     _%e169347169705%_
                                     _%hd169348169708%_
                                     _%tl169349169710%_)
                                    (_%__kont175207175208%_))))
                            (_%__match175686175687%_
                             _%e169317169625%_
                             _%hd169318169628%_
                             _%tl169319169630%_
                             _%e169320169633%_
                             _%hd169321169636%_
                             _%tl169322169638%_
                             _%e169323169641%_
                             _%hd169324169644%_
                             _%tl169325169646%_
                             _%e169326169649%_
                             _%hd169327169652%_
                             _%tl169328169654%_
                             _%e169329169657%_
                             _%hd169330169660%_
                             _%tl169331169662%_
                             _%e169332169665%_
                             _%hd169333169668%_
                             _%tl169334169670%_
                             _%e169335169673%_
                             _%hd169336169676%_
                             _%tl169337169678%_
                             _%e169338169681%_
                             _%hd169339169684%_
                             _%tl169340169686%_))))
                     (_%__match175484175485%_
                      (lambda (_%e169283169759%_
                               _%hd169284169762%_
                               _%tl169285169764%_
                               _%e169286169767%_
                               _%hd169287169770%_
                               _%tl169288169772%_
                               _%e169289169775%_
                               _%hd169290169778%_
                               _%tl169291169780%_
                               _%e169292169783%_
                               _%hd169293169786%_
                               _%tl169294169788%_
                               _%e169295169791%_
                               _%hd169296169794%_
                               _%tl169297169796%_
                               _%e169298169799%_
                               _%hd169299169802%_
                               _%tl169300169804%_
                               _%e169301169807%_
                               _%hd169302169810%_
                               _%tl169303169812%_
                               _%e169304169815%_
                               _%hd169305169818%_
                               _%tl169306169820%_
                               _%e169307169823%_
                               _%hd169308169826%_
                               _%tl169309169828%_
                               _%e169310169831%_
                               _%hd169311169834%_
                               _%tl169312169836%_)
                        (let ((_%L169839%_ _%hd169311169834%_)
                              (_%L169840%_ _%hd169302169810%_)
                              (_%L169841%_ _%hd169293169786%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169841%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L169841%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp175849
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self169171%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L169840%_
                                      __tmp175849)))
                              (_%__kont175199175200%_
                               _%L169839%_
                               _%L169840%_
                               _%L169841%_)
                              (_%__match175688175689%_
                               _%e169283169759%_
                               _%hd169284169762%_
                               _%tl169285169764%_
                               _%e169286169767%_
                               _%hd169287169770%_
                               _%tl169288169772%_
                               _%e169289169775%_
                               _%hd169290169778%_
                               _%tl169291169780%_
                               _%e169292169783%_
                               _%hd169293169786%_
                               _%tl169294169788%_
                               _%e169295169791%_
                               _%hd169296169794%_
                               _%tl169297169796%_
                               _%e169298169799%_
                               _%hd169299169802%_
                               _%tl169300169804%_
                               _%e169301169807%_
                               _%hd169302169810%_
                               _%tl169303169812%_
                               _%e169304169815%_
                               _%hd169305169818%_
                               _%tl169306169820%_)))))
                     (_%__match175482175483%_
                      (lambda (_%e169283169759%_
                               _%hd169284169762%_
                               _%tl169285169764%_
                               _%e169286169767%_
                               _%hd169287169770%_
                               _%tl169288169772%_
                               _%e169289169775%_
                               _%hd169290169778%_
                               _%tl169291169780%_
                               _%e169292169783%_
                               _%hd169293169786%_
                               _%tl169294169788%_
                               _%e169295169791%_
                               _%hd169296169794%_
                               _%tl169297169796%_
                               _%e169298169799%_
                               _%hd169299169802%_
                               _%tl169300169804%_
                               _%e169301169807%_
                               _%hd169302169810%_
                               _%tl169303169812%_
                               _%e169304169815%_
                               _%hd169305169818%_
                               _%tl169306169820%_
                               _%e169307169823%_
                               _%hd169308169826%_
                               _%tl169309169828%_
                               _%e169310169831%_
                               _%hd169311169834%_
                               _%tl169312169836%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169306169820%_))
                            (_%__match175484175485%_
                             _%e169283169759%_
                             _%hd169284169762%_
                             _%tl169285169764%_
                             _%e169286169767%_
                             _%hd169287169770%_
                             _%tl169288169772%_
                             _%e169289169775%_
                             _%hd169290169778%_
                             _%tl169291169780%_
                             _%e169292169783%_
                             _%hd169293169786%_
                             _%tl169294169788%_
                             _%e169295169791%_
                             _%hd169296169794%_
                             _%tl169297169796%_
                             _%e169298169799%_
                             _%hd169299169802%_
                             _%tl169300169804%_
                             _%e169301169807%_
                             _%hd169302169810%_
                             _%tl169303169812%_
                             _%e169304169815%_
                             _%hd169305169818%_
                             _%tl169306169820%_
                             _%e169307169823%_
                             _%hd169308169826%_
                             _%tl169309169828%_
                             _%e169310169831%_
                             _%hd169311169834%_
                             _%tl169312169836%_)
                            (_%__match175562175563%_
                             _%e169283169759%_
                             _%hd169284169762%_
                             _%tl169285169764%_
                             _%e169286169767%_
                             _%hd169287169770%_
                             _%tl169288169772%_
                             _%e169289169775%_
                             _%hd169290169778%_
                             _%tl169291169780%_
                             _%e169292169783%_
                             _%hd169293169786%_
                             _%tl169294169788%_
                             _%e169295169791%_
                             _%hd169296169794%_
                             _%tl169297169796%_
                             _%e169298169799%_
                             _%hd169299169802%_
                             _%tl169300169804%_
                             _%e169301169807%_
                             _%hd169302169810%_
                             _%tl169303169812%_
                             _%e169304169815%_
                             _%hd169305169818%_
                             _%tl169306169820%_
                             _%e169307169823%_
                             _%hd169308169826%_
                             _%tl169309169828%_
                             _%e169310169831%_
                             _%hd169311169834%_
                             _%tl169312169836%_))))
                     (_%__match175472175473%_
                      (lambda (_%e169283169759%_
                               _%hd169284169762%_
                               _%tl169285169764%_
                               _%e169286169767%_
                               _%hd169287169770%_
                               _%tl169288169772%_
                               _%e169289169775%_
                               _%hd169290169778%_
                               _%tl169291169780%_
                               _%e169292169783%_
                               _%hd169293169786%_
                               _%tl169294169788%_
                               _%e169295169791%_
                               _%hd169296169794%_
                               _%tl169297169796%_
                               _%e169298169799%_
                               _%hd169299169802%_
                               _%tl169300169804%_
                               _%e169301169807%_
                               _%hd169302169810%_
                               _%tl169303169812%_
                               _%e169304169815%_
                               _%hd169305169818%_
                               _%tl169306169820%_
                               _%e169307169823%_
                               _%hd169308169826%_
                               _%tl169309169828%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd169308169826%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169309169828%_))
                                (let ((_%e169310169831%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169309169828%_))))
                                  (let ((_%tl169312169836%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169310169831%_)))
                                        (_%hd169311169834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169310169831%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169312169836%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169306169820%_))
                                            (_%__match175484175485%_
                                             _%e169283169759%_
                                             _%hd169284169762%_
                                             _%tl169285169764%_
                                             _%e169286169767%_
                                             _%hd169287169770%_
                                             _%tl169288169772%_
                                             _%e169289169775%_
                                             _%hd169290169778%_
                                             _%tl169291169780%_
                                             _%e169292169783%_
                                             _%hd169293169786%_
                                             _%tl169294169788%_
                                             _%e169295169791%_
                                             _%hd169296169794%_
                                             _%tl169297169796%_
                                             _%e169298169799%_
                                             _%hd169299169802%_
                                             _%tl169300169804%_
                                             _%e169301169807%_
                                             _%hd169302169810%_
                                             _%tl169303169812%_
                                             _%e169304169815%_
                                             _%hd169305169818%_
                                             _%tl169306169820%_
                                             _%e169307169823%_
                                             _%hd169308169826%_
                                             _%tl169309169828%_
                                             _%e169310169831%_
                                             _%hd169311169834%_
                                             _%tl169312169836%_)
                                            (_%__match175562175563%_
                                             _%e169283169759%_
                                             _%hd169284169762%_
                                             _%tl169285169764%_
                                             _%e169286169767%_
                                             _%hd169287169770%_
                                             _%tl169288169772%_
                                             _%e169289169775%_
                                             _%hd169290169778%_
                                             _%tl169291169780%_
                                             _%e169292169783%_
                                             _%hd169293169786%_
                                             _%tl169294169788%_
                                             _%e169295169791%_
                                             _%hd169296169794%_
                                             _%tl169297169796%_
                                             _%e169298169799%_
                                             _%hd169299169802%_
                                             _%tl169300169804%_
                                             _%e169301169807%_
                                             _%hd169302169810%_
                                             _%tl169303169812%_
                                             _%e169304169815%_
                                             _%hd169305169818%_
                                             _%tl169306169820%_
                                             _%e169307169823%_
                                             _%hd169308169826%_
                                             _%tl169309169828%_
                                             _%e169310169831%_
                                             _%hd169311169834%_
                                             _%tl169312169836%_))
                                        (_%__match175686175687%_
                                         _%e169283169759%_
                                         _%hd169284169762%_
                                         _%tl169285169764%_
                                         _%e169286169767%_
                                         _%hd169287169770%_
                                         _%tl169288169772%_
                                         _%e169289169775%_
                                         _%hd169290169778%_
                                         _%tl169291169780%_
                                         _%e169292169783%_
                                         _%hd169293169786%_
                                         _%tl169294169788%_
                                         _%e169295169791%_
                                         _%hd169296169794%_
                                         _%tl169297169796%_
                                         _%e169298169799%_
                                         _%hd169299169802%_
                                         _%tl169300169804%_
                                         _%e169301169807%_
                                         _%hd169302169810%_
                                         _%tl169303169812%_
                                         _%e169304169815%_
                                         _%hd169305169818%_
                                         _%tl169306169820%_))))
                                (_%__match175686175687%_
                                 _%e169283169759%_
                                 _%hd169284169762%_
                                 _%tl169285169764%_
                                 _%e169286169767%_
                                 _%hd169287169770%_
                                 _%tl169288169772%_
                                 _%e169289169775%_
                                 _%hd169290169778%_
                                 _%tl169291169780%_
                                 _%e169292169783%_
                                 _%hd169293169786%_
                                 _%tl169294169788%_
                                 _%e169295169791%_
                                 _%hd169296169794%_
                                 _%tl169297169796%_
                                 _%e169298169799%_
                                 _%hd169299169802%_
                                 _%tl169300169804%_
                                 _%e169301169807%_
                                 _%hd169302169810%_
                                 _%tl169303169812%_
                                 _%e169304169815%_
                                 _%hd169305169818%_
                                 _%tl169306169820%_))
                            (_%__match175686175687%_
                             _%e169283169759%_
                             _%hd169284169762%_
                             _%tl169285169764%_
                             _%e169286169767%_
                             _%hd169287169770%_
                             _%tl169288169772%_
                             _%e169289169775%_
                             _%hd169290169778%_
                             _%tl169291169780%_
                             _%e169292169783%_
                             _%hd169293169786%_
                             _%tl169294169788%_
                             _%e169295169791%_
                             _%hd169296169794%_
                             _%tl169297169796%_
                             _%e169298169799%_
                             _%hd169299169802%_
                             _%tl169300169804%_
                             _%e169301169807%_
                             _%hd169302169810%_
                             _%tl169303169812%_
                             _%e169304169815%_
                             _%hd169305169818%_
                             _%tl169306169820%_))))
                     (_%__match175404175405%_
                      (lambda (_%e169232169880%_
                               _%hd169233169883%_
                               _%tl169234169885%_
                               _%e169235169888%_
                               _%hd169236169891%_
                               _%tl169237169893%_
                               _%e169238169896%_
                               _%hd169239169899%_
                               _%tl169240169901%_
                               _%e169241169904%_
                               _%hd169242169907%_
                               _%tl169243169909%_
                               _%e169244169912%_
                               _%hd169245169915%_
                               _%tl169246169917%_
                               _%e169247169920%_
                               _%hd169248169923%_
                               _%tl169249169925%_
                               _%e169250169928%_
                               _%hd169251169931%_
                               _%tl169252169933%_
                               _%e169253169936%_
                               _%hd169254169939%_
                               _%tl169255169941%_
                               _%e169256169944%_
                               _%hd169257169947%_
                               _%tl169258169949%_
                               _%e169259169952%_
                               _%hd169260169955%_
                               _%tl169261169957%_
                               _%e169262169960%_
                               _%hd169263169963%_
                               _%tl169264169965%_
                               _%e169265169968%_
                               _%hd169266169971%_
                               _%tl169267169973%_
                               _%e169268169976%_
                               _%hd169269169979%_
                               _%tl169270169981%_
                               _%__splice175197175198%_
                               _%target169271169984%_
                               _%tl169273169986%_)
                        (letrec ((_%loop169274169989%_
                                  (lambda (_%hd169272169992%_
                                           _%args169278169994%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169272169992%_))
                                        (let ((_%e169275169997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169272169992%_))))
                                          (let ((_%lp-tl169277170002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169275169997%_)))
                                                (_%lp-hd169276170000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169275169997%_))))
                                            (_%loop169274169989%_
                                             _%lp-tl169277170002%_
                                             (cons _%lp-hd169276170000%_
                                                   _%args169278169994%_))))
                                        (let ((_%args169279170005%_
                                               (reverse _%args169278169994%_)))
                                          (let ((_%L170008%_
                                                 _%args169279170005%_)
                                                (_%L170009%_
                                                 _%hd169269169979%_)
                                                (_%L170010%_
                                                 _%hd169260169955%_)
                                                (_%L170011%_
                                                 _%hd169251169931%_)
                                                (_%L170012%_
                                                 _%hd169242169907%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170012%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170011%_
                                                        'call-method))
                                                     (let ((__tmp175850
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169171%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170010%_
                                                        __tmp175850)))
                                                (_%__kont175195175196%_
                                                 _%L170008%_
                                                 _%L170009%_
                                                 _%L170010%_
                                                 _%L170011%_
                                                 _%L170012%_)
                                                (_%__kont175207175208%_))))))))
                          (_%loop169274169989%_ _%target169271169984%_ '()))))
                     (_%__match175362175363%_
                      (lambda (_%e169232169880%_
                               _%hd169233169883%_
                               _%tl169234169885%_
                               _%e169235169888%_
                               _%hd169236169891%_
                               _%tl169237169893%_
                               _%e169238169896%_
                               _%hd169239169899%_
                               _%tl169240169901%_
                               _%e169241169904%_
                               _%hd169242169907%_
                               _%tl169243169909%_
                               _%e169244169912%_
                               _%hd169245169915%_
                               _%tl169246169917%_
                               _%e169247169920%_
                               _%hd169248169923%_
                               _%tl169249169925%_
                               _%e169250169928%_
                               _%hd169251169931%_
                               _%tl169252169933%_
                               _%e169253169936%_
                               _%hd169254169939%_
                               _%tl169255169941%_
                               _%e169256169944%_
                               _%hd169257169947%_
                               _%tl169258169949%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd169257169947%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169258169949%_))
                                (let ((_%e169259169952%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169258169949%_))))
                                  (let ((_%tl169261169957%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169259169952%_)))
                                        (_%hd169260169955%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169259169952%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169261169957%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169255169941%_))
                                            (let ((_%e169262169960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169255169941%_))))
                                              (let ((_%tl169264169965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169262169960%_)))
                                                    (_%hd169263169963%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169262169960%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169263169963%_))
                                                    (let ((_%e169265169968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169263169963%_))))
                                                      (let ((_%tl169267169973%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169265169968%_)))
                    (_%hd169266169971%_
                     (let () (declare (not safe)) (##car _%e169265169968%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169266169971%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd169266169971%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169267169973%_))
                            (let ((_%e169268169976%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169267169973%_))))
                              (let ((_%tl169270169981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169268169976%_)))
                                    (_%hd169269169979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169268169976%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169270169981%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl169264169965%_))
                                        (let ((_%__splice175197175198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl169264169965%_
                                                  '0))))
                                          (let ((_%tl169273169986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175197175198%_
                                                    '1)))
                                                (_%target169271169984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice175197175198%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169273169986%_))
                                                (_%__match175404175405%_
                                                 _%e169232169880%_
                                                 _%hd169233169883%_
                                                 _%tl169234169885%_
                                                 _%e169235169888%_
                                                 _%hd169236169891%_
                                                 _%tl169237169893%_
                                                 _%e169238169896%_
                                                 _%hd169239169899%_
                                                 _%tl169240169901%_
                                                 _%e169241169904%_
                                                 _%hd169242169907%_
                                                 _%tl169243169909%_
                                                 _%e169244169912%_
                                                 _%hd169245169915%_
                                                 _%tl169246169917%_
                                                 _%e169247169920%_
                                                 _%hd169248169923%_
                                                 _%tl169249169925%_
                                                 _%e169250169928%_
                                                 _%hd169251169931%_
                                                 _%tl169252169933%_
                                                 _%e169253169936%_
                                                 _%hd169254169939%_
                                                 _%tl169255169941%_
                                                 _%e169256169944%_
                                                 _%hd169257169947%_
                                                 _%tl169258169949%_
                                                 _%e169259169952%_
                                                 _%hd169260169955%_
                                                 _%tl169261169957%_
                                                 _%e169262169960%_
                                                 _%hd169263169963%_
                                                 _%tl169264169965%_
                                                 _%e169265169968%_
                                                 _%hd169266169971%_
                                                 _%tl169267169973%_
                                                 _%e169268169976%_
                                                 _%hd169269169979%_
                                                 _%tl169270169981%_
                                                 _%__splice175197175198%_
                                                 _%target169271169984%_
                                                 _%tl169273169986%_)
                                                (_%__kont175207175208%_))))
                                        (_%__kont175207175208%_))
                                    (_%__kont175207175208%_))))
                            (_%__kont175207175208%_))
                        (_%__kont175207175208%_))
                    (_%__kont175207175208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175207175208%_))))
                                            (_%__match175686175687%_
                                             _%e169232169880%_
                                             _%hd169233169883%_
                                             _%tl169234169885%_
                                             _%e169235169888%_
                                             _%hd169236169891%_
                                             _%tl169237169893%_
                                             _%e169238169896%_
                                             _%hd169239169899%_
                                             _%tl169240169901%_
                                             _%e169241169904%_
                                             _%hd169242169907%_
                                             _%tl169243169909%_
                                             _%e169244169912%_
                                             _%hd169245169915%_
                                             _%tl169246169917%_
                                             _%e169247169920%_
                                             _%hd169248169923%_
                                             _%tl169249169925%_
                                             _%e169250169928%_
                                             _%hd169251169931%_
                                             _%tl169252169933%_
                                             _%e169253169936%_
                                             _%hd169254169939%_
                                             _%tl169255169941%_))
                                        (_%__match175686175687%_
                                         _%e169232169880%_
                                         _%hd169233169883%_
                                         _%tl169234169885%_
                                         _%e169235169888%_
                                         _%hd169236169891%_
                                         _%tl169237169893%_
                                         _%e169238169896%_
                                         _%hd169239169899%_
                                         _%tl169240169901%_
                                         _%e169241169904%_
                                         _%hd169242169907%_
                                         _%tl169243169909%_
                                         _%e169244169912%_
                                         _%hd169245169915%_
                                         _%tl169246169917%_
                                         _%e169247169920%_
                                         _%hd169248169923%_
                                         _%tl169249169925%_
                                         _%e169250169928%_
                                         _%hd169251169931%_
                                         _%tl169252169933%_
                                         _%e169253169936%_
                                         _%hd169254169939%_
                                         _%tl169255169941%_))))
                                (_%__match175686175687%_
                                 _%e169232169880%_
                                 _%hd169233169883%_
                                 _%tl169234169885%_
                                 _%e169235169888%_
                                 _%hd169236169891%_
                                 _%tl169237169893%_
                                 _%e169238169896%_
                                 _%hd169239169899%_
                                 _%tl169240169901%_
                                 _%e169241169904%_
                                 _%hd169242169907%_
                                 _%tl169243169909%_
                                 _%e169244169912%_
                                 _%hd169245169915%_
                                 _%tl169246169917%_
                                 _%e169247169920%_
                                 _%hd169248169923%_
                                 _%tl169249169925%_
                                 _%e169250169928%_
                                 _%hd169251169931%_
                                 _%tl169252169933%_
                                 _%e169253169936%_
                                 _%hd169254169939%_
                                 _%tl169255169941%_))
                            (_%__match175472175473%_
                             _%e169232169880%_
                             _%hd169233169883%_
                             _%tl169234169885%_
                             _%e169235169888%_
                             _%hd169236169891%_
                             _%tl169237169893%_
                             _%e169238169896%_
                             _%hd169239169899%_
                             _%tl169240169901%_
                             _%e169241169904%_
                             _%hd169242169907%_
                             _%tl169243169909%_
                             _%e169244169912%_
                             _%hd169245169915%_
                             _%tl169246169917%_
                             _%e169247169920%_
                             _%hd169248169923%_
                             _%tl169249169925%_
                             _%e169250169928%_
                             _%hd169251169931%_
                             _%tl169252169933%_
                             _%e169253169936%_
                             _%hd169254169939%_
                             _%tl169255169941%_
                             _%e169256169944%_
                             _%hd169257169947%_
                             _%tl169258169949%_))))
                     (_%__match175294175295%_
                      (lambda (_%e169188170072%_
                               _%hd169189170075%_
                               _%tl169190170077%_
                               _%e169191170080%_
                               _%hd169192170083%_
                               _%tl169193170085%_
                               _%e169194170088%_
                               _%hd169195170091%_
                               _%tl169196170093%_
                               _%e169197170096%_
                               _%hd169198170099%_
                               _%tl169199170101%_
                               _%e169200170104%_
                               _%hd169201170107%_
                               _%tl169202170109%_
                               _%e169203170112%_
                               _%hd169204170115%_
                               _%tl169205170117%_
                               _%e169206170120%_
                               _%hd169207170123%_
                               _%tl169208170125%_
                               _%e169209170128%_
                               _%hd169210170131%_
                               _%tl169211170133%_
                               _%e169212170136%_
                               _%hd169213170139%_
                               _%tl169214170141%_
                               _%e169215170144%_
                               _%hd169216170147%_
                               _%tl169217170149%_
                               _%__splice175193175194%_
                               _%target169218170152%_
                               _%tl169220170154%_)
                        (letrec ((_%loop169221170157%_
                                  (lambda (_%hd169219170160%_
                                           _%args169225170162%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169219170160%_))
                                        (let ((_%e169222170165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169219170160%_))))
                                          (let ((_%lp-tl169224170170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169222170165%_)))
                                                (_%lp-hd169223170168%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169222170165%_))))
                                            (_%loop169221170157%_
                                             _%lp-tl169224170170%_
                                             (cons _%lp-hd169223170168%_
                                                   _%args169225170162%_))))
                                        (let ((_%args169226170173%_
                                               (reverse _%args169225170162%_)))
                                          (let ((_%L170176%_
                                                 _%args169226170173%_)
                                                (_%L170177%_
                                                 _%hd169216170147%_)
                                                (_%L170178%_
                                                 _%hd169207170123%_)
                                                (_%L170179%_
                                                 _%hd169198170099%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L170179%_
                                                        'call-method))
                                                     (let ((__tmp175851
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self169171%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L170178%_
                                                        __tmp175851)))
                                                (_%__kont175191175192%_
                                                 _%L170176%_
                                                 _%L170177%_
                                                 _%L170178%_
                                                 _%L170179%_)
                                                (_%__match175482175483%_
                                                 _%e169188170072%_
                                                 _%hd169189170075%_
                                                 _%tl169190170077%_
                                                 _%e169191170080%_
                                                 _%hd169192170083%_
                                                 _%tl169193170085%_
                                                 _%e169194170088%_
                                                 _%hd169195170091%_
                                                 _%tl169196170093%_
                                                 _%e169197170096%_
                                                 _%hd169198170099%_
                                                 _%tl169199170101%_
                                                 _%e169200170104%_
                                                 _%hd169201170107%_
                                                 _%tl169202170109%_
                                                 _%e169203170112%_
                                                 _%hd169204170115%_
                                                 _%tl169205170117%_
                                                 _%e169206170120%_
                                                 _%hd169207170123%_
                                                 _%tl169208170125%_
                                                 _%e169209170128%_
                                                 _%hd169210170131%_
                                                 _%tl169211170133%_
                                                 _%e169212170136%_
                                                 _%hd169213170139%_
                                                 _%tl169214170141%_
                                                 _%e169215170144%_
                                                 _%hd169216170147%_
                                                 _%tl169217170149%_))))))))
                          (_%loop169221170157%_ _%target169218170152%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx175189175190%_))
                    (let ((_%e169188170072%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx175189175190%_))))
                      (let ((_%tl169190170077%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169188170072%_)))
                            (_%hd169189170075%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169188170072%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169190170077%_))
                            (let ((_%e169191170080%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169190170077%_))))
                              (let ((_%tl169193170085%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169191170080%_)))
                                    (_%hd169192170083%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169191170080%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169192170083%_))
                                    (let ((_%e169194170088%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169192170083%_))))
                                      (let ((_%tl169196170093%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169194170088%_)))
                                            (_%hd169195170091%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169194170088%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169195170091%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169195170091%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169196170093%_))
                                                    (let ((_%e169197170096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169196170093%_))))
                                                      (let ((_%tl169199170101%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169197170096%_)))
                    (_%hd169198170099%_
                     (let () (declare (not safe)) (##car _%e169197170096%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169199170101%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169193170085%_))
                        (let ((_%e169200170104%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169193170085%_))))
                          (let ((_%tl169202170109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169200170104%_)))
                                (_%hd169201170107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169200170104%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169201170107%_))
                                (let ((_%e169203170112%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169201170107%_))))
                                  (let ((_%tl169205170117%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169203170112%_)))
                                        (_%hd169204170115%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169203170112%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169204170115%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd169204170115%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169205170117%_))
                                                (let ((_%e169206170120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169205170117%_))))
                                                  (let ((_%tl169208170125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169206170120%_)))
                                                        (_%hd169207170123%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169206170120%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169208170125%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169202170109%_))
                                                            (let ((_%e169209170128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169202170109%_))))
                      (let ((_%tl169211170133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169209170128%_)))
                            (_%hd169210170131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169209170128%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd169210170131%_))
                            (let ((_%e169212170136%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd169210170131%_))))
                              (let ((_%tl169214170141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169212170136%_)))
                                    (_%hd169213170139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169212170136%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169213170139%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd169213170139%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169214170141%_))
                                            (let ((_%e169215170144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169214170141%_))))
                                              (let ((_%tl169217170149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169215170144%_)))
                                                    (_%hd169216170147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169215170144%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169217170149%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl169211170133%_))
                                                        (let ((_%__splice175193175194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl169211170133%_ '0))))
                  (let ((_%tl169220170154%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175193175194%_ '1)))
                        (_%target169218170152%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice175193175194%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169220170154%_))
                        (_%__match175294175295%_
                         _%e169188170072%_
                         _%hd169189170075%_
                         _%tl169190170077%_
                         _%e169191170080%_
                         _%hd169192170083%_
                         _%tl169193170085%_
                         _%e169194170088%_
                         _%hd169195170091%_
                         _%tl169196170093%_
                         _%e169197170096%_
                         _%hd169198170099%_
                         _%tl169199170101%_
                         _%e169200170104%_
                         _%hd169201170107%_
                         _%tl169202170109%_
                         _%e169203170112%_
                         _%hd169204170115%_
                         _%tl169205170117%_
                         _%e169206170120%_
                         _%hd169207170123%_
                         _%tl169208170125%_
                         _%e169209170128%_
                         _%hd169210170131%_
                         _%tl169211170133%_
                         _%e169212170136%_
                         _%hd169213170139%_
                         _%tl169214170141%_
                         _%e169215170144%_
                         _%hd169216170147%_
                         _%tl169217170149%_
                         _%__splice175193175194%_
                         _%target169218170152%_
                         _%tl169220170154%_)
                        (_%__match175482175483%_
                         _%e169188170072%_
                         _%hd169189170075%_
                         _%tl169190170077%_
                         _%e169191170080%_
                         _%hd169192170083%_
                         _%tl169193170085%_
                         _%e169194170088%_
                         _%hd169195170091%_
                         _%tl169196170093%_
                         _%e169197170096%_
                         _%hd169198170099%_
                         _%tl169199170101%_
                         _%e169200170104%_
                         _%hd169201170107%_
                         _%tl169202170109%_
                         _%e169203170112%_
                         _%hd169204170115%_
                         _%tl169205170117%_
                         _%e169206170120%_
                         _%hd169207170123%_
                         _%tl169208170125%_
                         _%e169209170128%_
                         _%hd169210170131%_
                         _%tl169211170133%_
                         _%e169212170136%_
                         _%hd169213170139%_
                         _%tl169214170141%_
                         _%e169215170144%_
                         _%hd169216170147%_
                         _%tl169217170149%_))))
                (_%__match175482175483%_
                 _%e169188170072%_
                 _%hd169189170075%_
                 _%tl169190170077%_
                 _%e169191170080%_
                 _%hd169192170083%_
                 _%tl169193170085%_
                 _%e169194170088%_
                 _%hd169195170091%_
                 _%tl169196170093%_
                 _%e169197170096%_
                 _%hd169198170099%_
                 _%tl169199170101%_
                 _%e169200170104%_
                 _%hd169201170107%_
                 _%tl169202170109%_
                 _%e169203170112%_
                 _%hd169204170115%_
                 _%tl169205170117%_
                 _%e169206170120%_
                 _%hd169207170123%_
                 _%tl169208170125%_
                 _%e169209170128%_
                 _%hd169210170131%_
                 _%tl169211170133%_
                 _%e169212170136%_
                 _%hd169213170139%_
                 _%tl169214170141%_
                 _%e169215170144%_
                 _%hd169216170147%_
                 _%tl169217170149%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match175686175687%_
                                                     _%e169188170072%_
                                                     _%hd169189170075%_
                                                     _%tl169190170077%_
                                                     _%e169191170080%_
                                                     _%hd169192170083%_
                                                     _%tl169193170085%_
                                                     _%e169194170088%_
                                                     _%hd169195170091%_
                                                     _%tl169196170093%_
                                                     _%e169197170096%_
                                                     _%hd169198170099%_
                                                     _%tl169199170101%_
                                                     _%e169200170104%_
                                                     _%hd169201170107%_
                                                     _%tl169202170109%_
                                                     _%e169203170112%_
                                                     _%hd169204170115%_
                                                     _%tl169205170117%_
                                                     _%e169206170120%_
                                                     _%hd169207170123%_
                                                     _%tl169208170125%_
                                                     _%e169209170128%_
                                                     _%hd169210170131%_
                                                     _%tl169211170133%_))))
                                            (_%__match175686175687%_
                                             _%e169188170072%_
                                             _%hd169189170075%_
                                             _%tl169190170077%_
                                             _%e169191170080%_
                                             _%hd169192170083%_
                                             _%tl169193170085%_
                                             _%e169194170088%_
                                             _%hd169195170091%_
                                             _%tl169196170093%_
                                             _%e169197170096%_
                                             _%hd169198170099%_
                                             _%tl169199170101%_
                                             _%e169200170104%_
                                             _%hd169201170107%_
                                             _%tl169202170109%_
                                             _%e169203170112%_
                                             _%hd169204170115%_
                                             _%tl169205170117%_
                                             _%e169206170120%_
                                             _%hd169207170123%_
                                             _%tl169208170125%_
                                             _%e169209170128%_
                                             _%hd169210170131%_
                                             _%tl169211170133%_))
                                        (_%__match175362175363%_
                                         _%e169188170072%_
                                         _%hd169189170075%_
                                         _%tl169190170077%_
                                         _%e169191170080%_
                                         _%hd169192170083%_
                                         _%tl169193170085%_
                                         _%e169194170088%_
                                         _%hd169195170091%_
                                         _%tl169196170093%_
                                         _%e169197170096%_
                                         _%hd169198170099%_
                                         _%tl169199170101%_
                                         _%e169200170104%_
                                         _%hd169201170107%_
                                         _%tl169202170109%_
                                         _%e169203170112%_
                                         _%hd169204170115%_
                                         _%tl169205170117%_
                                         _%e169206170120%_
                                         _%hd169207170123%_
                                         _%tl169208170125%_
                                         _%e169209170128%_
                                         _%hd169210170131%_
                                         _%tl169211170133%_
                                         _%e169212170136%_
                                         _%hd169213170139%_
                                         _%tl169214170141%_))
                                    (_%__match175686175687%_
                                     _%e169188170072%_
                                     _%hd169189170075%_
                                     _%tl169190170077%_
                                     _%e169191170080%_
                                     _%hd169192170083%_
                                     _%tl169193170085%_
                                     _%e169194170088%_
                                     _%hd169195170091%_
                                     _%tl169196170093%_
                                     _%e169197170096%_
                                     _%hd169198170099%_
                                     _%tl169199170101%_
                                     _%e169200170104%_
                                     _%hd169201170107%_
                                     _%tl169202170109%_
                                     _%e169203170112%_
                                     _%hd169204170115%_
                                     _%tl169205170117%_
                                     _%e169206170120%_
                                     _%hd169207170123%_
                                     _%tl169208170125%_
                                     _%e169209170128%_
                                     _%hd169210170131%_
                                     _%tl169211170133%_))))
                            (_%__match175686175687%_
                             _%e169188170072%_
                             _%hd169189170075%_
                             _%tl169190170077%_
                             _%e169191170080%_
                             _%hd169192170083%_
                             _%tl169193170085%_
                             _%e169194170088%_
                             _%hd169195170091%_
                             _%tl169196170093%_
                             _%e169197170096%_
                             _%hd169198170099%_
                             _%tl169199170101%_
                             _%e169200170104%_
                             _%hd169201170107%_
                             _%tl169202170109%_
                             _%e169203170112%_
                             _%hd169204170115%_
                             _%tl169205170117%_
                             _%e169206170120%_
                             _%hd169207170123%_
                             _%tl169208170125%_
                             _%e169209170128%_
                             _%hd169210170131%_
                             _%tl169211170133%_))))
                    (_%__match175624175625%_
                     _%e169188170072%_
                     _%hd169189170075%_
                     _%tl169190170077%_
                     _%e169191170080%_
                     _%hd169192170083%_
                     _%tl169193170085%_
                     _%e169194170088%_
                     _%hd169195170091%_
                     _%tl169196170093%_
                     _%e169197170096%_
                     _%hd169198170099%_
                     _%tl169199170101%_
                     _%e169200170104%_
                     _%hd169201170107%_
                     _%tl169202170109%_
                     _%e169203170112%_
                     _%hd169204170115%_
                     _%tl169205170117%_
                     _%e169206170120%_
                     _%hd169207170123%_
                     _%tl169208170125%_))
                (_%__kont175207175208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont175207175208%_))
                                            (_%__kont175207175208%_))
                                        (_%__kont175207175208%_))))
                                (_%__kont175207175208%_))))
                        (_%__kont175207175208%_))
                    (_%__kont175207175208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont175207175208%_))
                                                (_%__kont175207175208%_))
                                            (_%__kont175207175208%_))))
                                    (_%__kont175207175208%_))))
                            (_%__kont175207175208%_))))
                    (_%__kont175207175208%_))))))))))
