(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770342552)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp224710 (list gxc#::identity::t))
            (__tmp224709 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp224710
         '()
         __tmp224709
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args223507%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args223507%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp224711
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
        (__make-atomic-promise __tmp224711)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx223499%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self223502%_
                (let ((__obj224702
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj224702))
               (__tmp224712
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223502%_ _%stx223499%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224712
           gxc#current-compile-method
           _%self223502%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp224714 (list gxc#::false::t))
            (__tmp224713 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp224714
         '()
         __tmp224713
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args223496%_
        (apply make-instance gxc#::extract-receiver::t _%$args223496%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp224715
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
        (__make-atomic-promise __tmp224715)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx223488%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self223491%_
                (let ((__obj224704
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj224704))
               (__tmp224716
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self223491%_ _%stx223488%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224716
           gxc#current-compile-method
           _%self223491%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp224718 (list gxc#::void::t))
            (__tmp224717 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp224718
         '(receiver methods slots)
         __tmp224717
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args223485%_
        (apply make-instance gxc#::collect-object-refs::t _%$args223485%_)))
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
      (let ((__tmp224719
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
        (__make-atomic-promise __tmp224719)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords223454%_
               _%receiver223449223455%_
               _%methods223450223456%_
               _%slots223451223457%_
               _%stx223458%_)
        (let* ((_%receiver223461%_
                (if (eq? _%receiver223449223455%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver223449223455%_))
               (_%methods223463%_
                (if (eq? _%methods223450223456%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods223450223456%_))
               (_%slots223465%_
                (if (eq? _%slots223451223457%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots223451223457%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self223467%_
                  (let ((__obj224706
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
                       __obj224706
                       _%receiver223461%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224706
                       _%methods223463%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224706
                       _%slots223465%_
                       '3
                       '#f
                       '#f))
                    __obj224706))
                 (__tmp224720
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223467%_ _%stx223458%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224720
             gxc#current-compile-method
             _%self223467%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords223474%_ . _%args223475%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords223474%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223474%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223474%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223474%_
                  'slots:
                  absent-value))
               _%args223475%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args223452223481%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args223452223481%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp224722 (list gxc#::basic-xform-expression::t))
            (__tmp224721 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp224722
         '(receiver klass methods slots)
         __tmp224721
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args223445%_
        (apply make-instance gxc#::subst-object-refs::t _%$args223445%_)))
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
      (let ((__tmp224723
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
        (__make-atomic-promise __tmp224723)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords223411%_
               _%receiver223405223412%_
               _%klass223406223413%_
               _%methods223407223414%_
               _%slots223408223415%_
               _%stx223416%_)
        (let* ((_%receiver223419%_
                (if (eq? _%receiver223405223412%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver223405223412%_))
               (_%klass223421%_
                (if (eq? _%klass223406223413%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass223406223413%_))
               (_%methods223423%_
                (if (eq? _%methods223407223414%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods223407223414%_))
               (_%slots223425%_
                (if (eq? _%slots223408223415%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots223408223415%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self223427%_
                  (let ((__obj224708
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
                       __obj224708
                       _%receiver223419%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224708
                       _%klass223421%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224708
                       _%methods223423%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224708
                       _%slots223425%_
                       '4
                       '#f
                       '#f))
                    __obj224708))
                 (__tmp224724
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self223427%_ _%stx223416%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224724
             gxc#current-compile-method
             _%self223427%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords223434%_ . _%args223435%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords223434%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223434%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223434%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223434%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223434%_
                  'slots:
                  absent-value))
               _%args223435%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args223409223441%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args223409223441%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self220536%_ _%stx220537%_)
        (letrec ((_%generate-method-bind220539%_
                  (lambda (_%$klass223397%_
                           _%$method-table223398%_
                           _%id223399%_
                           _%$id223400%_)
                    (let ((_%$tmp223402%_
                           (let ((__tmp224725
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp224725))))
                      (cons (cons _%$id223400%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp223402%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table223398%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id223399%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp223402%_ '()))
                    (cons (cons '%#ref (cons _%$tmp223402%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id223399%_
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
                 (_%generate-slot-bind220540%_
                  (lambda (_%$klass223391%_ _%id223392%_ _%$id223393%_)
                    (let ((_%$tmp223395%_
                           (let ((__tmp224726
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp224726))))
                      (cons (cons _%$id223393%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp223395%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass223391%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id223392%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp223395%_ '()))
                        (cons (cons '%#ref (cons _%$tmp223395%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id223392%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl220541%_
                  (lambda (_%$klass223385%_
                           _%$method-table223386%_
                           _%methods-bind223387%_
                           _%slots-bind223388%_
                           _%specializer-impl223389%_)
                    (let ((__tmp224727
                           (cons '%#lambda
                                 (cons (cons _%$klass223385%_
                                             (cons _%$method-table223386%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind223388%_
                                                            _%methods-bind223387%_))
                                                         (cons _%specializer-impl223389%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp224727 _%stx220537%_))))
                 (_%generate-specializer-def220542%_
                  (lambda (_%id223381%_
                           _%specializer-id223382%_
                           _%specializer-impl223383%_)
                    (let ((__tmp224728
                           (cons '%#begin
                                 (cons _%stx220537%_
                                       (cons (let ((__tmp224729
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id223382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl223383%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp224729
                                                _%stx220537%_))
                                             (cons (let ((__tmp224730
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id223381%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id223382%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp224730
                                                      _%stx220537%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp224728 _%stx220537%_)))))
          (let* ((_%__stx223596223597%_ _%stx220537%_)
                 (_%g220545220565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx223596223597%_)))))
            (let ((_%__kont223598223599%_
                   (lambda (_%g220547220609%_ _%g220548220610%_)
                     (let ((_%method-calls220629%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs220630%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty220631%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?220633%_
                                 (lambda ()
                                   (if (let ((__tmp224731
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls220629%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp224731))
                                       (let ((__tmp224732
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs220630%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp224732))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g220547220609%_))
                             (let* ((_%__stx223510223511%_ _%g220547220609%_)
                                    (_%g221017221035%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx223510223511%_)))))
                               (let ((_%__kont223512223513%_
                                      (lambda (_%g221019221071%_
                                               _%g221020221072%_
                                               _%g221021221073%_)
                                        (let ((_%receiver221093%_
                                               (let ((_%$e221090%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g221019221071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e221090%_
                                                     _%$e221090%_
                                                     _%g221021221073%_))))
                                          (for-each
                                           (lambda (_%g221094221096%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver221093%_
                                              _%method-calls220629%_
                                              _%slot-refs220630%_
                                              _%g221094221096%_))
                                           _%g221019221071%_)
                                          (if (_%no-specializer?220633%_)
                                              _%stx220537%_
                                              (let* ((_%specializer-id221105%_
                                                      (let* ((_%id221099%_
                                                              (let ((__tmp224733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g220548220610%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp224733 '"::specialize")))
                     (_%specializer-id221102%_
                      (let ((__tmp224734
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx220537%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id221099%_ __tmp224734))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id221102%_))
                _%specializer-id221102%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass221107%_
                                                      (let ((__tmp224735
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp224735)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table221109%_
                                                      (let ((__tmp224736
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp224736)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods221111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls220629%_)))
                                                     (_%$methods221115%_
                                                      (let ((__tmp224737
                                                             (lambda (_%id221113%_)
                                                               (let ((__tmp224738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id221113%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp224738)))))
                (declare (not safe))
                (##map __tmp224737 _%methods221111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_221124%_
                                                      (let ((__tmp224739
                                                             (lambda (_%g221116221119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221117221121%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls220629%_
                          _%g221116221119%_
                          _%g221117221121%_)))))
                (declare (not safe))
                (##for-each __tmp224739 _%methods221111%_ _%$methods221115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind221134%_
                                                      (let ((__tmp224740
                                                             (lambda (_%g221126221129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221127221131%_)
                       (_%generate-method-bind220539%_
                        _%$klass221107%_
                        _%$method-table221109%_
                        _%g221126221129%_
                        _%g221127221131%_))))
                (declare (not safe))
                (##map __tmp224740 _%methods221111%_ _%$methods221115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots221136%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs220630%_)))
                                                     (_%$slots221140%_
                                                      (let ((__tmp224741
                                                             (lambda (_%id221138%_)
                                                               (let ((__tmp224742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id221138%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp224742)))))
                (declare (not safe))
                (##map __tmp224741 _%slots221136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_221149%_
                                                      (let ((__tmp224743
                                                             (lambda (_%g221141221144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221142221146%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs220630%_
                          _%g221141221144%_
                          _%g221142221146%_)))))
                (declare (not safe))
                (##for-each __tmp224743 _%slots221136%_ _%$slots221140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind221158%_
                                                      (let ((__tmp224744
                                                             (lambda (_%g221150221153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221151221155%_)
                       (_%generate-slot-bind220540%_
                        _%$klass221107%_
                        _%g221150221153%_
                        _%g221151221155%_))))
                (declare (not safe))
                (##map __tmp224744 _%slots221136%_ _%$slots221140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body221164%_
                                                      (map (lambda (_%g221159221161%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver221093%_
                                                              _%$klass221107%_
                                                              _%method-calls220629%_
                                                              _%slot-refs220630%_
                                                              _%g221159221161%_))
                                                           _%g221019221071%_))
                                                     (_%specializer-impl221166%_
                                                      (let ((__tmp224745
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g221021221073%_ _%g221020221072%_)
                                 _%specializer-body221164%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp224745 _%stx220537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl221168%_
                                                      (_%generate-specializer-impl220541%_
                                                       _%$klass221107%_
                                                       _%$method-table221109%_
                                                       _%methods-bind221134%_
                                                       _%slots-bind221158%_
                                                       _%specializer-impl221166%_)))
                                                (let ((__tmp224747
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g220548220610%_)))
                                                      (__tmp224746
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id221105%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp224747
                                                   '" => "
                                                   __tmp224746))
                                                (_%generate-specializer-def220542%_
                                                 _%g220548220610%_
                                                 _%specializer-id221105%_
                                                 _%specializer-impl221168%_))))))
                                     (_%__kont223514223515%_
                                      (lambda () _%stx220537%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx223510223511%_))
                                     (let ((_%e221022221047%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx223510223511%_))))
                                       (let ((_%tl221024221052%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e221022221047%_)))
                                             (_%hd221023221050%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e221022221047%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl221024221052%_))
                                             (let ((_%e221025221055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl221024221052%_))))
                                               (let ((_%tl221027221060%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e221025221055%_)))
                                                     (_%hd221026221058%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e221025221055%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd221026221058%_))
                                                     (let ((_%e221028221063%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd221026221058%_))))
                                                       (let ((_%tl221030221068%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e221028221063%_)))
                     (_%hd221029221066%_
                      (let () (declare (not safe)) (##car _%e221028221063%_))))
                 (_%__kont223512223513%_
                  _%tl221027221060%_
                  _%tl221030221068%_
                  _%hd221029221066%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont223514223515%_))))
                                             (_%__kont223514223515%_))))
                                     (_%__kont223514223515%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g220547220609%_))
                                 (let* ((_%g221175221194%_
                                         (lambda (_%g221176221191%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g221176221191%_))))
                                        (_%g221174221490%_
                                         (lambda (_%g221176221197%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g221176221197%_))
                                               (let ((_%e221178221199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g221176221197%_))))
                                                 (let ((_%hd221179221202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e221178221199%_)))
                                                       (_%tl221180221204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e221178221199%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl221180221204%_))
                                                       (let ((_g224748_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl221180221204%_ '0))))
                 (begin
                   (let ((_g224749_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g224748_)
                                (##values-length _g224748_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g224749_ 2)))
                         (error "Context expects 2 values" _g224749_)))
                   (let ((_%target221181221207%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g224748_ 0)))
                         (_%tl221183221209%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g224748_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl221183221209%_))
                         (letrec ((_%loop221184221212%_
                                   (lambda (_%hd221182221215%_
                                            _%clause221188221217%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd221182221215%_))
                                         (let ((_%e221185221219%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd221182221215%_))))
                                           (let ((_%lp-hd221186221222%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e221185221219%_)))
                                                 (_%lp-tl221187221224%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e221185221219%_))))
                                             (_%loop221184221212%_
                                              _%lp-tl221187221224%_
                                              (cons _%lp-hd221186221222%_
                                                    _%clause221188221217%_))))
                                         (let ((_%clause221189221227%_
                                                (reverse _%clause221188221217%_)))
                                           ((lambda (_%g221177221229%_)
                                              (for-each
                                               (lambda (_%clause221243%_)
                                                 (let* ((_%__stx223536223537%_
                                                         _%clause221243%_)
                                                        (_%g221246221261%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx223536223537%_)))))
                                                   (let ((_%__kont223538223539%_
                                                          (lambda (_%g221248221289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g221249221290%_
                           _%g221250221291%_)
                    (let ((_%receiver221310%_
                           (let ((_%$e221307%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g221248221289%_))))
                             (if _%$e221307%_
                                 _%$e221307%_
                                 _%g221250221291%_))))
                      (for-each
                       (lambda (_%g221311221313%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver221310%_
                          _%method-calls220629%_
                          _%slot-refs220630%_
                          _%g221311221313%_))
                       _%g221248221289%_))))
                 (_%__kont223540223541%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx223536223537%_))
                                                         (let ((_%e221251221273%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx223536223537%_))))
                   (let ((_%tl221253221278%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e221251221273%_)))
                         (_%hd221252221276%_
                          (let ()
                            (declare (not safe))
                            (##car _%e221251221273%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd221252221276%_))
                         (let ((_%e221254221281%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd221252221276%_))))
                           (let ((_%tl221256221286%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e221254221281%_)))
                                 (_%hd221255221284%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e221254221281%_))))
                             (_%__kont223538223539%_
                              _%tl221253221278%_
                              _%tl221256221286%_
                              _%hd221255221284%_)))
                         (_%__kont223540223541%_))))
                 (_%__kont223540223541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp224750
                                                      (lambda (_%g221318221321%_
                                                               _%g221319221323%_)
                                                        (cons _%g221318221321%_
                                                              _%g221319221323%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp224750
                                                  '()
                                                  _%g221177221229%_)))
                                              (if (_%no-specializer?220633%_)
                                                  _%stx220537%_
                                                  (let* ((_%specializer-id221332%_
                                                          (let* ((_%id221326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp224751
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g220548220610%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp224751 '"::specialize")))
                         (_%specializer-id221329%_
                          (let ((__tmp224752
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx220537%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id221326%_
                             __tmp224752))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id221329%_))
                    _%specializer-id221329%_))
                 (_%$klass221334%_
                  (let ((__tmp224753
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp224753)))
                 (_%$method-table221336%_
                  (let ((__tmp224754
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp224754)))
                 (_%methods221338%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls220629%_)))
                 (_%$methods221342%_
                  (let ((__tmp224755
                         (lambda (_%id221340%_)
                           (let ((__tmp224756 (gensym _%id221340%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp224756)))))
                    (declare (not safe))
                    (##map __tmp224755 _%methods221338%_)))
                 (_%_221351%_
                  (let ((__tmp224757
                         (lambda (_%g221343221346%_ _%g221344221348%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls220629%_
                              _%g221343221346%_
                              _%g221344221348%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp224757
                     _%methods221338%_
                     _%$methods221342%_)))
                 (_%methods-bind221361%_
                  (let ((__tmp224758
                         (lambda (_%g221353221356%_ _%g221354221358%_)
                           (_%generate-method-bind220539%_
                            _%$klass221334%_
                            _%$method-table221336%_
                            _%g221353221356%_
                            _%g221354221358%_))))
                    (declare (not safe))
                    (##map __tmp224758 _%methods221338%_ _%$methods221342%_)))
                 (_%slots221363%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs220630%_)))
                 (_%$slots221367%_
                  (let ((__tmp224759
                         (lambda (_%id221365%_)
                           (let ((__tmp224760 (gensym _%id221365%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp224760)))))
                    (declare (not safe))
                    (##map __tmp224759 _%slots221363%_)))
                 (_%_221376%_
                  (let ((__tmp224761
                         (lambda (_%g221368221371%_ _%g221369221373%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs220630%_
                              _%g221368221371%_
                              _%g221369221373%_)))))
                    (declare (not safe))
                    (##for-each __tmp224761 _%slots221363%_ _%$slots221367%_)))
                 (_%slots-bind221385%_
                  (let ((__tmp224762
                         (lambda (_%g221377221380%_ _%g221378221382%_)
                           (_%generate-slot-bind220540%_
                            _%$klass221334%_
                            _%g221377221380%_
                            _%g221378221382%_))))
                    (declare (not safe))
                    (##map __tmp224762 _%slots221363%_ _%$slots221367%_)))
                 (_%specializer-clauses221483%_
                  (map (lambda (_%clause221387%_)
                         (let* ((_%__stx223556223557%_ _%clause221387%_)
                                (_%g221390221405%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx223556223557%_)))))
                           (let ((_%__kont223558223559%_
                                  (lambda (_%g221392221433%_
                                           _%g221393221434%_
                                           _%g221394221435%_)
                                    (let* ((_%receiver221464%_
                                            (let ((_%$e221461%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g221392221433%_))))
                                              (if _%$e221461%_
                                                  _%$e221461%_
                                                  _%g221394221435%_)))
                                           (_%body221470%_
                                            (map (lambda (_%g221465221467%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver221464%_
                                                    _%$klass221334%_
                                                    _%method-calls220629%_
                                                    _%slot-refs220630%_
                                                    _%g221465221467%_))
                                                 _%g221392221433%_)))
                                      (cons (cons _%g221394221435%_
                                                  _%g221393221434%_)
                                            _%body221470%_))))
                                 (_%__kont223560223561%_
                                  (lambda () _%clause221387%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx223556223557%_))
                                 (let ((_%e221395221417%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx223556223557%_))))
                                   (let ((_%tl221397221422%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e221395221417%_)))
                                         (_%hd221396221420%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e221395221417%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd221396221420%_))
                                         (let ((_%e221398221425%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd221396221420%_))))
                                           (let ((_%tl221400221430%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e221398221425%_)))
                                                 (_%hd221399221428%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e221398221425%_))))
                                             (_%__kont223558223559%_
                                              _%tl221397221422%_
                                              _%tl221400221430%_
                                              _%hd221399221428%_)))
                                         (_%__kont223560223561%_))))
                                 (_%__kont223560223561%_)))))
                       (let ((__tmp224763
                              (lambda (_%g221475221478%_ _%g221476221480%_)
                                (cons _%g221475221478%_ _%g221476221480%_))))
                         (declare (not safe))
                         (__foldr1 __tmp224763 '() _%g221177221229%_))))
                 (_%specializer-impl221485%_
                  (let ((__tmp224764
                         (cons '%#case-lambda _%specializer-clauses221483%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp224764 _%stx220537%_)))
                 (_%specializer-impl221487%_
                  (_%generate-specializer-impl220541%_
                   _%$klass221334%_
                   _%$method-table221336%_
                   _%methods-bind221361%_
                   _%slots-bind221385%_
                   _%specializer-impl221485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp224766
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g220548220610%_)))
                                                          (__tmp224765
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id221332%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp224766
                                                       '" => "
                                                       __tmp224765))
                                                    (_%generate-specializer-def220542%_
                                                     _%g220548220610%_
                                                     _%specializer-id221332%_
                                                     _%specializer-impl221487%_))))
                                            _%clause221189221227%_))))))
                           (_%loop221184221212%_ _%target221181221207%_ '()))
                         (_%g221175221194%_ _%g221176221197%_)))))
               (_%g221175221194%_ _%g221176221197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g221175221194%_
                                                _%g221176221197%_)))))
                                   (_%g221174221490%_ _%g220547220609%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g220547220609%_))
                                     (let* ((_%g221494221524%_
                                             (lambda (_%g221495221521%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g221495221521%_))))
                                            (_%g221493222151%_
                                             (lambda (_%g221495221527%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g221495221527%_))
                                                   (let ((_%e221499221529%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g221495221527%_))))
                                                     (let ((_%hd221500221532%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e221499221529%_)))
                                                           (_%tl221501221534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e221499221529%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl221501221534%_))
                                                           (let ((_%e221502221537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl221501221534%_))))
                     (let ((_%hd221503221540%_
                            (let ()
                              (declare (not safe))
                              (##car _%e221502221537%_)))
                           (_%tl221504221542%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e221502221537%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd221503221540%_))
                           (let ((_%e221505221545%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd221503221540%_))))
                             (let ((_%hd221506221548%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e221505221545%_)))
                                   (_%tl221507221550%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e221505221545%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd221506221548%_))
                                   (let ((_%e221508221553%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd221506221548%_))))
                                     (let ((_%hd221509221556%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e221508221553%_)))
                                           (_%tl221510221558%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e221508221553%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd221509221556%_))
                                           (let ((_%e221511221561%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd221509221556%_))))
                                             (let ((_%hd221512221564%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e221511221561%_)))
                                                   (_%tl221513221566%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e221511221561%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl221513221566%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl221510221558%_))
                                                       (let ((_%e221514221569%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl221510221558%_))))
                 (let ((_%hd221515221572%_
                        (let ()
                          (declare (not safe))
                          (##car _%e221514221569%_)))
                       (_%tl221516221574%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e221514221569%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl221516221574%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl221507221550%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl221504221542%_))
                               (let ((_%e221517221577%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl221504221542%_))))
                                 (let ((_%hd221518221580%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e221517221577%_)))
                                       (_%tl221519221582%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e221517221577%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl221519221582%_))
                                       ((lambda (_%g221496221585%_
                                                 _%g221497221586%_
                                                 _%g221498221587%_)
                                          (let* ((_%g221611221629%_
                                                  (lambda (_%g221612221626%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g221612221626%_))))
                                                 (_%g221610221685%_
                                                  (lambda (_%g221612221632%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g221612221632%_))
                                                        (let ((_%e221616221634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g221612221632%_))))
                  (let ((_%hd221617221637%_
                         (let ()
                           (declare (not safe))
                           (##car _%e221616221634%_)))
                        (_%tl221618221639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e221616221634%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl221618221639%_))
                        (let ((_%e221619221642%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl221618221639%_))))
                          (let ((_%hd221620221645%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e221619221642%_)))
                                (_%tl221621221647%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e221619221642%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd221620221645%_))
                                (let ((_%e221622221650%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd221620221645%_))))
                                  (let ((_%hd221623221653%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e221622221650%_)))
                                        (_%tl221624221655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e221622221650%_))))
                                    ((lambda (_%g221613221658%_
                                              _%g221614221659%_
                                              _%g221615221660%_)
                                       (let ((_%receiver221679%_
                                              (let ((_%$e221676%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g221613221658%_))))
                                                (if _%$e221676%_
                                                    _%$e221676%_
                                                    _%g221615221660%_))))
                                         (for-each
                                          (lambda (_%g221680221682%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver221679%_
                                             _%method-calls220629%_
                                             _%slot-refs220630%_
                                             _%g221680221682%_))
                                          _%g221613221658%_)))
                                     _%tl221621221647%_
                                     _%tl221624221655%_
                                     _%hd221623221653%_)))
                                (_%g221611221629%_ _%g221612221632%_))))
                        (_%g221611221629%_ _%g221612221632%_))))
                (_%g221611221629%_ _%g221612221632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g221610221685%_
                                             _%g221497221586%_))
                                          (let* ((_%g221688221707%_
                                                  (lambda (_%g221689221704%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g221689221704%_))))
                                                 (_%g221687221829%_
                                                  (lambda (_%g221689221710%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g221689221710%_))
                                                        (let ((_%e221691221712%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g221689221710%_))))
                  (let ((_%hd221692221715%_
                         (let ()
                           (declare (not safe))
                           (##car _%e221691221712%_)))
                        (_%tl221693221717%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e221691221712%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl221693221717%_))
                        (let ((_g224767_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl221693221717%_
                                  '0))))
                          (begin
                            (let ((_g224768_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g224767_)
                                         (##values-length _g224767_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g224768_ 2)))
                                  (error "Context expects 2 values"
                                         _g224768_)))
                            (let ((_%target221694221720%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g224767_ 0)))
                                  (_%tl221696221722%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g224767_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl221696221722%_))
                                  (letrec ((_%loop221697221725%_
                                            (lambda (_%hd221695221728%_
                                                     _%clause221701221730%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd221695221728%_))
                                                  (let ((_%e221698221732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd221695221728%_))))
                                                    (let ((_%lp-hd221699221735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e221698221732%_)))
                                                          (_%lp-tl221700221737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e221698221732%_))))
                                                      (_%loop221697221725%_
                                                       _%lp-tl221700221737%_
                                                       (cons _%lp-hd221699221735%_
                                                             _%clause221701221730%_))))
                                                  (let ((_%clause221702221740%_
                                                         (reverse _%clause221701221730%_)))
                                                    ((lambda (_%g221690221742%_)
                                                       (for-each
                                                        (lambda (_%clause221755%_)
                                                          (let* ((_%g221757221772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g221758221769%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g221758221769%_))))
                         (_%g221756221819%_
                          (lambda (_%g221758221775%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g221758221775%_))
                                (let ((_%e221762221777%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g221758221775%_))))
                                  (let ((_%hd221763221780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e221762221777%_)))
                                        (_%tl221764221782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e221762221777%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd221763221780%_))
                                        (let ((_%e221765221785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd221763221780%_))))
                                          (let ((_%hd221766221788%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e221765221785%_)))
                                                (_%tl221767221790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e221765221785%_))))
                                            ((lambda (_%g221759221793%_
                                                      _%g221760221794%_
                                                      _%g221761221795%_)
                                               (let ((_%receiver221813%_
                                                      (let ((_%$e221810%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g221759221793%_))))
                (if _%$e221810%_ _%$e221810%_ _%g221761221795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g221814221816%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver221813%_
                                                     _%method-calls220629%_
                                                     _%slot-refs220630%_
                                                     _%g221814221816%_))
                                                  _%g221759221793%_)))
                                             _%tl221764221782%_
                                             _%tl221767221790%_
                                             _%hd221766221788%_)))
                                        (_%g221757221772%_
                                         _%g221758221775%_))))
                                (_%g221757221772%_ _%g221758221775%_)))))
                    (_%g221756221819%_ _%clause221755%_)))
                (let ((__tmp224769
                       (lambda (_%g221821221824%_ _%g221822221826%_)
                         (cons _%g221821221824%_ _%g221822221826%_))))
                  (declare (not safe))
                  (__foldr1 __tmp224769 '() _%g221690221742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause221702221740%_))))))
                                    (_%loop221697221725%_
                                     _%target221694221720%_
                                     '()))
                                  (_%g221688221707%_ _%g221689221710%_)))))
                        (_%g221688221707%_ _%g221689221710%_))))
                (_%g221688221707%_ _%g221689221710%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g221687221829%_
                                             _%g221496221585%_))
                                          (if (_%no-specializer?220633%_)
                                              _%stx220537%_
                                              (let* ((_%specializer-id221838%_
                                                      (let* ((_%id221832%_
                                                              (let ((__tmp224770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g220548220610%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp224770 '"::specialize")))
                     (_%specializer-id221835%_
                      (let ((__tmp224771
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx220537%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id221832%_ __tmp224771))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id221835%_))
                _%specializer-id221835%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass221840%_
                                                      (let ((__tmp224772
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp224772)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table221842%_
                                                      (let ((__tmp224773
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp224773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods221844%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls220629%_)))
                                                     (_%$methods221848%_
                                                      (let ((__tmp224774
                                                             (lambda (_%id221846%_)
                                                               (let ((__tmp224775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id221846%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp224775)))))
                (declare (not safe))
                (##map __tmp224774 _%methods221844%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_221857%_
                                                      (let ((__tmp224776
                                                             (lambda (_%g221849221852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221850221854%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls220629%_
                          _%g221849221852%_
                          _%g221850221854%_)))))
                (declare (not safe))
                (##for-each __tmp224776 _%methods221844%_ _%$methods221848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind221867%_
                                                      (let ((__tmp224777
                                                             (lambda (_%g221859221862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221860221864%_)
                       (_%generate-method-bind220539%_
                        _%$klass221840%_
                        _%$method-table221842%_
                        _%g221859221862%_
                        _%g221860221864%_))))
                (declare (not safe))
                (##map __tmp224777 _%methods221844%_ _%$methods221848%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots221869%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs220630%_)))
                                                     (_%$slots221873%_
                                                      (let ((__tmp224778
                                                             (lambda (_%id221871%_)
                                                               (let ((__tmp224779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id221871%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp224779)))))
                (declare (not safe))
                (##map __tmp224778 _%slots221869%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_221882%_
                                                      (let ((__tmp224780
                                                             (lambda (_%g221874221877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221875221879%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs220630%_
                          _%g221874221877%_
                          _%g221875221879%_)))))
                (declare (not safe))
                (##for-each __tmp224780 _%slots221869%_ _%$slots221873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind221891%_
                                                      (let ((__tmp224781
                                                             (lambda (_%g221883221886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g221884221888%_)
                       (_%generate-slot-bind220540%_
                        _%$klass221840%_
                        _%g221883221886%_
                        _%g221884221888%_))))
                (declare (not safe))
                (##map __tmp224781 _%slots221869%_ _%$slots221873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr221983%_
                                                      (let* ((_%g221893221911%_
                                                              (lambda (_%g221894221908%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g221894221908%_))))
                     (_%g221892221980%_
                      (lambda (_%g221894221914%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g221894221914%_))
                            (let ((_%e221898221916%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g221894221914%_))))
                              (let ((_%hd221899221919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e221898221916%_)))
                                    (_%tl221900221921%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e221898221916%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl221900221921%_))
                                    (let ((_%e221901221924%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl221900221921%_))))
                                      (let ((_%hd221902221927%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e221901221924%_)))
                                            (_%tl221903221929%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e221901221924%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd221902221927%_))
                                            (let ((_%e221904221932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd221902221927%_))))
                                              (let ((_%hd221905221935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e221904221932%_)))
                                                    (_%tl221906221937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e221904221932%_))))
                                                ((lambda (_%g221895221940%_
                                                          _%g221896221941%_
                                                          _%g221897221942%_)
                                                   (let* ((_%receiver221971%_
                                                           (let ((_%$e221968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g221895221940%_))))
                     (if _%$e221968%_ _%$e221968%_ _%g221897221942%_)))
                  (_%body221977%_
                   (map (lambda (_%g221972221974%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver221971%_
                           _%$klass221840%_
                           _%method-calls220629%_
                           _%slot-refs220630%_
                           _%g221972221974%_))
                        _%g221895221940%_))
                  (__tmp224782
                   (cons '%#lambda
                         (cons (cons _%g221897221942%_ _%g221896221941%_)
                               _%body221977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp224782
                                                      _%g221497221586%_)))
                                                 _%tl221903221929%_
                                                 _%tl221906221937%_
                                                 _%hd221905221935%_)))
                                            (_%g221893221911%_
                                             _%g221894221914%_))))
                                    (_%g221893221911%_ _%g221894221914%_))))
                            (_%g221893221911%_ _%g221894221914%_)))))
                (_%g221892221980%_ _%g221497221586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr222144%_
                                                      (let* ((_%g221985222004%_
                                                              (lambda (_%g221986222001%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g221986222001%_))))
                     (_%g221984222141%_
                      (lambda (_%g221986222007%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g221986222007%_))
                            (let ((_%e221988222009%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g221986222007%_))))
                              (let ((_%hd221989222012%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e221988222009%_)))
                                    (_%tl221990222014%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e221988222009%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl221990222014%_))
                                    (let ((_g224783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl221990222014%_
                                              '0))))
                                      (begin
                                        (let ((_g224784_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g224783_)
                                                     (##values-length
                                                      _g224783_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g224784_ 2)))
                                              (error "Context expects 2 values"
                                                     _g224784_)))
                                        (let ((_%target221991222017%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g224783_ 0)))
                                              (_%tl221993222019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g224783_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl221993222019%_))
                                              (letrec ((_%loop221994222022%_
                                                        (lambda (_%hd221992222025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause221998222027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd221992222025%_))
                      (let ((_%e221995222029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd221992222025%_))))
                        (let ((_%lp-hd221996222032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e221995222029%_)))
                              (_%lp-tl221997222034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e221995222029%_))))
                          (_%loop221994222022%_
                           _%lp-tl221997222034%_
                           (cons _%lp-hd221996222032%_
                                 _%clause221998222027%_))))
                      (let ((_%clause221999222037%_
                             (reverse _%clause221998222027%_)))
                        ((lambda (_%g221987222039%_)
                           (let* ((_%clauses222139%_
                                   (map (lambda (_%clause222053%_)
                                          (let* ((_%__stx223576223577%_
                                                  _%clause222053%_)
                                                 (_%g222056222071%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx223576223577%_)))))
                                            (let ((_%__kont223578223579%_
                                                   (lambda (_%g222058222099%_
                                                            _%g222059222100%_
                                                            _%g222060222101%_)
                                                     (let* ((_%receiver222120%_
                                                             (let ((_%$e222117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g222058222099%_))))
                       (if _%$e222117%_ _%$e222117%_ _%g222060222101%_)))
                    (_%body222126%_
                     (map (lambda (_%g222121222123%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver222120%_
                             _%$klass221840%_
                             _%method-calls220629%_
                             _%slot-refs220630%_
                             _%g222121222123%_))
                          _%g222058222099%_)))
               (cons (cons _%g222060222101%_ _%g222059222100%_)
                     _%body222126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223580223581%_
                                                   (lambda ()
                                                     _%clause222053%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx223576223577%_))
                                                  (let ((_%e222061222083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx223576223577%_))))
                                                    (let ((_%tl222063222088%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e222061222083%_)))
                                                          (_%hd222062222086%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e222061222083%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd222062222086%_))
                                                          (let ((_%e222064222091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd222062222086%_))))
                    (let ((_%tl222066222096%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e222064222091%_)))
                          (_%hd222065222094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e222064222091%_))))
                      (_%__kont223578223579%_
                       _%tl222063222088%_
                       _%tl222066222096%_
                       _%hd222065222094%_)))
                  (_%__kont223580223581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223580223581%_)))))
                                        (let ((__tmp224785
                                               (lambda (_%g222131222134%_
                                                        _%g222132222136%_)
                                                 (cons _%g222131222134%_
                                                       _%g222132222136%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp224785
                                           '()
                                           _%g221987222039%_))))
                                  (__tmp224786
                                   (cons '%#case-lambda _%clauses222139%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp224786
                              _%g221496221585%_)))
                         _%clause221999222037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop221994222022%_
                                                 _%target221991222017%_
                                                 '()))
                                              (_%g221985222004%_
                                               _%g221986222007%_)))))
                                    (_%g221985222004%_ _%g221986222007%_))))
                            (_%g221985222004%_ _%g221986222007%_)))))
                (_%g221984222141%_ _%g221496221585%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl222146%_
                                                      (let ((__tmp224787
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g221498221587%_ '())
                                             (cons _%specializer-lambda-expr221983%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr222144%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp224787 _%stx220537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl222148%_
                                                      (_%generate-specializer-impl220541%_
                                                       _%$klass221840%_
                                                       _%$method-table221842%_
                                                       _%methods-bind221867%_
                                                       _%slots-bind221891%_
                                                       _%specializer-impl222146%_)))
                                                (let ((__tmp224789
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g220548220610%_)))
                                                      (__tmp224788
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id221838%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp224789
                                                   '" => "
                                                   __tmp224788))
                                                (_%generate-specializer-def220542%_
                                                 _%g220548220610%_
                                                 _%specializer-id221838%_
                                                 _%specializer-impl222148%_))))
                                        _%hd221518221580%_
                                        _%hd221515221572%_
                                        _%hd221512221564%_)
                                       (_%g221494221524%_ _%g221495221527%_))))
                               (_%g221494221524%_ _%g221495221527%_))
                           (_%g221494221524%_ _%g221495221527%_))
                       (_%g221494221524%_ _%g221495221527%_))))
               (_%g221494221524%_ _%g221495221527%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g221494221524%_
                                                    _%g221495221527%_))))
                                           (_%g221494221524%_
                                            _%g221495221527%_))))
                                   (_%g221494221524%_ _%g221495221527%_))))
                           (_%g221494221524%_ _%g221495221527%_))))
                   (_%g221494221524%_ _%g221495221527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g221494221524%_
                                                    _%g221495221527%_)))))
                                       (_%g221493222151%_ _%g220547220609%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g220547220609%_))
                                         (let* ((_%g222155222208%_
                                                 (lambda (_%g222156222205%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g222156222205%_))))
                                                (_%g222154223373%_
                                                 (lambda (_%g222156222211%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g222156222211%_))
                                                       (let ((_%e222162222213%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g222156222211%_))))
                 (let ((_%hd222163222216%_
                        (let ()
                          (declare (not safe))
                          (##car _%e222162222213%_)))
                       (_%tl222164222218%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e222162222213%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd222163222216%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd222163222216%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl222164222218%_))
                               (let ((_%e222165222221%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl222164222218%_))))
                                 (let ((_%hd222166222224%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e222165222221%_)))
                                       (_%tl222167222226%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e222165222221%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd222166222224%_))
                                       (let ((_%e222168222229%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd222166222224%_))))
                                         (let ((_%hd222169222232%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e222168222229%_)))
                                               (_%tl222170222234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e222168222229%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd222169222232%_))
                                               (let ((_%e222171222237%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd222169222232%_))))
                                                 (let ((_%hd222172222240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e222171222237%_)))
                                                       (_%tl222173222242%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e222171222237%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd222172222240%_))
                                                       (let ((_%e222174222245%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd222172222240%_))))
                 (let ((_%hd222175222248%_
                        (let ()
                          (declare (not safe))
                          (##car _%e222174222245%_)))
                       (_%tl222176222250%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e222174222245%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl222176222250%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl222173222242%_))
                           (let ((_%e222177222253%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl222173222242%_))))
                             (let ((_%hd222178222256%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e222177222253%_)))
                                   (_%tl222179222258%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e222177222253%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd222178222256%_))
                                   (let ((_%e222180222261%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd222178222256%_))))
                                     (let ((_%hd222181222264%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e222180222261%_)))
                                           (_%tl222182222266%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e222180222261%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd222181222264%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd222181222264%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl222182222266%_))
                                                   (let ((_%e222183222269%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl222182222266%_))))
                                                     (let ((_%hd222184222272%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e222183222269%_)))
                                                           (_%tl222185222274%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e222183222269%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd222184222272%_))
                                                           (let ((_%e222186222277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd222184222272%_))))
                     (let ((_%hd222187222280%_
                            (let ()
                              (declare (not safe))
                              (##car _%e222186222277%_)))
                           (_%tl222188222282%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e222186222277%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd222187222280%_))
                           (let ((_%e222189222285%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd222187222280%_))))
                             (let ((_%hd222190222288%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e222189222285%_)))
                                   (_%tl222191222290%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e222189222285%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd222190222288%_))
                                   (let ((_%e222192222293%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd222190222288%_))))
                                     (let ((_%hd222193222296%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e222192222293%_)))
                                           (_%tl222194222298%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e222192222293%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl222194222298%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl222191222290%_))
                                               (let ((_%e222195222301%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl222191222290%_))))
                                                 (let ((_%hd222196222304%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e222195222301%_)))
                                                       (_%tl222197222306%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e222195222301%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl222197222306%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl222188222282%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl222185222274%_))
                       (let ((_%e222198222309%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl222185222274%_))))
                         (let ((_%hd222199222312%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e222198222309%_)))
                               (_%tl222200222314%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e222198222309%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl222200222314%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl222179222258%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl222170222234%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl222167222226%_))
                                           (let ((_%e222201222317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl222167222226%_))))
                                             (let ((_%hd222202222320%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e222201222317%_)))
                                                   (_%tl222203222322%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e222201222317%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl222203222322%_))
                                                   ((lambda (_%g222157222325%_
                                                             _%g222158222326%_
                                                             _%g222159222327%_
                                                             _%g222160222328%_
                                                             _%g222161222329%_)
                                                      (let* ((_%g222369222431%_
                                                              (lambda (_%g222370222428%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g222370222428%_))))
                     (_%g222368223370%_
                      (lambda (_%g222370222434%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g222370222434%_))
                            (let ((_%e222376222436%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g222370222434%_))))
                              (let ((_%hd222377222439%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222376222436%_)))
                                    (_%tl222378222441%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222376222436%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd222377222439%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd222377222439%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl222378222441%_))
                                            (let ((_%e222379222444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl222378222441%_))))
                                              (let ((_%hd222380222447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222379222444%_)))
                                                    (_%tl222381222449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222379222444%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222381222449%_))
                                                    (let ((_%e222382222452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222381222449%_))))
                                                      (let ((_%hd222383222455%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e222382222452%_)))
                    (_%tl222384222457%_
                     (let () (declare (not safe)) (##cdr _%e222382222452%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd222383222455%_))
                    (let ((_%e222385222460%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd222383222455%_))))
                      (let ((_%hd222386222463%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222385222460%_)))
                            (_%tl222387222465%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222385222460%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd222386222463%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd222386222463%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl222387222465%_))
                                    (let ((_%e222388222468%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl222387222465%_))))
                                      (let ((_%hd222389222471%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222388222468%_)))
                                            (_%tl222390222473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222388222468%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd222389222471%_))
                                            (let ((_%e222391222476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd222389222471%_))))
                                              (let ((_%hd222392222479%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e222391222476%_)))
                                                    (_%tl222393222481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e222391222476%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd222392222479%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd222392222479%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl222393222481%_))
                                                            (let ((_%e222394222484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl222393222481%_))))
                      (let ((_%hd222395222487%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222394222484%_)))
                            (_%tl222396222489%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222394222484%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222396222489%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl222390222473%_))
                                (let ((_%e222397222492%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl222390222473%_))))
                                  (let ((_%hd222398222495%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e222397222492%_)))
                                        (_%tl222399222497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e222397222492%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd222398222495%_))
                                        (let ((_%e222400222500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd222398222495%_))))
                                          (let ((_%hd222401222503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e222400222500%_)))
                                                (_%tl222402222505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e222400222500%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd222401222503%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd222401222503%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl222402222505%_))
                                                        (let ((_%e222403222508%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl222402222505%_))))
                  (let ((_%hd222404222511%_
                         (let ()
                           (declare (not safe))
                           (##car _%e222403222508%_)))
                        (_%tl222405222513%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e222403222508%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl222405222513%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl222399222497%_))
                            (let ((_%e222406222516%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl222399222497%_))))
                              (let ((_%hd222407222519%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222406222516%_)))
                                    (_%tl222408222521%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222406222516%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd222407222519%_))
                                    (let ((_%e222409222524%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd222407222519%_))))
                                      (let ((_%hd222410222527%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e222409222524%_)))
                                            (_%tl222411222529%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e222409222524%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd222410222527%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd222410222527%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl222411222529%_))
                                                    (let ((_%e222412222532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl222411222529%_))))
                                                      (let ((_%hd222413222535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e222412222532%_)))
                    (_%tl222414222537%_
                     (let () (declare (not safe)) (##cdr _%e222412222532%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl222414222537%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl222408222521%_))
                        (if (let ((__tmp224790
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl222408222521%_))))
                              (declare (not safe))
                              (##fx>= __tmp224790 '1))
                            (let ((_g224791_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl222408222521%_
                                      '1))))
                              (begin
                                (let ((_g224792_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g224791_)
                                             (##values-length _g224791_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g224792_ 2)))
                                      (error "Context expects 2 values"
                                             _g224792_)))
                                (let ((_%target222415222540%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g224791_ 0)))
                                      (_%tl222417222542%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g224791_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl222417222542%_))
                                      (let ((_%e222424222545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl222417222542%_))))
                                        (let ((_%hd222425222548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e222424222545%_)))
                                              (_%tl222426222550%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e222424222545%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl222426222550%_))
                                              (letrec ((_%loop222418222553%_
                                                        (lambda (_%hd222416222556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref222422222558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd222416222556%_))
                      (let ((_%e222419222560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd222416222556%_))))
                        (let ((_%lp-hd222420222563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222419222560%_)))
                              (_%lp-tl222421222565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222419222560%_))))
                          (_%loop222418222553%_
                           _%lp-tl222421222565%_
                           (cons _%lp-hd222420222563%_
                                 _%kw-ref222422222558%_))))
                      (let ((_%kw-ref222423222568%_
                             (reverse _%kw-ref222422222558%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl222384222457%_))
                            ((lambda (_%g222371222570%_
                                      _%g222372222571%_
                                      _%g222373222572%_
                                      _%g222374222573%_
                                      _%g222375222574%_)
                               (let* ((_%kw-count222625%_
                                       (length (let ((__tmp224793
                                                      (lambda (_%g222617222620%_
                                                               _%g222618222622%_)
                                                        (cons _%g222617222620%_
                                                              _%g222618222622%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp224793
                                                  '()
                                                  _%g222372222571%_))))
                                      (_%self-index222627%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count222625%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g222159222327%_))
                                     (let* ((_%g222631222645%_
                                             (lambda (_%g222632222642%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g222632222642%_))))
                                            (_%g222630222768%_
                                             (lambda (_%g222632222648%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g222632222648%_))
                                                   (let ((_%e222635222650%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g222632222648%_))))
                                                     (let ((_%hd222636222653%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e222635222650%_)))
                                                           (_%tl222637222655%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e222635222650%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl222637222655%_))
                                                           (let ((_%e222638222658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl222637222655%_))))
                     (let ((_%hd222639222661%_
                            (let ()
                              (declare (not safe))
                              (##car _%e222638222658%_)))
                           (_%tl222640222663%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e222638222658%_))))
                       ((lambda (_%g222633222666%_ _%g222634222667%_)
                          (let* ((_%self222684%_
                                  (list-ref
                                   _%g222634222667%_
                                   _%self-index222627%_))
                                 (_%receiver222689%_
                                  (let ((_%$e222686%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g222633222666%_))))
                                    (if _%$e222686%_
                                        _%$e222686%_
                                        _%self222684%_))))
                            (for-each
                             (lambda (_%g222691222693%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver222689%_
                                _%method-calls220629%_
                                _%slot-refs220630%_
                                _%g222691222693%_))
                             _%g222633222666%_)
                            (if (_%no-specializer?220633%_)
                                _%stx220537%_
                                (let* ((_%specializer-id222702%_
                                        (let* ((_%id222696%_
                                                (let ((__tmp224794
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g220548220610%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp224794
                                                   '"::specialize")))
                                               (_%specializer-id222699%_
                                                (let ((__tmp224795
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx220537%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id222696%_
                                                   __tmp224795))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id222699%_))
                                          _%specializer-id222699%_))
                                       (_%$klass222704%_
                                        (let ((__tmp224796
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp224796)))
                                       (_%$method-table222706%_
                                        (let ((__tmp224797
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp224797)))
                                       (_%methods222708%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls220629%_)))
                                       (_%$methods222712%_
                                        (let ((__tmp224798
                                               (lambda (_%id222710%_)
                                                 (let ((__tmp224799
                                                        (gensym _%id222710%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp224799)))))
                                          (declare (not safe))
                                          (##map __tmp224798
                                                 _%methods222708%_)))
                                       (_%_222721%_
                                        (let ((__tmp224800
                                               (lambda (_%g222713222716%_
                                                        _%g222714222718%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls220629%_
                                                    _%g222713222716%_
                                                    _%g222714222718%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp224800
                                           _%methods222708%_
                                           _%$methods222712%_)))
                                       (_%methods-bind222731%_
                                        (let ((__tmp224801
                                               (lambda (_%g222723222726%_
                                                        _%g222724222728%_)
                                                 (_%generate-method-bind220539%_
                                                  _%$klass222704%_
                                                  _%$method-table222706%_
                                                  _%g222723222726%_
                                                  _%g222724222728%_))))
                                          (declare (not safe))
                                          (##map __tmp224801
                                                 _%methods222708%_
                                                 _%$methods222712%_)))
                                       (_%slots222733%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs220630%_)))
                                       (_%$slots222737%_
                                        (let ((__tmp224802
                                               (lambda (_%id222735%_)
                                                 (let ((__tmp224803
                                                        (gensym _%id222735%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp224803)))))
                                          (declare (not safe))
                                          (##map __tmp224802 _%slots222733%_)))
                                       (_%_222746%_
                                        (let ((__tmp224804
                                               (lambda (_%g222738222741%_
                                                        _%g222739222743%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs220630%_
                                                    _%g222738222741%_
                                                    _%g222739222743%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp224804
                                           _%slots222733%_
                                           _%$slots222737%_)))
                                       (_%slots-bind222755%_
                                        (let ((__tmp224805
                                               (lambda (_%g222747222750%_
                                                        _%g222748222752%_)
                                                 (_%generate-slot-bind220540%_
                                                  _%$klass222704%_
                                                  _%g222747222750%_
                                                  _%g222748222752%_))))
                                          (declare (not safe))
                                          (##map __tmp224805
                                                 _%slots222733%_
                                                 _%$slots222737%_)))
                                       (_%specializer-impl222763%_
                                        (let* ((_%specializer-body222761%_
                                                (map (lambda (_%g222756222758%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver222689%_
                                                        _%$klass222704%_
                                                        _%method-calls220629%_
                                                        _%slot-refs220630%_
                                                        _%g222756222758%_))
                                                     _%g222633222666%_))
                                               (__tmp224806
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g222161222329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g222160222328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp224807
                                   (cons '%#lambda
                                         (cons _%g222634222667%_
                                               _%specializer-body222761%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp224807
                               _%g222159222327%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g222158222326%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g222157222325%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp224806
                                           _%stx220537%_)))
                                       (_%specializer-impl222765%_
                                        (_%generate-specializer-impl220541%_
                                         _%$klass222704%_
                                         _%$method-table222706%_
                                         _%methods-bind222731%_
                                         _%slots-bind222755%_
                                         _%specializer-impl222763%_)))
                                  (let ((__tmp224809
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g220548220610%_)))
                                        (__tmp224808
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id222702%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp224809
                                     '" => "
                                     __tmp224808))
                                  (_%generate-specializer-def220542%_
                                   _%g220548220610%_
                                   _%specializer-id222702%_
                                   _%specializer-impl222765%_)))))
                        _%tl222640222663%_
                        _%hd222639222661%_)))
                   (_%g222631222645%_ _%g222632222648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g222631222645%_
                                                    _%g222632222648%_)))))
                                       (_%g222630222768%_ _%g222159222327%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g222159222327%_))
                                         (let* ((_%g222772222802%_
                                                 (lambda (_%g222773222799%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g222773222799%_))))
                                                (_%g222771223366%_
                                                 (lambda (_%g222773222805%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g222773222805%_))
                                                       (let ((_%e222777222807%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g222773222805%_))))
                 (let ((_%hd222778222810%_
                        (let ()
                          (declare (not safe))
                          (##car _%e222777222807%_)))
                       (_%tl222779222812%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e222777222807%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl222779222812%_))
                       (let ((_%e222780222815%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl222779222812%_))))
                         (let ((_%hd222781222818%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e222780222815%_)))
                               (_%tl222782222820%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e222780222815%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd222781222818%_))
                               (let ((_%e222783222823%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd222781222818%_))))
                                 (let ((_%hd222784222826%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e222783222823%_)))
                                       (_%tl222785222828%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e222783222823%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd222784222826%_))
                                       (let ((_%e222786222831%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd222784222826%_))))
                                         (let ((_%hd222787222834%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e222786222831%_)))
                                               (_%tl222788222836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e222786222831%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd222787222834%_))
                                               (let ((_%e222789222839%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd222787222834%_))))
                                                 (let ((_%hd222790222842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e222789222839%_)))
                                                       (_%tl222791222844%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e222789222839%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl222791222844%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl222788222836%_))
                                                           (let ((_%e222792222847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl222788222836%_))))
                     (let ((_%hd222793222850%_
                            (let ()
                              (declare (not safe))
                              (##car _%e222792222847%_)))
                           (_%tl222794222852%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e222792222847%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl222794222852%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl222785222828%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl222782222820%_))
                                   (let ((_%e222795222855%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl222782222820%_))))
                                     (let ((_%hd222796222858%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e222795222855%_)))
                                           (_%tl222797222860%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e222795222855%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl222797222860%_))
                                           ((lambda (_%g222774222863%_
                                                     _%g222775222864%_
                                                     _%g222776222865%_)
                                              (let* ((_%g222889222903%_
                                                      (lambda (_%g222890222900%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g222890222900%_))))
                                                     (_%g222888222950%_
                                                      (lambda (_%g222890222906%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g222890222906%_))
                                                            (let ((_%e222893222908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g222890222906%_))))
                      (let ((_%hd222894222911%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222893222908%_)))
                            (_%tl222895222913%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222893222908%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl222895222913%_))
                            (let ((_%e222896222916%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl222895222913%_))))
                              (let ((_%hd222897222919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e222896222916%_)))
                                    (_%tl222898222921%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e222896222916%_))))
                                ((lambda (_%g222891222924%_ _%g222892222925%_)
                                   (let* ((_%self222938%_
                                           (list-ref
                                            _%g222892222925%_
                                            _%self-index222627%_))
                                          (_%receiver222943%_
                                           (let ((_%$e222940%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g222891222924%_))))
                                             (if _%$e222940%_
                                                 _%$e222940%_
                                                 _%self222938%_))))
                                     (for-each
                                      (lambda (_%g222945222947%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver222943%_
                                         _%method-calls220629%_
                                         _%slot-refs220630%_
                                         _%g222945222947%_))
                                      _%g222891222924%_)))
                                 _%tl222898222921%_
                                 _%hd222897222919%_)))
                            (_%g222889222903%_ _%g222890222906%_))))
                    (_%g222889222903%_ _%g222890222906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g222888222950%_
                                                 _%g222775222864%_))
                                              (let* ((_%g222953222972%_
                                                      (lambda (_%g222954222969%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g222954222969%_))))
                                                     (_%g222952223081%_
                                                      (lambda (_%g222954222975%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g222954222975%_))
                                                            (let ((_%e222956222977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g222954222975%_))))
                      (let ((_%hd222957222980%_
                             (let ()
                               (declare (not safe))
                               (##car _%e222956222977%_)))
                            (_%tl222958222982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e222956222977%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl222958222982%_))
                            (let ((_g224810_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl222958222982%_
                                      '0))))
                              (begin
                                (let ((_g224811_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g224810_)
                                             (##values-length _g224810_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g224811_ 2)))
                                      (error "Context expects 2 values"
                                             _g224811_)))
                                (let ((_%target222959222985%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g224810_ 0)))
                                      (_%tl222961222987%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g224810_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl222961222987%_))
                                      (letrec ((_%loop222962222990%_
                                                (lambda (_%hd222960222993%_
                                                         _%clause222966222995%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd222960222993%_))
                                                      (let ((_%e222963222997%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd222960222993%_))))
                (let ((_%lp-hd222964223000%_
                       (let () (declare (not safe)) (##car _%e222963222997%_)))
                      (_%lp-tl222965223002%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e222963222997%_))))
                  (_%loop222962222990%_
                   _%lp-tl222965223002%_
                   (cons _%lp-hd222964223000%_ _%clause222966222995%_))))
              (let ((_%clause222967223005%_ (reverse _%clause222966222995%_)))
                ((lambda (_%g222955223007%_)
                   (for-each
                    (lambda (_%clause223020%_)
                      (let* ((_%g223022223033%_
                              (lambda (_%g223023223030%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g223023223030%_))))
                             (_%g223021223071%_
                              (lambda (_%g223023223036%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g223023223036%_))
                                    (let ((_%e223026223038%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g223023223036%_))))
                                      (let ((_%hd223027223041%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e223026223038%_)))
                                            (_%tl223028223043%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e223026223038%_))))
                                        ((lambda (_%g223024223046%_
                                                  _%g223025223047%_)
                                           (let* ((_%self223059%_
                                                   (list-ref
                                                    _%g223025223047%_
                                                    _%self-index222627%_))
                                                  (_%receiver223064%_
                                                   (let ((_%$e223061%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g223024223046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e223061%_
                                                         _%$e223061%_
                                                         _%self223059%_))))
                                             (for-each
                                              (lambda (_%g223066223068%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver223064%_
                                                 _%method-calls220629%_
                                                 _%slot-refs220630%_
                                                 _%g223066223068%_))
                                              _%g223024223046%_)))
                                         _%tl223028223043%_
                                         _%hd223027223041%_)))
                                    (_%g223022223033%_ _%g223023223036%_)))))
                        (_%g223021223071%_ _%clause223020%_)))
                    (let ((__tmp224812
                           (lambda (_%g223073223076%_ _%g223074223078%_)
                             (cons _%g223073223076%_ _%g223074223078%_))))
                      (declare (not safe))
                      (__foldr1 __tmp224812 '() _%g222955223007%_))))
                 _%clause222967223005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop222962222990%_
                                         _%target222959222985%_
                                         '()))
                                      (_%g222953222972%_ _%g222954222975%_)))))
                            (_%g222953222972%_ _%g222954222975%_))))
                    (_%g222953222972%_ _%g222954222975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g222952223081%_
                                                 _%g222774222863%_))
                                              (if (_%no-specializer?220633%_)
                                                  _%stx220537%_
                                                  (let* ((_%specializer-id223090%_
                                                          (let* ((_%id223084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp224813
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g220548220610%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp224813 '"::specialize")))
                         (_%specializer-id223087%_
                          (let ((__tmp224814
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx220537%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id223084%_
                             __tmp224814))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id223087%_))
                    _%specializer-id223087%_))
                 (_%$klass223092%_
                  (let ((__tmp224815
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp224815)))
                 (_%$method-table223094%_
                  (let ((__tmp224816
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp224816)))
                 (_%methods223096%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls220629%_)))
                 (_%$methods223100%_
                  (let ((__tmp224817
                         (lambda (_%id223098%_)
                           (let ((__tmp224818 (gensym _%id223098%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp224818)))))
                    (declare (not safe))
                    (##map __tmp224817 _%methods223096%_)))
                 (_%_223109%_
                  (let ((__tmp224819
                         (lambda (_%g223101223104%_ _%g223102223106%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls220629%_
                              _%g223101223104%_
                              _%g223102223106%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp224819
                     _%methods223096%_
                     _%$methods223100%_)))
                 (_%methods-bind223119%_
                  (let ((__tmp224820
                         (lambda (_%g223111223114%_ _%g223112223116%_)
                           (_%generate-method-bind220539%_
                            _%$klass223092%_
                            _%$method-table223094%_
                            _%g223111223114%_
                            _%g223112223116%_))))
                    (declare (not safe))
                    (##map __tmp224820 _%methods223096%_ _%$methods223100%_)))
                 (_%slots223121%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs220630%_)))
                 (_%$slots223125%_
                  (let ((__tmp224821
                         (lambda (_%id223123%_)
                           (let ((__tmp224822 (gensym _%id223123%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp224822)))))
                    (declare (not safe))
                    (##map __tmp224821 _%slots223121%_)))
                 (_%_223134%_
                  (let ((__tmp224823
                         (lambda (_%g223126223129%_ _%g223127223131%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs220630%_
                              _%g223126223129%_
                              _%g223127223131%_)))))
                    (declare (not safe))
                    (##for-each __tmp224823 _%slots223121%_ _%$slots223125%_)))
                 (_%slots-bind223143%_
                  (let ((__tmp224824
                         (lambda (_%g223135223138%_ _%g223136223140%_)
                           (_%generate-slot-bind220540%_
                            _%$klass223092%_
                            _%g223135223138%_
                            _%g223136223140%_))))
                    (declare (not safe))
                    (##map __tmp224824 _%slots223121%_ _%$slots223125%_)))
                 (_%specializer-lambda-expr223221%_
                  (let* ((_%g223145223159%_
                          (lambda (_%g223146223156%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g223146223156%_))))
                         (_%g223144223218%_
                          (lambda (_%g223146223162%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g223146223162%_))
                                (let ((_%e223149223164%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g223146223162%_))))
                                  (let ((_%hd223150223167%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e223149223164%_)))
                                        (_%tl223151223169%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e223149223164%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl223151223169%_))
                                        (let ((_%e223152223172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl223151223169%_))))
                                          (let ((_%hd223153223175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e223152223172%_)))
                                                (_%tl223154223177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e223152223172%_))))
                                            ((lambda (_%g223147223180%_
                                                      _%g223148223181%_)
                                               (let* ((_%self223204%_
                                                       (list-ref
                                                        _%g223148223181%_
                                                        _%self-index222627%_))
                                                      (_%receiver223209%_
                                                       (let ((_%$e223206%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g223147223180%_))))
                 (if _%$e223206%_ _%$e223206%_ _%self223204%_)))
              (_%body223215%_
               (map (lambda (_%g223210223212%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver223209%_
                       _%$klass223092%_
                       _%method-calls220629%_
                       _%slot-refs220630%_
                       _%g223210223212%_))
                    _%g223147223180%_))
              (__tmp224825
               (cons '%#lambda (cons _%g223148223181%_ _%body223215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp224825
                                                  _%g222775222864%_)))
                                             _%tl223154223177%_
                                             _%hd223153223175%_)))
                                        (_%g223145223159%_
                                         _%g223146223162%_))))
                                (_%g223145223159%_ _%g223146223162%_)))))
                    (_%g223144223218%_ _%g222775222864%_)))
                 (_%specializer-case-lambda-expr223359%_
                  (let* ((_%g223223223242%_
                          (lambda (_%g223224223239%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g223224223239%_))))
                         (_%g223222223356%_
                          (lambda (_%g223224223245%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g223224223245%_))
                                (let ((_%e223226223247%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g223224223245%_))))
                                  (let ((_%hd223227223250%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e223226223247%_)))
                                        (_%tl223228223252%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e223226223247%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl223228223252%_))
                                        (let ((_g224826_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl223228223252%_
                                                  '0))))
                                          (begin
                                            (let ((_g224827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g224826_)
                                                         (##values-length
                                                          _g224826_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g224827_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g224827_)))
                                            (let ((_%target223229223255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g224826_
                                                      0)))
                                                  (_%tl223231223257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g224826_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl223231223257%_))
                                                  (letrec ((_%loop223232223260%_
                                                            (lambda (_%hd223230223263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause223236223265%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd223230223263%_))
                          (let ((_%e223233223267%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd223230223263%_))))
                            (let ((_%lp-hd223234223270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e223233223267%_)))
                                  (_%lp-tl223235223272%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e223233223267%_))))
                              (_%loop223232223260%_
                               _%lp-tl223235223272%_
                               (cons _%lp-hd223234223270%_
                                     _%clause223236223265%_))))
                          (let ((_%clause223237223275%_
                                 (reverse _%clause223236223265%_)))
                            ((lambda (_%g223225223277%_)
                               (let* ((_%clauses223354%_
                                       (map (lambda (_%clause223291%_)
                                              (let* ((_%g223293223304%_
                                                      (lambda (_%g223294223301%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g223294223301%_))))
                                                     (_%g223292223344%_
                                                      (lambda (_%g223294223307%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g223294223307%_))
                                                            (let ((_%e223297223309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g223294223307%_))))
                      (let ((_%hd223298223312%_
                             (let ()
                               (declare (not safe))
                               (##car _%e223297223309%_)))
                            (_%tl223299223314%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e223297223309%_))))
                        ((lambda (_%g223295223317%_ _%g223296223318%_)
                           (let* ((_%self223330%_
                                   (list-ref
                                    _%g223296223318%_
                                    _%self-index222627%_))
                                  (_%receiver223335%_
                                   (let ((_%$e223332%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g223295223317%_))))
                                     (if _%$e223332%_
                                         _%$e223332%_
                                         _%self223330%_)))
                                  (_%body223341%_
                                   (map (lambda (_%g223336223338%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver223335%_
                                           _%$klass223092%_
                                           _%method-calls220629%_
                                           _%slot-refs220630%_
                                           _%g223336223338%_))
                                        _%g223295223317%_)))
                             (cons _%g223296223318%_ _%body223341%_)))
                         _%tl223299223314%_
                         _%hd223298223312%_)))
                    (_%g223293223304%_ _%g223294223307%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g223292223344%_
                                                 _%clause223291%_)))
                                            (let ((__tmp224828
                                                   (lambda (_%g223346223349%_
                                                            _%g223347223351%_)
                                                     (cons _%g223346223349%_
                                                           _%g223347223351%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp224828
                                               '()
                                               _%g223225223277%_))))
                                      (__tmp224829
                                       (cons '%#case-lambda
                                             _%clauses223354%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp224829
                                  _%g222774222863%_)))
                             _%clause223237223275%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop223232223260%_
                                                     _%target223229223255%_
                                                     '()))
                                                  (_%g223223223242%_
                                                   _%g223224223245%_)))))
                                        (_%g223223223242%_
                                         _%g223224223245%_))))
                                (_%g223223223242%_ _%g223224223245%_)))))
                    (_%g223222223356%_ _%g222774222863%_)))
                 (_%specializer-impl223361%_
                  (let ((__tmp224830
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g222161222329%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g222160222328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp224831
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g222776222865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr223221%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr223359%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp224831
                                                _%stx220537%_))
                                             '()))
                                 '())
                           (cons _%g222158222326%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g222157222325%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp224830 _%stx220537%_)))
                 (_%specializer-impl223363%_
                  (_%generate-specializer-impl220541%_
                   _%$klass223092%_
                   _%$method-table223094%_
                   _%methods-bind223119%_
                   _%slots-bind223143%_
                   _%specializer-impl223361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp224833
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g220548220610%_)))
                                                          (__tmp224832
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id223090%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp224833
                                                       '" => "
                                                       __tmp224832))
                                                    (_%generate-specializer-def220542%_
                                                     _%g220548220610%_
                                                     _%specializer-id223090%_
                                                     _%specializer-impl223363%_))))
                                            _%hd222796222858%_
                                            _%hd222793222850%_
                                            _%hd222790222842%_)
                                           (_%g222772222802%_
                                            _%g222773222805%_))))
                                   (_%g222772222802%_ _%g222773222805%_))
                               (_%g222772222802%_ _%g222773222805%_))
                           (_%g222772222802%_ _%g222773222805%_))))
                   (_%g222772222802%_ _%g222773222805%_))
               (_%g222772222802%_ _%g222773222805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g222772222802%_
                                                _%g222773222805%_))))
                                       (_%g222772222802%_ _%g222773222805%_))))
                               (_%g222772222802%_ _%g222773222805%_))))
                       (_%g222772222802%_ _%g222773222805%_))))
               (_%g222772222802%_ _%g222773222805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g222771223366%_
                                            _%g222159222327%_))
                                         _%stx220537%_))))
                             _%hd222425222548%_
                             _%kw-ref222423222568%_
                             _%hd222413222535%_
                             _%hd222404222511%_
                             _%hd222395222487%_)
                            (_%g222369222431%_ _%g222370222434%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop222418222553%_
                                                 _%target222415222540%_
                                                 '()))
                                              (_%g222369222431%_
                                               _%g222370222434%_))))
                                      (_%g222369222431%_ _%g222370222434%_)))))
                            (_%g222369222431%_ _%g222370222434%_))
                        (_%g222369222431%_ _%g222370222434%_))
                    (_%g222369222431%_ _%g222370222434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g222369222431%_
                                                     _%g222370222434%_))
                                                (_%g222369222431%_
                                                 _%g222370222434%_))
                                            (_%g222369222431%_
                                             _%g222370222434%_))))
                                    (_%g222369222431%_ _%g222370222434%_))))
                            (_%g222369222431%_ _%g222370222434%_))
                        (_%g222369222431%_ _%g222370222434%_))))
                (_%g222369222431%_ _%g222370222434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g222369222431%_
                                                     _%g222370222434%_))
                                                (_%g222369222431%_
                                                 _%g222370222434%_))))
                                        (_%g222369222431%_
                                         _%g222370222434%_))))
                                (_%g222369222431%_ _%g222370222434%_))
                            (_%g222369222431%_ _%g222370222434%_))))
                    (_%g222369222431%_ _%g222370222434%_))
                (_%g222369222431%_ _%g222370222434%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g222369222431%_
                                                     _%g222370222434%_))))
                                            (_%g222369222431%_
                                             _%g222370222434%_))))
                                    (_%g222369222431%_ _%g222370222434%_))
                                (_%g222369222431%_ _%g222370222434%_))
                            (_%g222369222431%_ _%g222370222434%_))))
                    (_%g222369222431%_ _%g222370222434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g222369222431%_
                                                     _%g222370222434%_))))
                                            (_%g222369222431%_
                                             _%g222370222434%_))
                                        (_%g222369222431%_ _%g222370222434%_))
                                    (_%g222369222431%_ _%g222370222434%_))))
                            (_%g222369222431%_ _%g222370222434%_)))))
                (_%g222368223370%_ _%g222158222326%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd222202222320%_
                                                    _%hd222199222312%_
                                                    _%hd222196222304%_
                                                    _%hd222193222296%_
                                                    _%hd222175222248%_)
                                                   (_%g222155222208%_
                                                    _%g222156222211%_))))
                                           (_%g222155222208%_
                                            _%g222156222211%_))
                                       (_%g222155222208%_ _%g222156222211%_))
                                   (_%g222155222208%_ _%g222156222211%_))
                               (_%g222155222208%_ _%g222156222211%_))))
                       (_%g222155222208%_ _%g222156222211%_))
                   (_%g222155222208%_ _%g222156222211%_))
               (_%g222155222208%_ _%g222156222211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g222155222208%_
                                                _%g222156222211%_))
                                           (_%g222155222208%_
                                            _%g222156222211%_))))
                                   (_%g222155222208%_ _%g222156222211%_))))
                           (_%g222155222208%_ _%g222156222211%_))))
                   (_%g222155222208%_ _%g222156222211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g222155222208%_
                                                    _%g222156222211%_))
                                               (_%g222155222208%_
                                                _%g222156222211%_))
                                           (_%g222155222208%_
                                            _%g222156222211%_))))
                                   (_%g222155222208%_ _%g222156222211%_))))
                           (_%g222155222208%_ _%g222156222211%_))
                       (_%g222155222208%_ _%g222156222211%_))))
               (_%g222155222208%_ _%g222156222211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g222155222208%_
                                                _%g222156222211%_))))
                                       (_%g222155222208%_ _%g222156222211%_))))
                               (_%g222155222208%_ _%g222156222211%_))
                           (_%g222155222208%_ _%g222156222211%_))
                       (_%g222155222208%_ _%g222156222211%_))))
               (_%g222155222208%_ _%g222156222211%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g222154223373%_
                                            _%g220547220609%_))
                                         _%stx220537%_))))))))
                  (_%__kont223600223601%_ (lambda () _%stx220537%_)))
              (let ((_%__match223629223630%_
                     (lambda (_%e220549220577%_
                              _%hd220550220580%_
                              _%tl220551220582%_
                              _%e220552220585%_
                              _%hd220553220588%_
                              _%tl220554220590%_
                              _%e220555220593%_
                              _%hd220556220596%_
                              _%tl220557220598%_
                              _%e220558220601%_
                              _%hd220559220604%_
                              _%tl220560220606%_)
                       (let ((_%g220547220609%_ _%hd220559220604%_)
                             (_%g220548220610%_ _%hd220556220596%_))
                         (if (let ((__tmp224834
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g220548220610%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp224834))
                             (_%__kont223598223599%_
                              _%g220547220609%_
                              _%g220548220610%_)
                             (_%__kont223600223601%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx223596223597%_))
                    (let ((_%e220549220577%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx223596223597%_))))
                      (let ((_%tl220551220582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220549220577%_)))
                            (_%hd220550220580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220549220577%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl220551220582%_))
                            (let ((_%e220552220585%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl220551220582%_))))
                              (let ((_%tl220554220590%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e220552220585%_)))
                                    (_%hd220553220588%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e220552220585%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd220553220588%_))
                                    (let ((_%e220555220593%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd220553220588%_))))
                                      (let ((_%tl220557220598%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e220555220593%_)))
                                            (_%hd220556220596%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e220555220593%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl220557220598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl220554220590%_))
                                                (let ((_%e220558220601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl220554220590%_))))
                                                  (let ((_%tl220560220606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e220558220601%_)))
                                                        (_%hd220559220604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e220558220601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl220560220606%_))
                                                        (_%__match223629223630%_
                                                         _%e220549220577%_
                                                         _%hd220550220580%_
                                                         _%tl220551220582%_
                                                         _%e220552220585%_
                                                         _%hd220553220588%_
                                                         _%tl220554220590%_
                                                         _%e220555220593%_
                                                         _%hd220556220596%_
                                                         _%tl220557220598%_
                                                         _%e220558220601%_
                                                         _%hd220559220604%_
                                                         _%tl220560220606%_)
                                                        (_%__kont223600223601%_))))
                                                (_%__kont223600223601%_))
                                            (_%__kont223600223601%_))))
                                    (_%__kont223600223601%_))))
                            (_%__kont223600223601%_))))
                    (_%__kont223600223601%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self220389%_ _%stx220390%_)
        (let* ((_%__stx223632223633%_ _%stx220390%_)
               (_%g220393220426%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223632223633%_)))))
          (let ((_%__kont223634223635%_
                 (lambda (_%g220395220516%_) _%g220395220516%_))
                (_%__kont223636223637%_
                 (lambda (_%g220411220455%_ _%g220412220456%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self220389%_ _%g220411220455%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx223632223633%_))
                (let ((_%e220396220476%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx223632223633%_))))
                  (let ((_%tl220398220481%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e220396220476%_)))
                        (_%hd220397220479%_
                         (let ()
                           (declare (not safe))
                           (##car _%e220396220476%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl220398220481%_))
                        (let ((_%e220399220484%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl220398220481%_))))
                          (let ((_%tl220401220489%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e220399220484%_)))
                                (_%hd220400220487%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e220399220484%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd220400220487%_))
                                (let ((_%e220402220492%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd220400220487%_))))
                                  (let ((_%tl220404220497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e220402220492%_)))
                                        (_%hd220403220495%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e220402220492%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd220403220495%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd220403220495%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl220404220497%_))
                                                (let ((_%e220405220500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl220404220497%_))))
                                                  (let ((_%tl220407220505%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e220405220500%_)))
                                                        (_%hd220406220503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e220405220500%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl220407220505%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl220401220489%_))
                                                            (let ((_%e220408220508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl220401220489%_))))
                      (let ((_%tl220410220513%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220408220508%_)))
                            (_%hd220409220511%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220408220508%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl220410220513%_))
                            (_%__kont223634223635%_ _%hd220406220503%_)
                            (let ()
                              (declare (not safe))
                              (_%g220393220426%_)))))
                    (let () (declare (not safe)) (_%g220393220426%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl220401220489%_))
                    (let ((_%e220419220447%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl220401220489%_))))
                      (let ((_%tl220421220452%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e220419220447%_)))
                            (_%hd220420220450%_
                             (let ()
                               (declare (not safe))
                               (##car _%e220419220447%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl220421220452%_))
                            (_%__kont223636223637%_
                             _%hd220420220450%_
                             _%hd220400220487%_)
                            (let ()
                              (declare (not safe))
                              (_%g220393220426%_)))))
                    (let () (declare (not safe)) (_%g220393220426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl220401220489%_))
                                                    (let ((_%e220419220447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl220401220489%_))))
                                                      (let ((_%tl220421220452%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e220419220447%_)))
                    (_%hd220420220450%_
                     (let () (declare (not safe)) (##car _%e220419220447%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl220421220452%_))
                    (_%__kont223636223637%_
                     _%hd220420220450%_
                     _%hd220400220487%_)
                    (let () (declare (not safe)) (_%g220393220426%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220393220426%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl220401220489%_))
                                                (let ((_%e220419220447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl220401220489%_))))
                                                  (let ((_%tl220421220452%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e220419220447%_)))
                                                        (_%hd220420220450%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e220419220447%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl220421220452%_))
                                                        (_%__kont223636223637%_
                                                         _%hd220420220450%_
                                                         _%hd220400220487%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g220393220426%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g220393220426%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl220401220489%_))
                                            (let ((_%e220419220447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl220401220489%_))))
                                              (let ((_%tl220421220452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e220419220447%_)))
                                                    (_%hd220420220450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e220419220447%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl220421220452%_))
                                                    (_%__kont223636223637%_
                                                     _%hd220420220450%_
                                                     _%hd220400220487%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g220393220426%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g220393220426%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl220401220489%_))
                                    (let ((_%e220419220447%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl220401220489%_))))
                                      (let ((_%tl220421220452%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e220419220447%_)))
                                            (_%hd220420220450%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e220419220447%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl220421220452%_))
                                            (_%__kont223636223637%_
                                             _%hd220420220450%_
                                             _%hd220400220487%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g220393220426%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g220393220426%_))))))
                        (let () (declare (not safe)) (_%g220393220426%_)))))
                (let () (declare (not safe)) (_%g220393220426%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self220305%_ _%stx220306%_)
        (let* ((_%g220308220329%_
                (lambda (_%g220309220326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220309220326%_))))
               (_%g220307220386%_
                (lambda (_%g220309220332%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220309220332%_))
                      (let ((_%e220313220334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g220309220332%_))))
                        (let ((_%hd220314220337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220313220334%_)))
                              (_%tl220315220339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220313220334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl220315220339%_))
                              (let ((_%e220316220342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl220315220339%_))))
                                (let ((_%hd220317220345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e220316220342%_)))
                                      (_%tl220318220347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e220316220342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl220318220347%_))
                                      (let ((_%e220319220350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl220318220347%_))))
                                        (let ((_%hd220320220353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220319220350%_)))
                                              (_%tl220321220355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220319220350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl220321220355%_))
                                              (let ((_%e220322220358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl220321220355%_))))
                                                (let ((_%hd220323220361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e220322220358%_)))
                                                      (_%tl220324220363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e220322220358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl220324220363%_))
                                                      ((lambda (_%g220310220366%_
                                                                _%g220311220367%_
                                                                _%g220312220368%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self220305%_
                                                            _%g220311220367%_)))
                                                       _%hd220323220361%_
                                                       _%hd220320220353%_
                                                       _%hd220317220345%_)
                                                      (_%g220308220329%_
                                                       _%g220309220332%_))))
                                              (_%g220308220329%_
                                               _%g220309220332%_))))
                                      (_%g220308220329%_ _%g220309220332%_))))
                              (_%g220308220329%_ _%g220309220332%_))))
                      (_%g220308220329%_ _%g220309220332%_)))))
          (_%g220307220386%_ _%stx220306%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self219270%_ _%stx219271%_)
        (let* ((_%__stx223698223699%_ _%stx219271%_)
               (_%g219279219501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx223698223699%_)))))
          (let ((_%__kont223700223701%_
                 (lambda (_%g219281220254%_
                          _%g219282220255%_
                          _%g219283220256%_
                          _%g219284220257%_)
                   (let ((__tmp224836
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self219270%_ 'methods)))
                         (__tmp224835
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g219282220255%_))))
                     (declare (not safe))
                     (hash-put! __tmp224836 __tmp224835 '#t))
                   (for-each
                    (lambda (_%g220290220292%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self219270%_ _%g220290220292%_)))
                    (let ((__tmp224837
                           (lambda (_%g220294220297%_ _%g220295220299%_)
                             (cons _%g220294220297%_ _%g220295220299%_))))
                      (declare (not safe))
                      (__foldr1 __tmp224837 '() _%g219281220254%_)))))
                (_%__kont223704223705%_
                 (lambda (_%g219324220091%_
                          _%g219325220092%_
                          _%g219326220093%_
                          _%g219327220094%_
                          _%g219328220095%_)
                   (let ((__tmp224839
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self219270%_ 'methods)))
                         (__tmp224838
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g219325220092%_))))
                     (declare (not safe))
                     (hash-put! __tmp224839 __tmp224838 '#t))
                   (for-each
                    (lambda (_%g220135220137%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self219270%_ _%g220135220137%_)))
                    (let ((__tmp224840
                           (lambda (_%g220139220142%_ _%g220140220144%_)
                             (cons _%g220139220142%_ _%g220140220144%_))))
                      (declare (not safe))
                      (__foldr1 __tmp224840 '() _%g219324220091%_)))))
                (_%__kont223708223709%_
                 (lambda (_%g219377219926%_
                          _%g219378219927%_
                          _%g219379219928%_)
                   (let ((__tmp224842
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self219270%_ 'slots)))
                         (__tmp224841
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g219377219926%_))))
                     (declare (not safe))
                     (hash-put! __tmp224842 __tmp224841 '#t))))
                (_%__kont223710223711%_
                 (lambda (_%g219410219803%_
                          _%g219411219804%_
                          _%g219412219805%_
                          _%g219413219806%_)
                   (let ((__tmp224844
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self219270%_ 'slots)))
                         (__tmp224843
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g219411219804%_))))
                     (declare (not safe))
                     (hash-put! __tmp224844 __tmp224843 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self219270%_ _%g219410219803%_))))
                (_%__kont223712223713%_
                 (lambda (_%g219447219677%_ _%g219448219678%_)
                   (let* ((_%accessor219700%_
                           (let ((__tmp224845
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g219448219678%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp224845)))
                          (_%klass219702%_
                           (let ((__tmp224846
                                  (##structure-ref
                                   _%accessor219700%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx219271%_
                              __tmp224846)))
                          (_%slot219704%_
                           (##structure-ref
                            _%accessor219700%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor219700%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass219702%_
                                    _%slot219704%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass219702%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp224848
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self219270%_ 'slots)))
                               (__tmp224847
                                (##structure-ref
                                 _%accessor219700%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp224848 __tmp224847 '#t))))))
                (_%__kont223714223715%_
                 (lambda (_%g219470219577%_
                          _%g219471219578%_
                          _%g219472219579%_)
                   (let* ((_%mutator219606%_
                           (let ((__tmp224849
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g219472219579%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp224849)))
                          (_%klass219608%_
                           (let ((__tmp224850
                                  (##structure-ref
                                   _%mutator219606%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx219271%_
                              __tmp224850)))
                          (_%slot219610%_
                           (##structure-ref
                            _%mutator219606%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator219606%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass219608%_
                                    _%slot219610%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass219608%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp224851
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self219270%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp224851 _%slot219610%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self219270%_ _%g219470219577%_)))))
                (_%__kont223716223717%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self219270%_ _%stx219271%_)))))
            (let* ((_%__match224197224198%_
                    (lambda (_%e219473219513%_
                             _%hd219474219516%_
                             _%tl219475219518%_
                             _%e219476219521%_
                             _%hd219477219524%_
                             _%tl219478219526%_
                             _%e219479219529%_
                             _%hd219480219532%_
                             _%tl219481219534%_
                             _%e219482219537%_
                             _%hd219483219540%_
                             _%tl219484219542%_
                             _%e219485219545%_
                             _%hd219486219548%_
                             _%tl219487219550%_
                             _%e219488219553%_
                             _%hd219489219556%_
                             _%tl219490219558%_
                             _%e219491219561%_
                             _%hd219492219564%_
                             _%tl219493219566%_
                             _%e219494219569%_
                             _%hd219495219572%_
                             _%tl219496219574%_)
                      (let ((_%g219470219577%_ _%hd219495219572%_)
                            (_%g219471219578%_ _%hd219492219564%_)
                            (_%g219472219579%_ _%hd219483219540%_))
                        (if (and (let ((__tmp224852
                                        (let ((__tmp224853
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g219472219579%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp224853))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp224852
                                    'gxc#!mutator::t))
                                 (let ((__tmp224854
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self219270%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g219471219578%_
                                    __tmp224854)))
                            (_%__kont223714223715%_
                             _%g219470219577%_
                             _%g219471219578%_
                             _%g219472219579%_)
                            (_%__kont223716223717%_)))))
                   (_%__match224195224196%_
                    (lambda (_%e219473219513%_
                             _%hd219474219516%_
                             _%tl219475219518%_
                             _%e219476219521%_
                             _%hd219477219524%_
                             _%tl219478219526%_
                             _%e219479219529%_
                             _%hd219480219532%_
                             _%tl219481219534%_
                             _%e219482219537%_
                             _%hd219483219540%_
                             _%tl219484219542%_
                             _%e219485219545%_
                             _%hd219486219548%_
                             _%tl219487219550%_
                             _%e219488219553%_
                             _%hd219489219556%_
                             _%tl219490219558%_
                             _%e219491219561%_
                             _%hd219492219564%_
                             _%tl219493219566%_
                             _%e219494219569%_
                             _%hd219495219572%_
                             _%tl219496219574%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl219496219574%_))
                          (_%__match224197224198%_
                           _%e219473219513%_
                           _%hd219474219516%_
                           _%tl219475219518%_
                           _%e219476219521%_
                           _%hd219477219524%_
                           _%tl219478219526%_
                           _%e219479219529%_
                           _%hd219480219532%_
                           _%tl219481219534%_
                           _%e219482219537%_
                           _%hd219483219540%_
                           _%tl219484219542%_
                           _%e219485219545%_
                           _%hd219486219548%_
                           _%tl219487219550%_
                           _%e219488219553%_
                           _%hd219489219556%_
                           _%tl219490219558%_
                           _%e219491219561%_
                           _%hd219492219564%_
                           _%tl219493219566%_
                           _%e219494219569%_
                           _%hd219495219572%_
                           _%tl219496219574%_)
                          (_%__kont223716223717%_))))
                   (_%__match224189224190%_
                    (lambda (_%e219473219513%_
                             _%hd219474219516%_
                             _%tl219475219518%_
                             _%e219476219521%_
                             _%hd219477219524%_
                             _%tl219478219526%_
                             _%e219479219529%_
                             _%hd219480219532%_
                             _%tl219481219534%_
                             _%e219482219537%_
                             _%hd219483219540%_
                             _%tl219484219542%_
                             _%e219485219545%_
                             _%hd219486219548%_
                             _%tl219487219550%_
                             _%e219488219553%_
                             _%hd219489219556%_
                             _%tl219490219558%_
                             _%e219491219561%_
                             _%hd219492219564%_
                             _%tl219493219566%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219487219550%_))
                          (let ((_%e219494219569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219487219550%_))))
                            (let ((_%tl219496219574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219494219569%_)))
                                  (_%hd219495219572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219494219569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl219496219574%_))
                                  (_%__match224197224198%_
                                   _%e219473219513%_
                                   _%hd219474219516%_
                                   _%tl219475219518%_
                                   _%e219476219521%_
                                   _%hd219477219524%_
                                   _%tl219478219526%_
                                   _%e219479219529%_
                                   _%hd219480219532%_
                                   _%tl219481219534%_
                                   _%e219482219537%_
                                   _%hd219483219540%_
                                   _%tl219484219542%_
                                   _%e219485219545%_
                                   _%hd219486219548%_
                                   _%tl219487219550%_
                                   _%e219488219553%_
                                   _%hd219489219556%_
                                   _%tl219490219558%_
                                   _%e219491219561%_
                                   _%hd219492219564%_
                                   _%tl219493219566%_
                                   _%e219494219569%_
                                   _%hd219495219572%_
                                   _%tl219496219574%_)
                                  (_%__kont223716223717%_))))
                          (_%__kont223716223717%_))))
                   (_%__match224135224136%_
                    (lambda (_%e219449219621%_
                             _%hd219450219624%_
                             _%tl219451219626%_
                             _%e219452219629%_
                             _%hd219453219632%_
                             _%tl219454219634%_
                             _%e219455219637%_
                             _%hd219456219640%_
                             _%tl219457219642%_
                             _%e219458219645%_
                             _%hd219459219648%_
                             _%tl219460219650%_
                             _%e219461219653%_
                             _%hd219462219656%_
                             _%tl219463219658%_
                             _%e219464219661%_
                             _%hd219465219664%_
                             _%tl219466219666%_
                             _%e219467219669%_
                             _%hd219468219672%_
                             _%tl219469219674%_)
                      (let ((_%g219447219677%_ _%hd219468219672%_)
                            (_%g219448219678%_ _%hd219459219648%_))
                        (if (and (let ((__tmp224855
                                        (let ((__tmp224856
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g219448219678%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp224856))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp224855
                                    'gxc#!accessor::t))
                                 (let ((__tmp224857
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self219270%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g219447219677%_
                                    __tmp224857)))
                            (_%__kont223712223713%_
                             _%g219447219677%_
                             _%g219448219678%_)
                            (_%__kont223716223717%_)))))
                   (_%__match224133224134%_
                    (lambda (_%e219449219621%_
                             _%hd219450219624%_
                             _%tl219451219626%_
                             _%e219452219629%_
                             _%hd219453219632%_
                             _%tl219454219634%_
                             _%e219455219637%_
                             _%hd219456219640%_
                             _%tl219457219642%_
                             _%e219458219645%_
                             _%hd219459219648%_
                             _%tl219460219650%_
                             _%e219461219653%_
                             _%hd219462219656%_
                             _%tl219463219658%_
                             _%e219464219661%_
                             _%hd219465219664%_
                             _%tl219466219666%_
                             _%e219467219669%_
                             _%hd219468219672%_
                             _%tl219469219674%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl219463219658%_))
                          (_%__match224135224136%_
                           _%e219449219621%_
                           _%hd219450219624%_
                           _%tl219451219626%_
                           _%e219452219629%_
                           _%hd219453219632%_
                           _%tl219454219634%_
                           _%e219455219637%_
                           _%hd219456219640%_
                           _%tl219457219642%_
                           _%e219458219645%_
                           _%hd219459219648%_
                           _%tl219460219650%_
                           _%e219461219653%_
                           _%hd219462219656%_
                           _%tl219463219658%_
                           _%e219464219661%_
                           _%hd219465219664%_
                           _%tl219466219666%_
                           _%e219467219669%_
                           _%hd219468219672%_
                           _%tl219469219674%_)
                          (_%__match224189224190%_
                           _%e219449219621%_
                           _%hd219450219624%_
                           _%tl219451219626%_
                           _%e219452219629%_
                           _%hd219453219632%_
                           _%tl219454219634%_
                           _%e219455219637%_
                           _%hd219456219640%_
                           _%tl219457219642%_
                           _%e219458219645%_
                           _%hd219459219648%_
                           _%tl219460219650%_
                           _%e219461219653%_
                           _%hd219462219656%_
                           _%tl219463219658%_
                           _%e219464219661%_
                           _%hd219465219664%_
                           _%tl219466219666%_
                           _%e219467219669%_
                           _%hd219468219672%_
                           _%tl219469219674%_))))
                   (_%__match224079224080%_
                    (lambda (_%e219414219715%_
                             _%hd219415219718%_
                             _%tl219416219720%_
                             _%e219417219723%_
                             _%hd219418219726%_
                             _%tl219419219728%_
                             _%e219420219731%_
                             _%hd219421219734%_
                             _%tl219422219736%_
                             _%e219423219739%_
                             _%hd219424219742%_
                             _%tl219425219744%_
                             _%e219426219747%_
                             _%hd219427219750%_
                             _%tl219428219752%_
                             _%e219429219755%_
                             _%hd219430219758%_
                             _%tl219431219760%_
                             _%e219432219763%_
                             _%hd219433219766%_
                             _%tl219434219768%_
                             _%e219435219771%_
                             _%hd219436219774%_
                             _%tl219437219776%_
                             _%e219438219779%_
                             _%hd219439219782%_
                             _%tl219440219784%_
                             _%e219441219787%_
                             _%hd219442219790%_
                             _%tl219443219792%_
                             _%e219444219795%_
                             _%hd219445219798%_
                             _%tl219446219800%_)
                      (let ((_%g219410219803%_ _%hd219445219798%_)
                            (_%g219411219804%_ _%hd219442219790%_)
                            (_%g219412219805%_ _%hd219433219766%_)
                            (_%g219413219806%_ _%hd219424219742%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g219413219806%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g219413219806%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp224858
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self219270%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g219412219805%_
                                    __tmp224858)))
                            (_%__kont223710223711%_
                             _%g219410219803%_
                             _%g219411219804%_
                             _%g219412219805%_
                             _%g219413219806%_)
                            (_%__kont223716223717%_)))))
                   (_%__match224071224072%_
                    (lambda (_%e219414219715%_
                             _%hd219415219718%_
                             _%tl219416219720%_
                             _%e219417219723%_
                             _%hd219418219726%_
                             _%tl219419219728%_
                             _%e219420219731%_
                             _%hd219421219734%_
                             _%tl219422219736%_
                             _%e219423219739%_
                             _%hd219424219742%_
                             _%tl219425219744%_
                             _%e219426219747%_
                             _%hd219427219750%_
                             _%tl219428219752%_
                             _%e219429219755%_
                             _%hd219430219758%_
                             _%tl219431219760%_
                             _%e219432219763%_
                             _%hd219433219766%_
                             _%tl219434219768%_
                             _%e219435219771%_
                             _%hd219436219774%_
                             _%tl219437219776%_
                             _%e219438219779%_
                             _%hd219439219782%_
                             _%tl219440219784%_
                             _%e219441219787%_
                             _%hd219442219790%_
                             _%tl219443219792%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219437219776%_))
                          (let ((_%e219444219795%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219437219776%_))))
                            (let ((_%tl219446219800%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219444219795%_)))
                                  (_%hd219445219798%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219444219795%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl219446219800%_))
                                  (_%__match224079224080%_
                                   _%e219414219715%_
                                   _%hd219415219718%_
                                   _%tl219416219720%_
                                   _%e219417219723%_
                                   _%hd219418219726%_
                                   _%tl219419219728%_
                                   _%e219420219731%_
                                   _%hd219421219734%_
                                   _%tl219422219736%_
                                   _%e219423219739%_
                                   _%hd219424219742%_
                                   _%tl219425219744%_
                                   _%e219426219747%_
                                   _%hd219427219750%_
                                   _%tl219428219752%_
                                   _%e219429219755%_
                                   _%hd219430219758%_
                                   _%tl219431219760%_
                                   _%e219432219763%_
                                   _%hd219433219766%_
                                   _%tl219434219768%_
                                   _%e219435219771%_
                                   _%hd219436219774%_
                                   _%tl219437219776%_
                                   _%e219438219779%_
                                   _%hd219439219782%_
                                   _%tl219440219784%_
                                   _%e219441219787%_
                                   _%hd219442219790%_
                                   _%tl219443219792%_
                                   _%e219444219795%_
                                   _%hd219445219798%_
                                   _%tl219446219800%_)
                                  (_%__kont223716223717%_))))
                          (_%__match224195224196%_
                           _%e219414219715%_
                           _%hd219415219718%_
                           _%tl219416219720%_
                           _%e219417219723%_
                           _%hd219418219726%_
                           _%tl219419219728%_
                           _%e219420219731%_
                           _%hd219421219734%_
                           _%tl219422219736%_
                           _%e219423219739%_
                           _%hd219424219742%_
                           _%tl219425219744%_
                           _%e219426219747%_
                           _%hd219427219750%_
                           _%tl219428219752%_
                           _%e219429219755%_
                           _%hd219430219758%_
                           _%tl219431219760%_
                           _%e219432219763%_
                           _%hd219433219766%_
                           _%tl219434219768%_
                           _%e219435219771%_
                           _%hd219436219774%_
                           _%tl219437219776%_))))
                   (_%__match223993223994%_
                    (lambda (_%e219380219846%_
                             _%hd219381219849%_
                             _%tl219382219851%_
                             _%e219383219854%_
                             _%hd219384219857%_
                             _%tl219385219859%_
                             _%e219386219862%_
                             _%hd219387219865%_
                             _%tl219388219867%_
                             _%e219389219870%_
                             _%hd219390219873%_
                             _%tl219391219875%_
                             _%e219392219878%_
                             _%hd219393219881%_
                             _%tl219394219883%_
                             _%e219395219886%_
                             _%hd219396219889%_
                             _%tl219397219891%_
                             _%e219398219894%_
                             _%hd219399219897%_
                             _%tl219400219899%_
                             _%e219401219902%_
                             _%hd219402219905%_
                             _%tl219403219907%_
                             _%e219404219910%_
                             _%hd219405219913%_
                             _%tl219406219915%_
                             _%e219407219918%_
                             _%hd219408219921%_
                             _%tl219409219923%_)
                      (let ((_%g219377219926%_ _%hd219408219921%_)
                            (_%g219378219927%_ _%hd219399219897%_)
                            (_%g219379219928%_ _%hd219390219873%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g219379219928%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g219379219928%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp224859
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self219270%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g219378219927%_
                                    __tmp224859)))
                            (_%__kont223708223709%_
                             _%g219377219926%_
                             _%g219378219927%_
                             _%g219379219928%_)
                            (_%__match224197224198%_
                             _%e219380219846%_
                             _%hd219381219849%_
                             _%tl219382219851%_
                             _%e219383219854%_
                             _%hd219384219857%_
                             _%tl219385219859%_
                             _%e219386219862%_
                             _%hd219387219865%_
                             _%tl219388219867%_
                             _%e219389219870%_
                             _%hd219390219873%_
                             _%tl219391219875%_
                             _%e219392219878%_
                             _%hd219393219881%_
                             _%tl219394219883%_
                             _%e219395219886%_
                             _%hd219396219889%_
                             _%tl219397219891%_
                             _%e219398219894%_
                             _%hd219399219897%_
                             _%tl219400219899%_
                             _%e219401219902%_
                             _%hd219402219905%_
                             _%tl219403219907%_)))))
                   (_%__match223991223992%_
                    (lambda (_%e219380219846%_
                             _%hd219381219849%_
                             _%tl219382219851%_
                             _%e219383219854%_
                             _%hd219384219857%_
                             _%tl219385219859%_
                             _%e219386219862%_
                             _%hd219387219865%_
                             _%tl219388219867%_
                             _%e219389219870%_
                             _%hd219390219873%_
                             _%tl219391219875%_
                             _%e219392219878%_
                             _%hd219393219881%_
                             _%tl219394219883%_
                             _%e219395219886%_
                             _%hd219396219889%_
                             _%tl219397219891%_
                             _%e219398219894%_
                             _%hd219399219897%_
                             _%tl219400219899%_
                             _%e219401219902%_
                             _%hd219402219905%_
                             _%tl219403219907%_
                             _%e219404219910%_
                             _%hd219405219913%_
                             _%tl219406219915%_
                             _%e219407219918%_
                             _%hd219408219921%_
                             _%tl219409219923%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl219403219907%_))
                          (_%__match223993223994%_
                           _%e219380219846%_
                           _%hd219381219849%_
                           _%tl219382219851%_
                           _%e219383219854%_
                           _%hd219384219857%_
                           _%tl219385219859%_
                           _%e219386219862%_
                           _%hd219387219865%_
                           _%tl219388219867%_
                           _%e219389219870%_
                           _%hd219390219873%_
                           _%tl219391219875%_
                           _%e219392219878%_
                           _%hd219393219881%_
                           _%tl219394219883%_
                           _%e219395219886%_
                           _%hd219396219889%_
                           _%tl219397219891%_
                           _%e219398219894%_
                           _%hd219399219897%_
                           _%tl219400219899%_
                           _%e219401219902%_
                           _%hd219402219905%_
                           _%tl219403219907%_
                           _%e219404219910%_
                           _%hd219405219913%_
                           _%tl219406219915%_
                           _%e219407219918%_
                           _%hd219408219921%_
                           _%tl219409219923%_)
                          (_%__match224071224072%_
                           _%e219380219846%_
                           _%hd219381219849%_
                           _%tl219382219851%_
                           _%e219383219854%_
                           _%hd219384219857%_
                           _%tl219385219859%_
                           _%e219386219862%_
                           _%hd219387219865%_
                           _%tl219388219867%_
                           _%e219389219870%_
                           _%hd219390219873%_
                           _%tl219391219875%_
                           _%e219392219878%_
                           _%hd219393219881%_
                           _%tl219394219883%_
                           _%e219395219886%_
                           _%hd219396219889%_
                           _%tl219397219891%_
                           _%e219398219894%_
                           _%hd219399219897%_
                           _%tl219400219899%_
                           _%e219401219902%_
                           _%hd219402219905%_
                           _%tl219403219907%_
                           _%e219404219910%_
                           _%hd219405219913%_
                           _%tl219406219915%_
                           _%e219407219918%_
                           _%hd219408219921%_
                           _%tl219409219923%_))))
                   (_%__match223981223982%_
                    (lambda (_%e219380219846%_
                             _%hd219381219849%_
                             _%tl219382219851%_
                             _%e219383219854%_
                             _%hd219384219857%_
                             _%tl219385219859%_
                             _%e219386219862%_
                             _%hd219387219865%_
                             _%tl219388219867%_
                             _%e219389219870%_
                             _%hd219390219873%_
                             _%tl219391219875%_
                             _%e219392219878%_
                             _%hd219393219881%_
                             _%tl219394219883%_
                             _%e219395219886%_
                             _%hd219396219889%_
                             _%tl219397219891%_
                             _%e219398219894%_
                             _%hd219399219897%_
                             _%tl219400219899%_
                             _%e219401219902%_
                             _%hd219402219905%_
                             _%tl219403219907%_
                             _%e219404219910%_
                             _%hd219405219913%_
                             _%tl219406219915%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd219405219913%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219406219915%_))
                              (let ((_%e219407219918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219406219915%_))))
                                (let ((_%tl219409219923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219407219918%_)))
                                      (_%hd219408219921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219407219918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219409219923%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl219403219907%_))
                                          (_%__match223993223994%_
                                           _%e219380219846%_
                                           _%hd219381219849%_
                                           _%tl219382219851%_
                                           _%e219383219854%_
                                           _%hd219384219857%_
                                           _%tl219385219859%_
                                           _%e219386219862%_
                                           _%hd219387219865%_
                                           _%tl219388219867%_
                                           _%e219389219870%_
                                           _%hd219390219873%_
                                           _%tl219391219875%_
                                           _%e219392219878%_
                                           _%hd219393219881%_
                                           _%tl219394219883%_
                                           _%e219395219886%_
                                           _%hd219396219889%_
                                           _%tl219397219891%_
                                           _%e219398219894%_
                                           _%hd219399219897%_
                                           _%tl219400219899%_
                                           _%e219401219902%_
                                           _%hd219402219905%_
                                           _%tl219403219907%_
                                           _%e219404219910%_
                                           _%hd219405219913%_
                                           _%tl219406219915%_
                                           _%e219407219918%_
                                           _%hd219408219921%_
                                           _%tl219409219923%_)
                                          (_%__match224071224072%_
                                           _%e219380219846%_
                                           _%hd219381219849%_
                                           _%tl219382219851%_
                                           _%e219383219854%_
                                           _%hd219384219857%_
                                           _%tl219385219859%_
                                           _%e219386219862%_
                                           _%hd219387219865%_
                                           _%tl219388219867%_
                                           _%e219389219870%_
                                           _%hd219390219873%_
                                           _%tl219391219875%_
                                           _%e219392219878%_
                                           _%hd219393219881%_
                                           _%tl219394219883%_
                                           _%e219395219886%_
                                           _%hd219396219889%_
                                           _%tl219397219891%_
                                           _%e219398219894%_
                                           _%hd219399219897%_
                                           _%tl219400219899%_
                                           _%e219401219902%_
                                           _%hd219402219905%_
                                           _%tl219403219907%_
                                           _%e219404219910%_
                                           _%hd219405219913%_
                                           _%tl219406219915%_
                                           _%e219407219918%_
                                           _%hd219408219921%_
                                           _%tl219409219923%_))
                                      (_%__match224195224196%_
                                       _%e219380219846%_
                                       _%hd219381219849%_
                                       _%tl219382219851%_
                                       _%e219383219854%_
                                       _%hd219384219857%_
                                       _%tl219385219859%_
                                       _%e219386219862%_
                                       _%hd219387219865%_
                                       _%tl219388219867%_
                                       _%e219389219870%_
                                       _%hd219390219873%_
                                       _%tl219391219875%_
                                       _%e219392219878%_
                                       _%hd219393219881%_
                                       _%tl219394219883%_
                                       _%e219395219886%_
                                       _%hd219396219889%_
                                       _%tl219397219891%_
                                       _%e219398219894%_
                                       _%hd219399219897%_
                                       _%tl219400219899%_
                                       _%e219401219902%_
                                       _%hd219402219905%_
                                       _%tl219403219907%_))))
                              (_%__match224195224196%_
                               _%e219380219846%_
                               _%hd219381219849%_
                               _%tl219382219851%_
                               _%e219383219854%_
                               _%hd219384219857%_
                               _%tl219385219859%_
                               _%e219386219862%_
                               _%hd219387219865%_
                               _%tl219388219867%_
                               _%e219389219870%_
                               _%hd219390219873%_
                               _%tl219391219875%_
                               _%e219392219878%_
                               _%hd219393219881%_
                               _%tl219394219883%_
                               _%e219395219886%_
                               _%hd219396219889%_
                               _%tl219397219891%_
                               _%e219398219894%_
                               _%hd219399219897%_
                               _%tl219400219899%_
                               _%e219401219902%_
                               _%hd219402219905%_
                               _%tl219403219907%_))
                          (_%__match224195224196%_
                           _%e219380219846%_
                           _%hd219381219849%_
                           _%tl219382219851%_
                           _%e219383219854%_
                           _%hd219384219857%_
                           _%tl219385219859%_
                           _%e219386219862%_
                           _%hd219387219865%_
                           _%tl219388219867%_
                           _%e219389219870%_
                           _%hd219390219873%_
                           _%tl219391219875%_
                           _%e219392219878%_
                           _%hd219393219881%_
                           _%tl219394219883%_
                           _%e219395219886%_
                           _%hd219396219889%_
                           _%tl219397219891%_
                           _%e219398219894%_
                           _%hd219399219897%_
                           _%tl219400219899%_
                           _%e219401219902%_
                           _%hd219402219905%_
                           _%tl219403219907%_))))
                   (_%__match223913223914%_
                    (lambda (_%e219329219965%_
                             _%hd219330219968%_
                             _%tl219331219970%_
                             _%e219332219973%_
                             _%hd219333219976%_
                             _%tl219334219978%_
                             _%e219335219981%_
                             _%hd219336219984%_
                             _%tl219337219986%_
                             _%e219338219989%_
                             _%hd219339219992%_
                             _%tl219340219994%_
                             _%e219341219997%_
                             _%hd219342220000%_
                             _%tl219343220002%_
                             _%e219344220005%_
                             _%hd219345220008%_
                             _%tl219346220010%_
                             _%e219347220013%_
                             _%hd219348220016%_
                             _%tl219349220018%_
                             _%e219350220021%_
                             _%hd219351220024%_
                             _%tl219352220026%_
                             _%e219353220029%_
                             _%hd219354220032%_
                             _%tl219355220034%_
                             _%e219356220037%_
                             _%hd219357220040%_
                             _%tl219358220042%_
                             _%e219359220045%_
                             _%hd219360220048%_
                             _%tl219361220050%_
                             _%e219362220053%_
                             _%hd219363220056%_
                             _%tl219364220058%_
                             _%e219365220061%_
                             _%hd219366220064%_
                             _%tl219367220066%_
                             _%__splice223706223707%_
                             _%target219368220069%_
                             _%tl219370220071%_)
                      (letrec ((_%loop219371220074%_
                                (lambda (_%hd219369220077%_
                                         _%args219375220079%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219369220077%_))
                                      (let ((_%e219372220081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219369220077%_))))
                                        (let ((_%lp-tl219374220086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219372220081%_)))
                                              (_%lp-hd219373220084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219372220081%_))))
                                          (_%loop219371220074%_
                                           _%lp-tl219374220086%_
                                           (cons _%lp-hd219373220084%_
                                                 _%args219375220079%_))))
                                      (let ((_%args219376220089%_
                                             (reverse _%args219375220079%_)))
                                        (let ((_%g219324220091%_
                                               _%args219376220089%_)
                                              (_%g219325220092%_
                                               _%hd219366220064%_)
                                              (_%g219326220093%_
                                               _%hd219357220040%_)
                                              (_%g219327220094%_
                                               _%hd219348220016%_)
                                              (_%g219328220095%_
                                               _%hd219339219992%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g219328220095%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g219327220094%_
                                                      'call-method))
                                                   (let ((__tmp224860
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self219270%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g219326220093%_
                                                      __tmp224860)))
                                              (_%__kont223704223705%_
                                               _%g219324220091%_
                                               _%g219325220092%_
                                               _%g219326220093%_
                                               _%g219327220094%_
                                               _%g219328220095%_)
                                              (_%__kont223716223717%_))))))))
                        (_%loop219371220074%_ _%target219368220069%_ '()))))
                   (_%__match223871223872%_
                    (lambda (_%e219329219965%_
                             _%hd219330219968%_
                             _%tl219331219970%_
                             _%e219332219973%_
                             _%hd219333219976%_
                             _%tl219334219978%_
                             _%e219335219981%_
                             _%hd219336219984%_
                             _%tl219337219986%_
                             _%e219338219989%_
                             _%hd219339219992%_
                             _%tl219340219994%_
                             _%e219341219997%_
                             _%hd219342220000%_
                             _%tl219343220002%_
                             _%e219344220005%_
                             _%hd219345220008%_
                             _%tl219346220010%_
                             _%e219347220013%_
                             _%hd219348220016%_
                             _%tl219349220018%_
                             _%e219350220021%_
                             _%hd219351220024%_
                             _%tl219352220026%_
                             _%e219353220029%_
                             _%hd219354220032%_
                             _%tl219355220034%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd219354220032%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219355220034%_))
                              (let ((_%e219356220037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219355220034%_))))
                                (let ((_%tl219358220042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219356220037%_)))
                                      (_%hd219357220040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219356220037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219358220042%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl219352220026%_))
                                          (let ((_%e219359220045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl219352220026%_))))
                                            (let ((_%tl219361220050%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e219359220045%_)))
                                                  (_%hd219360220048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e219359220045%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd219360220048%_))
                                                  (let ((_%e219362220053%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd219360220048%_))))
                                                    (let ((_%tl219364220058%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219362220053%_)))
                                                          (_%hd219363220056%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219362220053%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd219363220056%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd219363220056%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219364220058%_))
                          (let ((_%e219365220061%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219364220058%_))))
                            (let ((_%tl219367220066%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219365220061%_)))
                                  (_%hd219366220064%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219365220061%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl219367220066%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl219361220050%_))
                                      (let ((_%__splice223706223707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl219361220050%_
                                                '0))))
                                        (let ((_%tl219370220071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice223706223707%_
                                                  '1)))
                                              (_%target219368220069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice223706223707%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219370220071%_))
                                              (_%__match223913223914%_
                                               _%e219329219965%_
                                               _%hd219330219968%_
                                               _%tl219331219970%_
                                               _%e219332219973%_
                                               _%hd219333219976%_
                                               _%tl219334219978%_
                                               _%e219335219981%_
                                               _%hd219336219984%_
                                               _%tl219337219986%_
                                               _%e219338219989%_
                                               _%hd219339219992%_
                                               _%tl219340219994%_
                                               _%e219341219997%_
                                               _%hd219342220000%_
                                               _%tl219343220002%_
                                               _%e219344220005%_
                                               _%hd219345220008%_
                                               _%tl219346220010%_
                                               _%e219347220013%_
                                               _%hd219348220016%_
                                               _%tl219349220018%_
                                               _%e219350220021%_
                                               _%hd219351220024%_
                                               _%tl219352220026%_
                                               _%e219353220029%_
                                               _%hd219354220032%_
                                               _%tl219355220034%_
                                               _%e219356220037%_
                                               _%hd219357220040%_
                                               _%tl219358220042%_
                                               _%e219359220045%_
                                               _%hd219360220048%_
                                               _%tl219361220050%_
                                               _%e219362220053%_
                                               _%hd219363220056%_
                                               _%tl219364220058%_
                                               _%e219365220061%_
                                               _%hd219366220064%_
                                               _%tl219367220066%_
                                               _%__splice223706223707%_
                                               _%target219368220069%_
                                               _%tl219370220071%_)
                                              (_%__kont223716223717%_))))
                                      (_%__kont223716223717%_))
                                  (_%__kont223716223717%_))))
                          (_%__kont223716223717%_))
                      (_%__kont223716223717%_))
                  (_%__kont223716223717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223716223717%_))))
                                          (_%__match224195224196%_
                                           _%e219329219965%_
                                           _%hd219330219968%_
                                           _%tl219331219970%_
                                           _%e219332219973%_
                                           _%hd219333219976%_
                                           _%tl219334219978%_
                                           _%e219335219981%_
                                           _%hd219336219984%_
                                           _%tl219337219986%_
                                           _%e219338219989%_
                                           _%hd219339219992%_
                                           _%tl219340219994%_
                                           _%e219341219997%_
                                           _%hd219342220000%_
                                           _%tl219343220002%_
                                           _%e219344220005%_
                                           _%hd219345220008%_
                                           _%tl219346220010%_
                                           _%e219347220013%_
                                           _%hd219348220016%_
                                           _%tl219349220018%_
                                           _%e219350220021%_
                                           _%hd219351220024%_
                                           _%tl219352220026%_))
                                      (_%__match224195224196%_
                                       _%e219329219965%_
                                       _%hd219330219968%_
                                       _%tl219331219970%_
                                       _%e219332219973%_
                                       _%hd219333219976%_
                                       _%tl219334219978%_
                                       _%e219335219981%_
                                       _%hd219336219984%_
                                       _%tl219337219986%_
                                       _%e219338219989%_
                                       _%hd219339219992%_
                                       _%tl219340219994%_
                                       _%e219341219997%_
                                       _%hd219342220000%_
                                       _%tl219343220002%_
                                       _%e219344220005%_
                                       _%hd219345220008%_
                                       _%tl219346220010%_
                                       _%e219347220013%_
                                       _%hd219348220016%_
                                       _%tl219349220018%_
                                       _%e219350220021%_
                                       _%hd219351220024%_
                                       _%tl219352220026%_))))
                              (_%__match224195224196%_
                               _%e219329219965%_
                               _%hd219330219968%_
                               _%tl219331219970%_
                               _%e219332219973%_
                               _%hd219333219976%_
                               _%tl219334219978%_
                               _%e219335219981%_
                               _%hd219336219984%_
                               _%tl219337219986%_
                               _%e219338219989%_
                               _%hd219339219992%_
                               _%tl219340219994%_
                               _%e219341219997%_
                               _%hd219342220000%_
                               _%tl219343220002%_
                               _%e219344220005%_
                               _%hd219345220008%_
                               _%tl219346220010%_
                               _%e219347220013%_
                               _%hd219348220016%_
                               _%tl219349220018%_
                               _%e219350220021%_
                               _%hd219351220024%_
                               _%tl219352220026%_))
                          (_%__match223981223982%_
                           _%e219329219965%_
                           _%hd219330219968%_
                           _%tl219331219970%_
                           _%e219332219973%_
                           _%hd219333219976%_
                           _%tl219334219978%_
                           _%e219335219981%_
                           _%hd219336219984%_
                           _%tl219337219986%_
                           _%e219338219989%_
                           _%hd219339219992%_
                           _%tl219340219994%_
                           _%e219341219997%_
                           _%hd219342220000%_
                           _%tl219343220002%_
                           _%e219344220005%_
                           _%hd219345220008%_
                           _%tl219346220010%_
                           _%e219347220013%_
                           _%hd219348220016%_
                           _%tl219349220018%_
                           _%e219350220021%_
                           _%hd219351220024%_
                           _%tl219352220026%_
                           _%e219353220029%_
                           _%hd219354220032%_
                           _%tl219355220034%_))))
                   (_%__match223803223804%_
                    (lambda (_%e219285220152%_
                             _%hd219286220155%_
                             _%tl219287220157%_
                             _%e219288220160%_
                             _%hd219289220163%_
                             _%tl219290220165%_
                             _%e219291220168%_
                             _%hd219292220171%_
                             _%tl219293220173%_
                             _%e219294220176%_
                             _%hd219295220179%_
                             _%tl219296220181%_
                             _%e219297220184%_
                             _%hd219298220187%_
                             _%tl219299220189%_
                             _%e219300220192%_
                             _%hd219301220195%_
                             _%tl219302220197%_
                             _%e219303220200%_
                             _%hd219304220203%_
                             _%tl219305220205%_
                             _%e219306220208%_
                             _%hd219307220211%_
                             _%tl219308220213%_
                             _%e219309220216%_
                             _%hd219310220219%_
                             _%tl219311220221%_
                             _%e219312220224%_
                             _%hd219313220227%_
                             _%tl219314220229%_
                             _%__splice223702223703%_
                             _%target219315220232%_
                             _%tl219317220234%_)
                      (letrec ((_%loop219318220237%_
                                (lambda (_%hd219316220240%_
                                         _%args219322220242%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd219316220240%_))
                                      (let ((_%e219319220244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd219316220240%_))))
                                        (let ((_%lp-tl219321220249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219319220244%_)))
                                              (_%lp-hd219320220247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219319220244%_))))
                                          (_%loop219318220237%_
                                           _%lp-tl219321220249%_
                                           (cons _%lp-hd219320220247%_
                                                 _%args219322220242%_))))
                                      (let ((_%args219323220252%_
                                             (reverse _%args219322220242%_)))
                                        (let ((_%g219281220254%_
                                               _%args219323220252%_)
                                              (_%g219282220255%_
                                               _%hd219313220227%_)
                                              (_%g219283220256%_
                                               _%hd219304220203%_)
                                              (_%g219284220257%_
                                               _%hd219295220179%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g219284220257%_
                                                      'call-method))
                                                   (let ((__tmp224861
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self219270%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g219283220256%_
                                                      __tmp224861)))
                                              (_%__kont223700223701%_
                                               _%g219281220254%_
                                               _%g219282220255%_
                                               _%g219283220256%_
                                               _%g219284220257%_)
                                              (_%__match223991223992%_
                                               _%e219285220152%_
                                               _%hd219286220155%_
                                               _%tl219287220157%_
                                               _%e219288220160%_
                                               _%hd219289220163%_
                                               _%tl219290220165%_
                                               _%e219291220168%_
                                               _%hd219292220171%_
                                               _%tl219293220173%_
                                               _%e219294220176%_
                                               _%hd219295220179%_
                                               _%tl219296220181%_
                                               _%e219297220184%_
                                               _%hd219298220187%_
                                               _%tl219299220189%_
                                               _%e219300220192%_
                                               _%hd219301220195%_
                                               _%tl219302220197%_
                                               _%e219303220200%_
                                               _%hd219304220203%_
                                               _%tl219305220205%_
                                               _%e219306220208%_
                                               _%hd219307220211%_
                                               _%tl219308220213%_
                                               _%e219309220216%_
                                               _%hd219310220219%_
                                               _%tl219311220221%_
                                               _%e219312220224%_
                                               _%hd219313220227%_
                                               _%tl219314220229%_))))))))
                        (_%loop219318220237%_ _%target219315220232%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx223698223699%_))
                  (let ((_%e219285220152%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx223698223699%_))))
                    (let ((_%tl219287220157%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219285220152%_)))
                          (_%hd219286220155%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219285220152%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl219287220157%_))
                          (let ((_%e219288220160%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl219287220157%_))))
                            (let ((_%tl219290220165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219288220160%_)))
                                  (_%hd219289220163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219288220160%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd219289220163%_))
                                  (let ((_%e219291220168%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd219289220163%_))))
                                    (let ((_%tl219293220173%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e219291220168%_)))
                                          (_%hd219292220171%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e219291220168%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd219292220171%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd219292220171%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl219293220173%_))
                                                  (let ((_%e219294220176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl219293220173%_))))
                                                    (let ((_%tl219296220181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e219294220176%_)))
                                                          (_%hd219295220179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e219294220176%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl219296220181%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl219290220165%_))
                      (let ((_%e219297220184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl219290220165%_))))
                        (let ((_%tl219299220189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219297220184%_)))
                              (_%hd219298220187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219297220184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd219298220187%_))
                              (let ((_%e219300220192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd219298220187%_))))
                                (let ((_%tl219302220197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219300220192%_)))
                                      (_%hd219301220195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219300220192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd219301220195%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd219301220195%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl219302220197%_))
                                              (let ((_%e219303220200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl219302220197%_))))
                                                (let ((_%tl219305220205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e219303220200%_)))
                                                      (_%hd219304220203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e219303220200%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl219305220205%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl219299220189%_))
                                                          (let ((_%e219306220208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl219299220189%_))))
                    (let ((_%tl219308220213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e219306220208%_)))
                          (_%hd219307220211%_
                           (let ()
                             (declare (not safe))
                             (##car _%e219306220208%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd219307220211%_))
                          (let ((_%e219309220216%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd219307220211%_))))
                            (let ((_%tl219311220221%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e219309220216%_)))
                                  (_%hd219310220219%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e219309220216%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd219310220219%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd219310220219%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl219311220221%_))
                                          (let ((_%e219312220224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl219311220221%_))))
                                            (let ((_%tl219314220229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e219312220224%_)))
                                                  (_%hd219313220227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e219312220224%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl219314220229%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl219308220213%_))
                                                      (let ((_%__splice223702223703%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl219308220213%_
                        '0))))
                (let ((_%tl219317220234%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice223702223703%_ '1)))
                      (_%target219315220232%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice223702223703%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl219317220234%_))
                      (_%__match223803223804%_
                       _%e219285220152%_
                       _%hd219286220155%_
                       _%tl219287220157%_
                       _%e219288220160%_
                       _%hd219289220163%_
                       _%tl219290220165%_
                       _%e219291220168%_
                       _%hd219292220171%_
                       _%tl219293220173%_
                       _%e219294220176%_
                       _%hd219295220179%_
                       _%tl219296220181%_
                       _%e219297220184%_
                       _%hd219298220187%_
                       _%tl219299220189%_
                       _%e219300220192%_
                       _%hd219301220195%_
                       _%tl219302220197%_
                       _%e219303220200%_
                       _%hd219304220203%_
                       _%tl219305220205%_
                       _%e219306220208%_
                       _%hd219307220211%_
                       _%tl219308220213%_
                       _%e219309220216%_
                       _%hd219310220219%_
                       _%tl219311220221%_
                       _%e219312220224%_
                       _%hd219313220227%_
                       _%tl219314220229%_
                       _%__splice223702223703%_
                       _%target219315220232%_
                       _%tl219317220234%_)
                      (_%__match223991223992%_
                       _%e219285220152%_
                       _%hd219286220155%_
                       _%tl219287220157%_
                       _%e219288220160%_
                       _%hd219289220163%_
                       _%tl219290220165%_
                       _%e219291220168%_
                       _%hd219292220171%_
                       _%tl219293220173%_
                       _%e219294220176%_
                       _%hd219295220179%_
                       _%tl219296220181%_
                       _%e219297220184%_
                       _%hd219298220187%_
                       _%tl219299220189%_
                       _%e219300220192%_
                       _%hd219301220195%_
                       _%tl219302220197%_
                       _%e219303220200%_
                       _%hd219304220203%_
                       _%tl219305220205%_
                       _%e219306220208%_
                       _%hd219307220211%_
                       _%tl219308220213%_
                       _%e219309220216%_
                       _%hd219310220219%_
                       _%tl219311220221%_
                       _%e219312220224%_
                       _%hd219313220227%_
                       _%tl219314220229%_))))
              (_%__match223991223992%_
               _%e219285220152%_
               _%hd219286220155%_
               _%tl219287220157%_
               _%e219288220160%_
               _%hd219289220163%_
               _%tl219290220165%_
               _%e219291220168%_
               _%hd219292220171%_
               _%tl219293220173%_
               _%e219294220176%_
               _%hd219295220179%_
               _%tl219296220181%_
               _%e219297220184%_
               _%hd219298220187%_
               _%tl219299220189%_
               _%e219300220192%_
               _%hd219301220195%_
               _%tl219302220197%_
               _%e219303220200%_
               _%hd219304220203%_
               _%tl219305220205%_
               _%e219306220208%_
               _%hd219307220211%_
               _%tl219308220213%_
               _%e219309220216%_
               _%hd219310220219%_
               _%tl219311220221%_
               _%e219312220224%_
               _%hd219313220227%_
               _%tl219314220229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match224195224196%_
                                                   _%e219285220152%_
                                                   _%hd219286220155%_
                                                   _%tl219287220157%_
                                                   _%e219288220160%_
                                                   _%hd219289220163%_
                                                   _%tl219290220165%_
                                                   _%e219291220168%_
                                                   _%hd219292220171%_
                                                   _%tl219293220173%_
                                                   _%e219294220176%_
                                                   _%hd219295220179%_
                                                   _%tl219296220181%_
                                                   _%e219297220184%_
                                                   _%hd219298220187%_
                                                   _%tl219299220189%_
                                                   _%e219300220192%_
                                                   _%hd219301220195%_
                                                   _%tl219302220197%_
                                                   _%e219303220200%_
                                                   _%hd219304220203%_
                                                   _%tl219305220205%_
                                                   _%e219306220208%_
                                                   _%hd219307220211%_
                                                   _%tl219308220213%_))))
                                          (_%__match224195224196%_
                                           _%e219285220152%_
                                           _%hd219286220155%_
                                           _%tl219287220157%_
                                           _%e219288220160%_
                                           _%hd219289220163%_
                                           _%tl219290220165%_
                                           _%e219291220168%_
                                           _%hd219292220171%_
                                           _%tl219293220173%_
                                           _%e219294220176%_
                                           _%hd219295220179%_
                                           _%tl219296220181%_
                                           _%e219297220184%_
                                           _%hd219298220187%_
                                           _%tl219299220189%_
                                           _%e219300220192%_
                                           _%hd219301220195%_
                                           _%tl219302220197%_
                                           _%e219303220200%_
                                           _%hd219304220203%_
                                           _%tl219305220205%_
                                           _%e219306220208%_
                                           _%hd219307220211%_
                                           _%tl219308220213%_))
                                      (_%__match223871223872%_
                                       _%e219285220152%_
                                       _%hd219286220155%_
                                       _%tl219287220157%_
                                       _%e219288220160%_
                                       _%hd219289220163%_
                                       _%tl219290220165%_
                                       _%e219291220168%_
                                       _%hd219292220171%_
                                       _%tl219293220173%_
                                       _%e219294220176%_
                                       _%hd219295220179%_
                                       _%tl219296220181%_
                                       _%e219297220184%_
                                       _%hd219298220187%_
                                       _%tl219299220189%_
                                       _%e219300220192%_
                                       _%hd219301220195%_
                                       _%tl219302220197%_
                                       _%e219303220200%_
                                       _%hd219304220203%_
                                       _%tl219305220205%_
                                       _%e219306220208%_
                                       _%hd219307220211%_
                                       _%tl219308220213%_
                                       _%e219309220216%_
                                       _%hd219310220219%_
                                       _%tl219311220221%_))
                                  (_%__match224195224196%_
                                   _%e219285220152%_
                                   _%hd219286220155%_
                                   _%tl219287220157%_
                                   _%e219288220160%_
                                   _%hd219289220163%_
                                   _%tl219290220165%_
                                   _%e219291220168%_
                                   _%hd219292220171%_
                                   _%tl219293220173%_
                                   _%e219294220176%_
                                   _%hd219295220179%_
                                   _%tl219296220181%_
                                   _%e219297220184%_
                                   _%hd219298220187%_
                                   _%tl219299220189%_
                                   _%e219300220192%_
                                   _%hd219301220195%_
                                   _%tl219302220197%_
                                   _%e219303220200%_
                                   _%hd219304220203%_
                                   _%tl219305220205%_
                                   _%e219306220208%_
                                   _%hd219307220211%_
                                   _%tl219308220213%_))))
                          (_%__match224195224196%_
                           _%e219285220152%_
                           _%hd219286220155%_
                           _%tl219287220157%_
                           _%e219288220160%_
                           _%hd219289220163%_
                           _%tl219290220165%_
                           _%e219291220168%_
                           _%hd219292220171%_
                           _%tl219293220173%_
                           _%e219294220176%_
                           _%hd219295220179%_
                           _%tl219296220181%_
                           _%e219297220184%_
                           _%hd219298220187%_
                           _%tl219299220189%_
                           _%e219300220192%_
                           _%hd219301220195%_
                           _%tl219302220197%_
                           _%e219303220200%_
                           _%hd219304220203%_
                           _%tl219305220205%_
                           _%e219306220208%_
                           _%hd219307220211%_
                           _%tl219308220213%_))))
                  (_%__match224133224134%_
                   _%e219285220152%_
                   _%hd219286220155%_
                   _%tl219287220157%_
                   _%e219288220160%_
                   _%hd219289220163%_
                   _%tl219290220165%_
                   _%e219291220168%_
                   _%hd219292220171%_
                   _%tl219293220173%_
                   _%e219294220176%_
                   _%hd219295220179%_
                   _%tl219296220181%_
                   _%e219297220184%_
                   _%hd219298220187%_
                   _%tl219299220189%_
                   _%e219300220192%_
                   _%hd219301220195%_
                   _%tl219302220197%_
                   _%e219303220200%_
                   _%hd219304220203%_
                   _%tl219305220205%_))
              (_%__kont223716223717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont223716223717%_))
                                          (_%__kont223716223717%_))
                                      (_%__kont223716223717%_))))
                              (_%__kont223716223717%_))))
                      (_%__kont223716223717%_))
                  (_%__kont223716223717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont223716223717%_))
                                              (_%__kont223716223717%_))
                                          (_%__kont223716223717%_))))
                                  (_%__kont223716223717%_))))
                          (_%__kont223716223717%_))))
                  (_%__kont223716223717%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self218213%_ _%stx218214%_)
        (letrec ((_%force-e218216%_
                  (lambda (_%target219268%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target219268%_ '()))
                                      '()))))))
          (let* ((_%__stx224200224201%_ _%stx218214%_)
                 (_%g218224218446%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx224200224201%_)))))
            (let ((_%__kont224202224203%_
                   (lambda (_%g218226219214%_
                            _%g218227219215%_
                            _%g218228219216%_
                            _%g218229219217%_)
                     (let ((_%$method219262%_
                            (let ((__tmp224863
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self218213%_ 'methods)))
                                  (__tmp224862
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g218227219215%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp224863 __tmp224862)))
                           (_%args219263%_
                            (map (lambda (_%g219250219252%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self218213%_
                                      _%g219250219252%_)))
                                 (let ((__tmp224864
                                        (lambda (_%g219254219257%_
                                                 _%g219255219259%_)
                                          (cons _%g219254219257%_
                                                _%g219255219259%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224864
                                    '()
                                    _%g218226219214%_)))))
                       (let ((__tmp224865
                              (cons '%#call
                                    (cons (_%force-e218216%_ _%$method219262%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self218213%_
                                                               'receiver))
                                                            '()))
                                                _%args219263%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp224865 _%stx218214%_)))))
                  (_%__kont224206224207%_
                   (lambda (_%g218269219048%_
                            _%g218270219049%_
                            _%g218271219050%_
                            _%g218272219051%_
                            _%g218273219052%_)
                     (let ((_%$method219104%_
                            (let ((__tmp224867
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self218213%_ 'methods)))
                                  (__tmp224866
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g218270219049%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp224867 __tmp224866)))
                           (_%args219105%_
                            (map (lambda (_%g219092219094%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self218213%_
                                      _%g219092219094%_)))
                                 (let ((__tmp224868
                                        (lambda (_%g219096219099%_
                                                 _%g219097219101%_)
                                          (cons _%g219096219099%_
                                                _%g219097219101%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp224868
                                    '()
                                    _%g218269219048%_)))))
                       (let ((__tmp224869
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e218216%_
                                                 _%$method219104%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self218213%_ 'receiver))
                          '()))
              _%args219105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp224869 _%stx218214%_)))))
                  (_%__kont224210224211%_
                   (lambda (_%g218322218881%_
                            _%g218323218882%_
                            _%g218324218883%_)
                     (let* ((_%$field218915%_
                             (let ((__tmp224871
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self218213%_ 'slots)))
                                   (__tmp224870
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g218322218881%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp224871 __tmp224870)))
                            (__tmp224872
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self218213%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field218915%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self218213%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp224872 _%stx218214%_))))
                  (_%__kont224212224213%_
                   (lambda (_%g218355218755%_
                            _%g218356218756%_
                            _%g218357218757%_
                            _%g218358218758%_)
                     (let ((_%$field218793%_
                            (let ((__tmp224874
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self218213%_ 'slots)))
                                  (__tmp224873
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g218356218756%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp224874 __tmp224873)))
                           (_%expr218794%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self218213%_
                               _%g218355218755%_))))
                       (let ((__tmp224875
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self218213%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field218793%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self218213%_ 'receiver))
                          '()))
              (cons _%expr218794%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp224875 _%stx218214%_)))))
                  (_%__kont224214224215%_
                   (lambda (_%g218392218627%_ _%g218393218628%_)
                     (let* ((_%accessor218650%_
                             (let ((__tmp224876
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g218393218628%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp224876)))
                            (_%klass218652%_
                             (let ((__tmp224877
                                    (##structure-ref
                                     _%accessor218650%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx218214%_
                                __tmp224877)))
                            (_%slot218654%_
                             (##structure-ref
                              _%accessor218650%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor218650%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass218652%_
                                      _%slot218654%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218652%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx218214%_
                           (let* ((_%$field218660%_
                                   (let ((__tmp224878
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp224878 _%slot218654%_)))
                                  (__tmp224879
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self218213%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field218660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self218213%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp224879
                              _%stx218214%_))))))
                  (_%__kont224216224217%_
                   (lambda (_%g218415218522%_
                            _%g218416218523%_
                            _%g218417218524%_)
                     (let* ((_%mutator218552%_
                             (let ((__tmp224880
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g218417218524%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp224880)))
                            (_%klass218554%_
                             (let ((__tmp224881
                                    (##structure-ref
                                     _%mutator218552%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx218214%_
                                __tmp224881)))
                            (_%slot218556%_
                             (##structure-ref
                              _%mutator218552%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr218558%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self218213%_
                                _%g218415218522%_))))
                       (if (if (##structure-ref
                                _%mutator218552%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass218554%_
                                      _%slot218556%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass218554%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp224882
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g218417218524%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g218416218523%_
                                                                '()))
                                                    (cons _%expr218558%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp224882 _%stx218214%_))
                           (let* ((_%$field218564%_
                                   (let ((__tmp224883
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp224883 _%slot218556%_)))
                                  (__tmp224884
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self218213%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field218564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self218213%_ 'receiver))
                               '()))
                   (cons _%expr218558%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp224884
                              _%stx218214%_))))))
                  (_%__kont224218224219%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self218213%_ _%stx218214%_)))))
              (let* ((_%__match224699224700%_
                      (lambda (_%e218418218458%_
                               _%hd218419218461%_
                               _%tl218420218463%_
                               _%e218421218466%_
                               _%hd218422218469%_
                               _%tl218423218471%_
                               _%e218424218474%_
                               _%hd218425218477%_
                               _%tl218426218479%_
                               _%e218427218482%_
                               _%hd218428218485%_
                               _%tl218429218487%_
                               _%e218430218490%_
                               _%hd218431218493%_
                               _%tl218432218495%_
                               _%e218433218498%_
                               _%hd218434218501%_
                               _%tl218435218503%_
                               _%e218436218506%_
                               _%hd218437218509%_
                               _%tl218438218511%_
                               _%e218439218514%_
                               _%hd218440218517%_
                               _%tl218441218519%_)
                        (let ((_%g218415218522%_ _%hd218440218517%_)
                              (_%g218416218523%_ _%hd218437218509%_)
                              (_%g218417218524%_ _%hd218428218485%_))
                          (if (and (let ((__tmp224885
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g218416218523%_
                                      __tmp224885))
                                   (let ((__tmp224886
                                          (let ((__tmp224887
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g218417218524%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp224887))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp224886
                                      'gxc#!mutator::t)))
                              (_%__kont224216224217%_
                               _%g218415218522%_
                               _%g218416218523%_
                               _%g218417218524%_)
                              (_%__kont224218224219%_)))))
                     (_%__match224697224698%_
                      (lambda (_%e218418218458%_
                               _%hd218419218461%_
                               _%tl218420218463%_
                               _%e218421218466%_
                               _%hd218422218469%_
                               _%tl218423218471%_
                               _%e218424218474%_
                               _%hd218425218477%_
                               _%tl218426218479%_
                               _%e218427218482%_
                               _%hd218428218485%_
                               _%tl218429218487%_
                               _%e218430218490%_
                               _%hd218431218493%_
                               _%tl218432218495%_
                               _%e218433218498%_
                               _%hd218434218501%_
                               _%tl218435218503%_
                               _%e218436218506%_
                               _%hd218437218509%_
                               _%tl218438218511%_
                               _%e218439218514%_
                               _%hd218440218517%_
                               _%tl218441218519%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl218441218519%_))
                            (_%__match224699224700%_
                             _%e218418218458%_
                             _%hd218419218461%_
                             _%tl218420218463%_
                             _%e218421218466%_
                             _%hd218422218469%_
                             _%tl218423218471%_
                             _%e218424218474%_
                             _%hd218425218477%_
                             _%tl218426218479%_
                             _%e218427218482%_
                             _%hd218428218485%_
                             _%tl218429218487%_
                             _%e218430218490%_
                             _%hd218431218493%_
                             _%tl218432218495%_
                             _%e218433218498%_
                             _%hd218434218501%_
                             _%tl218435218503%_
                             _%e218436218506%_
                             _%hd218437218509%_
                             _%tl218438218511%_
                             _%e218439218514%_
                             _%hd218440218517%_
                             _%tl218441218519%_)
                            (_%__kont224218224219%_))))
                     (_%__match224691224692%_
                      (lambda (_%e218418218458%_
                               _%hd218419218461%_
                               _%tl218420218463%_
                               _%e218421218466%_
                               _%hd218422218469%_
                               _%tl218423218471%_
                               _%e218424218474%_
                               _%hd218425218477%_
                               _%tl218426218479%_
                               _%e218427218482%_
                               _%hd218428218485%_
                               _%tl218429218487%_
                               _%e218430218490%_
                               _%hd218431218493%_
                               _%tl218432218495%_
                               _%e218433218498%_
                               _%hd218434218501%_
                               _%tl218435218503%_
                               _%e218436218506%_
                               _%hd218437218509%_
                               _%tl218438218511%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218432218495%_))
                            (let ((_%e218439218514%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl218432218495%_))))
                              (let ((_%tl218441218519%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218439218514%_)))
                                    (_%hd218440218517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218439218514%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl218441218519%_))
                                    (_%__match224699224700%_
                                     _%e218418218458%_
                                     _%hd218419218461%_
                                     _%tl218420218463%_
                                     _%e218421218466%_
                                     _%hd218422218469%_
                                     _%tl218423218471%_
                                     _%e218424218474%_
                                     _%hd218425218477%_
                                     _%tl218426218479%_
                                     _%e218427218482%_
                                     _%hd218428218485%_
                                     _%tl218429218487%_
                                     _%e218430218490%_
                                     _%hd218431218493%_
                                     _%tl218432218495%_
                                     _%e218433218498%_
                                     _%hd218434218501%_
                                     _%tl218435218503%_
                                     _%e218436218506%_
                                     _%hd218437218509%_
                                     _%tl218438218511%_
                                     _%e218439218514%_
                                     _%hd218440218517%_
                                     _%tl218441218519%_)
                                    (_%__kont224218224219%_))))
                            (_%__kont224218224219%_))))
                     (_%__match224637224638%_
                      (lambda (_%e218394218571%_
                               _%hd218395218574%_
                               _%tl218396218576%_
                               _%e218397218579%_
                               _%hd218398218582%_
                               _%tl218399218584%_
                               _%e218400218587%_
                               _%hd218401218590%_
                               _%tl218402218592%_
                               _%e218403218595%_
                               _%hd218404218598%_
                               _%tl218405218600%_
                               _%e218406218603%_
                               _%hd218407218606%_
                               _%tl218408218608%_
                               _%e218409218611%_
                               _%hd218410218614%_
                               _%tl218411218616%_
                               _%e218412218619%_
                               _%hd218413218622%_
                               _%tl218414218624%_)
                        (let ((_%g218392218627%_ _%hd218413218622%_)
                              (_%g218393218628%_ _%hd218404218598%_))
                          (if (and (let ((__tmp224888
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g218392218627%_
                                      __tmp224888))
                                   (let ((__tmp224889
                                          (let ((__tmp224890
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g218393218628%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp224890))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp224889
                                      'gxc#!accessor::t)))
                              (_%__kont224214224215%_
                               _%g218392218627%_
                               _%g218393218628%_)
                              (_%__kont224218224219%_)))))
                     (_%__match224635224636%_
                      (lambda (_%e218394218571%_
                               _%hd218395218574%_
                               _%tl218396218576%_
                               _%e218397218579%_
                               _%hd218398218582%_
                               _%tl218399218584%_
                               _%e218400218587%_
                               _%hd218401218590%_
                               _%tl218402218592%_
                               _%e218403218595%_
                               _%hd218404218598%_
                               _%tl218405218600%_
                               _%e218406218603%_
                               _%hd218407218606%_
                               _%tl218408218608%_
                               _%e218409218611%_
                               _%hd218410218614%_
                               _%tl218411218616%_
                               _%e218412218619%_
                               _%hd218413218622%_
                               _%tl218414218624%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl218408218608%_))
                            (_%__match224637224638%_
                             _%e218394218571%_
                             _%hd218395218574%_
                             _%tl218396218576%_
                             _%e218397218579%_
                             _%hd218398218582%_
                             _%tl218399218584%_
                             _%e218400218587%_
                             _%hd218401218590%_
                             _%tl218402218592%_
                             _%e218403218595%_
                             _%hd218404218598%_
                             _%tl218405218600%_
                             _%e218406218603%_
                             _%hd218407218606%_
                             _%tl218408218608%_
                             _%e218409218611%_
                             _%hd218410218614%_
                             _%tl218411218616%_
                             _%e218412218619%_
                             _%hd218413218622%_
                             _%tl218414218624%_)
                            (_%__match224691224692%_
                             _%e218394218571%_
                             _%hd218395218574%_
                             _%tl218396218576%_
                             _%e218397218579%_
                             _%hd218398218582%_
                             _%tl218399218584%_
                             _%e218400218587%_
                             _%hd218401218590%_
                             _%tl218402218592%_
                             _%e218403218595%_
                             _%hd218404218598%_
                             _%tl218405218600%_
                             _%e218406218603%_
                             _%hd218407218606%_
                             _%tl218408218608%_
                             _%e218409218611%_
                             _%hd218410218614%_
                             _%tl218411218616%_
                             _%e218412218619%_
                             _%hd218413218622%_
                             _%tl218414218624%_))))
                     (_%__match224581224582%_
                      (lambda (_%e218359218667%_
                               _%hd218360218670%_
                               _%tl218361218672%_
                               _%e218362218675%_
                               _%hd218363218678%_
                               _%tl218364218680%_
                               _%e218365218683%_
                               _%hd218366218686%_
                               _%tl218367218688%_
                               _%e218368218691%_
                               _%hd218369218694%_
                               _%tl218370218696%_
                               _%e218371218699%_
                               _%hd218372218702%_
                               _%tl218373218704%_
                               _%e218374218707%_
                               _%hd218375218710%_
                               _%tl218376218712%_
                               _%e218377218715%_
                               _%hd218378218718%_
                               _%tl218379218720%_
                               _%e218380218723%_
                               _%hd218381218726%_
                               _%tl218382218728%_
                               _%e218383218731%_
                               _%hd218384218734%_
                               _%tl218385218736%_
                               _%e218386218739%_
                               _%hd218387218742%_
                               _%tl218388218744%_
                               _%e218389218747%_
                               _%hd218390218750%_
                               _%tl218391218752%_)
                        (let ((_%g218355218755%_ _%hd218390218750%_)
                              (_%g218356218756%_ _%hd218387218742%_)
                              (_%g218357218757%_ _%hd218378218718%_)
                              (_%g218358218758%_ _%hd218369218694%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g218358218758%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g218358218758%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp224891
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g218357218757%_
                                      __tmp224891)))
                              (_%__kont224212224213%_
                               _%g218355218755%_
                               _%g218356218756%_
                               _%g218357218757%_
                               _%g218358218758%_)
                              (_%__kont224218224219%_)))))
                     (_%__match224573224574%_
                      (lambda (_%e218359218667%_
                               _%hd218360218670%_
                               _%tl218361218672%_
                               _%e218362218675%_
                               _%hd218363218678%_
                               _%tl218364218680%_
                               _%e218365218683%_
                               _%hd218366218686%_
                               _%tl218367218688%_
                               _%e218368218691%_
                               _%hd218369218694%_
                               _%tl218370218696%_
                               _%e218371218699%_
                               _%hd218372218702%_
                               _%tl218373218704%_
                               _%e218374218707%_
                               _%hd218375218710%_
                               _%tl218376218712%_
                               _%e218377218715%_
                               _%hd218378218718%_
                               _%tl218379218720%_
                               _%e218380218723%_
                               _%hd218381218726%_
                               _%tl218382218728%_
                               _%e218383218731%_
                               _%hd218384218734%_
                               _%tl218385218736%_
                               _%e218386218739%_
                               _%hd218387218742%_
                               _%tl218388218744%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218382218728%_))
                            (let ((_%e218389218747%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl218382218728%_))))
                              (let ((_%tl218391218752%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218389218747%_)))
                                    (_%hd218390218750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218389218747%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl218391218752%_))
                                    (_%__match224581224582%_
                                     _%e218359218667%_
                                     _%hd218360218670%_
                                     _%tl218361218672%_
                                     _%e218362218675%_
                                     _%hd218363218678%_
                                     _%tl218364218680%_
                                     _%e218365218683%_
                                     _%hd218366218686%_
                                     _%tl218367218688%_
                                     _%e218368218691%_
                                     _%hd218369218694%_
                                     _%tl218370218696%_
                                     _%e218371218699%_
                                     _%hd218372218702%_
                                     _%tl218373218704%_
                                     _%e218374218707%_
                                     _%hd218375218710%_
                                     _%tl218376218712%_
                                     _%e218377218715%_
                                     _%hd218378218718%_
                                     _%tl218379218720%_
                                     _%e218380218723%_
                                     _%hd218381218726%_
                                     _%tl218382218728%_
                                     _%e218383218731%_
                                     _%hd218384218734%_
                                     _%tl218385218736%_
                                     _%e218386218739%_
                                     _%hd218387218742%_
                                     _%tl218388218744%_
                                     _%e218389218747%_
                                     _%hd218390218750%_
                                     _%tl218391218752%_)
                                    (_%__kont224218224219%_))))
                            (_%__match224697224698%_
                             _%e218359218667%_
                             _%hd218360218670%_
                             _%tl218361218672%_
                             _%e218362218675%_
                             _%hd218363218678%_
                             _%tl218364218680%_
                             _%e218365218683%_
                             _%hd218366218686%_
                             _%tl218367218688%_
                             _%e218368218691%_
                             _%hd218369218694%_
                             _%tl218370218696%_
                             _%e218371218699%_
                             _%hd218372218702%_
                             _%tl218373218704%_
                             _%e218374218707%_
                             _%hd218375218710%_
                             _%tl218376218712%_
                             _%e218377218715%_
                             _%hd218378218718%_
                             _%tl218379218720%_
                             _%e218380218723%_
                             _%hd218381218726%_
                             _%tl218382218728%_))))
                     (_%__match224495224496%_
                      (lambda (_%e218325218801%_
                               _%hd218326218804%_
                               _%tl218327218806%_
                               _%e218328218809%_
                               _%hd218329218812%_
                               _%tl218330218814%_
                               _%e218331218817%_
                               _%hd218332218820%_
                               _%tl218333218822%_
                               _%e218334218825%_
                               _%hd218335218828%_
                               _%tl218336218830%_
                               _%e218337218833%_
                               _%hd218338218836%_
                               _%tl218339218838%_
                               _%e218340218841%_
                               _%hd218341218844%_
                               _%tl218342218846%_
                               _%e218343218849%_
                               _%hd218344218852%_
                               _%tl218345218854%_
                               _%e218346218857%_
                               _%hd218347218860%_
                               _%tl218348218862%_
                               _%e218349218865%_
                               _%hd218350218868%_
                               _%tl218351218870%_
                               _%e218352218873%_
                               _%hd218353218876%_
                               _%tl218354218878%_)
                        (let ((_%g218322218881%_ _%hd218353218876%_)
                              (_%g218323218882%_ _%hd218344218852%_)
                              (_%g218324218883%_ _%hd218335218828%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g218324218883%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g218324218883%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp224892
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self218213%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g218323218882%_
                                      __tmp224892)))
                              (_%__kont224210224211%_
                               _%g218322218881%_
                               _%g218323218882%_
                               _%g218324218883%_)
                              (_%__match224699224700%_
                               _%e218325218801%_
                               _%hd218326218804%_
                               _%tl218327218806%_
                               _%e218328218809%_
                               _%hd218329218812%_
                               _%tl218330218814%_
                               _%e218331218817%_
                               _%hd218332218820%_
                               _%tl218333218822%_
                               _%e218334218825%_
                               _%hd218335218828%_
                               _%tl218336218830%_
                               _%e218337218833%_
                               _%hd218338218836%_
                               _%tl218339218838%_
                               _%e218340218841%_
                               _%hd218341218844%_
                               _%tl218342218846%_
                               _%e218343218849%_
                               _%hd218344218852%_
                               _%tl218345218854%_
                               _%e218346218857%_
                               _%hd218347218860%_
                               _%tl218348218862%_)))))
                     (_%__match224493224494%_
                      (lambda (_%e218325218801%_
                               _%hd218326218804%_
                               _%tl218327218806%_
                               _%e218328218809%_
                               _%hd218329218812%_
                               _%tl218330218814%_
                               _%e218331218817%_
                               _%hd218332218820%_
                               _%tl218333218822%_
                               _%e218334218825%_
                               _%hd218335218828%_
                               _%tl218336218830%_
                               _%e218337218833%_
                               _%hd218338218836%_
                               _%tl218339218838%_
                               _%e218340218841%_
                               _%hd218341218844%_
                               _%tl218342218846%_
                               _%e218343218849%_
                               _%hd218344218852%_
                               _%tl218345218854%_
                               _%e218346218857%_
                               _%hd218347218860%_
                               _%tl218348218862%_
                               _%e218349218865%_
                               _%hd218350218868%_
                               _%tl218351218870%_
                               _%e218352218873%_
                               _%hd218353218876%_
                               _%tl218354218878%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl218348218862%_))
                            (_%__match224495224496%_
                             _%e218325218801%_
                             _%hd218326218804%_
                             _%tl218327218806%_
                             _%e218328218809%_
                             _%hd218329218812%_
                             _%tl218330218814%_
                             _%e218331218817%_
                             _%hd218332218820%_
                             _%tl218333218822%_
                             _%e218334218825%_
                             _%hd218335218828%_
                             _%tl218336218830%_
                             _%e218337218833%_
                             _%hd218338218836%_
                             _%tl218339218838%_
                             _%e218340218841%_
                             _%hd218341218844%_
                             _%tl218342218846%_
                             _%e218343218849%_
                             _%hd218344218852%_
                             _%tl218345218854%_
                             _%e218346218857%_
                             _%hd218347218860%_
                             _%tl218348218862%_
                             _%e218349218865%_
                             _%hd218350218868%_
                             _%tl218351218870%_
                             _%e218352218873%_
                             _%hd218353218876%_
                             _%tl218354218878%_)
                            (_%__match224573224574%_
                             _%e218325218801%_
                             _%hd218326218804%_
                             _%tl218327218806%_
                             _%e218328218809%_
                             _%hd218329218812%_
                             _%tl218330218814%_
                             _%e218331218817%_
                             _%hd218332218820%_
                             _%tl218333218822%_
                             _%e218334218825%_
                             _%hd218335218828%_
                             _%tl218336218830%_
                             _%e218337218833%_
                             _%hd218338218836%_
                             _%tl218339218838%_
                             _%e218340218841%_
                             _%hd218341218844%_
                             _%tl218342218846%_
                             _%e218343218849%_
                             _%hd218344218852%_
                             _%tl218345218854%_
                             _%e218346218857%_
                             _%hd218347218860%_
                             _%tl218348218862%_
                             _%e218349218865%_
                             _%hd218350218868%_
                             _%tl218351218870%_
                             _%e218352218873%_
                             _%hd218353218876%_
                             _%tl218354218878%_))))
                     (_%__match224483224484%_
                      (lambda (_%e218325218801%_
                               _%hd218326218804%_
                               _%tl218327218806%_
                               _%e218328218809%_
                               _%hd218329218812%_
                               _%tl218330218814%_
                               _%e218331218817%_
                               _%hd218332218820%_
                               _%tl218333218822%_
                               _%e218334218825%_
                               _%hd218335218828%_
                               _%tl218336218830%_
                               _%e218337218833%_
                               _%hd218338218836%_
                               _%tl218339218838%_
                               _%e218340218841%_
                               _%hd218341218844%_
                               _%tl218342218846%_
                               _%e218343218849%_
                               _%hd218344218852%_
                               _%tl218345218854%_
                               _%e218346218857%_
                               _%hd218347218860%_
                               _%tl218348218862%_
                               _%e218349218865%_
                               _%hd218350218868%_
                               _%tl218351218870%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd218350218868%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218351218870%_))
                                (let ((_%e218352218873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl218351218870%_))))
                                  (let ((_%tl218354218878%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218352218873%_)))
                                        (_%hd218353218876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218352218873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218354218878%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl218348218862%_))
                                            (_%__match224495224496%_
                                             _%e218325218801%_
                                             _%hd218326218804%_
                                             _%tl218327218806%_
                                             _%e218328218809%_
                                             _%hd218329218812%_
                                             _%tl218330218814%_
                                             _%e218331218817%_
                                             _%hd218332218820%_
                                             _%tl218333218822%_
                                             _%e218334218825%_
                                             _%hd218335218828%_
                                             _%tl218336218830%_
                                             _%e218337218833%_
                                             _%hd218338218836%_
                                             _%tl218339218838%_
                                             _%e218340218841%_
                                             _%hd218341218844%_
                                             _%tl218342218846%_
                                             _%e218343218849%_
                                             _%hd218344218852%_
                                             _%tl218345218854%_
                                             _%e218346218857%_
                                             _%hd218347218860%_
                                             _%tl218348218862%_
                                             _%e218349218865%_
                                             _%hd218350218868%_
                                             _%tl218351218870%_
                                             _%e218352218873%_
                                             _%hd218353218876%_
                                             _%tl218354218878%_)
                                            (_%__match224573224574%_
                                             _%e218325218801%_
                                             _%hd218326218804%_
                                             _%tl218327218806%_
                                             _%e218328218809%_
                                             _%hd218329218812%_
                                             _%tl218330218814%_
                                             _%e218331218817%_
                                             _%hd218332218820%_
                                             _%tl218333218822%_
                                             _%e218334218825%_
                                             _%hd218335218828%_
                                             _%tl218336218830%_
                                             _%e218337218833%_
                                             _%hd218338218836%_
                                             _%tl218339218838%_
                                             _%e218340218841%_
                                             _%hd218341218844%_
                                             _%tl218342218846%_
                                             _%e218343218849%_
                                             _%hd218344218852%_
                                             _%tl218345218854%_
                                             _%e218346218857%_
                                             _%hd218347218860%_
                                             _%tl218348218862%_
                                             _%e218349218865%_
                                             _%hd218350218868%_
                                             _%tl218351218870%_
                                             _%e218352218873%_
                                             _%hd218353218876%_
                                             _%tl218354218878%_))
                                        (_%__match224697224698%_
                                         _%e218325218801%_
                                         _%hd218326218804%_
                                         _%tl218327218806%_
                                         _%e218328218809%_
                                         _%hd218329218812%_
                                         _%tl218330218814%_
                                         _%e218331218817%_
                                         _%hd218332218820%_
                                         _%tl218333218822%_
                                         _%e218334218825%_
                                         _%hd218335218828%_
                                         _%tl218336218830%_
                                         _%e218337218833%_
                                         _%hd218338218836%_
                                         _%tl218339218838%_
                                         _%e218340218841%_
                                         _%hd218341218844%_
                                         _%tl218342218846%_
                                         _%e218343218849%_
                                         _%hd218344218852%_
                                         _%tl218345218854%_
                                         _%e218346218857%_
                                         _%hd218347218860%_
                                         _%tl218348218862%_))))
                                (_%__match224697224698%_
                                 _%e218325218801%_
                                 _%hd218326218804%_
                                 _%tl218327218806%_
                                 _%e218328218809%_
                                 _%hd218329218812%_
                                 _%tl218330218814%_
                                 _%e218331218817%_
                                 _%hd218332218820%_
                                 _%tl218333218822%_
                                 _%e218334218825%_
                                 _%hd218335218828%_
                                 _%tl218336218830%_
                                 _%e218337218833%_
                                 _%hd218338218836%_
                                 _%tl218339218838%_
                                 _%e218340218841%_
                                 _%hd218341218844%_
                                 _%tl218342218846%_
                                 _%e218343218849%_
                                 _%hd218344218852%_
                                 _%tl218345218854%_
                                 _%e218346218857%_
                                 _%hd218347218860%_
                                 _%tl218348218862%_))
                            (_%__match224697224698%_
                             _%e218325218801%_
                             _%hd218326218804%_
                             _%tl218327218806%_
                             _%e218328218809%_
                             _%hd218329218812%_
                             _%tl218330218814%_
                             _%e218331218817%_
                             _%hd218332218820%_
                             _%tl218333218822%_
                             _%e218334218825%_
                             _%hd218335218828%_
                             _%tl218336218830%_
                             _%e218337218833%_
                             _%hd218338218836%_
                             _%tl218339218838%_
                             _%e218340218841%_
                             _%hd218341218844%_
                             _%tl218342218846%_
                             _%e218343218849%_
                             _%hd218344218852%_
                             _%tl218345218854%_
                             _%e218346218857%_
                             _%hd218347218860%_
                             _%tl218348218862%_))))
                     (_%__match224415224416%_
                      (lambda (_%e218274218922%_
                               _%hd218275218925%_
                               _%tl218276218927%_
                               _%e218277218930%_
                               _%hd218278218933%_
                               _%tl218279218935%_
                               _%e218280218938%_
                               _%hd218281218941%_
                               _%tl218282218943%_
                               _%e218283218946%_
                               _%hd218284218949%_
                               _%tl218285218951%_
                               _%e218286218954%_
                               _%hd218287218957%_
                               _%tl218288218959%_
                               _%e218289218962%_
                               _%hd218290218965%_
                               _%tl218291218967%_
                               _%e218292218970%_
                               _%hd218293218973%_
                               _%tl218294218975%_
                               _%e218295218978%_
                               _%hd218296218981%_
                               _%tl218297218983%_
                               _%e218298218986%_
                               _%hd218299218989%_
                               _%tl218300218991%_
                               _%e218301218994%_
                               _%hd218302218997%_
                               _%tl218303218999%_
                               _%e218304219002%_
                               _%hd218305219005%_
                               _%tl218306219007%_
                               _%e218307219010%_
                               _%hd218308219013%_
                               _%tl218309219015%_
                               _%e218310219018%_
                               _%hd218311219021%_
                               _%tl218312219023%_
                               _%__splice224208224209%_
                               _%target218313219026%_
                               _%tl218315219028%_)
                        (letrec ((_%loop218316219031%_
                                  (lambda (_%hd218314219034%_
                                           _%args218320219036%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd218314219034%_))
                                        (let ((_%e218317219038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd218314219034%_))))
                                          (let ((_%lp-tl218319219043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e218317219038%_)))
                                                (_%lp-hd218318219041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e218317219038%_))))
                                            (_%loop218316219031%_
                                             _%lp-tl218319219043%_
                                             (cons _%lp-hd218318219041%_
                                                   _%args218320219036%_))))
                                        (let ((_%args218321219046%_
                                               (reverse _%args218320219036%_)))
                                          (let ((_%g218269219048%_
                                                 _%args218321219046%_)
                                                (_%g218270219049%_
                                                 _%hd218311219021%_)
                                                (_%g218271219050%_
                                                 _%hd218302218997%_)
                                                (_%g218272219051%_
                                                 _%hd218293218973%_)
                                                (_%g218273219052%_
                                                 _%hd218284218949%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g218273219052%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g218272219051%_
                                                        'call-method))
                                                     (let ((__tmp224893
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self218213%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g218271219050%_
                                                        __tmp224893)))
                                                (_%__kont224206224207%_
                                                 _%g218269219048%_
                                                 _%g218270219049%_
                                                 _%g218271219050%_
                                                 _%g218272219051%_
                                                 _%g218273219052%_)
                                                (_%__kont224218224219%_))))))))
                          (_%loop218316219031%_ _%target218313219026%_ '()))))
                     (_%__match224373224374%_
                      (lambda (_%e218274218922%_
                               _%hd218275218925%_
                               _%tl218276218927%_
                               _%e218277218930%_
                               _%hd218278218933%_
                               _%tl218279218935%_
                               _%e218280218938%_
                               _%hd218281218941%_
                               _%tl218282218943%_
                               _%e218283218946%_
                               _%hd218284218949%_
                               _%tl218285218951%_
                               _%e218286218954%_
                               _%hd218287218957%_
                               _%tl218288218959%_
                               _%e218289218962%_
                               _%hd218290218965%_
                               _%tl218291218967%_
                               _%e218292218970%_
                               _%hd218293218973%_
                               _%tl218294218975%_
                               _%e218295218978%_
                               _%hd218296218981%_
                               _%tl218297218983%_
                               _%e218298218986%_
                               _%hd218299218989%_
                               _%tl218300218991%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd218299218989%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl218300218991%_))
                                (let ((_%e218301218994%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl218300218991%_))))
                                  (let ((_%tl218303218999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218301218994%_)))
                                        (_%hd218302218997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218301218994%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl218303218999%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl218297218983%_))
                                            (let ((_%e218304219002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl218297218983%_))))
                                              (let ((_%tl218306219007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e218304219002%_)))
                                                    (_%hd218305219005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e218304219002%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd218305219005%_))
                                                    (let ((_%e218307219010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd218305219005%_))))
                                                      (let ((_%tl218309219015%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e218307219010%_)))
                    (_%hd218308219013%_
                     (let () (declare (not safe)) (##car _%e218307219010%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd218308219013%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd218308219013%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218309219015%_))
                            (let ((_%e218310219018%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl218309219015%_))))
                              (let ((_%tl218312219023%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218310219018%_)))
                                    (_%hd218311219021%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218310219018%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl218312219023%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl218306219007%_))
                                        (let ((_%__splice224208224209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl218306219007%_
                                                  '0))))
                                          (let ((_%tl218315219028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice224208224209%_
                                                    '1)))
                                                (_%target218313219026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice224208224209%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl218315219028%_))
                                                (_%__match224415224416%_
                                                 _%e218274218922%_
                                                 _%hd218275218925%_
                                                 _%tl218276218927%_
                                                 _%e218277218930%_
                                                 _%hd218278218933%_
                                                 _%tl218279218935%_
                                                 _%e218280218938%_
                                                 _%hd218281218941%_
                                                 _%tl218282218943%_
                                                 _%e218283218946%_
                                                 _%hd218284218949%_
                                                 _%tl218285218951%_
                                                 _%e218286218954%_
                                                 _%hd218287218957%_
                                                 _%tl218288218959%_
                                                 _%e218289218962%_
                                                 _%hd218290218965%_
                                                 _%tl218291218967%_
                                                 _%e218292218970%_
                                                 _%hd218293218973%_
                                                 _%tl218294218975%_
                                                 _%e218295218978%_
                                                 _%hd218296218981%_
                                                 _%tl218297218983%_
                                                 _%e218298218986%_
                                                 _%hd218299218989%_
                                                 _%tl218300218991%_
                                                 _%e218301218994%_
                                                 _%hd218302218997%_
                                                 _%tl218303218999%_
                                                 _%e218304219002%_
                                                 _%hd218305219005%_
                                                 _%tl218306219007%_
                                                 _%e218307219010%_
                                                 _%hd218308219013%_
                                                 _%tl218309219015%_
                                                 _%e218310219018%_
                                                 _%hd218311219021%_
                                                 _%tl218312219023%_
                                                 _%__splice224208224209%_
                                                 _%target218313219026%_
                                                 _%tl218315219028%_)
                                                (_%__kont224218224219%_))))
                                        (_%__kont224218224219%_))
                                    (_%__kont224218224219%_))))
                            (_%__kont224218224219%_))
                        (_%__kont224218224219%_))
                    (_%__kont224218224219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont224218224219%_))))
                                            (_%__match224697224698%_
                                             _%e218274218922%_
                                             _%hd218275218925%_
                                             _%tl218276218927%_
                                             _%e218277218930%_
                                             _%hd218278218933%_
                                             _%tl218279218935%_
                                             _%e218280218938%_
                                             _%hd218281218941%_
                                             _%tl218282218943%_
                                             _%e218283218946%_
                                             _%hd218284218949%_
                                             _%tl218285218951%_
                                             _%e218286218954%_
                                             _%hd218287218957%_
                                             _%tl218288218959%_
                                             _%e218289218962%_
                                             _%hd218290218965%_
                                             _%tl218291218967%_
                                             _%e218292218970%_
                                             _%hd218293218973%_
                                             _%tl218294218975%_
                                             _%e218295218978%_
                                             _%hd218296218981%_
                                             _%tl218297218983%_))
                                        (_%__match224697224698%_
                                         _%e218274218922%_
                                         _%hd218275218925%_
                                         _%tl218276218927%_
                                         _%e218277218930%_
                                         _%hd218278218933%_
                                         _%tl218279218935%_
                                         _%e218280218938%_
                                         _%hd218281218941%_
                                         _%tl218282218943%_
                                         _%e218283218946%_
                                         _%hd218284218949%_
                                         _%tl218285218951%_
                                         _%e218286218954%_
                                         _%hd218287218957%_
                                         _%tl218288218959%_
                                         _%e218289218962%_
                                         _%hd218290218965%_
                                         _%tl218291218967%_
                                         _%e218292218970%_
                                         _%hd218293218973%_
                                         _%tl218294218975%_
                                         _%e218295218978%_
                                         _%hd218296218981%_
                                         _%tl218297218983%_))))
                                (_%__match224697224698%_
                                 _%e218274218922%_
                                 _%hd218275218925%_
                                 _%tl218276218927%_
                                 _%e218277218930%_
                                 _%hd218278218933%_
                                 _%tl218279218935%_
                                 _%e218280218938%_
                                 _%hd218281218941%_
                                 _%tl218282218943%_
                                 _%e218283218946%_
                                 _%hd218284218949%_
                                 _%tl218285218951%_
                                 _%e218286218954%_
                                 _%hd218287218957%_
                                 _%tl218288218959%_
                                 _%e218289218962%_
                                 _%hd218290218965%_
                                 _%tl218291218967%_
                                 _%e218292218970%_
                                 _%hd218293218973%_
                                 _%tl218294218975%_
                                 _%e218295218978%_
                                 _%hd218296218981%_
                                 _%tl218297218983%_))
                            (_%__match224483224484%_
                             _%e218274218922%_
                             _%hd218275218925%_
                             _%tl218276218927%_
                             _%e218277218930%_
                             _%hd218278218933%_
                             _%tl218279218935%_
                             _%e218280218938%_
                             _%hd218281218941%_
                             _%tl218282218943%_
                             _%e218283218946%_
                             _%hd218284218949%_
                             _%tl218285218951%_
                             _%e218286218954%_
                             _%hd218287218957%_
                             _%tl218288218959%_
                             _%e218289218962%_
                             _%hd218290218965%_
                             _%tl218291218967%_
                             _%e218292218970%_
                             _%hd218293218973%_
                             _%tl218294218975%_
                             _%e218295218978%_
                             _%hd218296218981%_
                             _%tl218297218983%_
                             _%e218298218986%_
                             _%hd218299218989%_
                             _%tl218300218991%_))))
                     (_%__match224305224306%_
                      (lambda (_%e218230219112%_
                               _%hd218231219115%_
                               _%tl218232219117%_
                               _%e218233219120%_
                               _%hd218234219123%_
                               _%tl218235219125%_
                               _%e218236219128%_
                               _%hd218237219131%_
                               _%tl218238219133%_
                               _%e218239219136%_
                               _%hd218240219139%_
                               _%tl218241219141%_
                               _%e218242219144%_
                               _%hd218243219147%_
                               _%tl218244219149%_
                               _%e218245219152%_
                               _%hd218246219155%_
                               _%tl218247219157%_
                               _%e218248219160%_
                               _%hd218249219163%_
                               _%tl218250219165%_
                               _%e218251219168%_
                               _%hd218252219171%_
                               _%tl218253219173%_
                               _%e218254219176%_
                               _%hd218255219179%_
                               _%tl218256219181%_
                               _%e218257219184%_
                               _%hd218258219187%_
                               _%tl218259219189%_
                               _%__splice224204224205%_
                               _%target218260219192%_
                               _%tl218262219194%_)
                        (letrec ((_%loop218263219197%_
                                  (lambda (_%hd218261219200%_
                                           _%args218267219202%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd218261219200%_))
                                        (let ((_%e218264219204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd218261219200%_))))
                                          (let ((_%lp-tl218266219209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e218264219204%_)))
                                                (_%lp-hd218265219207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e218264219204%_))))
                                            (_%loop218263219197%_
                                             _%lp-tl218266219209%_
                                             (cons _%lp-hd218265219207%_
                                                   _%args218267219202%_))))
                                        (let ((_%args218268219212%_
                                               (reverse _%args218267219202%_)))
                                          (let ((_%g218226219214%_
                                                 _%args218268219212%_)
                                                (_%g218227219215%_
                                                 _%hd218258219187%_)
                                                (_%g218228219216%_
                                                 _%hd218249219163%_)
                                                (_%g218229219217%_
                                                 _%hd218240219139%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g218229219217%_
                                                        'call-method))
                                                     (let ((__tmp224894
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self218213%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g218228219216%_
                                                        __tmp224894)))
                                                (_%__kont224202224203%_
                                                 _%g218226219214%_
                                                 _%g218227219215%_
                                                 _%g218228219216%_
                                                 _%g218229219217%_)
                                                (_%__match224493224494%_
                                                 _%e218230219112%_
                                                 _%hd218231219115%_
                                                 _%tl218232219117%_
                                                 _%e218233219120%_
                                                 _%hd218234219123%_
                                                 _%tl218235219125%_
                                                 _%e218236219128%_
                                                 _%hd218237219131%_
                                                 _%tl218238219133%_
                                                 _%e218239219136%_
                                                 _%hd218240219139%_
                                                 _%tl218241219141%_
                                                 _%e218242219144%_
                                                 _%hd218243219147%_
                                                 _%tl218244219149%_
                                                 _%e218245219152%_
                                                 _%hd218246219155%_
                                                 _%tl218247219157%_
                                                 _%e218248219160%_
                                                 _%hd218249219163%_
                                                 _%tl218250219165%_
                                                 _%e218251219168%_
                                                 _%hd218252219171%_
                                                 _%tl218253219173%_
                                                 _%e218254219176%_
                                                 _%hd218255219179%_
                                                 _%tl218256219181%_
                                                 _%e218257219184%_
                                                 _%hd218258219187%_
                                                 _%tl218259219189%_))))))))
                          (_%loop218263219197%_ _%target218260219192%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx224200224201%_))
                    (let ((_%e218230219112%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx224200224201%_))))
                      (let ((_%tl218232219117%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e218230219112%_)))
                            (_%hd218231219115%_
                             (let ()
                               (declare (not safe))
                               (##car _%e218230219112%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl218232219117%_))
                            (let ((_%e218233219120%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl218232219117%_))))
                              (let ((_%tl218235219125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218233219120%_)))
                                    (_%hd218234219123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218233219120%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd218234219123%_))
                                    (let ((_%e218236219128%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd218234219123%_))))
                                      (let ((_%tl218238219133%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e218236219128%_)))
                                            (_%hd218237219131%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e218236219128%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd218237219131%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd218237219131%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl218238219133%_))
                                                    (let ((_%e218239219136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl218238219133%_))))
                                                      (let ((_%tl218241219141%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e218239219136%_)))
                    (_%hd218240219139%_
                     (let () (declare (not safe)) (##car _%e218239219136%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl218241219141%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl218235219125%_))
                        (let ((_%e218242219144%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl218235219125%_))))
                          (let ((_%tl218244219149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e218242219144%_)))
                                (_%hd218243219147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e218242219144%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd218243219147%_))
                                (let ((_%e218245219152%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd218243219147%_))))
                                  (let ((_%tl218247219157%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e218245219152%_)))
                                        (_%hd218246219155%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e218245219152%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd218246219155%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd218246219155%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl218247219157%_))
                                                (let ((_%e218248219160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl218247219157%_))))
                                                  (let ((_%tl218250219165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e218248219160%_)))
                                                        (_%hd218249219163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e218248219160%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl218250219165%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl218244219149%_))
                                                            (let ((_%e218251219168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl218244219149%_))))
                      (let ((_%tl218253219173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e218251219168%_)))
                            (_%hd218252219171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e218251219168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd218252219171%_))
                            (let ((_%e218254219176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd218252219171%_))))
                              (let ((_%tl218256219181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e218254219176%_)))
                                    (_%hd218255219179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e218254219176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd218255219179%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd218255219179%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl218256219181%_))
                                            (let ((_%e218257219184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl218256219181%_))))
                                              (let ((_%tl218259219189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e218257219184%_)))
                                                    (_%hd218258219187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e218257219184%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl218259219189%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl218253219173%_))
                                                        (let ((_%__splice224204224205%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl218253219173%_
                          '0))))
                  (let ((_%tl218262219194%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice224204224205%_ '1)))
                        (_%target218260219192%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice224204224205%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl218262219194%_))
                        (_%__match224305224306%_
                         _%e218230219112%_
                         _%hd218231219115%_
                         _%tl218232219117%_
                         _%e218233219120%_
                         _%hd218234219123%_
                         _%tl218235219125%_
                         _%e218236219128%_
                         _%hd218237219131%_
                         _%tl218238219133%_
                         _%e218239219136%_
                         _%hd218240219139%_
                         _%tl218241219141%_
                         _%e218242219144%_
                         _%hd218243219147%_
                         _%tl218244219149%_
                         _%e218245219152%_
                         _%hd218246219155%_
                         _%tl218247219157%_
                         _%e218248219160%_
                         _%hd218249219163%_
                         _%tl218250219165%_
                         _%e218251219168%_
                         _%hd218252219171%_
                         _%tl218253219173%_
                         _%e218254219176%_
                         _%hd218255219179%_
                         _%tl218256219181%_
                         _%e218257219184%_
                         _%hd218258219187%_
                         _%tl218259219189%_
                         _%__splice224204224205%_
                         _%target218260219192%_
                         _%tl218262219194%_)
                        (_%__match224493224494%_
                         _%e218230219112%_
                         _%hd218231219115%_
                         _%tl218232219117%_
                         _%e218233219120%_
                         _%hd218234219123%_
                         _%tl218235219125%_
                         _%e218236219128%_
                         _%hd218237219131%_
                         _%tl218238219133%_
                         _%e218239219136%_
                         _%hd218240219139%_
                         _%tl218241219141%_
                         _%e218242219144%_
                         _%hd218243219147%_
                         _%tl218244219149%_
                         _%e218245219152%_
                         _%hd218246219155%_
                         _%tl218247219157%_
                         _%e218248219160%_
                         _%hd218249219163%_
                         _%tl218250219165%_
                         _%e218251219168%_
                         _%hd218252219171%_
                         _%tl218253219173%_
                         _%e218254219176%_
                         _%hd218255219179%_
                         _%tl218256219181%_
                         _%e218257219184%_
                         _%hd218258219187%_
                         _%tl218259219189%_))))
                (_%__match224493224494%_
                 _%e218230219112%_
                 _%hd218231219115%_
                 _%tl218232219117%_
                 _%e218233219120%_
                 _%hd218234219123%_
                 _%tl218235219125%_
                 _%e218236219128%_
                 _%hd218237219131%_
                 _%tl218238219133%_
                 _%e218239219136%_
                 _%hd218240219139%_
                 _%tl218241219141%_
                 _%e218242219144%_
                 _%hd218243219147%_
                 _%tl218244219149%_
                 _%e218245219152%_
                 _%hd218246219155%_
                 _%tl218247219157%_
                 _%e218248219160%_
                 _%hd218249219163%_
                 _%tl218250219165%_
                 _%e218251219168%_
                 _%hd218252219171%_
                 _%tl218253219173%_
                 _%e218254219176%_
                 _%hd218255219179%_
                 _%tl218256219181%_
                 _%e218257219184%_
                 _%hd218258219187%_
                 _%tl218259219189%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match224697224698%_
                                                     _%e218230219112%_
                                                     _%hd218231219115%_
                                                     _%tl218232219117%_
                                                     _%e218233219120%_
                                                     _%hd218234219123%_
                                                     _%tl218235219125%_
                                                     _%e218236219128%_
                                                     _%hd218237219131%_
                                                     _%tl218238219133%_
                                                     _%e218239219136%_
                                                     _%hd218240219139%_
                                                     _%tl218241219141%_
                                                     _%e218242219144%_
                                                     _%hd218243219147%_
                                                     _%tl218244219149%_
                                                     _%e218245219152%_
                                                     _%hd218246219155%_
                                                     _%tl218247219157%_
                                                     _%e218248219160%_
                                                     _%hd218249219163%_
                                                     _%tl218250219165%_
                                                     _%e218251219168%_
                                                     _%hd218252219171%_
                                                     _%tl218253219173%_))))
                                            (_%__match224697224698%_
                                             _%e218230219112%_
                                             _%hd218231219115%_
                                             _%tl218232219117%_
                                             _%e218233219120%_
                                             _%hd218234219123%_
                                             _%tl218235219125%_
                                             _%e218236219128%_
                                             _%hd218237219131%_
                                             _%tl218238219133%_
                                             _%e218239219136%_
                                             _%hd218240219139%_
                                             _%tl218241219141%_
                                             _%e218242219144%_
                                             _%hd218243219147%_
                                             _%tl218244219149%_
                                             _%e218245219152%_
                                             _%hd218246219155%_
                                             _%tl218247219157%_
                                             _%e218248219160%_
                                             _%hd218249219163%_
                                             _%tl218250219165%_
                                             _%e218251219168%_
                                             _%hd218252219171%_
                                             _%tl218253219173%_))
                                        (_%__match224373224374%_
                                         _%e218230219112%_
                                         _%hd218231219115%_
                                         _%tl218232219117%_
                                         _%e218233219120%_
                                         _%hd218234219123%_
                                         _%tl218235219125%_
                                         _%e218236219128%_
                                         _%hd218237219131%_
                                         _%tl218238219133%_
                                         _%e218239219136%_
                                         _%hd218240219139%_
                                         _%tl218241219141%_
                                         _%e218242219144%_
                                         _%hd218243219147%_
                                         _%tl218244219149%_
                                         _%e218245219152%_
                                         _%hd218246219155%_
                                         _%tl218247219157%_
                                         _%e218248219160%_
                                         _%hd218249219163%_
                                         _%tl218250219165%_
                                         _%e218251219168%_
                                         _%hd218252219171%_
                                         _%tl218253219173%_
                                         _%e218254219176%_
                                         _%hd218255219179%_
                                         _%tl218256219181%_))
                                    (_%__match224697224698%_
                                     _%e218230219112%_
                                     _%hd218231219115%_
                                     _%tl218232219117%_
                                     _%e218233219120%_
                                     _%hd218234219123%_
                                     _%tl218235219125%_
                                     _%e218236219128%_
                                     _%hd218237219131%_
                                     _%tl218238219133%_
                                     _%e218239219136%_
                                     _%hd218240219139%_
                                     _%tl218241219141%_
                                     _%e218242219144%_
                                     _%hd218243219147%_
                                     _%tl218244219149%_
                                     _%e218245219152%_
                                     _%hd218246219155%_
                                     _%tl218247219157%_
                                     _%e218248219160%_
                                     _%hd218249219163%_
                                     _%tl218250219165%_
                                     _%e218251219168%_
                                     _%hd218252219171%_
                                     _%tl218253219173%_))))
                            (_%__match224697224698%_
                             _%e218230219112%_
                             _%hd218231219115%_
                             _%tl218232219117%_
                             _%e218233219120%_
                             _%hd218234219123%_
                             _%tl218235219125%_
                             _%e218236219128%_
                             _%hd218237219131%_
                             _%tl218238219133%_
                             _%e218239219136%_
                             _%hd218240219139%_
                             _%tl218241219141%_
                             _%e218242219144%_
                             _%hd218243219147%_
                             _%tl218244219149%_
                             _%e218245219152%_
                             _%hd218246219155%_
                             _%tl218247219157%_
                             _%e218248219160%_
                             _%hd218249219163%_
                             _%tl218250219165%_
                             _%e218251219168%_
                             _%hd218252219171%_
                             _%tl218253219173%_))))
                    (_%__match224635224636%_
                     _%e218230219112%_
                     _%hd218231219115%_
                     _%tl218232219117%_
                     _%e218233219120%_
                     _%hd218234219123%_
                     _%tl218235219125%_
                     _%e218236219128%_
                     _%hd218237219131%_
                     _%tl218238219133%_
                     _%e218239219136%_
                     _%hd218240219139%_
                     _%tl218241219141%_
                     _%e218242219144%_
                     _%hd218243219147%_
                     _%tl218244219149%_
                     _%e218245219152%_
                     _%hd218246219155%_
                     _%tl218247219157%_
                     _%e218248219160%_
                     _%hd218249219163%_
                     _%tl218250219165%_))
                (_%__kont224218224219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont224218224219%_))
                                            (_%__kont224218224219%_))
                                        (_%__kont224218224219%_))))
                                (_%__kont224218224219%_))))
                        (_%__kont224218224219%_))
                    (_%__kont224218224219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont224218224219%_))
                                                (_%__kont224218224219%_))
                                            (_%__kont224218224219%_))))
                                    (_%__kont224218224219%_))))
                            (_%__kont224218224219%_))))
                    (_%__kont224218224219%_))))))))))
