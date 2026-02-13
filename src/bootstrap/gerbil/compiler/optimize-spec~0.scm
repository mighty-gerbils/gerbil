(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771022580)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp234645 (list gxc#::identity::t))
            (__tmp234644 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp234645
         '()
         __tmp234644
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args233442%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args233442%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp234646
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
        (__make-atomic-promise __tmp234646)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx233434%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self233437%_
                (let ((__obj234637
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj234637))
               (__tmp234647
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self233437%_ _%stx233434%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp234647
           gxc#current-compile-method
           _%self233437%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp234649 (list gxc#::false::t))
            (__tmp234648 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp234649
         '()
         __tmp234648
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args233431%_
        (apply make-instance gxc#::extract-receiver::t _%$args233431%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp234650
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
        (__make-atomic-promise __tmp234650)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx233423%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self233426%_
                (let ((__obj234639
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj234639))
               (__tmp234651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self233426%_ _%stx233423%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp234651
           gxc#current-compile-method
           _%self233426%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp234653 (list gxc#::void::t))
            (__tmp234652 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp234653
         '(receiver methods slots)
         __tmp234652
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args233420%_
        (apply make-instance gxc#::collect-object-refs::t _%$args233420%_)))
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
      (let ((__tmp234654
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
        (__make-atomic-promise __tmp234654)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords233389%_
               _%receiver233384233390%_
               _%methods233385233391%_
               _%slots233386233392%_
               _%stx233393%_)
        (let* ((_%receiver233396%_
                (if (eq? _%receiver233384233390%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233384233390%_))
               (_%methods233398%_
                (if (eq? _%methods233385233391%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233385233391%_))
               (_%slots233400%_
                (if (eq? _%slots233386233392%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233386233392%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self233402%_
                  (let ((__obj234641
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
                       __obj234641
                       _%receiver233396%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj234641
                       _%methods233398%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj234641
                       _%slots233400%_
                       '3
                       '#f
                       '#f))
                    __obj234641))
                 (__tmp234655
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233402%_ _%stx233393%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp234655
             gxc#current-compile-method
             _%self233402%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords233409%_ . _%args233410%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords233409%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233409%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233409%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233409%_
                  'slots:
                  absent-value))
               _%args233410%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args233387233416%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args233387233416%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp234657 (list gxc#::basic-xform-expression::t))
            (__tmp234656 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp234657
         '(receiver klass methods slots)
         __tmp234656
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args233380%_
        (apply make-instance gxc#::subst-object-refs::t _%$args233380%_)))
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
      (let ((__tmp234658
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
        (__make-atomic-promise __tmp234658)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords233346%_
               _%receiver233340233347%_
               _%klass233341233348%_
               _%methods233342233349%_
               _%slots233343233350%_
               _%stx233351%_)
        (let* ((_%receiver233354%_
                (if (eq? _%receiver233340233347%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver233340233347%_))
               (_%klass233356%_
                (if (eq? _%klass233341233348%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass233341233348%_))
               (_%methods233358%_
                (if (eq? _%methods233342233349%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods233342233349%_))
               (_%slots233360%_
                (if (eq? _%slots233343233350%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots233343233350%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self233362%_
                  (let ((__obj234643
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
                       __obj234643
                       _%receiver233354%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj234643
                       _%klass233356%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj234643
                       _%methods233358%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj234643
                       _%slots233360%_
                       '4
                       '#f
                       '#f))
                    __obj234643))
                 (__tmp234659
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self233362%_ _%stx233351%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp234659
             gxc#current-compile-method
             _%self233362%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords233369%_ . _%args233370%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords233369%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233369%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233369%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233369%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords233369%_
                  'slots:
                  absent-value))
               _%args233370%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args233344233376%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args233344233376%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self230471%_ _%stx230472%_)
        (letrec ((_%generate-method-bind230474%_
                  (lambda (_%$klass233332%_
                           _%$method-table233333%_
                           _%id233334%_
                           _%$id233335%_)
                    (let ((_%$tmp233337%_
                           (let ((__tmp234660
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp234660))))
                      (cons (cons _%$id233335%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp233337%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table233333%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id233334%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp233337%_ '()))
                    (cons (cons '%#ref (cons _%$tmp233337%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id233334%_
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
                 (_%generate-slot-bind230475%_
                  (lambda (_%$klass233326%_ _%id233327%_ _%$id233328%_)
                    (let ((_%$tmp233330%_
                           (let ((__tmp234661
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp234661))))
                      (cons (cons _%$id233328%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp233330%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass233326%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id233327%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp233330%_ '()))
                        (cons (cons '%#ref (cons _%$tmp233330%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id233327%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl230476%_
                  (lambda (_%$klass233320%_
                           _%$method-table233321%_
                           _%methods-bind233322%_
                           _%slots-bind233323%_
                           _%specializer-impl233324%_)
                    (let ((__tmp234662
                           (cons '%#lambda
                                 (cons (cons _%$klass233320%_
                                             (cons _%$method-table233321%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind233323%_
                                                            _%methods-bind233322%_))
                                                         (cons _%specializer-impl233324%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp234662 _%stx230472%_))))
                 (_%generate-specializer-def230477%_
                  (lambda (_%id233316%_
                           _%specializer-id233317%_
                           _%specializer-impl233318%_)
                    (let ((__tmp234663
                           (cons '%#begin
                                 (cons _%stx230472%_
                                       (cons (let ((__tmp234664
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id233317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl233318%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp234664
                                                _%stx230472%_))
                                             (cons (let ((__tmp234665
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id233316%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id233317%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234665
                                                      _%stx230472%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp234663 _%stx230472%_)))))
          (let* ((_%__stx233531233532%_ _%stx230472%_)
                 (_%g230480230500%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx233531233532%_)))))
            (let ((_%__kont233533233534%_
                   (lambda (_%g230482230544%_ _%g230483230545%_)
                     (let ((_%method-calls230564%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs230565%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty230566%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?230568%_
                                 (lambda ()
                                   (if (let ((__tmp234666
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls230564%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp234666))
                                       (let ((__tmp234667
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs230565%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp234667))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g230482230544%_))
                             (let* ((_%__stx233445233446%_ _%g230482230544%_)
                                    (_%g230952230970%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx233445233446%_)))))
                               (let ((_%__kont233447233448%_
                                      (lambda (_%g230954231006%_
                                               _%g230955231007%_
                                               _%g230956231008%_)
                                        (let ((_%receiver231028%_
                                               (let ((_%$e231025%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g230954231006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e231025%_
                                                     _%$e231025%_
                                                     _%g230956231008%_))))
                                          (for-each
                                           (lambda (_%g231029231031%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver231028%_
                                              _%method-calls230564%_
                                              _%slot-refs230565%_
                                              _%g231029231031%_))
                                           _%g230954231006%_)
                                          (if (_%no-specializer?230568%_)
                                              _%stx230472%_
                                              (let* ((_%specializer-id231040%_
                                                      (let* ((_%id231034%_
                                                              (let ((__tmp234668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g230483230545%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp234668 '"::specialize")))
                     (_%specializer-id231037%_
                      (let ((__tmp234669
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx230472%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id231034%_ __tmp234669))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id231037%_))
                _%specializer-id231037%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass231042%_
                                                      (let ((__tmp234670
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp234670)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table231044%_
                                                      (let ((__tmp234671
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp234671)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods231046%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls230564%_)))
                                                     (_%$methods231050%_
                                                      (let ((__tmp234672
                                                             (lambda (_%id231048%_)
                                                               (let ((__tmp234673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231048%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp234673)))))
                (declare (not safe))
                (##map __tmp234672 _%methods231046%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231059%_
                                                      (let ((__tmp234674
                                                             (lambda (_%g231051231054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231052231056%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls230564%_
                          _%g231051231054%_
                          _%g231052231056%_)))))
                (declare (not safe))
                (##for-each __tmp234674 _%methods231046%_ _%$methods231050%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind231069%_
                                                      (let ((__tmp234675
                                                             (lambda (_%g231061231064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231062231066%_)
                       (_%generate-method-bind230474%_
                        _%$klass231042%_
                        _%$method-table231044%_
                        _%g231061231064%_
                        _%g231062231066%_))))
                (declare (not safe))
                (##map __tmp234675 _%methods231046%_ _%$methods231050%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots231071%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs230565%_)))
                                                     (_%$slots231075%_
                                                      (let ((__tmp234676
                                                             (lambda (_%id231073%_)
                                                               (let ((__tmp234677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231073%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp234677)))))
                (declare (not safe))
                (##map __tmp234676 _%slots231071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231084%_
                                                      (let ((__tmp234678
                                                             (lambda (_%g231076231079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231077231081%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs230565%_
                          _%g231076231079%_
                          _%g231077231081%_)))))
                (declare (not safe))
                (##for-each __tmp234678 _%slots231071%_ _%$slots231075%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind231093%_
                                                      (let ((__tmp234679
                                                             (lambda (_%g231085231088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231086231090%_)
                       (_%generate-slot-bind230475%_
                        _%$klass231042%_
                        _%g231085231088%_
                        _%g231086231090%_))))
                (declare (not safe))
                (##map __tmp234679 _%slots231071%_ _%$slots231075%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body231099%_
                                                      (map (lambda (_%g231094231096%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver231028%_
                                                              _%$klass231042%_
                                                              _%method-calls230564%_
                                                              _%slot-refs230565%_
                                                              _%g231094231096%_))
                                                           _%g230954231006%_))
                                                     (_%specializer-impl231101%_
                                                      (let ((__tmp234680
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g230956231008%_ _%g230955231007%_)
                                 _%specializer-body231099%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp234680 _%stx230472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl231103%_
                                                      (_%generate-specializer-impl230476%_
                                                       _%$klass231042%_
                                                       _%$method-table231044%_
                                                       _%methods-bind231069%_
                                                       _%slots-bind231093%_
                                                       _%specializer-impl231101%_)))
                                                (let ((__tmp234682
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g230483230545%_)))
                                                      (__tmp234681
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id231040%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp234682
                                                   '" => "
                                                   __tmp234681))
                                                (_%generate-specializer-def230477%_
                                                 _%g230483230545%_
                                                 _%specializer-id231040%_
                                                 _%specializer-impl231103%_))))))
                                     (_%__kont233449233450%_
                                      (lambda () _%stx230472%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx233445233446%_))
                                     (let ((_%e230957230982%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx233445233446%_))))
                                       (let ((_%tl230959230987%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e230957230982%_)))
                                             (_%hd230958230985%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e230957230982%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl230959230987%_))
                                             (let ((_%e230960230990%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl230959230987%_))))
                                               (let ((_%tl230962230995%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e230960230990%_)))
                                                     (_%hd230961230993%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e230960230990%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd230961230993%_))
                                                     (let ((_%e230963230998%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd230961230993%_))))
                                                       (let ((_%tl230965231003%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e230963230998%_)))
                     (_%hd230964231001%_
                      (let () (declare (not safe)) (##car _%e230963230998%_))))
                 (_%__kont233447233448%_
                  _%tl230962230995%_
                  _%tl230965231003%_
                  _%hd230964231001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont233449233450%_))))
                                             (_%__kont233449233450%_))))
                                     (_%__kont233449233450%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g230482230544%_))
                                 (let* ((_%g231110231129%_
                                         (lambda (_%g231111231126%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g231111231126%_))))
                                        (_%g231109231425%_
                                         (lambda (_%g231111231132%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g231111231132%_))
                                               (let ((_%e231113231134%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g231111231132%_))))
                                                 (let ((_%hd231114231137%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e231113231134%_)))
                                                       (_%tl231115231139%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e231113231134%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl231115231139%_))
                                                       (let ((_g234683_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl231115231139%_ '0))))
                 (begin
                   (let ((_g234684_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g234683_)
                                (##values-length _g234683_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g234684_ 2)))
                         (error "Context expects 2 values" _g234684_)))
                   (let ((_%target231116231142%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g234683_ 0)))
                         (_%tl231118231144%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g234683_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl231118231144%_))
                         (letrec ((_%loop231119231147%_
                                   (lambda (_%hd231117231150%_
                                            _%clause231123231152%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231117231150%_))
                                         (let ((_%e231120231154%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231117231150%_))))
                                           (let ((_%lp-hd231121231157%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231120231154%_)))
                                                 (_%lp-tl231122231159%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231120231154%_))))
                                             (_%loop231119231147%_
                                              _%lp-tl231122231159%_
                                              (cons _%lp-hd231121231157%_
                                                    _%clause231123231152%_))))
                                         (let ((_%clause231124231162%_
                                                (reverse _%clause231123231152%_)))
                                           ((lambda (_%g231112231164%_)
                                              (for-each
                                               (lambda (_%clause231178%_)
                                                 (let* ((_%__stx233471233472%_
                                                         _%clause231178%_)
                                                        (_%g231181231196%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx233471233472%_)))))
                                                   (let ((_%__kont233473233474%_
                                                          (lambda (_%g231183231224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g231184231225%_
                           _%g231185231226%_)
                    (let ((_%receiver231245%_
                           (let ((_%$e231242%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g231183231224%_))))
                             (if _%$e231242%_
                                 _%$e231242%_
                                 _%g231185231226%_))))
                      (for-each
                       (lambda (_%g231246231248%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver231245%_
                          _%method-calls230564%_
                          _%slot-refs230565%_
                          _%g231246231248%_))
                       _%g231183231224%_))))
                 (_%__kont233475233476%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx233471233472%_))
                                                         (let ((_%e231186231208%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx233471233472%_))))
                   (let ((_%tl231188231213%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e231186231208%_)))
                         (_%hd231187231211%_
                          (let ()
                            (declare (not safe))
                            (##car _%e231186231208%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd231187231211%_))
                         (let ((_%e231189231216%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd231187231211%_))))
                           (let ((_%tl231191231221%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e231189231216%_)))
                                 (_%hd231190231219%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e231189231216%_))))
                             (_%__kont233473233474%_
                              _%tl231188231213%_
                              _%tl231191231221%_
                              _%hd231190231219%_)))
                         (_%__kont233475233476%_))))
                 (_%__kont233475233476%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp234685
                                                      (lambda (_%g231253231256%_
                                                               _%g231254231258%_)
                                                        (cons _%g231253231256%_
                                                              _%g231254231258%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp234685
                                                  '()
                                                  _%g231112231164%_)))
                                              (if (_%no-specializer?230568%_)
                                                  _%stx230472%_
                                                  (let* ((_%specializer-id231267%_
                                                          (let* ((_%id231261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp234686
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g230483230545%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp234686 '"::specialize")))
                         (_%specializer-id231264%_
                          (let ((__tmp234687
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx230472%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id231261%_
                             __tmp234687))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id231264%_))
                    _%specializer-id231264%_))
                 (_%$klass231269%_
                  (let ((__tmp234688
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp234688)))
                 (_%$method-table231271%_
                  (let ((__tmp234689
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp234689)))
                 (_%methods231273%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls230564%_)))
                 (_%$methods231277%_
                  (let ((__tmp234690
                         (lambda (_%id231275%_)
                           (let ((__tmp234691 (gensym _%id231275%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp234691)))))
                    (declare (not safe))
                    (##map __tmp234690 _%methods231273%_)))
                 (_%_231286%_
                  (let ((__tmp234692
                         (lambda (_%g231278231281%_ _%g231279231283%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls230564%_
                              _%g231278231281%_
                              _%g231279231283%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp234692
                     _%methods231273%_
                     _%$methods231277%_)))
                 (_%methods-bind231296%_
                  (let ((__tmp234693
                         (lambda (_%g231288231291%_ _%g231289231293%_)
                           (_%generate-method-bind230474%_
                            _%$klass231269%_
                            _%$method-table231271%_
                            _%g231288231291%_
                            _%g231289231293%_))))
                    (declare (not safe))
                    (##map __tmp234693 _%methods231273%_ _%$methods231277%_)))
                 (_%slots231298%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs230565%_)))
                 (_%$slots231302%_
                  (let ((__tmp234694
                         (lambda (_%id231300%_)
                           (let ((__tmp234695 (gensym _%id231300%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp234695)))))
                    (declare (not safe))
                    (##map __tmp234694 _%slots231298%_)))
                 (_%_231311%_
                  (let ((__tmp234696
                         (lambda (_%g231303231306%_ _%g231304231308%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs230565%_
                              _%g231303231306%_
                              _%g231304231308%_)))))
                    (declare (not safe))
                    (##for-each __tmp234696 _%slots231298%_ _%$slots231302%_)))
                 (_%slots-bind231320%_
                  (let ((__tmp234697
                         (lambda (_%g231312231315%_ _%g231313231317%_)
                           (_%generate-slot-bind230475%_
                            _%$klass231269%_
                            _%g231312231315%_
                            _%g231313231317%_))))
                    (declare (not safe))
                    (##map __tmp234697 _%slots231298%_ _%$slots231302%_)))
                 (_%specializer-clauses231418%_
                  (map (lambda (_%clause231322%_)
                         (let* ((_%__stx233491233492%_ _%clause231322%_)
                                (_%g231325231340%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx233491233492%_)))))
                           (let ((_%__kont233493233494%_
                                  (lambda (_%g231327231368%_
                                           _%g231328231369%_
                                           _%g231329231370%_)
                                    (let* ((_%receiver231399%_
                                            (let ((_%$e231396%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g231327231368%_))))
                                              (if _%$e231396%_
                                                  _%$e231396%_
                                                  _%g231329231370%_)))
                                           (_%body231405%_
                                            (map (lambda (_%g231400231402%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver231399%_
                                                    _%$klass231269%_
                                                    _%method-calls230564%_
                                                    _%slot-refs230565%_
                                                    _%g231400231402%_))
                                                 _%g231327231368%_)))
                                      (cons (cons _%g231329231370%_
                                                  _%g231328231369%_)
                                            _%body231405%_))))
                                 (_%__kont233495233496%_
                                  (lambda () _%clause231322%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx233491233492%_))
                                 (let ((_%e231330231352%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx233491233492%_))))
                                   (let ((_%tl231332231357%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e231330231352%_)))
                                         (_%hd231331231355%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e231330231352%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd231331231355%_))
                                         (let ((_%e231333231360%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd231331231355%_))))
                                           (let ((_%tl231335231365%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e231333231360%_)))
                                                 (_%hd231334231363%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e231333231360%_))))
                                             (_%__kont233493233494%_
                                              _%tl231332231357%_
                                              _%tl231335231365%_
                                              _%hd231334231363%_)))
                                         (_%__kont233495233496%_))))
                                 (_%__kont233495233496%_)))))
                       (let ((__tmp234698
                              (lambda (_%g231410231413%_ _%g231411231415%_)
                                (cons _%g231410231413%_ _%g231411231415%_))))
                         (declare (not safe))
                         (foldr__0 __tmp234698 '() _%g231112231164%_))))
                 (_%specializer-impl231420%_
                  (let ((__tmp234699
                         (cons '%#case-lambda _%specializer-clauses231418%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp234699 _%stx230472%_)))
                 (_%specializer-impl231422%_
                  (_%generate-specializer-impl230476%_
                   _%$klass231269%_
                   _%$method-table231271%_
                   _%methods-bind231296%_
                   _%slots-bind231320%_
                   _%specializer-impl231420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp234701
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g230483230545%_)))
                                                          (__tmp234700
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id231267%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp234701
                                                       '" => "
                                                       __tmp234700))
                                                    (_%generate-specializer-def230477%_
                                                     _%g230483230545%_
                                                     _%specializer-id231267%_
                                                     _%specializer-impl231422%_))))
                                            _%clause231124231162%_))))))
                           (_%loop231119231147%_ _%target231116231142%_ '()))
                         (_%g231110231129%_ _%g231111231132%_)))))
               (_%g231110231129%_ _%g231111231132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g231110231129%_
                                                _%g231111231132%_)))))
                                   (_%g231109231425%_ _%g230482230544%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g230482230544%_))
                                     (let* ((_%g231429231459%_
                                             (lambda (_%g231430231456%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g231430231456%_))))
                                            (_%g231428232086%_
                                             (lambda (_%g231430231462%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g231430231462%_))
                                                   (let ((_%e231434231464%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g231430231462%_))))
                                                     (let ((_%hd231435231467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e231434231464%_)))
                                                           (_%tl231436231469%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e231434231464%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl231436231469%_))
                                                           (let ((_%e231437231472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl231436231469%_))))
                     (let ((_%hd231438231475%_
                            (let ()
                              (declare (not safe))
                              (##car _%e231437231472%_)))
                           (_%tl231439231477%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e231437231472%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd231438231475%_))
                           (let ((_%e231440231480%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd231438231475%_))))
                             (let ((_%hd231441231483%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e231440231480%_)))
                                   (_%tl231442231485%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e231440231480%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd231441231483%_))
                                   (let ((_%e231443231488%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd231441231483%_))))
                                     (let ((_%hd231444231491%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e231443231488%_)))
                                           (_%tl231445231493%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e231443231488%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd231444231491%_))
                                           (let ((_%e231446231496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd231444231491%_))))
                                             (let ((_%hd231447231499%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e231446231496%_)))
                                                   (_%tl231448231501%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e231446231496%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl231448231501%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl231445231493%_))
                                                       (let ((_%e231449231504%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl231445231493%_))))
                 (let ((_%hd231450231507%_
                        (let ()
                          (declare (not safe))
                          (##car _%e231449231504%_)))
                       (_%tl231451231509%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e231449231504%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl231451231509%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl231442231485%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl231439231477%_))
                               (let ((_%e231452231512%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl231439231477%_))))
                                 (let ((_%hd231453231515%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e231452231512%_)))
                                       (_%tl231454231517%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e231452231512%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl231454231517%_))
                                       ((lambda (_%g231431231520%_
                                                 _%g231432231521%_
                                                 _%g231433231522%_)
                                          (let* ((_%g231546231564%_
                                                  (lambda (_%g231547231561%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g231547231561%_))))
                                                 (_%g231545231620%_
                                                  (lambda (_%g231547231567%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g231547231567%_))
                                                        (let ((_%e231551231569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g231547231567%_))))
                  (let ((_%hd231552231572%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231551231569%_)))
                        (_%tl231553231574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231551231569%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231553231574%_))
                        (let ((_%e231554231577%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231553231574%_))))
                          (let ((_%hd231555231580%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231554231577%_)))
                                (_%tl231556231582%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231554231577%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231555231580%_))
                                (let ((_%e231557231585%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231555231580%_))))
                                  (let ((_%hd231558231588%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231557231585%_)))
                                        (_%tl231559231590%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231557231585%_))))
                                    ((lambda (_%g231548231593%_
                                              _%g231549231594%_
                                              _%g231550231595%_)
                                       (let ((_%receiver231614%_
                                              (let ((_%$e231611%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g231548231593%_))))
                                                (if _%$e231611%_
                                                    _%$e231611%_
                                                    _%g231550231595%_))))
                                         (for-each
                                          (lambda (_%g231615231617%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver231614%_
                                             _%method-calls230564%_
                                             _%slot-refs230565%_
                                             _%g231615231617%_))
                                          _%g231548231593%_)))
                                     _%tl231556231582%_
                                     _%tl231559231590%_
                                     _%hd231558231588%_)))
                                (_%g231546231564%_ _%g231547231567%_))))
                        (_%g231546231564%_ _%g231547231567%_))))
                (_%g231546231564%_ _%g231547231567%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g231545231620%_
                                             _%g231432231521%_))
                                          (let* ((_%g231623231642%_
                                                  (lambda (_%g231624231639%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g231624231639%_))))
                                                 (_%g231622231764%_
                                                  (lambda (_%g231624231645%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g231624231645%_))
                                                        (let ((_%e231626231647%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g231624231645%_))))
                  (let ((_%hd231627231650%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231626231647%_)))
                        (_%tl231628231652%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231626231647%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl231628231652%_))
                        (let ((_g234702_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl231628231652%_
                                  '0))))
                          (begin
                            (let ((_g234703_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g234702_)
                                         (##values-length _g234702_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g234703_ 2)))
                                  (error "Context expects 2 values"
                                         _g234703_)))
                            (let ((_%target231629231655%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g234702_ 0)))
                                  (_%tl231631231657%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g234702_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl231631231657%_))
                                  (letrec ((_%loop231632231660%_
                                            (lambda (_%hd231630231663%_
                                                     _%clause231636231665%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd231630231663%_))
                                                  (let ((_%e231633231667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd231630231663%_))))
                                                    (let ((_%lp-hd231634231670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231633231667%_)))
                                                          (_%lp-tl231635231672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231633231667%_))))
                                                      (_%loop231632231660%_
                                                       _%lp-tl231635231672%_
                                                       (cons _%lp-hd231634231670%_
                                                             _%clause231636231665%_))))
                                                  (let ((_%clause231637231675%_
                                                         (reverse _%clause231636231665%_)))
                                                    ((lambda (_%g231625231677%_)
                                                       (for-each
                                                        (lambda (_%clause231690%_)
                                                          (let* ((_%g231692231707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g231693231704%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g231693231704%_))))
                         (_%g231691231754%_
                          (lambda (_%g231693231710%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g231693231710%_))
                                (let ((_%e231697231712%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g231693231710%_))))
                                  (let ((_%hd231698231715%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231697231712%_)))
                                        (_%tl231699231717%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231697231712%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd231698231715%_))
                                        (let ((_%e231700231720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd231698231715%_))))
                                          (let ((_%hd231701231723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e231700231720%_)))
                                                (_%tl231702231725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e231700231720%_))))
                                            ((lambda (_%g231694231728%_
                                                      _%g231695231729%_
                                                      _%g231696231730%_)
                                               (let ((_%receiver231748%_
                                                      (let ((_%$e231745%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g231694231728%_))))
                (if _%$e231745%_ _%$e231745%_ _%g231696231730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g231749231751%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver231748%_
                                                     _%method-calls230564%_
                                                     _%slot-refs230565%_
                                                     _%g231749231751%_))
                                                  _%g231694231728%_)))
                                             _%tl231699231717%_
                                             _%tl231702231725%_
                                             _%hd231701231723%_)))
                                        (_%g231692231707%_
                                         _%g231693231710%_))))
                                (_%g231692231707%_ _%g231693231710%_)))))
                    (_%g231691231754%_ _%clause231690%_)))
                (let ((__tmp234704
                       (lambda (_%g231756231759%_ _%g231757231761%_)
                         (cons _%g231756231759%_ _%g231757231761%_))))
                  (declare (not safe))
                  (foldr__0 __tmp234704 '() _%g231625231677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause231637231675%_))))))
                                    (_%loop231632231660%_
                                     _%target231629231655%_
                                     '()))
                                  (_%g231623231642%_ _%g231624231645%_)))))
                        (_%g231623231642%_ _%g231624231645%_))))
                (_%g231623231642%_ _%g231624231645%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g231622231764%_
                                             _%g231431231520%_))
                                          (if (_%no-specializer?230568%_)
                                              _%stx230472%_
                                              (let* ((_%specializer-id231773%_
                                                      (let* ((_%id231767%_
                                                              (let ((__tmp234705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g230483230545%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp234705 '"::specialize")))
                     (_%specializer-id231770%_
                      (let ((__tmp234706
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx230472%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id231767%_ __tmp234706))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id231770%_))
                _%specializer-id231770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass231775%_
                                                      (let ((__tmp234707
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp234707)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table231777%_
                                                      (let ((__tmp234708
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp234708)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods231779%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls230564%_)))
                                                     (_%$methods231783%_
                                                      (let ((__tmp234709
                                                             (lambda (_%id231781%_)
                                                               (let ((__tmp234710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231781%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp234710)))))
                (declare (not safe))
                (##map __tmp234709 _%methods231779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231792%_
                                                      (let ((__tmp234711
                                                             (lambda (_%g231784231787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231785231789%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls230564%_
                          _%g231784231787%_
                          _%g231785231789%_)))))
                (declare (not safe))
                (##for-each __tmp234711 _%methods231779%_ _%$methods231783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind231802%_
                                                      (let ((__tmp234712
                                                             (lambda (_%g231794231797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231795231799%_)
                       (_%generate-method-bind230474%_
                        _%$klass231775%_
                        _%$method-table231777%_
                        _%g231794231797%_
                        _%g231795231799%_))))
                (declare (not safe))
                (##map __tmp234712 _%methods231779%_ _%$methods231783%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots231804%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs230565%_)))
                                                     (_%$slots231808%_
                                                      (let ((__tmp234713
                                                             (lambda (_%id231806%_)
                                                               (let ((__tmp234714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id231806%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp234714)))))
                (declare (not safe))
                (##map __tmp234713 _%slots231804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_231817%_
                                                      (let ((__tmp234715
                                                             (lambda (_%g231809231812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231810231814%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs230565%_
                          _%g231809231812%_
                          _%g231810231814%_)))))
                (declare (not safe))
                (##for-each __tmp234715 _%slots231804%_ _%$slots231808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind231826%_
                                                      (let ((__tmp234716
                                                             (lambda (_%g231818231821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g231819231823%_)
                       (_%generate-slot-bind230475%_
                        _%$klass231775%_
                        _%g231818231821%_
                        _%g231819231823%_))))
                (declare (not safe))
                (##map __tmp234716 _%slots231804%_ _%$slots231808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr231918%_
                                                      (let* ((_%g231828231846%_
                                                              (lambda (_%g231829231843%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g231829231843%_))))
                     (_%g231827231915%_
                      (lambda (_%g231829231849%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g231829231849%_))
                            (let ((_%e231833231851%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231829231849%_))))
                              (let ((_%hd231834231854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231833231851%_)))
                                    (_%tl231835231856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231833231851%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231835231856%_))
                                    (let ((_%e231836231859%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231835231856%_))))
                                      (let ((_%hd231837231862%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231836231859%_)))
                                            (_%tl231838231864%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231836231859%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd231837231862%_))
                                            (let ((_%e231839231867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd231837231862%_))))
                                              (let ((_%hd231840231870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231839231867%_)))
                                                    (_%tl231841231872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231839231867%_))))
                                                ((lambda (_%g231830231875%_
                                                          _%g231831231876%_
                                                          _%g231832231877%_)
                                                   (let* ((_%receiver231906%_
                                                           (let ((_%$e231903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g231830231875%_))))
                     (if _%$e231903%_ _%$e231903%_ _%g231832231877%_)))
                  (_%body231912%_
                   (map (lambda (_%g231907231909%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver231906%_
                           _%$klass231775%_
                           _%method-calls230564%_
                           _%slot-refs230565%_
                           _%g231907231909%_))
                        _%g231830231875%_))
                  (__tmp234717
                   (cons '%#lambda
                         (cons (cons _%g231832231877%_ _%g231831231876%_)
                               _%body231912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp234717
                                                      _%g231432231521%_)))
                                                 _%tl231838231864%_
                                                 _%tl231841231872%_
                                                 _%hd231840231870%_)))
                                            (_%g231828231846%_
                                             _%g231829231849%_))))
                                    (_%g231828231846%_ _%g231829231849%_))))
                            (_%g231828231846%_ _%g231829231849%_)))))
                (_%g231827231915%_ _%g231432231521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr232079%_
                                                      (let* ((_%g231920231939%_
                                                              (lambda (_%g231921231936%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g231921231936%_))))
                     (_%g231919232076%_
                      (lambda (_%g231921231942%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g231921231942%_))
                            (let ((_%e231923231944%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g231921231942%_))))
                              (let ((_%hd231924231947%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231923231944%_)))
                                    (_%tl231925231949%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231923231944%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl231925231949%_))
                                    (let ((_g234718_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl231925231949%_
                                              '0))))
                                      (begin
                                        (let ((_g234719_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g234718_)
                                                     (##values-length
                                                      _g234718_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g234719_ 2)))
                                              (error "Context expects 2 values"
                                                     _g234719_)))
                                        (let ((_%target231926231952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g234718_ 0)))
                                              (_%tl231928231954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g234718_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl231928231954%_))
                                              (letrec ((_%loop231929231957%_
                                                        (lambda (_%hd231927231960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause231933231962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd231927231960%_))
                      (let ((_%e231930231964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd231927231960%_))))
                        (let ((_%lp-hd231931231967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231930231964%_)))
                              (_%lp-tl231932231969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231930231964%_))))
                          (_%loop231929231957%_
                           _%lp-tl231932231969%_
                           (cons _%lp-hd231931231967%_
                                 _%clause231933231962%_))))
                      (let ((_%clause231934231972%_
                             (reverse _%clause231933231962%_)))
                        ((lambda (_%g231922231974%_)
                           (let* ((_%clauses232074%_
                                   (map (lambda (_%clause231988%_)
                                          (let* ((_%__stx233511233512%_
                                                  _%clause231988%_)
                                                 (_%g231991232006%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx233511233512%_)))))
                                            (let ((_%__kont233513233514%_
                                                   (lambda (_%g231993232034%_
                                                            _%g231994232035%_
                                                            _%g231995232036%_)
                                                     (let* ((_%receiver232055%_
                                                             (let ((_%$e232052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g231993232034%_))))
                       (if _%$e232052%_ _%$e232052%_ _%g231995232036%_)))
                    (_%body232061%_
                     (map (lambda (_%g232056232058%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver232055%_
                             _%$klass231775%_
                             _%method-calls230564%_
                             _%slot-refs230565%_
                             _%g232056232058%_))
                          _%g231993232034%_)))
               (cons (cons _%g231995232036%_ _%g231994232035%_)
                     _%body232061%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont233515233516%_
                                                   (lambda ()
                                                     _%clause231988%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx233511233512%_))
                                                  (let ((_%e231996232018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx233511233512%_))))
                                                    (let ((_%tl231998232023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e231996232018%_)))
                                                          (_%hd231997232021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e231996232018%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd231997232021%_))
                                                          (let ((_%e231999232026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd231997232021%_))))
                    (let ((_%tl232001232031%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e231999232026%_)))
                          (_%hd232000232029%_
                           (let ()
                             (declare (not safe))
                             (##car _%e231999232026%_))))
                      (_%__kont233513233514%_
                       _%tl231998232023%_
                       _%tl232001232031%_
                       _%hd232000232029%_)))
                  (_%__kont233515233516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont233515233516%_)))))
                                        (let ((__tmp234720
                                               (lambda (_%g232066232069%_
                                                        _%g232067232071%_)
                                                 (cons _%g232066232069%_
                                                       _%g232067232071%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp234720
                                           '()
                                           _%g231922231974%_))))
                                  (__tmp234721
                                   (cons '%#case-lambda _%clauses232074%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp234721
                              _%g231431231520%_)))
                         _%clause231934231972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop231929231957%_
                                                 _%target231926231952%_
                                                 '()))
                                              (_%g231920231939%_
                                               _%g231921231942%_)))))
                                    (_%g231920231939%_ _%g231921231942%_))))
                            (_%g231920231939%_ _%g231921231942%_)))))
                (_%g231919232076%_ _%g231431231520%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232081%_
                                                      (let ((__tmp234722
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g231433231522%_ '())
                                             (cons _%specializer-lambda-expr231918%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr232079%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp234722 _%stx230472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232083%_
                                                      (_%generate-specializer-impl230476%_
                                                       _%$klass231775%_
                                                       _%$method-table231777%_
                                                       _%methods-bind231802%_
                                                       _%slots-bind231826%_
                                                       _%specializer-impl232081%_)))
                                                (let ((__tmp234724
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g230483230545%_)))
                                                      (__tmp234723
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id231773%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp234724
                                                   '" => "
                                                   __tmp234723))
                                                (_%generate-specializer-def230477%_
                                                 _%g230483230545%_
                                                 _%specializer-id231773%_
                                                 _%specializer-impl232083%_))))
                                        _%hd231453231515%_
                                        _%hd231450231507%_
                                        _%hd231447231499%_)
                                       (_%g231429231459%_ _%g231430231462%_))))
                               (_%g231429231459%_ _%g231430231462%_))
                           (_%g231429231459%_ _%g231430231462%_))
                       (_%g231429231459%_ _%g231430231462%_))))
               (_%g231429231459%_ _%g231430231462%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231429231459%_
                                                    _%g231430231462%_))))
                                           (_%g231429231459%_
                                            _%g231430231462%_))))
                                   (_%g231429231459%_ _%g231430231462%_))))
                           (_%g231429231459%_ _%g231430231462%_))))
                   (_%g231429231459%_ _%g231430231462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g231429231459%_
                                                    _%g231430231462%_)))))
                                       (_%g231428232086%_ _%g230482230544%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g230482230544%_))
                                         (let* ((_%g232090232143%_
                                                 (lambda (_%g232091232140%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g232091232140%_))))
                                                (_%g232089233308%_
                                                 (lambda (_%g232091232146%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g232091232146%_))
                                                       (let ((_%e232097232148%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g232091232146%_))))
                 (let ((_%hd232098232151%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232097232148%_)))
                       (_%tl232099232153%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232097232148%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd232098232151%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd232098232151%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232099232153%_))
                               (let ((_%e232100232156%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232099232153%_))))
                                 (let ((_%hd232101232159%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232100232156%_)))
                                       (_%tl232102232161%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232100232156%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd232101232159%_))
                                       (let ((_%e232103232164%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd232101232159%_))))
                                         (let ((_%hd232104232167%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e232103232164%_)))
                                               (_%tl232105232169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e232103232164%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd232104232167%_))
                                               (let ((_%e232106232172%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd232104232167%_))))
                                                 (let ((_%hd232107232175%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232106232172%_)))
                                                       (_%tl232108232177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232106232172%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd232107232175%_))
                                                       (let ((_%e232109232180%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd232107232175%_))))
                 (let ((_%hd232110232183%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232109232180%_)))
                       (_%tl232111232185%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232109232180%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232111232185%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl232108232177%_))
                           (let ((_%e232112232188%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl232108232177%_))))
                             (let ((_%hd232113232191%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232112232188%_)))
                                   (_%tl232114232193%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232112232188%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232113232191%_))
                                   (let ((_%e232115232196%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232113232191%_))))
                                     (let ((_%hd232116232199%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232115232196%_)))
                                           (_%tl232117232201%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232115232196%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd232116232199%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd232116232199%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl232117232201%_))
                                                   (let ((_%e232118232204%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl232117232201%_))))
                                                     (let ((_%hd232119232207%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232118232204%_)))
                                                           (_%tl232120232209%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232118232204%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd232119232207%_))
                                                           (let ((_%e232121232212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd232119232207%_))))
                     (let ((_%hd232122232215%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232121232212%_)))
                           (_%tl232123232217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232121232212%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232122232215%_))
                           (let ((_%e232124232220%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232122232215%_))))
                             (let ((_%hd232125232223%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232124232220%_)))
                                   (_%tl232126232225%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232124232220%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232125232223%_))
                                   (let ((_%e232127232228%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232125232223%_))))
                                     (let ((_%hd232128232231%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232127232228%_)))
                                           (_%tl232129232233%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232127232228%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl232129232233%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl232126232225%_))
                                               (let ((_%e232130232236%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl232126232225%_))))
                                                 (let ((_%hd232131232239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232130232236%_)))
                                                       (_%tl232132232241%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232130232236%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl232132232241%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl232123232217%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl232120232209%_))
                       (let ((_%e232133232244%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl232120232209%_))))
                         (let ((_%hd232134232247%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e232133232244%_)))
                               (_%tl232135232249%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e232133232244%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl232135232249%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl232114232193%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232105232169%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl232102232161%_))
                                           (let ((_%e232136232252%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl232102232161%_))))
                                             (let ((_%hd232137232255%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232136232252%_)))
                                                   (_%tl232138232257%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232136232252%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232138232257%_))
                                                   ((lambda (_%g232092232260%_
                                                             _%g232093232261%_
                                                             _%g232094232262%_
                                                             _%g232095232263%_
                                                             _%g232096232264%_)
                                                      (let* ((_%g232304232366%_
                                                              (lambda (_%g232305232363%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232305232363%_))))
                     (_%g232303233305%_
                      (lambda (_%g232305232369%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232305232369%_))
                            (let ((_%e232311232371%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232305232369%_))))
                              (let ((_%hd232312232374%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232311232371%_)))
                                    (_%tl232313232376%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232311232371%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd232312232374%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd232312232374%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl232313232376%_))
                                            (let ((_%e232314232379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl232313232376%_))))
                                              (let ((_%hd232315232382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232314232379%_)))
                                                    (_%tl232316232384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232314232379%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232316232384%_))
                                                    (let ((_%e232317232387%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232316232384%_))))
                                                      (let ((_%hd232318232390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232317232387%_)))
                    (_%tl232319232392%_
                     (let () (declare (not safe)) (##cdr _%e232317232387%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd232318232390%_))
                    (let ((_%e232320232395%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd232318232390%_))))
                      (let ((_%hd232321232398%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232320232395%_)))
                            (_%tl232322232400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232320232395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd232321232398%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd232321232398%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232322232400%_))
                                    (let ((_%e232323232403%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232322232400%_))))
                                      (let ((_%hd232324232406%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232323232403%_)))
                                            (_%tl232325232408%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232323232403%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232324232406%_))
                                            (let ((_%e232326232411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232324232406%_))))
                                              (let ((_%hd232327232414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232326232411%_)))
                                                    (_%tl232328232416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232326232411%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd232327232414%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd232327232414%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl232328232416%_))
                                                            (let ((_%e232329232419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl232328232416%_))))
                      (let ((_%hd232330232422%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232329232419%_)))
                            (_%tl232331232424%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232329232419%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232331232424%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl232325232408%_))
                                (let ((_%e232332232427%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl232325232408%_))))
                                  (let ((_%hd232333232430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232332232427%_)))
                                        (_%tl232334232432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232332232427%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232333232430%_))
                                        (let ((_%e232335232435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232333232430%_))))
                                          (let ((_%hd232336232438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232335232435%_)))
                                                (_%tl232337232440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232335232435%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd232336232438%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd232336232438%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl232337232440%_))
                                                        (let ((_%e232338232443%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl232337232440%_))))
                  (let ((_%hd232339232446%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232338232443%_)))
                        (_%tl232340232448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232338232443%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl232340232448%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232334232432%_))
                            (let ((_%e232341232451%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232334232432%_))))
                              (let ((_%hd232342232454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232341232451%_)))
                                    (_%tl232343232456%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232341232451%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd232342232454%_))
                                    (let ((_%e232344232459%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd232342232454%_))))
                                      (let ((_%hd232345232462%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232344232459%_)))
                                            (_%tl232346232464%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232344232459%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd232345232462%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd232345232462%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl232346232464%_))
                                                    (let ((_%e232347232467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl232346232464%_))))
                                                      (let ((_%hd232348232470%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e232347232467%_)))
                    (_%tl232349232472%_
                     (let () (declare (not safe)) (##cdr _%e232347232467%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl232349232472%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232343232456%_))
                        (if (let ((__tmp234725
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl232343232456%_))))
                              (declare (not safe))
                              (##fx>= __tmp234725 '1))
                            (let ((_g234726_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl232343232456%_
                                      '1))))
                              (begin
                                (let ((_g234727_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g234726_)
                                             (##values-length _g234726_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g234727_ 2)))
                                      (error "Context expects 2 values"
                                             _g234727_)))
                                (let ((_%target232350232475%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g234726_ 0)))
                                      (_%tl232352232477%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g234726_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl232352232477%_))
                                      (let ((_%e232359232480%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl232352232477%_))))
                                        (let ((_%hd232360232483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e232359232480%_)))
                                              (_%tl232361232485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e232359232480%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl232361232485%_))
                                              (letrec ((_%loop232353232488%_
                                                        (lambda (_%hd232351232491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref232357232493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd232351232491%_))
                      (let ((_%e232354232495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd232351232491%_))))
                        (let ((_%lp-hd232355232498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e232354232495%_)))
                              (_%lp-tl232356232500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e232354232495%_))))
                          (_%loop232353232488%_
                           _%lp-tl232356232500%_
                           (cons _%lp-hd232355232498%_
                                 _%kw-ref232357232493%_))))
                      (let ((_%kw-ref232358232503%_
                             (reverse _%kw-ref232357232493%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl232319232392%_))
                            ((lambda (_%g232306232505%_
                                      _%g232307232506%_
                                      _%g232308232507%_
                                      _%g232309232508%_
                                      _%g232310232509%_)
                               (let* ((_%kw-count232560%_
                                       (length (let ((__tmp234728
                                                      (lambda (_%g232552232555%_
                                                               _%g232553232557%_)
                                                        (cons _%g232552232555%_
                                                              _%g232553232557%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp234728
                                                  '()
                                                  _%g232307232506%_))))
                                      (_%self-index232562%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count232560%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g232094232262%_))
                                     (let* ((_%g232566232580%_
                                             (lambda (_%g232567232577%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232567232577%_))))
                                            (_%g232565232703%_
                                             (lambda (_%g232567232583%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232567232583%_))
                                                   (let ((_%e232570232585%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232567232583%_))))
                                                     (let ((_%hd232571232588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232570232585%_)))
                                                           (_%tl232572232590%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232570232585%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232572232590%_))
                                                           (let ((_%e232573232593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232572232590%_))))
                     (let ((_%hd232574232596%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232573232593%_)))
                           (_%tl232575232598%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232573232593%_))))
                       ((lambda (_%g232568232601%_ _%g232569232602%_)
                          (let* ((_%self232619%_
                                  (list-ref
                                   _%g232569232602%_
                                   _%self-index232562%_))
                                 (_%receiver232624%_
                                  (let ((_%$e232621%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g232568232601%_))))
                                    (if _%$e232621%_
                                        _%$e232621%_
                                        _%self232619%_))))
                            (for-each
                             (lambda (_%g232626232628%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver232624%_
                                _%method-calls230564%_
                                _%slot-refs230565%_
                                _%g232626232628%_))
                             _%g232568232601%_)
                            (if (_%no-specializer?230568%_)
                                _%stx230472%_
                                (let* ((_%specializer-id232637%_
                                        (let* ((_%id232631%_
                                                (let ((__tmp234729
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g230483230545%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp234729
                                                   '"::specialize")))
                                               (_%specializer-id232634%_
                                                (let ((__tmp234730
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx230472%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id232631%_
                                                   __tmp234730))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id232634%_))
                                          _%specializer-id232634%_))
                                       (_%$klass232639%_
                                        (let ((__tmp234731
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp234731)))
                                       (_%$method-table232641%_
                                        (let ((__tmp234732
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp234732)))
                                       (_%methods232643%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls230564%_)))
                                       (_%$methods232647%_
                                        (let ((__tmp234733
                                               (lambda (_%id232645%_)
                                                 (let ((__tmp234734
                                                        (gensym _%id232645%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp234734)))))
                                          (declare (not safe))
                                          (##map __tmp234733
                                                 _%methods232643%_)))
                                       (_%_232656%_
                                        (let ((__tmp234735
                                               (lambda (_%g232648232651%_
                                                        _%g232649232653%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls230564%_
                                                    _%g232648232651%_
                                                    _%g232649232653%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp234735
                                           _%methods232643%_
                                           _%$methods232647%_)))
                                       (_%methods-bind232666%_
                                        (let ((__tmp234736
                                               (lambda (_%g232658232661%_
                                                        _%g232659232663%_)
                                                 (_%generate-method-bind230474%_
                                                  _%$klass232639%_
                                                  _%$method-table232641%_
                                                  _%g232658232661%_
                                                  _%g232659232663%_))))
                                          (declare (not safe))
                                          (##map __tmp234736
                                                 _%methods232643%_
                                                 _%$methods232647%_)))
                                       (_%slots232668%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs230565%_)))
                                       (_%$slots232672%_
                                        (let ((__tmp234737
                                               (lambda (_%id232670%_)
                                                 (let ((__tmp234738
                                                        (gensym _%id232670%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp234738)))))
                                          (declare (not safe))
                                          (##map __tmp234737 _%slots232668%_)))
                                       (_%_232681%_
                                        (let ((__tmp234739
                                               (lambda (_%g232673232676%_
                                                        _%g232674232678%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs230565%_
                                                    _%g232673232676%_
                                                    _%g232674232678%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp234739
                                           _%slots232668%_
                                           _%$slots232672%_)))
                                       (_%slots-bind232690%_
                                        (let ((__tmp234740
                                               (lambda (_%g232682232685%_
                                                        _%g232683232687%_)
                                                 (_%generate-slot-bind230475%_
                                                  _%$klass232639%_
                                                  _%g232682232685%_
                                                  _%g232683232687%_))))
                                          (declare (not safe))
                                          (##map __tmp234740
                                                 _%slots232668%_
                                                 _%$slots232672%_)))
                                       (_%specializer-impl232698%_
                                        (let* ((_%specializer-body232696%_
                                                (map (lambda (_%g232691232693%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver232624%_
                                                        _%$klass232639%_
                                                        _%method-calls230564%_
                                                        _%slot-refs230565%_
                                                        _%g232691232693%_))
                                                     _%g232568232601%_))
                                               (__tmp234741
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g232096232264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g232095232263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp234742
                                   (cons '%#lambda
                                         (cons _%g232569232602%_
                                               _%specializer-body232696%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp234742
                               _%g232094232262%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g232093232261%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g232092232260%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp234741
                                           _%stx230472%_)))
                                       (_%specializer-impl232700%_
                                        (_%generate-specializer-impl230476%_
                                         _%$klass232639%_
                                         _%$method-table232641%_
                                         _%methods-bind232666%_
                                         _%slots-bind232690%_
                                         _%specializer-impl232698%_)))
                                  (let ((__tmp234744
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g230483230545%_)))
                                        (__tmp234743
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id232637%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp234744
                                     '" => "
                                     __tmp234743))
                                  (_%generate-specializer-def230477%_
                                   _%g230483230545%_
                                   _%specializer-id232637%_
                                   _%specializer-impl232700%_)))))
                        _%tl232575232598%_
                        _%hd232574232596%_)))
                   (_%g232566232580%_ _%g232567232583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232566232580%_
                                                    _%g232567232583%_)))))
                                       (_%g232565232703%_ _%g232094232262%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g232094232262%_))
                                         (let* ((_%g232707232737%_
                                                 (lambda (_%g232708232734%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g232708232734%_))))
                                                (_%g232706233301%_
                                                 (lambda (_%g232708232740%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g232708232740%_))
                                                       (let ((_%e232712232742%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g232708232740%_))))
                 (let ((_%hd232713232745%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232712232742%_)))
                       (_%tl232714232747%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232712232742%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl232714232747%_))
                       (let ((_%e232715232750%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl232714232747%_))))
                         (let ((_%hd232716232753%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e232715232750%_)))
                               (_%tl232717232755%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e232715232750%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd232716232753%_))
                               (let ((_%e232718232758%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd232716232753%_))))
                                 (let ((_%hd232719232761%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232718232758%_)))
                                       (_%tl232720232763%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232718232758%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd232719232761%_))
                                       (let ((_%e232721232766%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd232719232761%_))))
                                         (let ((_%hd232722232769%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e232721232766%_)))
                                               (_%tl232723232771%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e232721232766%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd232722232769%_))
                                               (let ((_%e232724232774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd232722232769%_))))
                                                 (let ((_%hd232725232777%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232724232774%_)))
                                                       (_%tl232726232779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232724232774%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl232726232779%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232723232771%_))
                                                           (let ((_%e232727232782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232723232771%_))))
                     (let ((_%hd232728232785%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232727232782%_)))
                           (_%tl232729232787%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232727232782%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232729232787%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl232720232763%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl232717232755%_))
                                   (let ((_%e232730232790%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl232717232755%_))))
                                     (let ((_%hd232731232793%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232730232790%_)))
                                           (_%tl232732232795%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232730232790%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl232732232795%_))
                                           ((lambda (_%g232709232798%_
                                                     _%g232710232799%_
                                                     _%g232711232800%_)
                                              (let* ((_%g232824232838%_
                                                      (lambda (_%g232825232835%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g232825232835%_))))
                                                     (_%g232823232885%_
                                                      (lambda (_%g232825232841%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g232825232841%_))
                                                            (let ((_%e232828232843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g232825232841%_))))
                      (let ((_%hd232829232846%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232828232843%_)))
                            (_%tl232830232848%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232828232843%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl232830232848%_))
                            (let ((_%e232831232851%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl232830232848%_))))
                              (let ((_%hd232832232854%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232831232851%_)))
                                    (_%tl232833232856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232831232851%_))))
                                ((lambda (_%g232826232859%_ _%g232827232860%_)
                                   (let* ((_%self232873%_
                                           (list-ref
                                            _%g232827232860%_
                                            _%self-index232562%_))
                                          (_%receiver232878%_
                                           (let ((_%$e232875%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g232826232859%_))))
                                             (if _%$e232875%_
                                                 _%$e232875%_
                                                 _%self232873%_))))
                                     (for-each
                                      (lambda (_%g232880232882%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver232878%_
                                         _%method-calls230564%_
                                         _%slot-refs230565%_
                                         _%g232880232882%_))
                                      _%g232826232859%_)))
                                 _%tl232833232856%_
                                 _%hd232832232854%_)))
                            (_%g232824232838%_ _%g232825232841%_))))
                    (_%g232824232838%_ _%g232825232841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g232823232885%_
                                                 _%g232710232799%_))
                                              (let* ((_%g232888232907%_
                                                      (lambda (_%g232889232904%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g232889232904%_))))
                                                     (_%g232887233016%_
                                                      (lambda (_%g232889232910%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g232889232910%_))
                                                            (let ((_%e232891232912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g232889232910%_))))
                      (let ((_%hd232892232915%_
                             (let ()
                               (declare (not safe))
                               (##car _%e232891232912%_)))
                            (_%tl232893232917%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e232891232912%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl232893232917%_))
                            (let ((_g234745_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl232893232917%_
                                      '0))))
                              (begin
                                (let ((_g234746_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g234745_)
                                             (##values-length _g234745_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g234746_ 2)))
                                      (error "Context expects 2 values"
                                             _g234746_)))
                                (let ((_%target232894232920%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g234745_ 0)))
                                      (_%tl232896232922%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g234745_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl232896232922%_))
                                      (letrec ((_%loop232897232925%_
                                                (lambda (_%hd232895232928%_
                                                         _%clause232901232930%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd232895232928%_))
                                                      (let ((_%e232898232932%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd232895232928%_))))
                (let ((_%lp-hd232899232935%_
                       (let () (declare (not safe)) (##car _%e232898232932%_)))
                      (_%lp-tl232900232937%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e232898232932%_))))
                  (_%loop232897232925%_
                   _%lp-tl232900232937%_
                   (cons _%lp-hd232899232935%_ _%clause232901232930%_))))
              (let ((_%clause232902232940%_ (reverse _%clause232901232930%_)))
                ((lambda (_%g232890232942%_)
                   (for-each
                    (lambda (_%clause232955%_)
                      (let* ((_%g232957232968%_
                              (lambda (_%g232958232965%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g232958232965%_))))
                             (_%g232956233006%_
                              (lambda (_%g232958232971%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g232958232971%_))
                                    (let ((_%e232961232973%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g232958232971%_))))
                                      (let ((_%hd232962232976%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232961232973%_)))
                                            (_%tl232963232978%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232961232973%_))))
                                        ((lambda (_%g232959232981%_
                                                  _%g232960232982%_)
                                           (let* ((_%self232994%_
                                                   (list-ref
                                                    _%g232960232982%_
                                                    _%self-index232562%_))
                                                  (_%receiver232999%_
                                                   (let ((_%$e232996%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g232959232981%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e232996%_
                                                         _%$e232996%_
                                                         _%self232994%_))))
                                             (for-each
                                              (lambda (_%g233001233003%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver232999%_
                                                 _%method-calls230564%_
                                                 _%slot-refs230565%_
                                                 _%g233001233003%_))
                                              _%g232959232981%_)))
                                         _%tl232963232978%_
                                         _%hd232962232976%_)))
                                    (_%g232957232968%_ _%g232958232971%_)))))
                        (_%g232956233006%_ _%clause232955%_)))
                    (let ((__tmp234747
                           (lambda (_%g233008233011%_ _%g233009233013%_)
                             (cons _%g233008233011%_ _%g233009233013%_))))
                      (declare (not safe))
                      (foldr__0 __tmp234747 '() _%g232890232942%_))))
                 _%clause232902232940%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop232897232925%_
                                         _%target232894232920%_
                                         '()))
                                      (_%g232888232907%_ _%g232889232910%_)))))
                            (_%g232888232907%_ _%g232889232910%_))))
                    (_%g232888232907%_ _%g232889232910%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g232887233016%_
                                                 _%g232709232798%_))
                                              (if (_%no-specializer?230568%_)
                                                  _%stx230472%_
                                                  (let* ((_%specializer-id233025%_
                                                          (let* ((_%id233019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp234748
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g230483230545%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp234748 '"::specialize")))
                         (_%specializer-id233022%_
                          (let ((__tmp234749
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx230472%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id233019%_
                             __tmp234749))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id233022%_))
                    _%specializer-id233022%_))
                 (_%$klass233027%_
                  (let ((__tmp234750
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp234750)))
                 (_%$method-table233029%_
                  (let ((__tmp234751
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp234751)))
                 (_%methods233031%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls230564%_)))
                 (_%$methods233035%_
                  (let ((__tmp234752
                         (lambda (_%id233033%_)
                           (let ((__tmp234753 (gensym _%id233033%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp234753)))))
                    (declare (not safe))
                    (##map __tmp234752 _%methods233031%_)))
                 (_%_233044%_
                  (let ((__tmp234754
                         (lambda (_%g233036233039%_ _%g233037233041%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls230564%_
                              _%g233036233039%_
                              _%g233037233041%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp234754
                     _%methods233031%_
                     _%$methods233035%_)))
                 (_%methods-bind233054%_
                  (let ((__tmp234755
                         (lambda (_%g233046233049%_ _%g233047233051%_)
                           (_%generate-method-bind230474%_
                            _%$klass233027%_
                            _%$method-table233029%_
                            _%g233046233049%_
                            _%g233047233051%_))))
                    (declare (not safe))
                    (##map __tmp234755 _%methods233031%_ _%$methods233035%_)))
                 (_%slots233056%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs230565%_)))
                 (_%$slots233060%_
                  (let ((__tmp234756
                         (lambda (_%id233058%_)
                           (let ((__tmp234757 (gensym _%id233058%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp234757)))))
                    (declare (not safe))
                    (##map __tmp234756 _%slots233056%_)))
                 (_%_233069%_
                  (let ((__tmp234758
                         (lambda (_%g233061233064%_ _%g233062233066%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs230565%_
                              _%g233061233064%_
                              _%g233062233066%_)))))
                    (declare (not safe))
                    (##for-each __tmp234758 _%slots233056%_ _%$slots233060%_)))
                 (_%slots-bind233078%_
                  (let ((__tmp234759
                         (lambda (_%g233070233073%_ _%g233071233075%_)
                           (_%generate-slot-bind230475%_
                            _%$klass233027%_
                            _%g233070233073%_
                            _%g233071233075%_))))
                    (declare (not safe))
                    (##map __tmp234759 _%slots233056%_ _%$slots233060%_)))
                 (_%specializer-lambda-expr233156%_
                  (let* ((_%g233080233094%_
                          (lambda (_%g233081233091%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233081233091%_))))
                         (_%g233079233153%_
                          (lambda (_%g233081233097%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233081233097%_))
                                (let ((_%e233084233099%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233081233097%_))))
                                  (let ((_%hd233085233102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233084233099%_)))
                                        (_%tl233086233104%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233084233099%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl233086233104%_))
                                        (let ((_%e233087233107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl233086233104%_))))
                                          (let ((_%hd233088233110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233087233107%_)))
                                                (_%tl233089233112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233087233107%_))))
                                            ((lambda (_%g233082233115%_
                                                      _%g233083233116%_)
                                               (let* ((_%self233139%_
                                                       (list-ref
                                                        _%g233083233116%_
                                                        _%self-index232562%_))
                                                      (_%receiver233144%_
                                                       (let ((_%$e233141%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g233082233115%_))))
                 (if _%$e233141%_ _%$e233141%_ _%self233139%_)))
              (_%body233150%_
               (map (lambda (_%g233145233147%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver233144%_
                       _%$klass233027%_
                       _%method-calls230564%_
                       _%slot-refs230565%_
                       _%g233145233147%_))
                    _%g233082233115%_))
              (__tmp234760
               (cons '%#lambda (cons _%g233083233116%_ _%body233150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp234760
                                                  _%g232710232799%_)))
                                             _%tl233089233112%_
                                             _%hd233088233110%_)))
                                        (_%g233080233094%_
                                         _%g233081233097%_))))
                                (_%g233080233094%_ _%g233081233097%_)))))
                    (_%g233079233153%_ _%g232710232799%_)))
                 (_%specializer-case-lambda-expr233294%_
                  (let* ((_%g233158233177%_
                          (lambda (_%g233159233174%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g233159233174%_))))
                         (_%g233157233291%_
                          (lambda (_%g233159233180%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g233159233180%_))
                                (let ((_%e233161233182%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g233159233180%_))))
                                  (let ((_%hd233162233185%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233161233182%_)))
                                        (_%tl233163233187%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233161233182%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl233163233187%_))
                                        (let ((_g234761_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl233163233187%_
                                                  '0))))
                                          (begin
                                            (let ((_g234762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g234761_)
                                                         (##values-length
                                                          _g234761_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g234762_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g234762_)))
                                            (let ((_%target233164233190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g234761_
                                                      0)))
                                                  (_%tl233166233192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g234761_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl233166233192%_))
                                                  (letrec ((_%loop233167233195%_
                                                            (lambda (_%hd233165233198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause233171233200%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd233165233198%_))
                          (let ((_%e233168233202%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd233165233198%_))))
                            (let ((_%lp-hd233169233205%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e233168233202%_)))
                                  (_%lp-tl233170233207%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e233168233202%_))))
                              (_%loop233167233195%_
                               _%lp-tl233170233207%_
                               (cons _%lp-hd233169233205%_
                                     _%clause233171233200%_))))
                          (let ((_%clause233172233210%_
                                 (reverse _%clause233171233200%_)))
                            ((lambda (_%g233160233212%_)
                               (let* ((_%clauses233289%_
                                       (map (lambda (_%clause233226%_)
                                              (let* ((_%g233228233239%_
                                                      (lambda (_%g233229233236%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233229233236%_))))
                                                     (_%g233227233279%_
                                                      (lambda (_%g233229233242%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233229233242%_))
                                                            (let ((_%e233232233244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233229233242%_))))
                      (let ((_%hd233233233247%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233232233244%_)))
                            (_%tl233234233249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233232233244%_))))
                        ((lambda (_%g233230233252%_ _%g233231233253%_)
                           (let* ((_%self233265%_
                                   (list-ref
                                    _%g233231233253%_
                                    _%self-index232562%_))
                                  (_%receiver233270%_
                                   (let ((_%$e233267%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g233230233252%_))))
                                     (if _%$e233267%_
                                         _%$e233267%_
                                         _%self233265%_)))
                                  (_%body233276%_
                                   (map (lambda (_%g233271233273%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver233270%_
                                           _%$klass233027%_
                                           _%method-calls230564%_
                                           _%slot-refs230565%_
                                           _%g233271233273%_))
                                        _%g233230233252%_)))
                             (cons _%g233231233253%_ _%body233276%_)))
                         _%tl233234233249%_
                         _%hd233233233247%_)))
                    (_%g233228233239%_ _%g233229233242%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233227233279%_
                                                 _%clause233226%_)))
                                            (let ((__tmp234763
                                                   (lambda (_%g233281233284%_
                                                            _%g233282233286%_)
                                                     (cons _%g233281233284%_
                                                           _%g233282233286%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp234763
                                               '()
                                               _%g233160233212%_))))
                                      (__tmp234764
                                       (cons '%#case-lambda
                                             _%clauses233289%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp234764
                                  _%g232709232798%_)))
                             _%clause233172233210%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop233167233195%_
                                                     _%target233164233190%_
                                                     '()))
                                                  (_%g233158233177%_
                                                   _%g233159233180%_)))))
                                        (_%g233158233177%_
                                         _%g233159233180%_))))
                                (_%g233158233177%_ _%g233159233180%_)))))
                    (_%g233157233291%_ _%g232709232798%_)))
                 (_%specializer-impl233296%_
                  (let ((__tmp234765
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g232096232264%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g232095232263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp234766
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g232711232800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr233156%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr233294%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp234766
                                                _%stx230472%_))
                                             '()))
                                 '())
                           (cons _%g232093232261%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g232092232260%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp234765 _%stx230472%_)))
                 (_%specializer-impl233298%_
                  (_%generate-specializer-impl230476%_
                   _%$klass233027%_
                   _%$method-table233029%_
                   _%methods-bind233054%_
                   _%slots-bind233078%_
                   _%specializer-impl233296%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp234768
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g230483230545%_)))
                                                          (__tmp234767
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id233025%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp234768
                                                       '" => "
                                                       __tmp234767))
                                                    (_%generate-specializer-def230477%_
                                                     _%g230483230545%_
                                                     _%specializer-id233025%_
                                                     _%specializer-impl233298%_))))
                                            _%hd232731232793%_
                                            _%hd232728232785%_
                                            _%hd232725232777%_)
                                           (_%g232707232737%_
                                            _%g232708232740%_))))
                                   (_%g232707232737%_ _%g232708232740%_))
                               (_%g232707232737%_ _%g232708232740%_))
                           (_%g232707232737%_ _%g232708232740%_))))
                   (_%g232707232737%_ _%g232708232740%_))
               (_%g232707232737%_ _%g232708232740%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232707232737%_
                                                _%g232708232740%_))))
                                       (_%g232707232737%_ _%g232708232740%_))))
                               (_%g232707232737%_ _%g232708232740%_))))
                       (_%g232707232737%_ _%g232708232740%_))))
               (_%g232707232737%_ _%g232708232740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g232706233301%_
                                            _%g232094232262%_))
                                         _%stx230472%_))))
                             _%hd232360232483%_
                             _%kw-ref232358232503%_
                             _%hd232348232470%_
                             _%hd232339232446%_
                             _%hd232330232422%_)
                            (_%g232304232366%_ _%g232305232369%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop232353232488%_
                                                 _%target232350232475%_
                                                 '()))
                                              (_%g232304232366%_
                                               _%g232305232369%_))))
                                      (_%g232304232366%_ _%g232305232369%_)))))
                            (_%g232304232366%_ _%g232305232369%_))
                        (_%g232304232366%_ _%g232305232369%_))
                    (_%g232304232366%_ _%g232305232369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232304232366%_
                                                     _%g232305232369%_))
                                                (_%g232304232366%_
                                                 _%g232305232369%_))
                                            (_%g232304232366%_
                                             _%g232305232369%_))))
                                    (_%g232304232366%_ _%g232305232369%_))))
                            (_%g232304232366%_ _%g232305232369%_))
                        (_%g232304232366%_ _%g232305232369%_))))
                (_%g232304232366%_ _%g232305232369%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232304232366%_
                                                     _%g232305232369%_))
                                                (_%g232304232366%_
                                                 _%g232305232369%_))))
                                        (_%g232304232366%_
                                         _%g232305232369%_))))
                                (_%g232304232366%_ _%g232305232369%_))
                            (_%g232304232366%_ _%g232305232369%_))))
                    (_%g232304232366%_ _%g232305232369%_))
                (_%g232304232366%_ _%g232305232369%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232304232366%_
                                                     _%g232305232369%_))))
                                            (_%g232304232366%_
                                             _%g232305232369%_))))
                                    (_%g232304232366%_ _%g232305232369%_))
                                (_%g232304232366%_ _%g232305232369%_))
                            (_%g232304232366%_ _%g232305232369%_))))
                    (_%g232304232366%_ _%g232305232369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g232304232366%_
                                                     _%g232305232369%_))))
                                            (_%g232304232366%_
                                             _%g232305232369%_))
                                        (_%g232304232366%_ _%g232305232369%_))
                                    (_%g232304232366%_ _%g232305232369%_))))
                            (_%g232304232366%_ _%g232305232369%_)))))
                (_%g232303233305%_ _%g232093232261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd232137232255%_
                                                    _%hd232134232247%_
                                                    _%hd232131232239%_
                                                    _%hd232128232231%_
                                                    _%hd232110232183%_)
                                                   (_%g232090232143%_
                                                    _%g232091232146%_))))
                                           (_%g232090232143%_
                                            _%g232091232146%_))
                                       (_%g232090232143%_ _%g232091232146%_))
                                   (_%g232090232143%_ _%g232091232146%_))
                               (_%g232090232143%_ _%g232091232146%_))))
                       (_%g232090232143%_ _%g232091232146%_))
                   (_%g232090232143%_ _%g232091232146%_))
               (_%g232090232143%_ _%g232091232146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232090232143%_
                                                _%g232091232146%_))
                                           (_%g232090232143%_
                                            _%g232091232146%_))))
                                   (_%g232090232143%_ _%g232091232146%_))))
                           (_%g232090232143%_ _%g232091232146%_))))
                   (_%g232090232143%_ _%g232091232146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232090232143%_
                                                    _%g232091232146%_))
                                               (_%g232090232143%_
                                                _%g232091232146%_))
                                           (_%g232090232143%_
                                            _%g232091232146%_))))
                                   (_%g232090232143%_ _%g232091232146%_))))
                           (_%g232090232143%_ _%g232091232146%_))
                       (_%g232090232143%_ _%g232091232146%_))))
               (_%g232090232143%_ _%g232091232146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232090232143%_
                                                _%g232091232146%_))))
                                       (_%g232090232143%_ _%g232091232146%_))))
                               (_%g232090232143%_ _%g232091232146%_))
                           (_%g232090232143%_ _%g232091232146%_))
                       (_%g232090232143%_ _%g232091232146%_))))
               (_%g232090232143%_ _%g232091232146%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g232089233308%_
                                            _%g230482230544%_))
                                         _%stx230472%_))))))))
                  (_%__kont233535233536%_ (lambda () _%stx230472%_)))
              (let ((_%__match233564233565%_
                     (lambda (_%e230484230512%_
                              _%hd230485230515%_
                              _%tl230486230517%_
                              _%e230487230520%_
                              _%hd230488230523%_
                              _%tl230489230525%_
                              _%e230490230528%_
                              _%hd230491230531%_
                              _%tl230492230533%_
                              _%e230493230536%_
                              _%hd230494230539%_
                              _%tl230495230541%_)
                       (let ((_%g230482230544%_ _%hd230494230539%_)
                             (_%g230483230545%_ _%hd230491230531%_))
                         (if (let ((__tmp234769
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g230483230545%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp234769))
                             (_%__kont233533233534%_
                              _%g230482230544%_
                              _%g230483230545%_)
                             (_%__kont233535233536%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx233531233532%_))
                    (let ((_%e230484230512%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx233531233532%_))))
                      (let ((_%tl230486230517%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230484230512%_)))
                            (_%hd230485230515%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230484230512%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl230486230517%_))
                            (let ((_%e230487230520%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl230486230517%_))))
                              (let ((_%tl230489230525%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e230487230520%_)))
                                    (_%hd230488230523%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e230487230520%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd230488230523%_))
                                    (let ((_%e230490230528%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd230488230523%_))))
                                      (let ((_%tl230492230533%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230490230528%_)))
                                            (_%hd230491230531%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230490230528%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230492230533%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230489230525%_))
                                                (let ((_%e230493230536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230489230525%_))))
                                                  (let ((_%tl230495230541%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230493230536%_)))
                                                        (_%hd230494230539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230493230536%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230495230541%_))
                                                        (_%__match233564233565%_
                                                         _%e230484230512%_
                                                         _%hd230485230515%_
                                                         _%tl230486230517%_
                                                         _%e230487230520%_
                                                         _%hd230488230523%_
                                                         _%tl230489230525%_
                                                         _%e230490230528%_
                                                         _%hd230491230531%_
                                                         _%tl230492230533%_
                                                         _%e230493230536%_
                                                         _%hd230494230539%_
                                                         _%tl230495230541%_)
                                                        (_%__kont233535233536%_))))
                                                (_%__kont233535233536%_))
                                            (_%__kont233535233536%_))))
                                    (_%__kont233535233536%_))))
                            (_%__kont233535233536%_))))
                    (_%__kont233535233536%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self230324%_ _%stx230325%_)
        (let* ((_%__stx233567233568%_ _%stx230325%_)
               (_%g230328230361%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx233567233568%_)))))
          (let ((_%__kont233569233570%_
                 (lambda (_%g230330230451%_) _%g230330230451%_))
                (_%__kont233571233572%_
                 (lambda (_%g230346230390%_ _%g230347230391%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230324%_ _%g230346230390%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx233567233568%_))
                (let ((_%e230331230411%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx233567233568%_))))
                  (let ((_%tl230333230416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e230331230411%_)))
                        (_%hd230332230414%_
                         (let ()
                           (declare (not safe))
                           (##car _%e230331230411%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl230333230416%_))
                        (let ((_%e230334230419%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl230333230416%_))))
                          (let ((_%tl230336230424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e230334230419%_)))
                                (_%hd230335230422%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e230334230419%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd230335230422%_))
                                (let ((_%e230337230427%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd230335230422%_))))
                                  (let ((_%tl230339230432%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e230337230427%_)))
                                        (_%hd230338230430%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e230337230427%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd230338230430%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd230338230430%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230339230432%_))
                                                (let ((_%e230340230435%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230339230432%_))))
                                                  (let ((_%tl230342230440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230340230435%_)))
                                                        (_%hd230341230438%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230340230435%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230342230440%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl230336230424%_))
                                                            (let ((_%e230343230443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230336230424%_))))
                      (let ((_%tl230345230448%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230343230443%_)))
                            (_%hd230344230446%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230343230443%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230345230448%_))
                            (_%__kont233569233570%_ _%hd230341230438%_)
                            (let ()
                              (declare (not safe))
                              (_%g230328230361%_)))))
                    (let () (declare (not safe)) (_%g230328230361%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl230336230424%_))
                    (let ((_%e230354230382%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl230336230424%_))))
                      (let ((_%tl230356230387%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e230354230382%_)))
                            (_%hd230355230385%_
                             (let ()
                               (declare (not safe))
                               (##car _%e230354230382%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl230356230387%_))
                            (_%__kont233571233572%_
                             _%hd230355230385%_
                             _%hd230335230422%_)
                            (let ()
                              (declare (not safe))
                              (_%g230328230361%_)))))
                    (let () (declare (not safe)) (_%g230328230361%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl230336230424%_))
                                                    (let ((_%e230354230382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl230336230424%_))))
                                                      (let ((_%tl230356230387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e230354230382%_)))
                    (_%hd230355230385%_
                     (let () (declare (not safe)) (##car _%e230354230382%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl230356230387%_))
                    (_%__kont233571233572%_
                     _%hd230355230385%_
                     _%hd230335230422%_)
                    (let () (declare (not safe)) (_%g230328230361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230328230361%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl230336230424%_))
                                                (let ((_%e230354230382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl230336230424%_))))
                                                  (let ((_%tl230356230387%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e230354230382%_)))
                                                        (_%hd230355230385%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e230354230382%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl230356230387%_))
                                                        (_%__kont233571233572%_
                                                         _%hd230355230385%_
                                                         _%hd230335230422%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g230328230361%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g230328230361%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl230336230424%_))
                                            (let ((_%e230354230382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl230336230424%_))))
                                              (let ((_%tl230356230387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e230354230382%_)))
                                                    (_%hd230355230385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e230354230382%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl230356230387%_))
                                                    (_%__kont233571233572%_
                                                     _%hd230355230385%_
                                                     _%hd230335230422%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g230328230361%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g230328230361%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl230336230424%_))
                                    (let ((_%e230354230382%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl230336230424%_))))
                                      (let ((_%tl230356230387%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e230354230382%_)))
                                            (_%hd230355230385%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e230354230382%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl230356230387%_))
                                            (_%__kont233571233572%_
                                             _%hd230355230385%_
                                             _%hd230335230422%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g230328230361%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g230328230361%_))))))
                        (let () (declare (not safe)) (_%g230328230361%_)))))
                (let () (declare (not safe)) (_%g230328230361%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self230240%_ _%stx230241%_)
        (let* ((_%g230243230264%_
                (lambda (_%g230244230261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g230244230261%_))))
               (_%g230242230321%_
                (lambda (_%g230244230267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g230244230267%_))
                      (let ((_%e230248230269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g230244230267%_))))
                        (let ((_%hd230249230272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230248230269%_)))
                              (_%tl230250230274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230248230269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230250230274%_))
                              (let ((_%e230251230277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230250230274%_))))
                                (let ((_%hd230252230280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230251230277%_)))
                                      (_%tl230253230282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230251230277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl230253230282%_))
                                      (let ((_%e230254230285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl230253230282%_))))
                                        (let ((_%hd230255230288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230254230285%_)))
                                              (_%tl230256230290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230254230285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230256230290%_))
                                              (let ((_%e230257230293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230256230290%_))))
                                                (let ((_%hd230258230296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230257230293%_)))
                                                      (_%tl230259230298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230257230293%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230259230298%_))
                                                      ((lambda (_%g230245230301%_
                                                                _%g230246230302%_
                                                                _%g230247230303%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self230240%_
                                                            _%g230246230302%_)))
                                                       _%hd230258230296%_
                                                       _%hd230255230288%_
                                                       _%hd230252230280%_)
                                                      (_%g230243230264%_
                                                       _%g230244230267%_))))
                                              (_%g230243230264%_
                                               _%g230244230267%_))))
                                      (_%g230243230264%_ _%g230244230267%_))))
                              (_%g230243230264%_ _%g230244230267%_))))
                      (_%g230243230264%_ _%g230244230267%_)))))
          (_%g230242230321%_ _%stx230241%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self229205%_ _%stx229206%_)
        (let* ((_%__stx233633233634%_ _%stx229206%_)
               (_%g229214229436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx233633233634%_)))))
          (let ((_%__kont233635233636%_
                 (lambda (_%g229216230189%_
                          _%g229217230190%_
                          _%g229218230191%_
                          _%g229219230192%_)
                   (let ((__tmp234771
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229205%_ 'methods)))
                         (__tmp234770
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229217230190%_))))
                     (declare (not safe))
                     (hash-put! __tmp234771 __tmp234770 '#t))
                   (for-each
                    (lambda (_%g230225230227%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229205%_ _%g230225230227%_)))
                    (let ((__tmp234772
                           (lambda (_%g230229230232%_ _%g230230230234%_)
                             (cons _%g230229230232%_ _%g230230230234%_))))
                      (declare (not safe))
                      (foldr__0 __tmp234772 '() _%g229216230189%_)))))
                (_%__kont233639233640%_
                 (lambda (_%g229259230026%_
                          _%g229260230027%_
                          _%g229261230028%_
                          _%g229262230029%_
                          _%g229263230030%_)
                   (let ((__tmp234774
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229205%_ 'methods)))
                         (__tmp234773
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229260230027%_))))
                     (declare (not safe))
                     (hash-put! __tmp234774 __tmp234773 '#t))
                   (for-each
                    (lambda (_%g230070230072%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self229205%_ _%g230070230072%_)))
                    (let ((__tmp234775
                           (lambda (_%g230074230077%_ _%g230075230079%_)
                             (cons _%g230074230077%_ _%g230075230079%_))))
                      (declare (not safe))
                      (foldr__0 __tmp234775 '() _%g229259230026%_)))))
                (_%__kont233643233644%_
                 (lambda (_%g229312229861%_
                          _%g229313229862%_
                          _%g229314229863%_)
                   (let ((__tmp234777
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229205%_ 'slots)))
                         (__tmp234776
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229312229861%_))))
                     (declare (not safe))
                     (hash-put! __tmp234777 __tmp234776 '#t))))
                (_%__kont233645233646%_
                 (lambda (_%g229345229738%_
                          _%g229346229739%_
                          _%g229347229740%_
                          _%g229348229741%_)
                   (let ((__tmp234779
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self229205%_ 'slots)))
                         (__tmp234778
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g229346229739%_))))
                     (declare (not safe))
                     (hash-put! __tmp234779 __tmp234778 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self229205%_ _%g229345229738%_))))
                (_%__kont233647233648%_
                 (lambda (_%g229382229612%_ _%g229383229613%_)
                   (let* ((_%accessor229635%_
                           (let ((__tmp234780
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g229383229613%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp234780)))
                          (_%klass229637%_
                           (let ((__tmp234781
                                  (##structure-ref
                                   _%accessor229635%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229206%_
                              __tmp234781)))
                          (_%slot229639%_
                           (##structure-ref
                            _%accessor229635%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor229635%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass229637%_
                                    _%slot229639%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass229637%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp234783
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229205%_ 'slots)))
                               (__tmp234782
                                (##structure-ref
                                 _%accessor229635%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp234783 __tmp234782 '#t))))))
                (_%__kont233649233650%_
                 (lambda (_%g229405229512%_
                          _%g229406229513%_
                          _%g229407229514%_)
                   (let* ((_%mutator229541%_
                           (let ((__tmp234784
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g229407229514%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp234784)))
                          (_%klass229543%_
                           (let ((__tmp234785
                                  (##structure-ref
                                   _%mutator229541%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx229206%_
                              __tmp234785)))
                          (_%slot229545%_
                           (##structure-ref
                            _%mutator229541%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator229541%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass229543%_
                                    _%slot229545%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass229543%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp234786
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self229205%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp234786 _%slot229545%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self229205%_ _%g229405229512%_)))))
                (_%__kont233651233652%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self229205%_ _%stx229206%_)))))
            (let* ((_%__match234132234133%_
                    (lambda (_%e229408229448%_
                             _%hd229409229451%_
                             _%tl229410229453%_
                             _%e229411229456%_
                             _%hd229412229459%_
                             _%tl229413229461%_
                             _%e229414229464%_
                             _%hd229415229467%_
                             _%tl229416229469%_
                             _%e229417229472%_
                             _%hd229418229475%_
                             _%tl229419229477%_
                             _%e229420229480%_
                             _%hd229421229483%_
                             _%tl229422229485%_
                             _%e229423229488%_
                             _%hd229424229491%_
                             _%tl229425229493%_
                             _%e229426229496%_
                             _%hd229427229499%_
                             _%tl229428229501%_
                             _%e229429229504%_
                             _%hd229430229507%_
                             _%tl229431229509%_)
                      (let ((_%g229405229512%_ _%hd229430229507%_)
                            (_%g229406229513%_ _%hd229427229499%_)
                            (_%g229407229514%_ _%hd229418229475%_))
                        (if (and (let ((__tmp234787
                                        (let ((__tmp234788
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g229407229514%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp234788))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp234787
                                    'gxc#!mutator::t))
                                 (let ((__tmp234789
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229205%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229406229513%_
                                    __tmp234789)))
                            (_%__kont233649233650%_
                             _%g229405229512%_
                             _%g229406229513%_
                             _%g229407229514%_)
                            (_%__kont233651233652%_)))))
                   (_%__match234130234131%_
                    (lambda (_%e229408229448%_
                             _%hd229409229451%_
                             _%tl229410229453%_
                             _%e229411229456%_
                             _%hd229412229459%_
                             _%tl229413229461%_
                             _%e229414229464%_
                             _%hd229415229467%_
                             _%tl229416229469%_
                             _%e229417229472%_
                             _%hd229418229475%_
                             _%tl229419229477%_
                             _%e229420229480%_
                             _%hd229421229483%_
                             _%tl229422229485%_
                             _%e229423229488%_
                             _%hd229424229491%_
                             _%tl229425229493%_
                             _%e229426229496%_
                             _%hd229427229499%_
                             _%tl229428229501%_
                             _%e229429229504%_
                             _%hd229430229507%_
                             _%tl229431229509%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229431229509%_))
                          (_%__match234132234133%_
                           _%e229408229448%_
                           _%hd229409229451%_
                           _%tl229410229453%_
                           _%e229411229456%_
                           _%hd229412229459%_
                           _%tl229413229461%_
                           _%e229414229464%_
                           _%hd229415229467%_
                           _%tl229416229469%_
                           _%e229417229472%_
                           _%hd229418229475%_
                           _%tl229419229477%_
                           _%e229420229480%_
                           _%hd229421229483%_
                           _%tl229422229485%_
                           _%e229423229488%_
                           _%hd229424229491%_
                           _%tl229425229493%_
                           _%e229426229496%_
                           _%hd229427229499%_
                           _%tl229428229501%_
                           _%e229429229504%_
                           _%hd229430229507%_
                           _%tl229431229509%_)
                          (_%__kont233651233652%_))))
                   (_%__match234124234125%_
                    (lambda (_%e229408229448%_
                             _%hd229409229451%_
                             _%tl229410229453%_
                             _%e229411229456%_
                             _%hd229412229459%_
                             _%tl229413229461%_
                             _%e229414229464%_
                             _%hd229415229467%_
                             _%tl229416229469%_
                             _%e229417229472%_
                             _%hd229418229475%_
                             _%tl229419229477%_
                             _%e229420229480%_
                             _%hd229421229483%_
                             _%tl229422229485%_
                             _%e229423229488%_
                             _%hd229424229491%_
                             _%tl229425229493%_
                             _%e229426229496%_
                             _%hd229427229499%_
                             _%tl229428229501%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229422229485%_))
                          (let ((_%e229429229504%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229422229485%_))))
                            (let ((_%tl229431229509%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229429229504%_)))
                                  (_%hd229430229507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229429229504%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229431229509%_))
                                  (_%__match234132234133%_
                                   _%e229408229448%_
                                   _%hd229409229451%_
                                   _%tl229410229453%_
                                   _%e229411229456%_
                                   _%hd229412229459%_
                                   _%tl229413229461%_
                                   _%e229414229464%_
                                   _%hd229415229467%_
                                   _%tl229416229469%_
                                   _%e229417229472%_
                                   _%hd229418229475%_
                                   _%tl229419229477%_
                                   _%e229420229480%_
                                   _%hd229421229483%_
                                   _%tl229422229485%_
                                   _%e229423229488%_
                                   _%hd229424229491%_
                                   _%tl229425229493%_
                                   _%e229426229496%_
                                   _%hd229427229499%_
                                   _%tl229428229501%_
                                   _%e229429229504%_
                                   _%hd229430229507%_
                                   _%tl229431229509%_)
                                  (_%__kont233651233652%_))))
                          (_%__kont233651233652%_))))
                   (_%__match234070234071%_
                    (lambda (_%e229384229556%_
                             _%hd229385229559%_
                             _%tl229386229561%_
                             _%e229387229564%_
                             _%hd229388229567%_
                             _%tl229389229569%_
                             _%e229390229572%_
                             _%hd229391229575%_
                             _%tl229392229577%_
                             _%e229393229580%_
                             _%hd229394229583%_
                             _%tl229395229585%_
                             _%e229396229588%_
                             _%hd229397229591%_
                             _%tl229398229593%_
                             _%e229399229596%_
                             _%hd229400229599%_
                             _%tl229401229601%_
                             _%e229402229604%_
                             _%hd229403229607%_
                             _%tl229404229609%_)
                      (let ((_%g229382229612%_ _%hd229403229607%_)
                            (_%g229383229613%_ _%hd229394229583%_))
                        (if (and (let ((__tmp234790
                                        (let ((__tmp234791
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g229383229613%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp234791))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp234790
                                    'gxc#!accessor::t))
                                 (let ((__tmp234792
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229205%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229382229612%_
                                    __tmp234792)))
                            (_%__kont233647233648%_
                             _%g229382229612%_
                             _%g229383229613%_)
                            (_%__kont233651233652%_)))))
                   (_%__match234068234069%_
                    (lambda (_%e229384229556%_
                             _%hd229385229559%_
                             _%tl229386229561%_
                             _%e229387229564%_
                             _%hd229388229567%_
                             _%tl229389229569%_
                             _%e229390229572%_
                             _%hd229391229575%_
                             _%tl229392229577%_
                             _%e229393229580%_
                             _%hd229394229583%_
                             _%tl229395229585%_
                             _%e229396229588%_
                             _%hd229397229591%_
                             _%tl229398229593%_
                             _%e229399229596%_
                             _%hd229400229599%_
                             _%tl229401229601%_
                             _%e229402229604%_
                             _%hd229403229607%_
                             _%tl229404229609%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229398229593%_))
                          (_%__match234070234071%_
                           _%e229384229556%_
                           _%hd229385229559%_
                           _%tl229386229561%_
                           _%e229387229564%_
                           _%hd229388229567%_
                           _%tl229389229569%_
                           _%e229390229572%_
                           _%hd229391229575%_
                           _%tl229392229577%_
                           _%e229393229580%_
                           _%hd229394229583%_
                           _%tl229395229585%_
                           _%e229396229588%_
                           _%hd229397229591%_
                           _%tl229398229593%_
                           _%e229399229596%_
                           _%hd229400229599%_
                           _%tl229401229601%_
                           _%e229402229604%_
                           _%hd229403229607%_
                           _%tl229404229609%_)
                          (_%__match234124234125%_
                           _%e229384229556%_
                           _%hd229385229559%_
                           _%tl229386229561%_
                           _%e229387229564%_
                           _%hd229388229567%_
                           _%tl229389229569%_
                           _%e229390229572%_
                           _%hd229391229575%_
                           _%tl229392229577%_
                           _%e229393229580%_
                           _%hd229394229583%_
                           _%tl229395229585%_
                           _%e229396229588%_
                           _%hd229397229591%_
                           _%tl229398229593%_
                           _%e229399229596%_
                           _%hd229400229599%_
                           _%tl229401229601%_
                           _%e229402229604%_
                           _%hd229403229607%_
                           _%tl229404229609%_))))
                   (_%__match234014234015%_
                    (lambda (_%e229349229650%_
                             _%hd229350229653%_
                             _%tl229351229655%_
                             _%e229352229658%_
                             _%hd229353229661%_
                             _%tl229354229663%_
                             _%e229355229666%_
                             _%hd229356229669%_
                             _%tl229357229671%_
                             _%e229358229674%_
                             _%hd229359229677%_
                             _%tl229360229679%_
                             _%e229361229682%_
                             _%hd229362229685%_
                             _%tl229363229687%_
                             _%e229364229690%_
                             _%hd229365229693%_
                             _%tl229366229695%_
                             _%e229367229698%_
                             _%hd229368229701%_
                             _%tl229369229703%_
                             _%e229370229706%_
                             _%hd229371229709%_
                             _%tl229372229711%_
                             _%e229373229714%_
                             _%hd229374229717%_
                             _%tl229375229719%_
                             _%e229376229722%_
                             _%hd229377229725%_
                             _%tl229378229727%_
                             _%e229379229730%_
                             _%hd229380229733%_
                             _%tl229381229735%_)
                      (let ((_%g229345229738%_ _%hd229380229733%_)
                            (_%g229346229739%_ _%hd229377229725%_)
                            (_%g229347229740%_ _%hd229368229701%_)
                            (_%g229348229741%_ _%hd229359229677%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229348229741%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229348229741%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp234793
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229205%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229347229740%_
                                    __tmp234793)))
                            (_%__kont233645233646%_
                             _%g229345229738%_
                             _%g229346229739%_
                             _%g229347229740%_
                             _%g229348229741%_)
                            (_%__kont233651233652%_)))))
                   (_%__match234006234007%_
                    (lambda (_%e229349229650%_
                             _%hd229350229653%_
                             _%tl229351229655%_
                             _%e229352229658%_
                             _%hd229353229661%_
                             _%tl229354229663%_
                             _%e229355229666%_
                             _%hd229356229669%_
                             _%tl229357229671%_
                             _%e229358229674%_
                             _%hd229359229677%_
                             _%tl229360229679%_
                             _%e229361229682%_
                             _%hd229362229685%_
                             _%tl229363229687%_
                             _%e229364229690%_
                             _%hd229365229693%_
                             _%tl229366229695%_
                             _%e229367229698%_
                             _%hd229368229701%_
                             _%tl229369229703%_
                             _%e229370229706%_
                             _%hd229371229709%_
                             _%tl229372229711%_
                             _%e229373229714%_
                             _%hd229374229717%_
                             _%tl229375229719%_
                             _%e229376229722%_
                             _%hd229377229725%_
                             _%tl229378229727%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229372229711%_))
                          (let ((_%e229379229730%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229372229711%_))))
                            (let ((_%tl229381229735%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229379229730%_)))
                                  (_%hd229380229733%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229379229730%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229381229735%_))
                                  (_%__match234014234015%_
                                   _%e229349229650%_
                                   _%hd229350229653%_
                                   _%tl229351229655%_
                                   _%e229352229658%_
                                   _%hd229353229661%_
                                   _%tl229354229663%_
                                   _%e229355229666%_
                                   _%hd229356229669%_
                                   _%tl229357229671%_
                                   _%e229358229674%_
                                   _%hd229359229677%_
                                   _%tl229360229679%_
                                   _%e229361229682%_
                                   _%hd229362229685%_
                                   _%tl229363229687%_
                                   _%e229364229690%_
                                   _%hd229365229693%_
                                   _%tl229366229695%_
                                   _%e229367229698%_
                                   _%hd229368229701%_
                                   _%tl229369229703%_
                                   _%e229370229706%_
                                   _%hd229371229709%_
                                   _%tl229372229711%_
                                   _%e229373229714%_
                                   _%hd229374229717%_
                                   _%tl229375229719%_
                                   _%e229376229722%_
                                   _%hd229377229725%_
                                   _%tl229378229727%_
                                   _%e229379229730%_
                                   _%hd229380229733%_
                                   _%tl229381229735%_)
                                  (_%__kont233651233652%_))))
                          (_%__match234130234131%_
                           _%e229349229650%_
                           _%hd229350229653%_
                           _%tl229351229655%_
                           _%e229352229658%_
                           _%hd229353229661%_
                           _%tl229354229663%_
                           _%e229355229666%_
                           _%hd229356229669%_
                           _%tl229357229671%_
                           _%e229358229674%_
                           _%hd229359229677%_
                           _%tl229360229679%_
                           _%e229361229682%_
                           _%hd229362229685%_
                           _%tl229363229687%_
                           _%e229364229690%_
                           _%hd229365229693%_
                           _%tl229366229695%_
                           _%e229367229698%_
                           _%hd229368229701%_
                           _%tl229369229703%_
                           _%e229370229706%_
                           _%hd229371229709%_
                           _%tl229372229711%_))))
                   (_%__match233928233929%_
                    (lambda (_%e229315229781%_
                             _%hd229316229784%_
                             _%tl229317229786%_
                             _%e229318229789%_
                             _%hd229319229792%_
                             _%tl229320229794%_
                             _%e229321229797%_
                             _%hd229322229800%_
                             _%tl229323229802%_
                             _%e229324229805%_
                             _%hd229325229808%_
                             _%tl229326229810%_
                             _%e229327229813%_
                             _%hd229328229816%_
                             _%tl229329229818%_
                             _%e229330229821%_
                             _%hd229331229824%_
                             _%tl229332229826%_
                             _%e229333229829%_
                             _%hd229334229832%_
                             _%tl229335229834%_
                             _%e229336229837%_
                             _%hd229337229840%_
                             _%tl229338229842%_
                             _%e229339229845%_
                             _%hd229340229848%_
                             _%tl229341229850%_
                             _%e229342229853%_
                             _%hd229343229856%_
                             _%tl229344229858%_)
                      (let ((_%g229312229861%_ _%hd229343229856%_)
                            (_%g229313229862%_ _%hd229334229832%_)
                            (_%g229314229863%_ _%hd229325229808%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229314229863%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g229314229863%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp234794
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self229205%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g229313229862%_
                                    __tmp234794)))
                            (_%__kont233643233644%_
                             _%g229312229861%_
                             _%g229313229862%_
                             _%g229314229863%_)
                            (_%__match234132234133%_
                             _%e229315229781%_
                             _%hd229316229784%_
                             _%tl229317229786%_
                             _%e229318229789%_
                             _%hd229319229792%_
                             _%tl229320229794%_
                             _%e229321229797%_
                             _%hd229322229800%_
                             _%tl229323229802%_
                             _%e229324229805%_
                             _%hd229325229808%_
                             _%tl229326229810%_
                             _%e229327229813%_
                             _%hd229328229816%_
                             _%tl229329229818%_
                             _%e229330229821%_
                             _%hd229331229824%_
                             _%tl229332229826%_
                             _%e229333229829%_
                             _%hd229334229832%_
                             _%tl229335229834%_
                             _%e229336229837%_
                             _%hd229337229840%_
                             _%tl229338229842%_)))))
                   (_%__match233926233927%_
                    (lambda (_%e229315229781%_
                             _%hd229316229784%_
                             _%tl229317229786%_
                             _%e229318229789%_
                             _%hd229319229792%_
                             _%tl229320229794%_
                             _%e229321229797%_
                             _%hd229322229800%_
                             _%tl229323229802%_
                             _%e229324229805%_
                             _%hd229325229808%_
                             _%tl229326229810%_
                             _%e229327229813%_
                             _%hd229328229816%_
                             _%tl229329229818%_
                             _%e229330229821%_
                             _%hd229331229824%_
                             _%tl229332229826%_
                             _%e229333229829%_
                             _%hd229334229832%_
                             _%tl229335229834%_
                             _%e229336229837%_
                             _%hd229337229840%_
                             _%tl229338229842%_
                             _%e229339229845%_
                             _%hd229340229848%_
                             _%tl229341229850%_
                             _%e229342229853%_
                             _%hd229343229856%_
                             _%tl229344229858%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl229338229842%_))
                          (_%__match233928233929%_
                           _%e229315229781%_
                           _%hd229316229784%_
                           _%tl229317229786%_
                           _%e229318229789%_
                           _%hd229319229792%_
                           _%tl229320229794%_
                           _%e229321229797%_
                           _%hd229322229800%_
                           _%tl229323229802%_
                           _%e229324229805%_
                           _%hd229325229808%_
                           _%tl229326229810%_
                           _%e229327229813%_
                           _%hd229328229816%_
                           _%tl229329229818%_
                           _%e229330229821%_
                           _%hd229331229824%_
                           _%tl229332229826%_
                           _%e229333229829%_
                           _%hd229334229832%_
                           _%tl229335229834%_
                           _%e229336229837%_
                           _%hd229337229840%_
                           _%tl229338229842%_
                           _%e229339229845%_
                           _%hd229340229848%_
                           _%tl229341229850%_
                           _%e229342229853%_
                           _%hd229343229856%_
                           _%tl229344229858%_)
                          (_%__match234006234007%_
                           _%e229315229781%_
                           _%hd229316229784%_
                           _%tl229317229786%_
                           _%e229318229789%_
                           _%hd229319229792%_
                           _%tl229320229794%_
                           _%e229321229797%_
                           _%hd229322229800%_
                           _%tl229323229802%_
                           _%e229324229805%_
                           _%hd229325229808%_
                           _%tl229326229810%_
                           _%e229327229813%_
                           _%hd229328229816%_
                           _%tl229329229818%_
                           _%e229330229821%_
                           _%hd229331229824%_
                           _%tl229332229826%_
                           _%e229333229829%_
                           _%hd229334229832%_
                           _%tl229335229834%_
                           _%e229336229837%_
                           _%hd229337229840%_
                           _%tl229338229842%_
                           _%e229339229845%_
                           _%hd229340229848%_
                           _%tl229341229850%_
                           _%e229342229853%_
                           _%hd229343229856%_
                           _%tl229344229858%_))))
                   (_%__match233916233917%_
                    (lambda (_%e229315229781%_
                             _%hd229316229784%_
                             _%tl229317229786%_
                             _%e229318229789%_
                             _%hd229319229792%_
                             _%tl229320229794%_
                             _%e229321229797%_
                             _%hd229322229800%_
                             _%tl229323229802%_
                             _%e229324229805%_
                             _%hd229325229808%_
                             _%tl229326229810%_
                             _%e229327229813%_
                             _%hd229328229816%_
                             _%tl229329229818%_
                             _%e229330229821%_
                             _%hd229331229824%_
                             _%tl229332229826%_
                             _%e229333229829%_
                             _%hd229334229832%_
                             _%tl229335229834%_
                             _%e229336229837%_
                             _%hd229337229840%_
                             _%tl229338229842%_
                             _%e229339229845%_
                             _%hd229340229848%_
                             _%tl229341229850%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd229340229848%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229341229850%_))
                              (let ((_%e229342229853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229341229850%_))))
                                (let ((_%tl229344229858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229342229853%_)))
                                      (_%hd229343229856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229342229853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229344229858%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl229338229842%_))
                                          (_%__match233928233929%_
                                           _%e229315229781%_
                                           _%hd229316229784%_
                                           _%tl229317229786%_
                                           _%e229318229789%_
                                           _%hd229319229792%_
                                           _%tl229320229794%_
                                           _%e229321229797%_
                                           _%hd229322229800%_
                                           _%tl229323229802%_
                                           _%e229324229805%_
                                           _%hd229325229808%_
                                           _%tl229326229810%_
                                           _%e229327229813%_
                                           _%hd229328229816%_
                                           _%tl229329229818%_
                                           _%e229330229821%_
                                           _%hd229331229824%_
                                           _%tl229332229826%_
                                           _%e229333229829%_
                                           _%hd229334229832%_
                                           _%tl229335229834%_
                                           _%e229336229837%_
                                           _%hd229337229840%_
                                           _%tl229338229842%_
                                           _%e229339229845%_
                                           _%hd229340229848%_
                                           _%tl229341229850%_
                                           _%e229342229853%_
                                           _%hd229343229856%_
                                           _%tl229344229858%_)
                                          (_%__match234006234007%_
                                           _%e229315229781%_
                                           _%hd229316229784%_
                                           _%tl229317229786%_
                                           _%e229318229789%_
                                           _%hd229319229792%_
                                           _%tl229320229794%_
                                           _%e229321229797%_
                                           _%hd229322229800%_
                                           _%tl229323229802%_
                                           _%e229324229805%_
                                           _%hd229325229808%_
                                           _%tl229326229810%_
                                           _%e229327229813%_
                                           _%hd229328229816%_
                                           _%tl229329229818%_
                                           _%e229330229821%_
                                           _%hd229331229824%_
                                           _%tl229332229826%_
                                           _%e229333229829%_
                                           _%hd229334229832%_
                                           _%tl229335229834%_
                                           _%e229336229837%_
                                           _%hd229337229840%_
                                           _%tl229338229842%_
                                           _%e229339229845%_
                                           _%hd229340229848%_
                                           _%tl229341229850%_
                                           _%e229342229853%_
                                           _%hd229343229856%_
                                           _%tl229344229858%_))
                                      (_%__match234130234131%_
                                       _%e229315229781%_
                                       _%hd229316229784%_
                                       _%tl229317229786%_
                                       _%e229318229789%_
                                       _%hd229319229792%_
                                       _%tl229320229794%_
                                       _%e229321229797%_
                                       _%hd229322229800%_
                                       _%tl229323229802%_
                                       _%e229324229805%_
                                       _%hd229325229808%_
                                       _%tl229326229810%_
                                       _%e229327229813%_
                                       _%hd229328229816%_
                                       _%tl229329229818%_
                                       _%e229330229821%_
                                       _%hd229331229824%_
                                       _%tl229332229826%_
                                       _%e229333229829%_
                                       _%hd229334229832%_
                                       _%tl229335229834%_
                                       _%e229336229837%_
                                       _%hd229337229840%_
                                       _%tl229338229842%_))))
                              (_%__match234130234131%_
                               _%e229315229781%_
                               _%hd229316229784%_
                               _%tl229317229786%_
                               _%e229318229789%_
                               _%hd229319229792%_
                               _%tl229320229794%_
                               _%e229321229797%_
                               _%hd229322229800%_
                               _%tl229323229802%_
                               _%e229324229805%_
                               _%hd229325229808%_
                               _%tl229326229810%_
                               _%e229327229813%_
                               _%hd229328229816%_
                               _%tl229329229818%_
                               _%e229330229821%_
                               _%hd229331229824%_
                               _%tl229332229826%_
                               _%e229333229829%_
                               _%hd229334229832%_
                               _%tl229335229834%_
                               _%e229336229837%_
                               _%hd229337229840%_
                               _%tl229338229842%_))
                          (_%__match234130234131%_
                           _%e229315229781%_
                           _%hd229316229784%_
                           _%tl229317229786%_
                           _%e229318229789%_
                           _%hd229319229792%_
                           _%tl229320229794%_
                           _%e229321229797%_
                           _%hd229322229800%_
                           _%tl229323229802%_
                           _%e229324229805%_
                           _%hd229325229808%_
                           _%tl229326229810%_
                           _%e229327229813%_
                           _%hd229328229816%_
                           _%tl229329229818%_
                           _%e229330229821%_
                           _%hd229331229824%_
                           _%tl229332229826%_
                           _%e229333229829%_
                           _%hd229334229832%_
                           _%tl229335229834%_
                           _%e229336229837%_
                           _%hd229337229840%_
                           _%tl229338229842%_))))
                   (_%__match233848233849%_
                    (lambda (_%e229264229900%_
                             _%hd229265229903%_
                             _%tl229266229905%_
                             _%e229267229908%_
                             _%hd229268229911%_
                             _%tl229269229913%_
                             _%e229270229916%_
                             _%hd229271229919%_
                             _%tl229272229921%_
                             _%e229273229924%_
                             _%hd229274229927%_
                             _%tl229275229929%_
                             _%e229276229932%_
                             _%hd229277229935%_
                             _%tl229278229937%_
                             _%e229279229940%_
                             _%hd229280229943%_
                             _%tl229281229945%_
                             _%e229282229948%_
                             _%hd229283229951%_
                             _%tl229284229953%_
                             _%e229285229956%_
                             _%hd229286229959%_
                             _%tl229287229961%_
                             _%e229288229964%_
                             _%hd229289229967%_
                             _%tl229290229969%_
                             _%e229291229972%_
                             _%hd229292229975%_
                             _%tl229293229977%_
                             _%e229294229980%_
                             _%hd229295229983%_
                             _%tl229296229985%_
                             _%e229297229988%_
                             _%hd229298229991%_
                             _%tl229299229993%_
                             _%e229300229996%_
                             _%hd229301229999%_
                             _%tl229302230001%_
                             _%__splice233641233642%_
                             _%target229303230004%_
                             _%tl229305230006%_)
                      (letrec ((_%loop229306230009%_
                                (lambda (_%hd229304230012%_
                                         _%args229310230014%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229304230012%_))
                                      (let ((_%e229307230016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229304230012%_))))
                                        (let ((_%lp-tl229309230021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229307230016%_)))
                                              (_%lp-hd229308230019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229307230016%_))))
                                          (_%loop229306230009%_
                                           _%lp-tl229309230021%_
                                           (cons _%lp-hd229308230019%_
                                                 _%args229310230014%_))))
                                      (let ((_%args229311230024%_
                                             (reverse _%args229310230014%_)))
                                        (let ((_%g229259230026%_
                                               _%args229311230024%_)
                                              (_%g229260230027%_
                                               _%hd229301229999%_)
                                              (_%g229261230028%_
                                               _%hd229292229975%_)
                                              (_%g229262230029%_
                                               _%hd229283229951%_)
                                              (_%g229263230030%_
                                               _%hd229274229927%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229263230030%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229262230029%_
                                                      'call-method))
                                                   (let ((__tmp234795
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229205%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229261230028%_
                                                      __tmp234795)))
                                              (_%__kont233639233640%_
                                               _%g229259230026%_
                                               _%g229260230027%_
                                               _%g229261230028%_
                                               _%g229262230029%_
                                               _%g229263230030%_)
                                              (_%__kont233651233652%_))))))))
                        (_%loop229306230009%_ _%target229303230004%_ '()))))
                   (_%__match233806233807%_
                    (lambda (_%e229264229900%_
                             _%hd229265229903%_
                             _%tl229266229905%_
                             _%e229267229908%_
                             _%hd229268229911%_
                             _%tl229269229913%_
                             _%e229270229916%_
                             _%hd229271229919%_
                             _%tl229272229921%_
                             _%e229273229924%_
                             _%hd229274229927%_
                             _%tl229275229929%_
                             _%e229276229932%_
                             _%hd229277229935%_
                             _%tl229278229937%_
                             _%e229279229940%_
                             _%hd229280229943%_
                             _%tl229281229945%_
                             _%e229282229948%_
                             _%hd229283229951%_
                             _%tl229284229953%_
                             _%e229285229956%_
                             _%hd229286229959%_
                             _%tl229287229961%_
                             _%e229288229964%_
                             _%hd229289229967%_
                             _%tl229290229969%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd229289229967%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl229290229969%_))
                              (let ((_%e229291229972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl229290229969%_))))
                                (let ((_%tl229293229977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229291229972%_)))
                                      (_%hd229292229975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229291229972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl229293229977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229287229961%_))
                                          (let ((_%e229294229980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229287229961%_))))
                                            (let ((_%tl229296229985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229294229980%_)))
                                                  (_%hd229295229983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229294229980%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd229295229983%_))
                                                  (let ((_%e229297229988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd229295229983%_))))
                                                    (let ((_%tl229299229993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229297229988%_)))
                                                          (_%hd229298229991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229297229988%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd229298229991%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd229298229991%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229299229993%_))
                          (let ((_%e229300229996%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229299229993%_))))
                            (let ((_%tl229302230001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229300229996%_)))
                                  (_%hd229301229999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229300229996%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl229302230001%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl229296229985%_))
                                      (let ((_%__splice233641233642%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl229296229985%_
                                                '0))))
                                        (let ((_%tl229305230006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice233641233642%_
                                                  '1)))
                                              (_%target229303230004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice233641233642%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl229305230006%_))
                                              (_%__match233848233849%_
                                               _%e229264229900%_
                                               _%hd229265229903%_
                                               _%tl229266229905%_
                                               _%e229267229908%_
                                               _%hd229268229911%_
                                               _%tl229269229913%_
                                               _%e229270229916%_
                                               _%hd229271229919%_
                                               _%tl229272229921%_
                                               _%e229273229924%_
                                               _%hd229274229927%_
                                               _%tl229275229929%_
                                               _%e229276229932%_
                                               _%hd229277229935%_
                                               _%tl229278229937%_
                                               _%e229279229940%_
                                               _%hd229280229943%_
                                               _%tl229281229945%_
                                               _%e229282229948%_
                                               _%hd229283229951%_
                                               _%tl229284229953%_
                                               _%e229285229956%_
                                               _%hd229286229959%_
                                               _%tl229287229961%_
                                               _%e229288229964%_
                                               _%hd229289229967%_
                                               _%tl229290229969%_
                                               _%e229291229972%_
                                               _%hd229292229975%_
                                               _%tl229293229977%_
                                               _%e229294229980%_
                                               _%hd229295229983%_
                                               _%tl229296229985%_
                                               _%e229297229988%_
                                               _%hd229298229991%_
                                               _%tl229299229993%_
                                               _%e229300229996%_
                                               _%hd229301229999%_
                                               _%tl229302230001%_
                                               _%__splice233641233642%_
                                               _%target229303230004%_
                                               _%tl229305230006%_)
                                              (_%__kont233651233652%_))))
                                      (_%__kont233651233652%_))
                                  (_%__kont233651233652%_))))
                          (_%__kont233651233652%_))
                      (_%__kont233651233652%_))
                  (_%__kont233651233652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont233651233652%_))))
                                          (_%__match234130234131%_
                                           _%e229264229900%_
                                           _%hd229265229903%_
                                           _%tl229266229905%_
                                           _%e229267229908%_
                                           _%hd229268229911%_
                                           _%tl229269229913%_
                                           _%e229270229916%_
                                           _%hd229271229919%_
                                           _%tl229272229921%_
                                           _%e229273229924%_
                                           _%hd229274229927%_
                                           _%tl229275229929%_
                                           _%e229276229932%_
                                           _%hd229277229935%_
                                           _%tl229278229937%_
                                           _%e229279229940%_
                                           _%hd229280229943%_
                                           _%tl229281229945%_
                                           _%e229282229948%_
                                           _%hd229283229951%_
                                           _%tl229284229953%_
                                           _%e229285229956%_
                                           _%hd229286229959%_
                                           _%tl229287229961%_))
                                      (_%__match234130234131%_
                                       _%e229264229900%_
                                       _%hd229265229903%_
                                       _%tl229266229905%_
                                       _%e229267229908%_
                                       _%hd229268229911%_
                                       _%tl229269229913%_
                                       _%e229270229916%_
                                       _%hd229271229919%_
                                       _%tl229272229921%_
                                       _%e229273229924%_
                                       _%hd229274229927%_
                                       _%tl229275229929%_
                                       _%e229276229932%_
                                       _%hd229277229935%_
                                       _%tl229278229937%_
                                       _%e229279229940%_
                                       _%hd229280229943%_
                                       _%tl229281229945%_
                                       _%e229282229948%_
                                       _%hd229283229951%_
                                       _%tl229284229953%_
                                       _%e229285229956%_
                                       _%hd229286229959%_
                                       _%tl229287229961%_))))
                              (_%__match234130234131%_
                               _%e229264229900%_
                               _%hd229265229903%_
                               _%tl229266229905%_
                               _%e229267229908%_
                               _%hd229268229911%_
                               _%tl229269229913%_
                               _%e229270229916%_
                               _%hd229271229919%_
                               _%tl229272229921%_
                               _%e229273229924%_
                               _%hd229274229927%_
                               _%tl229275229929%_
                               _%e229276229932%_
                               _%hd229277229935%_
                               _%tl229278229937%_
                               _%e229279229940%_
                               _%hd229280229943%_
                               _%tl229281229945%_
                               _%e229282229948%_
                               _%hd229283229951%_
                               _%tl229284229953%_
                               _%e229285229956%_
                               _%hd229286229959%_
                               _%tl229287229961%_))
                          (_%__match233916233917%_
                           _%e229264229900%_
                           _%hd229265229903%_
                           _%tl229266229905%_
                           _%e229267229908%_
                           _%hd229268229911%_
                           _%tl229269229913%_
                           _%e229270229916%_
                           _%hd229271229919%_
                           _%tl229272229921%_
                           _%e229273229924%_
                           _%hd229274229927%_
                           _%tl229275229929%_
                           _%e229276229932%_
                           _%hd229277229935%_
                           _%tl229278229937%_
                           _%e229279229940%_
                           _%hd229280229943%_
                           _%tl229281229945%_
                           _%e229282229948%_
                           _%hd229283229951%_
                           _%tl229284229953%_
                           _%e229285229956%_
                           _%hd229286229959%_
                           _%tl229287229961%_
                           _%e229288229964%_
                           _%hd229289229967%_
                           _%tl229290229969%_))))
                   (_%__match233738233739%_
                    (lambda (_%e229220230087%_
                             _%hd229221230090%_
                             _%tl229222230092%_
                             _%e229223230095%_
                             _%hd229224230098%_
                             _%tl229225230100%_
                             _%e229226230103%_
                             _%hd229227230106%_
                             _%tl229228230108%_
                             _%e229229230111%_
                             _%hd229230230114%_
                             _%tl229231230116%_
                             _%e229232230119%_
                             _%hd229233230122%_
                             _%tl229234230124%_
                             _%e229235230127%_
                             _%hd229236230130%_
                             _%tl229237230132%_
                             _%e229238230135%_
                             _%hd229239230138%_
                             _%tl229240230140%_
                             _%e229241230143%_
                             _%hd229242230146%_
                             _%tl229243230148%_
                             _%e229244230151%_
                             _%hd229245230154%_
                             _%tl229246230156%_
                             _%e229247230159%_
                             _%hd229248230162%_
                             _%tl229249230164%_
                             _%__splice233637233638%_
                             _%target229250230167%_
                             _%tl229252230169%_)
                      (letrec ((_%loop229253230172%_
                                (lambda (_%hd229251230175%_
                                         _%args229257230177%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd229251230175%_))
                                      (let ((_%e229254230179%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd229251230175%_))))
                                        (let ((_%lp-tl229256230184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e229254230179%_)))
                                              (_%lp-hd229255230182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e229254230179%_))))
                                          (_%loop229253230172%_
                                           _%lp-tl229256230184%_
                                           (cons _%lp-hd229255230182%_
                                                 _%args229257230177%_))))
                                      (let ((_%args229258230187%_
                                             (reverse _%args229257230177%_)))
                                        (let ((_%g229216230189%_
                                               _%args229258230187%_)
                                              (_%g229217230190%_
                                               _%hd229248230162%_)
                                              (_%g229218230191%_
                                               _%hd229239230138%_)
                                              (_%g229219230192%_
                                               _%hd229230230114%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g229219230192%_
                                                      'call-method))
                                                   (let ((__tmp234796
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self229205%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g229218230191%_
                                                      __tmp234796)))
                                              (_%__kont233635233636%_
                                               _%g229216230189%_
                                               _%g229217230190%_
                                               _%g229218230191%_
                                               _%g229219230192%_)
                                              (_%__match233926233927%_
                                               _%e229220230087%_
                                               _%hd229221230090%_
                                               _%tl229222230092%_
                                               _%e229223230095%_
                                               _%hd229224230098%_
                                               _%tl229225230100%_
                                               _%e229226230103%_
                                               _%hd229227230106%_
                                               _%tl229228230108%_
                                               _%e229229230111%_
                                               _%hd229230230114%_
                                               _%tl229231230116%_
                                               _%e229232230119%_
                                               _%hd229233230122%_
                                               _%tl229234230124%_
                                               _%e229235230127%_
                                               _%hd229236230130%_
                                               _%tl229237230132%_
                                               _%e229238230135%_
                                               _%hd229239230138%_
                                               _%tl229240230140%_
                                               _%e229241230143%_
                                               _%hd229242230146%_
                                               _%tl229243230148%_
                                               _%e229244230151%_
                                               _%hd229245230154%_
                                               _%tl229246230156%_
                                               _%e229247230159%_
                                               _%hd229248230162%_
                                               _%tl229249230164%_))))))))
                        (_%loop229253230172%_ _%target229250230167%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx233633233634%_))
                  (let ((_%e229220230087%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx233633233634%_))))
                    (let ((_%tl229222230092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229220230087%_)))
                          (_%hd229221230090%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229220230087%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl229222230092%_))
                          (let ((_%e229223230095%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl229222230092%_))))
                            (let ((_%tl229225230100%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229223230095%_)))
                                  (_%hd229224230098%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229223230095%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd229224230098%_))
                                  (let ((_%e229226230103%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd229224230098%_))))
                                    (let ((_%tl229228230108%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e229226230103%_)))
                                          (_%hd229227230106%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e229226230103%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd229227230106%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd229227230106%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl229228230108%_))
                                                  (let ((_%e229229230111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl229228230108%_))))
                                                    (let ((_%tl229231230116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e229229230111%_)))
                                                          (_%hd229230230114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e229229230111%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl229231230116%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl229225230100%_))
                      (let ((_%e229232230119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl229225230100%_))))
                        (let ((_%tl229234230124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e229232230119%_)))
                              (_%hd229233230122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e229232230119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd229233230122%_))
                              (let ((_%e229235230127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd229233230122%_))))
                                (let ((_%tl229237230132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e229235230127%_)))
                                      (_%hd229236230130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e229235230127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd229236230130%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd229236230130%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl229237230132%_))
                                              (let ((_%e229238230135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl229237230132%_))))
                                                (let ((_%tl229240230140%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e229238230135%_)))
                                                      (_%hd229239230138%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e229238230135%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl229240230140%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl229234230124%_))
                                                          (let ((_%e229241230143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl229234230124%_))))
                    (let ((_%tl229243230148%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e229241230143%_)))
                          (_%hd229242230146%_
                           (let ()
                             (declare (not safe))
                             (##car _%e229241230143%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd229242230146%_))
                          (let ((_%e229244230151%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd229242230146%_))))
                            (let ((_%tl229246230156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e229244230151%_)))
                                  (_%hd229245230154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e229244230151%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd229245230154%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd229245230154%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl229246230156%_))
                                          (let ((_%e229247230159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl229246230156%_))))
                                            (let ((_%tl229249230164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e229247230159%_)))
                                                  (_%hd229248230162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e229247230159%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl229249230164%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl229243230148%_))
                                                      (let ((_%__splice233637233638%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl229243230148%_
                        '0))))
                (let ((_%tl229252230169%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice233637233638%_ '1)))
                      (_%target229250230167%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice233637233638%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl229252230169%_))
                      (_%__match233738233739%_
                       _%e229220230087%_
                       _%hd229221230090%_
                       _%tl229222230092%_
                       _%e229223230095%_
                       _%hd229224230098%_
                       _%tl229225230100%_
                       _%e229226230103%_
                       _%hd229227230106%_
                       _%tl229228230108%_
                       _%e229229230111%_
                       _%hd229230230114%_
                       _%tl229231230116%_
                       _%e229232230119%_
                       _%hd229233230122%_
                       _%tl229234230124%_
                       _%e229235230127%_
                       _%hd229236230130%_
                       _%tl229237230132%_
                       _%e229238230135%_
                       _%hd229239230138%_
                       _%tl229240230140%_
                       _%e229241230143%_
                       _%hd229242230146%_
                       _%tl229243230148%_
                       _%e229244230151%_
                       _%hd229245230154%_
                       _%tl229246230156%_
                       _%e229247230159%_
                       _%hd229248230162%_
                       _%tl229249230164%_
                       _%__splice233637233638%_
                       _%target229250230167%_
                       _%tl229252230169%_)
                      (_%__match233926233927%_
                       _%e229220230087%_
                       _%hd229221230090%_
                       _%tl229222230092%_
                       _%e229223230095%_
                       _%hd229224230098%_
                       _%tl229225230100%_
                       _%e229226230103%_
                       _%hd229227230106%_
                       _%tl229228230108%_
                       _%e229229230111%_
                       _%hd229230230114%_
                       _%tl229231230116%_
                       _%e229232230119%_
                       _%hd229233230122%_
                       _%tl229234230124%_
                       _%e229235230127%_
                       _%hd229236230130%_
                       _%tl229237230132%_
                       _%e229238230135%_
                       _%hd229239230138%_
                       _%tl229240230140%_
                       _%e229241230143%_
                       _%hd229242230146%_
                       _%tl229243230148%_
                       _%e229244230151%_
                       _%hd229245230154%_
                       _%tl229246230156%_
                       _%e229247230159%_
                       _%hd229248230162%_
                       _%tl229249230164%_))))
              (_%__match233926233927%_
               _%e229220230087%_
               _%hd229221230090%_
               _%tl229222230092%_
               _%e229223230095%_
               _%hd229224230098%_
               _%tl229225230100%_
               _%e229226230103%_
               _%hd229227230106%_
               _%tl229228230108%_
               _%e229229230111%_
               _%hd229230230114%_
               _%tl229231230116%_
               _%e229232230119%_
               _%hd229233230122%_
               _%tl229234230124%_
               _%e229235230127%_
               _%hd229236230130%_
               _%tl229237230132%_
               _%e229238230135%_
               _%hd229239230138%_
               _%tl229240230140%_
               _%e229241230143%_
               _%hd229242230146%_
               _%tl229243230148%_
               _%e229244230151%_
               _%hd229245230154%_
               _%tl229246230156%_
               _%e229247230159%_
               _%hd229248230162%_
               _%tl229249230164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match234130234131%_
                                                   _%e229220230087%_
                                                   _%hd229221230090%_
                                                   _%tl229222230092%_
                                                   _%e229223230095%_
                                                   _%hd229224230098%_
                                                   _%tl229225230100%_
                                                   _%e229226230103%_
                                                   _%hd229227230106%_
                                                   _%tl229228230108%_
                                                   _%e229229230111%_
                                                   _%hd229230230114%_
                                                   _%tl229231230116%_
                                                   _%e229232230119%_
                                                   _%hd229233230122%_
                                                   _%tl229234230124%_
                                                   _%e229235230127%_
                                                   _%hd229236230130%_
                                                   _%tl229237230132%_
                                                   _%e229238230135%_
                                                   _%hd229239230138%_
                                                   _%tl229240230140%_
                                                   _%e229241230143%_
                                                   _%hd229242230146%_
                                                   _%tl229243230148%_))))
                                          (_%__match234130234131%_
                                           _%e229220230087%_
                                           _%hd229221230090%_
                                           _%tl229222230092%_
                                           _%e229223230095%_
                                           _%hd229224230098%_
                                           _%tl229225230100%_
                                           _%e229226230103%_
                                           _%hd229227230106%_
                                           _%tl229228230108%_
                                           _%e229229230111%_
                                           _%hd229230230114%_
                                           _%tl229231230116%_
                                           _%e229232230119%_
                                           _%hd229233230122%_
                                           _%tl229234230124%_
                                           _%e229235230127%_
                                           _%hd229236230130%_
                                           _%tl229237230132%_
                                           _%e229238230135%_
                                           _%hd229239230138%_
                                           _%tl229240230140%_
                                           _%e229241230143%_
                                           _%hd229242230146%_
                                           _%tl229243230148%_))
                                      (_%__match233806233807%_
                                       _%e229220230087%_
                                       _%hd229221230090%_
                                       _%tl229222230092%_
                                       _%e229223230095%_
                                       _%hd229224230098%_
                                       _%tl229225230100%_
                                       _%e229226230103%_
                                       _%hd229227230106%_
                                       _%tl229228230108%_
                                       _%e229229230111%_
                                       _%hd229230230114%_
                                       _%tl229231230116%_
                                       _%e229232230119%_
                                       _%hd229233230122%_
                                       _%tl229234230124%_
                                       _%e229235230127%_
                                       _%hd229236230130%_
                                       _%tl229237230132%_
                                       _%e229238230135%_
                                       _%hd229239230138%_
                                       _%tl229240230140%_
                                       _%e229241230143%_
                                       _%hd229242230146%_
                                       _%tl229243230148%_
                                       _%e229244230151%_
                                       _%hd229245230154%_
                                       _%tl229246230156%_))
                                  (_%__match234130234131%_
                                   _%e229220230087%_
                                   _%hd229221230090%_
                                   _%tl229222230092%_
                                   _%e229223230095%_
                                   _%hd229224230098%_
                                   _%tl229225230100%_
                                   _%e229226230103%_
                                   _%hd229227230106%_
                                   _%tl229228230108%_
                                   _%e229229230111%_
                                   _%hd229230230114%_
                                   _%tl229231230116%_
                                   _%e229232230119%_
                                   _%hd229233230122%_
                                   _%tl229234230124%_
                                   _%e229235230127%_
                                   _%hd229236230130%_
                                   _%tl229237230132%_
                                   _%e229238230135%_
                                   _%hd229239230138%_
                                   _%tl229240230140%_
                                   _%e229241230143%_
                                   _%hd229242230146%_
                                   _%tl229243230148%_))))
                          (_%__match234130234131%_
                           _%e229220230087%_
                           _%hd229221230090%_
                           _%tl229222230092%_
                           _%e229223230095%_
                           _%hd229224230098%_
                           _%tl229225230100%_
                           _%e229226230103%_
                           _%hd229227230106%_
                           _%tl229228230108%_
                           _%e229229230111%_
                           _%hd229230230114%_
                           _%tl229231230116%_
                           _%e229232230119%_
                           _%hd229233230122%_
                           _%tl229234230124%_
                           _%e229235230127%_
                           _%hd229236230130%_
                           _%tl229237230132%_
                           _%e229238230135%_
                           _%hd229239230138%_
                           _%tl229240230140%_
                           _%e229241230143%_
                           _%hd229242230146%_
                           _%tl229243230148%_))))
                  (_%__match234068234069%_
                   _%e229220230087%_
                   _%hd229221230090%_
                   _%tl229222230092%_
                   _%e229223230095%_
                   _%hd229224230098%_
                   _%tl229225230100%_
                   _%e229226230103%_
                   _%hd229227230106%_
                   _%tl229228230108%_
                   _%e229229230111%_
                   _%hd229230230114%_
                   _%tl229231230116%_
                   _%e229232230119%_
                   _%hd229233230122%_
                   _%tl229234230124%_
                   _%e229235230127%_
                   _%hd229236230130%_
                   _%tl229237230132%_
                   _%e229238230135%_
                   _%hd229239230138%_
                   _%tl229240230140%_))
              (_%__kont233651233652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont233651233652%_))
                                          (_%__kont233651233652%_))
                                      (_%__kont233651233652%_))))
                              (_%__kont233651233652%_))))
                      (_%__kont233651233652%_))
                  (_%__kont233651233652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont233651233652%_))
                                              (_%__kont233651233652%_))
                                          (_%__kont233651233652%_))))
                                  (_%__kont233651233652%_))))
                          (_%__kont233651233652%_))))
                  (_%__kont233651233652%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self228148%_ _%stx228149%_)
        (letrec ((_%force-e228151%_
                  (lambda (_%target229203%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target229203%_ '()))
                                      '()))))))
          (let* ((_%__stx234135234136%_ _%stx228149%_)
                 (_%g228159228381%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234135234136%_)))))
            (let ((_%__kont234137234138%_
                   (lambda (_%g228161229149%_
                            _%g228162229150%_
                            _%g228163229151%_
                            _%g228164229152%_)
                     (let ((_%$method229197%_
                            (let ((__tmp234798
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228148%_ 'methods)))
                                  (__tmp234797
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228162229150%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp234798 __tmp234797)))
                           (_%args229198%_
                            (map (lambda (_%g229185229187%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228148%_
                                      _%g229185229187%_)))
                                 (let ((__tmp234799
                                        (lambda (_%g229189229192%_
                                                 _%g229190229194%_)
                                          (cons _%g229189229192%_
                                                _%g229190229194%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp234799
                                    '()
                                    _%g228161229149%_)))))
                       (let ((__tmp234800
                              (cons '%#call
                                    (cons (_%force-e228151%_ _%$method229197%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228148%_
                                                               'receiver))
                                                            '()))
                                                _%args229198%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp234800 _%stx228149%_)))))
                  (_%__kont234141234142%_
                   (lambda (_%g228204228983%_
                            _%g228205228984%_
                            _%g228206228985%_
                            _%g228207228986%_
                            _%g228208228987%_)
                     (let ((_%$method229039%_
                            (let ((__tmp234802
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228148%_ 'methods)))
                                  (__tmp234801
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228205228984%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp234802 __tmp234801)))
                           (_%args229040%_
                            (map (lambda (_%g229027229029%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self228148%_
                                      _%g229027229029%_)))
                                 (let ((__tmp234803
                                        (lambda (_%g229031229034%_
                                                 _%g229032229036%_)
                                          (cons _%g229031229034%_
                                                _%g229032229036%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp234803
                                    '()
                                    _%g228204228983%_)))))
                       (let ((__tmp234804
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e228151%_
                                                 _%$method229039%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228148%_ 'receiver))
                          '()))
              _%args229040%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp234804 _%stx228149%_)))))
                  (_%__kont234145234146%_
                   (lambda (_%g228257228816%_
                            _%g228258228817%_
                            _%g228259228818%_)
                     (let* ((_%$field228850%_
                             (let ((__tmp234806
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self228148%_ 'slots)))
                                   (__tmp234805
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g228257228816%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp234806 __tmp234805)))
                            (__tmp234807
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self228148%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field228850%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self228148%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp234807 _%stx228149%_))))
                  (_%__kont234147234148%_
                   (lambda (_%g228290228690%_
                            _%g228291228691%_
                            _%g228292228692%_
                            _%g228293228693%_)
                     (let ((_%$field228728%_
                            (let ((__tmp234809
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self228148%_ 'slots)))
                                  (__tmp234808
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g228291228691%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp234809 __tmp234808)))
                           (_%expr228729%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self228148%_
                               _%g228290228690%_))))
                       (let ((__tmp234810
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self228148%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field228728%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self228148%_ 'receiver))
                          '()))
              (cons _%expr228729%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp234810 _%stx228149%_)))))
                  (_%__kont234149234150%_
                   (lambda (_%g228327228562%_ _%g228328228563%_)
                     (let* ((_%accessor228585%_
                             (let ((__tmp234811
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228328228563%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp234811)))
                            (_%klass228587%_
                             (let ((__tmp234812
                                    (##structure-ref
                                     _%accessor228585%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228149%_
                                __tmp234812)))
                            (_%slot228589%_
                             (##structure-ref
                              _%accessor228585%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor228585%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass228587%_
                                      _%slot228589%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass228587%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx228149%_
                           (let* ((_%$field228595%_
                                   (let ((__tmp234813
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp234813 _%slot228589%_)))
                                  (__tmp234814
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228148%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field228595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228148%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp234814
                              _%stx228149%_))))))
                  (_%__kont234151234152%_
                   (lambda (_%g228350228457%_
                            _%g228351228458%_
                            _%g228352228459%_)
                     (let* ((_%mutator228487%_
                             (let ((__tmp234815
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g228352228459%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp234815)))
                            (_%klass228489%_
                             (let ((__tmp234816
                                    (##structure-ref
                                     _%mutator228487%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx228149%_
                                __tmp234816)))
                            (_%slot228491%_
                             (##structure-ref
                              _%mutator228487%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr228493%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self228148%_
                                _%g228350228457%_))))
                       (if (if (##structure-ref
                                _%mutator228487%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass228489%_
                                      _%slot228491%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass228489%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp234817
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g228352228459%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g228351228458%_
                                                                '()))
                                                    (cons _%expr228493%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp234817 _%stx228149%_))
                           (let* ((_%$field228499%_
                                   (let ((__tmp234818
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp234818 _%slot228491%_)))
                                  (__tmp234819
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self228148%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field228499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self228148%_ 'receiver))
                               '()))
                   (cons _%expr228493%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp234819
                              _%stx228149%_))))))
                  (_%__kont234153234154%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self228148%_ _%stx228149%_)))))
              (let* ((_%__match234634234635%_
                      (lambda (_%e228353228393%_
                               _%hd228354228396%_
                               _%tl228355228398%_
                               _%e228356228401%_
                               _%hd228357228404%_
                               _%tl228358228406%_
                               _%e228359228409%_
                               _%hd228360228412%_
                               _%tl228361228414%_
                               _%e228362228417%_
                               _%hd228363228420%_
                               _%tl228364228422%_
                               _%e228365228425%_
                               _%hd228366228428%_
                               _%tl228367228430%_
                               _%e228368228433%_
                               _%hd228369228436%_
                               _%tl228370228438%_
                               _%e228371228441%_
                               _%hd228372228444%_
                               _%tl228373228446%_
                               _%e228374228449%_
                               _%hd228375228452%_
                               _%tl228376228454%_)
                        (let ((_%g228350228457%_ _%hd228375228452%_)
                              (_%g228351228458%_ _%hd228372228444%_)
                              (_%g228352228459%_ _%hd228363228420%_))
                          (if (and (let ((__tmp234820
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228351228458%_
                                      __tmp234820))
                                   (let ((__tmp234821
                                          (let ((__tmp234822
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228352228459%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp234822))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp234821
                                      'gxc#!mutator::t)))
                              (_%__kont234151234152%_
                               _%g228350228457%_
                               _%g228351228458%_
                               _%g228352228459%_)
                              (_%__kont234153234154%_)))))
                     (_%__match234632234633%_
                      (lambda (_%e228353228393%_
                               _%hd228354228396%_
                               _%tl228355228398%_
                               _%e228356228401%_
                               _%hd228357228404%_
                               _%tl228358228406%_
                               _%e228359228409%_
                               _%hd228360228412%_
                               _%tl228361228414%_
                               _%e228362228417%_
                               _%hd228363228420%_
                               _%tl228364228422%_
                               _%e228365228425%_
                               _%hd228366228428%_
                               _%tl228367228430%_
                               _%e228368228433%_
                               _%hd228369228436%_
                               _%tl228370228438%_
                               _%e228371228441%_
                               _%hd228372228444%_
                               _%tl228373228446%_
                               _%e228374228449%_
                               _%hd228375228452%_
                               _%tl228376228454%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228376228454%_))
                            (_%__match234634234635%_
                             _%e228353228393%_
                             _%hd228354228396%_
                             _%tl228355228398%_
                             _%e228356228401%_
                             _%hd228357228404%_
                             _%tl228358228406%_
                             _%e228359228409%_
                             _%hd228360228412%_
                             _%tl228361228414%_
                             _%e228362228417%_
                             _%hd228363228420%_
                             _%tl228364228422%_
                             _%e228365228425%_
                             _%hd228366228428%_
                             _%tl228367228430%_
                             _%e228368228433%_
                             _%hd228369228436%_
                             _%tl228370228438%_
                             _%e228371228441%_
                             _%hd228372228444%_
                             _%tl228373228446%_
                             _%e228374228449%_
                             _%hd228375228452%_
                             _%tl228376228454%_)
                            (_%__kont234153234154%_))))
                     (_%__match234626234627%_
                      (lambda (_%e228353228393%_
                               _%hd228354228396%_
                               _%tl228355228398%_
                               _%e228356228401%_
                               _%hd228357228404%_
                               _%tl228358228406%_
                               _%e228359228409%_
                               _%hd228360228412%_
                               _%tl228361228414%_
                               _%e228362228417%_
                               _%hd228363228420%_
                               _%tl228364228422%_
                               _%e228365228425%_
                               _%hd228366228428%_
                               _%tl228367228430%_
                               _%e228368228433%_
                               _%hd228369228436%_
                               _%tl228370228438%_
                               _%e228371228441%_
                               _%hd228372228444%_
                               _%tl228373228446%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228367228430%_))
                            (let ((_%e228374228449%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228367228430%_))))
                              (let ((_%tl228376228454%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228374228449%_)))
                                    (_%hd228375228452%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228374228449%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228376228454%_))
                                    (_%__match234634234635%_
                                     _%e228353228393%_
                                     _%hd228354228396%_
                                     _%tl228355228398%_
                                     _%e228356228401%_
                                     _%hd228357228404%_
                                     _%tl228358228406%_
                                     _%e228359228409%_
                                     _%hd228360228412%_
                                     _%tl228361228414%_
                                     _%e228362228417%_
                                     _%hd228363228420%_
                                     _%tl228364228422%_
                                     _%e228365228425%_
                                     _%hd228366228428%_
                                     _%tl228367228430%_
                                     _%e228368228433%_
                                     _%hd228369228436%_
                                     _%tl228370228438%_
                                     _%e228371228441%_
                                     _%hd228372228444%_
                                     _%tl228373228446%_
                                     _%e228374228449%_
                                     _%hd228375228452%_
                                     _%tl228376228454%_)
                                    (_%__kont234153234154%_))))
                            (_%__kont234153234154%_))))
                     (_%__match234572234573%_
                      (lambda (_%e228329228506%_
                               _%hd228330228509%_
                               _%tl228331228511%_
                               _%e228332228514%_
                               _%hd228333228517%_
                               _%tl228334228519%_
                               _%e228335228522%_
                               _%hd228336228525%_
                               _%tl228337228527%_
                               _%e228338228530%_
                               _%hd228339228533%_
                               _%tl228340228535%_
                               _%e228341228538%_
                               _%hd228342228541%_
                               _%tl228343228543%_
                               _%e228344228546%_
                               _%hd228345228549%_
                               _%tl228346228551%_
                               _%e228347228554%_
                               _%hd228348228557%_
                               _%tl228349228559%_)
                        (let ((_%g228327228562%_ _%hd228348228557%_)
                              (_%g228328228563%_ _%hd228339228533%_))
                          (if (and (let ((__tmp234823
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228327228562%_
                                      __tmp234823))
                                   (let ((__tmp234824
                                          (let ((__tmp234825
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g228328228563%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp234825))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp234824
                                      'gxc#!accessor::t)))
                              (_%__kont234149234150%_
                               _%g228327228562%_
                               _%g228328228563%_)
                              (_%__kont234153234154%_)))))
                     (_%__match234570234571%_
                      (lambda (_%e228329228506%_
                               _%hd228330228509%_
                               _%tl228331228511%_
                               _%e228332228514%_
                               _%hd228333228517%_
                               _%tl228334228519%_
                               _%e228335228522%_
                               _%hd228336228525%_
                               _%tl228337228527%_
                               _%e228338228530%_
                               _%hd228339228533%_
                               _%tl228340228535%_
                               _%e228341228538%_
                               _%hd228342228541%_
                               _%tl228343228543%_
                               _%e228344228546%_
                               _%hd228345228549%_
                               _%tl228346228551%_
                               _%e228347228554%_
                               _%hd228348228557%_
                               _%tl228349228559%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228343228543%_))
                            (_%__match234572234573%_
                             _%e228329228506%_
                             _%hd228330228509%_
                             _%tl228331228511%_
                             _%e228332228514%_
                             _%hd228333228517%_
                             _%tl228334228519%_
                             _%e228335228522%_
                             _%hd228336228525%_
                             _%tl228337228527%_
                             _%e228338228530%_
                             _%hd228339228533%_
                             _%tl228340228535%_
                             _%e228341228538%_
                             _%hd228342228541%_
                             _%tl228343228543%_
                             _%e228344228546%_
                             _%hd228345228549%_
                             _%tl228346228551%_
                             _%e228347228554%_
                             _%hd228348228557%_
                             _%tl228349228559%_)
                            (_%__match234626234627%_
                             _%e228329228506%_
                             _%hd228330228509%_
                             _%tl228331228511%_
                             _%e228332228514%_
                             _%hd228333228517%_
                             _%tl228334228519%_
                             _%e228335228522%_
                             _%hd228336228525%_
                             _%tl228337228527%_
                             _%e228338228530%_
                             _%hd228339228533%_
                             _%tl228340228535%_
                             _%e228341228538%_
                             _%hd228342228541%_
                             _%tl228343228543%_
                             _%e228344228546%_
                             _%hd228345228549%_
                             _%tl228346228551%_
                             _%e228347228554%_
                             _%hd228348228557%_
                             _%tl228349228559%_))))
                     (_%__match234516234517%_
                      (lambda (_%e228294228602%_
                               _%hd228295228605%_
                               _%tl228296228607%_
                               _%e228297228610%_
                               _%hd228298228613%_
                               _%tl228299228615%_
                               _%e228300228618%_
                               _%hd228301228621%_
                               _%tl228302228623%_
                               _%e228303228626%_
                               _%hd228304228629%_
                               _%tl228305228631%_
                               _%e228306228634%_
                               _%hd228307228637%_
                               _%tl228308228639%_
                               _%e228309228642%_
                               _%hd228310228645%_
                               _%tl228311228647%_
                               _%e228312228650%_
                               _%hd228313228653%_
                               _%tl228314228655%_
                               _%e228315228658%_
                               _%hd228316228661%_
                               _%tl228317228663%_
                               _%e228318228666%_
                               _%hd228319228669%_
                               _%tl228320228671%_
                               _%e228321228674%_
                               _%hd228322228677%_
                               _%tl228323228679%_
                               _%e228324228682%_
                               _%hd228325228685%_
                               _%tl228326228687%_)
                        (let ((_%g228290228690%_ _%hd228325228685%_)
                              (_%g228291228691%_ _%hd228322228677%_)
                              (_%g228292228692%_ _%hd228313228653%_)
                              (_%g228293228693%_ _%hd228304228629%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228293228693%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228293228693%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp234826
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228292228692%_
                                      __tmp234826)))
                              (_%__kont234147234148%_
                               _%g228290228690%_
                               _%g228291228691%_
                               _%g228292228692%_
                               _%g228293228693%_)
                              (_%__kont234153234154%_)))))
                     (_%__match234508234509%_
                      (lambda (_%e228294228602%_
                               _%hd228295228605%_
                               _%tl228296228607%_
                               _%e228297228610%_
                               _%hd228298228613%_
                               _%tl228299228615%_
                               _%e228300228618%_
                               _%hd228301228621%_
                               _%tl228302228623%_
                               _%e228303228626%_
                               _%hd228304228629%_
                               _%tl228305228631%_
                               _%e228306228634%_
                               _%hd228307228637%_
                               _%tl228308228639%_
                               _%e228309228642%_
                               _%hd228310228645%_
                               _%tl228311228647%_
                               _%e228312228650%_
                               _%hd228313228653%_
                               _%tl228314228655%_
                               _%e228315228658%_
                               _%hd228316228661%_
                               _%tl228317228663%_
                               _%e228318228666%_
                               _%hd228319228669%_
                               _%tl228320228671%_
                               _%e228321228674%_
                               _%hd228322228677%_
                               _%tl228323228679%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228317228663%_))
                            (let ((_%e228324228682%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228317228663%_))))
                              (let ((_%tl228326228687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228324228682%_)))
                                    (_%hd228325228685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228324228682%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228326228687%_))
                                    (_%__match234516234517%_
                                     _%e228294228602%_
                                     _%hd228295228605%_
                                     _%tl228296228607%_
                                     _%e228297228610%_
                                     _%hd228298228613%_
                                     _%tl228299228615%_
                                     _%e228300228618%_
                                     _%hd228301228621%_
                                     _%tl228302228623%_
                                     _%e228303228626%_
                                     _%hd228304228629%_
                                     _%tl228305228631%_
                                     _%e228306228634%_
                                     _%hd228307228637%_
                                     _%tl228308228639%_
                                     _%e228309228642%_
                                     _%hd228310228645%_
                                     _%tl228311228647%_
                                     _%e228312228650%_
                                     _%hd228313228653%_
                                     _%tl228314228655%_
                                     _%e228315228658%_
                                     _%hd228316228661%_
                                     _%tl228317228663%_
                                     _%e228318228666%_
                                     _%hd228319228669%_
                                     _%tl228320228671%_
                                     _%e228321228674%_
                                     _%hd228322228677%_
                                     _%tl228323228679%_
                                     _%e228324228682%_
                                     _%hd228325228685%_
                                     _%tl228326228687%_)
                                    (_%__kont234153234154%_))))
                            (_%__match234632234633%_
                             _%e228294228602%_
                             _%hd228295228605%_
                             _%tl228296228607%_
                             _%e228297228610%_
                             _%hd228298228613%_
                             _%tl228299228615%_
                             _%e228300228618%_
                             _%hd228301228621%_
                             _%tl228302228623%_
                             _%e228303228626%_
                             _%hd228304228629%_
                             _%tl228305228631%_
                             _%e228306228634%_
                             _%hd228307228637%_
                             _%tl228308228639%_
                             _%e228309228642%_
                             _%hd228310228645%_
                             _%tl228311228647%_
                             _%e228312228650%_
                             _%hd228313228653%_
                             _%tl228314228655%_
                             _%e228315228658%_
                             _%hd228316228661%_
                             _%tl228317228663%_))))
                     (_%__match234430234431%_
                      (lambda (_%e228260228736%_
                               _%hd228261228739%_
                               _%tl228262228741%_
                               _%e228263228744%_
                               _%hd228264228747%_
                               _%tl228265228749%_
                               _%e228266228752%_
                               _%hd228267228755%_
                               _%tl228268228757%_
                               _%e228269228760%_
                               _%hd228270228763%_
                               _%tl228271228765%_
                               _%e228272228768%_
                               _%hd228273228771%_
                               _%tl228274228773%_
                               _%e228275228776%_
                               _%hd228276228779%_
                               _%tl228277228781%_
                               _%e228278228784%_
                               _%hd228279228787%_
                               _%tl228280228789%_
                               _%e228281228792%_
                               _%hd228282228795%_
                               _%tl228283228797%_
                               _%e228284228800%_
                               _%hd228285228803%_
                               _%tl228286228805%_
                               _%e228287228808%_
                               _%hd228288228811%_
                               _%tl228289228813%_)
                        (let ((_%g228257228816%_ _%hd228288228811%_)
                              (_%g228258228817%_ _%hd228279228787%_)
                              (_%g228259228818%_ _%hd228270228763%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228259228818%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g228259228818%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp234827
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self228148%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g228258228817%_
                                      __tmp234827)))
                              (_%__kont234145234146%_
                               _%g228257228816%_
                               _%g228258228817%_
                               _%g228259228818%_)
                              (_%__match234634234635%_
                               _%e228260228736%_
                               _%hd228261228739%_
                               _%tl228262228741%_
                               _%e228263228744%_
                               _%hd228264228747%_
                               _%tl228265228749%_
                               _%e228266228752%_
                               _%hd228267228755%_
                               _%tl228268228757%_
                               _%e228269228760%_
                               _%hd228270228763%_
                               _%tl228271228765%_
                               _%e228272228768%_
                               _%hd228273228771%_
                               _%tl228274228773%_
                               _%e228275228776%_
                               _%hd228276228779%_
                               _%tl228277228781%_
                               _%e228278228784%_
                               _%hd228279228787%_
                               _%tl228280228789%_
                               _%e228281228792%_
                               _%hd228282228795%_
                               _%tl228283228797%_)))))
                     (_%__match234428234429%_
                      (lambda (_%e228260228736%_
                               _%hd228261228739%_
                               _%tl228262228741%_
                               _%e228263228744%_
                               _%hd228264228747%_
                               _%tl228265228749%_
                               _%e228266228752%_
                               _%hd228267228755%_
                               _%tl228268228757%_
                               _%e228269228760%_
                               _%hd228270228763%_
                               _%tl228271228765%_
                               _%e228272228768%_
                               _%hd228273228771%_
                               _%tl228274228773%_
                               _%e228275228776%_
                               _%hd228276228779%_
                               _%tl228277228781%_
                               _%e228278228784%_
                               _%hd228279228787%_
                               _%tl228280228789%_
                               _%e228281228792%_
                               _%hd228282228795%_
                               _%tl228283228797%_
                               _%e228284228800%_
                               _%hd228285228803%_
                               _%tl228286228805%_
                               _%e228287228808%_
                               _%hd228288228811%_
                               _%tl228289228813%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl228283228797%_))
                            (_%__match234430234431%_
                             _%e228260228736%_
                             _%hd228261228739%_
                             _%tl228262228741%_
                             _%e228263228744%_
                             _%hd228264228747%_
                             _%tl228265228749%_
                             _%e228266228752%_
                             _%hd228267228755%_
                             _%tl228268228757%_
                             _%e228269228760%_
                             _%hd228270228763%_
                             _%tl228271228765%_
                             _%e228272228768%_
                             _%hd228273228771%_
                             _%tl228274228773%_
                             _%e228275228776%_
                             _%hd228276228779%_
                             _%tl228277228781%_
                             _%e228278228784%_
                             _%hd228279228787%_
                             _%tl228280228789%_
                             _%e228281228792%_
                             _%hd228282228795%_
                             _%tl228283228797%_
                             _%e228284228800%_
                             _%hd228285228803%_
                             _%tl228286228805%_
                             _%e228287228808%_
                             _%hd228288228811%_
                             _%tl228289228813%_)
                            (_%__match234508234509%_
                             _%e228260228736%_
                             _%hd228261228739%_
                             _%tl228262228741%_
                             _%e228263228744%_
                             _%hd228264228747%_
                             _%tl228265228749%_
                             _%e228266228752%_
                             _%hd228267228755%_
                             _%tl228268228757%_
                             _%e228269228760%_
                             _%hd228270228763%_
                             _%tl228271228765%_
                             _%e228272228768%_
                             _%hd228273228771%_
                             _%tl228274228773%_
                             _%e228275228776%_
                             _%hd228276228779%_
                             _%tl228277228781%_
                             _%e228278228784%_
                             _%hd228279228787%_
                             _%tl228280228789%_
                             _%e228281228792%_
                             _%hd228282228795%_
                             _%tl228283228797%_
                             _%e228284228800%_
                             _%hd228285228803%_
                             _%tl228286228805%_
                             _%e228287228808%_
                             _%hd228288228811%_
                             _%tl228289228813%_))))
                     (_%__match234418234419%_
                      (lambda (_%e228260228736%_
                               _%hd228261228739%_
                               _%tl228262228741%_
                               _%e228263228744%_
                               _%hd228264228747%_
                               _%tl228265228749%_
                               _%e228266228752%_
                               _%hd228267228755%_
                               _%tl228268228757%_
                               _%e228269228760%_
                               _%hd228270228763%_
                               _%tl228271228765%_
                               _%e228272228768%_
                               _%hd228273228771%_
                               _%tl228274228773%_
                               _%e228275228776%_
                               _%hd228276228779%_
                               _%tl228277228781%_
                               _%e228278228784%_
                               _%hd228279228787%_
                               _%tl228280228789%_
                               _%e228281228792%_
                               _%hd228282228795%_
                               _%tl228283228797%_
                               _%e228284228800%_
                               _%hd228285228803%_
                               _%tl228286228805%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd228285228803%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228286228805%_))
                                (let ((_%e228287228808%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228286228805%_))))
                                  (let ((_%tl228289228813%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228287228808%_)))
                                        (_%hd228288228811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228287228808%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228289228813%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl228283228797%_))
                                            (_%__match234430234431%_
                                             _%e228260228736%_
                                             _%hd228261228739%_
                                             _%tl228262228741%_
                                             _%e228263228744%_
                                             _%hd228264228747%_
                                             _%tl228265228749%_
                                             _%e228266228752%_
                                             _%hd228267228755%_
                                             _%tl228268228757%_
                                             _%e228269228760%_
                                             _%hd228270228763%_
                                             _%tl228271228765%_
                                             _%e228272228768%_
                                             _%hd228273228771%_
                                             _%tl228274228773%_
                                             _%e228275228776%_
                                             _%hd228276228779%_
                                             _%tl228277228781%_
                                             _%e228278228784%_
                                             _%hd228279228787%_
                                             _%tl228280228789%_
                                             _%e228281228792%_
                                             _%hd228282228795%_
                                             _%tl228283228797%_
                                             _%e228284228800%_
                                             _%hd228285228803%_
                                             _%tl228286228805%_
                                             _%e228287228808%_
                                             _%hd228288228811%_
                                             _%tl228289228813%_)
                                            (_%__match234508234509%_
                                             _%e228260228736%_
                                             _%hd228261228739%_
                                             _%tl228262228741%_
                                             _%e228263228744%_
                                             _%hd228264228747%_
                                             _%tl228265228749%_
                                             _%e228266228752%_
                                             _%hd228267228755%_
                                             _%tl228268228757%_
                                             _%e228269228760%_
                                             _%hd228270228763%_
                                             _%tl228271228765%_
                                             _%e228272228768%_
                                             _%hd228273228771%_
                                             _%tl228274228773%_
                                             _%e228275228776%_
                                             _%hd228276228779%_
                                             _%tl228277228781%_
                                             _%e228278228784%_
                                             _%hd228279228787%_
                                             _%tl228280228789%_
                                             _%e228281228792%_
                                             _%hd228282228795%_
                                             _%tl228283228797%_
                                             _%e228284228800%_
                                             _%hd228285228803%_
                                             _%tl228286228805%_
                                             _%e228287228808%_
                                             _%hd228288228811%_
                                             _%tl228289228813%_))
                                        (_%__match234632234633%_
                                         _%e228260228736%_
                                         _%hd228261228739%_
                                         _%tl228262228741%_
                                         _%e228263228744%_
                                         _%hd228264228747%_
                                         _%tl228265228749%_
                                         _%e228266228752%_
                                         _%hd228267228755%_
                                         _%tl228268228757%_
                                         _%e228269228760%_
                                         _%hd228270228763%_
                                         _%tl228271228765%_
                                         _%e228272228768%_
                                         _%hd228273228771%_
                                         _%tl228274228773%_
                                         _%e228275228776%_
                                         _%hd228276228779%_
                                         _%tl228277228781%_
                                         _%e228278228784%_
                                         _%hd228279228787%_
                                         _%tl228280228789%_
                                         _%e228281228792%_
                                         _%hd228282228795%_
                                         _%tl228283228797%_))))
                                (_%__match234632234633%_
                                 _%e228260228736%_
                                 _%hd228261228739%_
                                 _%tl228262228741%_
                                 _%e228263228744%_
                                 _%hd228264228747%_
                                 _%tl228265228749%_
                                 _%e228266228752%_
                                 _%hd228267228755%_
                                 _%tl228268228757%_
                                 _%e228269228760%_
                                 _%hd228270228763%_
                                 _%tl228271228765%_
                                 _%e228272228768%_
                                 _%hd228273228771%_
                                 _%tl228274228773%_
                                 _%e228275228776%_
                                 _%hd228276228779%_
                                 _%tl228277228781%_
                                 _%e228278228784%_
                                 _%hd228279228787%_
                                 _%tl228280228789%_
                                 _%e228281228792%_
                                 _%hd228282228795%_
                                 _%tl228283228797%_))
                            (_%__match234632234633%_
                             _%e228260228736%_
                             _%hd228261228739%_
                             _%tl228262228741%_
                             _%e228263228744%_
                             _%hd228264228747%_
                             _%tl228265228749%_
                             _%e228266228752%_
                             _%hd228267228755%_
                             _%tl228268228757%_
                             _%e228269228760%_
                             _%hd228270228763%_
                             _%tl228271228765%_
                             _%e228272228768%_
                             _%hd228273228771%_
                             _%tl228274228773%_
                             _%e228275228776%_
                             _%hd228276228779%_
                             _%tl228277228781%_
                             _%e228278228784%_
                             _%hd228279228787%_
                             _%tl228280228789%_
                             _%e228281228792%_
                             _%hd228282228795%_
                             _%tl228283228797%_))))
                     (_%__match234350234351%_
                      (lambda (_%e228209228857%_
                               _%hd228210228860%_
                               _%tl228211228862%_
                               _%e228212228865%_
                               _%hd228213228868%_
                               _%tl228214228870%_
                               _%e228215228873%_
                               _%hd228216228876%_
                               _%tl228217228878%_
                               _%e228218228881%_
                               _%hd228219228884%_
                               _%tl228220228886%_
                               _%e228221228889%_
                               _%hd228222228892%_
                               _%tl228223228894%_
                               _%e228224228897%_
                               _%hd228225228900%_
                               _%tl228226228902%_
                               _%e228227228905%_
                               _%hd228228228908%_
                               _%tl228229228910%_
                               _%e228230228913%_
                               _%hd228231228916%_
                               _%tl228232228918%_
                               _%e228233228921%_
                               _%hd228234228924%_
                               _%tl228235228926%_
                               _%e228236228929%_
                               _%hd228237228932%_
                               _%tl228238228934%_
                               _%e228239228937%_
                               _%hd228240228940%_
                               _%tl228241228942%_
                               _%e228242228945%_
                               _%hd228243228948%_
                               _%tl228244228950%_
                               _%e228245228953%_
                               _%hd228246228956%_
                               _%tl228247228958%_
                               _%__splice234143234144%_
                               _%target228248228961%_
                               _%tl228250228963%_)
                        (letrec ((_%loop228251228966%_
                                  (lambda (_%hd228249228969%_
                                           _%args228255228971%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228249228969%_))
                                        (let ((_%e228252228973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228249228969%_))))
                                          (let ((_%lp-tl228254228978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228252228973%_)))
                                                (_%lp-hd228253228976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228252228973%_))))
                                            (_%loop228251228966%_
                                             _%lp-tl228254228978%_
                                             (cons _%lp-hd228253228976%_
                                                   _%args228255228971%_))))
                                        (let ((_%args228256228981%_
                                               (reverse _%args228255228971%_)))
                                          (let ((_%g228204228983%_
                                                 _%args228256228981%_)
                                                (_%g228205228984%_
                                                 _%hd228246228956%_)
                                                (_%g228206228985%_
                                                 _%hd228237228932%_)
                                                (_%g228207228986%_
                                                 _%hd228228228908%_)
                                                (_%g228208228987%_
                                                 _%hd228219228884%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228208228987%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228207228986%_
                                                        'call-method))
                                                     (let ((__tmp234828
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228148%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228206228985%_
                                                        __tmp234828)))
                                                (_%__kont234141234142%_
                                                 _%g228204228983%_
                                                 _%g228205228984%_
                                                 _%g228206228985%_
                                                 _%g228207228986%_
                                                 _%g228208228987%_)
                                                (_%__kont234153234154%_))))))))
                          (_%loop228251228966%_ _%target228248228961%_ '()))))
                     (_%__match234308234309%_
                      (lambda (_%e228209228857%_
                               _%hd228210228860%_
                               _%tl228211228862%_
                               _%e228212228865%_
                               _%hd228213228868%_
                               _%tl228214228870%_
                               _%e228215228873%_
                               _%hd228216228876%_
                               _%tl228217228878%_
                               _%e228218228881%_
                               _%hd228219228884%_
                               _%tl228220228886%_
                               _%e228221228889%_
                               _%hd228222228892%_
                               _%tl228223228894%_
                               _%e228224228897%_
                               _%hd228225228900%_
                               _%tl228226228902%_
                               _%e228227228905%_
                               _%hd228228228908%_
                               _%tl228229228910%_
                               _%e228230228913%_
                               _%hd228231228916%_
                               _%tl228232228918%_
                               _%e228233228921%_
                               _%hd228234228924%_
                               _%tl228235228926%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd228234228924%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl228235228926%_))
                                (let ((_%e228236228929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl228235228926%_))))
                                  (let ((_%tl228238228934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228236228929%_)))
                                        (_%hd228237228932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228236228929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl228238228934%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228232228918%_))
                                            (let ((_%e228239228937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228232228918%_))))
                                              (let ((_%tl228241228942%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228239228937%_)))
                                                    (_%hd228240228940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228239228937%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd228240228940%_))
                                                    (let ((_%e228242228945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd228240228940%_))))
                                                      (let ((_%tl228244228950%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228242228945%_)))
                    (_%hd228243228948%_
                     (let () (declare (not safe)) (##car _%e228242228945%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd228243228948%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd228243228948%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228244228950%_))
                            (let ((_%e228245228953%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228244228950%_))))
                              (let ((_%tl228247228958%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228245228953%_)))
                                    (_%hd228246228956%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228245228953%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl228247228958%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl228241228942%_))
                                        (let ((_%__splice234143234144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl228241228942%_
                                                  '0))))
                                          (let ((_%tl228250228963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234143234144%_
                                                    '1)))
                                                (_%target228248228961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice234143234144%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl228250228963%_))
                                                (_%__match234350234351%_
                                                 _%e228209228857%_
                                                 _%hd228210228860%_
                                                 _%tl228211228862%_
                                                 _%e228212228865%_
                                                 _%hd228213228868%_
                                                 _%tl228214228870%_
                                                 _%e228215228873%_
                                                 _%hd228216228876%_
                                                 _%tl228217228878%_
                                                 _%e228218228881%_
                                                 _%hd228219228884%_
                                                 _%tl228220228886%_
                                                 _%e228221228889%_
                                                 _%hd228222228892%_
                                                 _%tl228223228894%_
                                                 _%e228224228897%_
                                                 _%hd228225228900%_
                                                 _%tl228226228902%_
                                                 _%e228227228905%_
                                                 _%hd228228228908%_
                                                 _%tl228229228910%_
                                                 _%e228230228913%_
                                                 _%hd228231228916%_
                                                 _%tl228232228918%_
                                                 _%e228233228921%_
                                                 _%hd228234228924%_
                                                 _%tl228235228926%_
                                                 _%e228236228929%_
                                                 _%hd228237228932%_
                                                 _%tl228238228934%_
                                                 _%e228239228937%_
                                                 _%hd228240228940%_
                                                 _%tl228241228942%_
                                                 _%e228242228945%_
                                                 _%hd228243228948%_
                                                 _%tl228244228950%_
                                                 _%e228245228953%_
                                                 _%hd228246228956%_
                                                 _%tl228247228958%_
                                                 _%__splice234143234144%_
                                                 _%target228248228961%_
                                                 _%tl228250228963%_)
                                                (_%__kont234153234154%_))))
                                        (_%__kont234153234154%_))
                                    (_%__kont234153234154%_))))
                            (_%__kont234153234154%_))
                        (_%__kont234153234154%_))
                    (_%__kont234153234154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234153234154%_))))
                                            (_%__match234632234633%_
                                             _%e228209228857%_
                                             _%hd228210228860%_
                                             _%tl228211228862%_
                                             _%e228212228865%_
                                             _%hd228213228868%_
                                             _%tl228214228870%_
                                             _%e228215228873%_
                                             _%hd228216228876%_
                                             _%tl228217228878%_
                                             _%e228218228881%_
                                             _%hd228219228884%_
                                             _%tl228220228886%_
                                             _%e228221228889%_
                                             _%hd228222228892%_
                                             _%tl228223228894%_
                                             _%e228224228897%_
                                             _%hd228225228900%_
                                             _%tl228226228902%_
                                             _%e228227228905%_
                                             _%hd228228228908%_
                                             _%tl228229228910%_
                                             _%e228230228913%_
                                             _%hd228231228916%_
                                             _%tl228232228918%_))
                                        (_%__match234632234633%_
                                         _%e228209228857%_
                                         _%hd228210228860%_
                                         _%tl228211228862%_
                                         _%e228212228865%_
                                         _%hd228213228868%_
                                         _%tl228214228870%_
                                         _%e228215228873%_
                                         _%hd228216228876%_
                                         _%tl228217228878%_
                                         _%e228218228881%_
                                         _%hd228219228884%_
                                         _%tl228220228886%_
                                         _%e228221228889%_
                                         _%hd228222228892%_
                                         _%tl228223228894%_
                                         _%e228224228897%_
                                         _%hd228225228900%_
                                         _%tl228226228902%_
                                         _%e228227228905%_
                                         _%hd228228228908%_
                                         _%tl228229228910%_
                                         _%e228230228913%_
                                         _%hd228231228916%_
                                         _%tl228232228918%_))))
                                (_%__match234632234633%_
                                 _%e228209228857%_
                                 _%hd228210228860%_
                                 _%tl228211228862%_
                                 _%e228212228865%_
                                 _%hd228213228868%_
                                 _%tl228214228870%_
                                 _%e228215228873%_
                                 _%hd228216228876%_
                                 _%tl228217228878%_
                                 _%e228218228881%_
                                 _%hd228219228884%_
                                 _%tl228220228886%_
                                 _%e228221228889%_
                                 _%hd228222228892%_
                                 _%tl228223228894%_
                                 _%e228224228897%_
                                 _%hd228225228900%_
                                 _%tl228226228902%_
                                 _%e228227228905%_
                                 _%hd228228228908%_
                                 _%tl228229228910%_
                                 _%e228230228913%_
                                 _%hd228231228916%_
                                 _%tl228232228918%_))
                            (_%__match234418234419%_
                             _%e228209228857%_
                             _%hd228210228860%_
                             _%tl228211228862%_
                             _%e228212228865%_
                             _%hd228213228868%_
                             _%tl228214228870%_
                             _%e228215228873%_
                             _%hd228216228876%_
                             _%tl228217228878%_
                             _%e228218228881%_
                             _%hd228219228884%_
                             _%tl228220228886%_
                             _%e228221228889%_
                             _%hd228222228892%_
                             _%tl228223228894%_
                             _%e228224228897%_
                             _%hd228225228900%_
                             _%tl228226228902%_
                             _%e228227228905%_
                             _%hd228228228908%_
                             _%tl228229228910%_
                             _%e228230228913%_
                             _%hd228231228916%_
                             _%tl228232228918%_
                             _%e228233228921%_
                             _%hd228234228924%_
                             _%tl228235228926%_))))
                     (_%__match234240234241%_
                      (lambda (_%e228165229047%_
                               _%hd228166229050%_
                               _%tl228167229052%_
                               _%e228168229055%_
                               _%hd228169229058%_
                               _%tl228170229060%_
                               _%e228171229063%_
                               _%hd228172229066%_
                               _%tl228173229068%_
                               _%e228174229071%_
                               _%hd228175229074%_
                               _%tl228176229076%_
                               _%e228177229079%_
                               _%hd228178229082%_
                               _%tl228179229084%_
                               _%e228180229087%_
                               _%hd228181229090%_
                               _%tl228182229092%_
                               _%e228183229095%_
                               _%hd228184229098%_
                               _%tl228185229100%_
                               _%e228186229103%_
                               _%hd228187229106%_
                               _%tl228188229108%_
                               _%e228189229111%_
                               _%hd228190229114%_
                               _%tl228191229116%_
                               _%e228192229119%_
                               _%hd228193229122%_
                               _%tl228194229124%_
                               _%__splice234139234140%_
                               _%target228195229127%_
                               _%tl228197229129%_)
                        (letrec ((_%loop228198229132%_
                                  (lambda (_%hd228196229135%_
                                           _%args228202229137%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd228196229135%_))
                                        (let ((_%e228199229139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd228196229135%_))))
                                          (let ((_%lp-tl228201229144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e228199229139%_)))
                                                (_%lp-hd228200229142%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e228199229139%_))))
                                            (_%loop228198229132%_
                                             _%lp-tl228201229144%_
                                             (cons _%lp-hd228200229142%_
                                                   _%args228202229137%_))))
                                        (let ((_%args228203229147%_
                                               (reverse _%args228202229137%_)))
                                          (let ((_%g228161229149%_
                                                 _%args228203229147%_)
                                                (_%g228162229150%_
                                                 _%hd228193229122%_)
                                                (_%g228163229151%_
                                                 _%hd228184229098%_)
                                                (_%g228164229152%_
                                                 _%hd228175229074%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g228164229152%_
                                                        'call-method))
                                                     (let ((__tmp234829
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self228148%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g228163229151%_
                                                        __tmp234829)))
                                                (_%__kont234137234138%_
                                                 _%g228161229149%_
                                                 _%g228162229150%_
                                                 _%g228163229151%_
                                                 _%g228164229152%_)
                                                (_%__match234428234429%_
                                                 _%e228165229047%_
                                                 _%hd228166229050%_
                                                 _%tl228167229052%_
                                                 _%e228168229055%_
                                                 _%hd228169229058%_
                                                 _%tl228170229060%_
                                                 _%e228171229063%_
                                                 _%hd228172229066%_
                                                 _%tl228173229068%_
                                                 _%e228174229071%_
                                                 _%hd228175229074%_
                                                 _%tl228176229076%_
                                                 _%e228177229079%_
                                                 _%hd228178229082%_
                                                 _%tl228179229084%_
                                                 _%e228180229087%_
                                                 _%hd228181229090%_
                                                 _%tl228182229092%_
                                                 _%e228183229095%_
                                                 _%hd228184229098%_
                                                 _%tl228185229100%_
                                                 _%e228186229103%_
                                                 _%hd228187229106%_
                                                 _%tl228188229108%_
                                                 _%e228189229111%_
                                                 _%hd228190229114%_
                                                 _%tl228191229116%_
                                                 _%e228192229119%_
                                                 _%hd228193229122%_
                                                 _%tl228194229124%_))))))))
                          (_%loop228198229132%_ _%target228195229127%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234135234136%_))
                    (let ((_%e228165229047%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234135234136%_))))
                      (let ((_%tl228167229052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228165229047%_)))
                            (_%hd228166229050%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228165229047%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl228167229052%_))
                            (let ((_%e228168229055%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl228167229052%_))))
                              (let ((_%tl228170229060%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228168229055%_)))
                                    (_%hd228169229058%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228168229055%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd228169229058%_))
                                    (let ((_%e228171229063%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd228169229058%_))))
                                      (let ((_%tl228173229068%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e228171229063%_)))
                                            (_%hd228172229066%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e228171229063%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd228172229066%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd228172229066%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl228173229068%_))
                                                    (let ((_%e228174229071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl228173229068%_))))
                                                      (let ((_%tl228176229076%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e228174229071%_)))
                    (_%hd228175229074%_
                     (let () (declare (not safe)) (##car _%e228174229071%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl228176229076%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl228170229060%_))
                        (let ((_%e228177229079%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl228170229060%_))))
                          (let ((_%tl228179229084%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e228177229079%_)))
                                (_%hd228178229082%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e228177229079%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd228178229082%_))
                                (let ((_%e228180229087%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd228178229082%_))))
                                  (let ((_%tl228182229092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e228180229087%_)))
                                        (_%hd228181229090%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e228180229087%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd228181229090%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd228181229090%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl228182229092%_))
                                                (let ((_%e228183229095%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl228182229092%_))))
                                                  (let ((_%tl228185229100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e228183229095%_)))
                                                        (_%hd228184229098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e228183229095%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl228185229100%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl228179229084%_))
                                                            (let ((_%e228186229103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl228179229084%_))))
                      (let ((_%tl228188229108%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e228186229103%_)))
                            (_%hd228187229106%_
                             (let ()
                               (declare (not safe))
                               (##car _%e228186229103%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd228187229106%_))
                            (let ((_%e228189229111%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd228187229106%_))))
                              (let ((_%tl228191229116%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e228189229111%_)))
                                    (_%hd228190229114%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e228189229111%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd228190229114%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd228190229114%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl228191229116%_))
                                            (let ((_%e228192229119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl228191229116%_))))
                                              (let ((_%tl228194229124%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e228192229119%_)))
                                                    (_%hd228193229122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e228192229119%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl228194229124%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl228188229108%_))
                                                        (let ((_%__splice234139234140%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl228188229108%_
                          '0))))
                  (let ((_%tl228197229129%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234139234140%_ '1)))
                        (_%target228195229127%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice234139234140%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl228197229129%_))
                        (_%__match234240234241%_
                         _%e228165229047%_
                         _%hd228166229050%_
                         _%tl228167229052%_
                         _%e228168229055%_
                         _%hd228169229058%_
                         _%tl228170229060%_
                         _%e228171229063%_
                         _%hd228172229066%_
                         _%tl228173229068%_
                         _%e228174229071%_
                         _%hd228175229074%_
                         _%tl228176229076%_
                         _%e228177229079%_
                         _%hd228178229082%_
                         _%tl228179229084%_
                         _%e228180229087%_
                         _%hd228181229090%_
                         _%tl228182229092%_
                         _%e228183229095%_
                         _%hd228184229098%_
                         _%tl228185229100%_
                         _%e228186229103%_
                         _%hd228187229106%_
                         _%tl228188229108%_
                         _%e228189229111%_
                         _%hd228190229114%_
                         _%tl228191229116%_
                         _%e228192229119%_
                         _%hd228193229122%_
                         _%tl228194229124%_
                         _%__splice234139234140%_
                         _%target228195229127%_
                         _%tl228197229129%_)
                        (_%__match234428234429%_
                         _%e228165229047%_
                         _%hd228166229050%_
                         _%tl228167229052%_
                         _%e228168229055%_
                         _%hd228169229058%_
                         _%tl228170229060%_
                         _%e228171229063%_
                         _%hd228172229066%_
                         _%tl228173229068%_
                         _%e228174229071%_
                         _%hd228175229074%_
                         _%tl228176229076%_
                         _%e228177229079%_
                         _%hd228178229082%_
                         _%tl228179229084%_
                         _%e228180229087%_
                         _%hd228181229090%_
                         _%tl228182229092%_
                         _%e228183229095%_
                         _%hd228184229098%_
                         _%tl228185229100%_
                         _%e228186229103%_
                         _%hd228187229106%_
                         _%tl228188229108%_
                         _%e228189229111%_
                         _%hd228190229114%_
                         _%tl228191229116%_
                         _%e228192229119%_
                         _%hd228193229122%_
                         _%tl228194229124%_))))
                (_%__match234428234429%_
                 _%e228165229047%_
                 _%hd228166229050%_
                 _%tl228167229052%_
                 _%e228168229055%_
                 _%hd228169229058%_
                 _%tl228170229060%_
                 _%e228171229063%_
                 _%hd228172229066%_
                 _%tl228173229068%_
                 _%e228174229071%_
                 _%hd228175229074%_
                 _%tl228176229076%_
                 _%e228177229079%_
                 _%hd228178229082%_
                 _%tl228179229084%_
                 _%e228180229087%_
                 _%hd228181229090%_
                 _%tl228182229092%_
                 _%e228183229095%_
                 _%hd228184229098%_
                 _%tl228185229100%_
                 _%e228186229103%_
                 _%hd228187229106%_
                 _%tl228188229108%_
                 _%e228189229111%_
                 _%hd228190229114%_
                 _%tl228191229116%_
                 _%e228192229119%_
                 _%hd228193229122%_
                 _%tl228194229124%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match234632234633%_
                                                     _%e228165229047%_
                                                     _%hd228166229050%_
                                                     _%tl228167229052%_
                                                     _%e228168229055%_
                                                     _%hd228169229058%_
                                                     _%tl228170229060%_
                                                     _%e228171229063%_
                                                     _%hd228172229066%_
                                                     _%tl228173229068%_
                                                     _%e228174229071%_
                                                     _%hd228175229074%_
                                                     _%tl228176229076%_
                                                     _%e228177229079%_
                                                     _%hd228178229082%_
                                                     _%tl228179229084%_
                                                     _%e228180229087%_
                                                     _%hd228181229090%_
                                                     _%tl228182229092%_
                                                     _%e228183229095%_
                                                     _%hd228184229098%_
                                                     _%tl228185229100%_
                                                     _%e228186229103%_
                                                     _%hd228187229106%_
                                                     _%tl228188229108%_))))
                                            (_%__match234632234633%_
                                             _%e228165229047%_
                                             _%hd228166229050%_
                                             _%tl228167229052%_
                                             _%e228168229055%_
                                             _%hd228169229058%_
                                             _%tl228170229060%_
                                             _%e228171229063%_
                                             _%hd228172229066%_
                                             _%tl228173229068%_
                                             _%e228174229071%_
                                             _%hd228175229074%_
                                             _%tl228176229076%_
                                             _%e228177229079%_
                                             _%hd228178229082%_
                                             _%tl228179229084%_
                                             _%e228180229087%_
                                             _%hd228181229090%_
                                             _%tl228182229092%_
                                             _%e228183229095%_
                                             _%hd228184229098%_
                                             _%tl228185229100%_
                                             _%e228186229103%_
                                             _%hd228187229106%_
                                             _%tl228188229108%_))
                                        (_%__match234308234309%_
                                         _%e228165229047%_
                                         _%hd228166229050%_
                                         _%tl228167229052%_
                                         _%e228168229055%_
                                         _%hd228169229058%_
                                         _%tl228170229060%_
                                         _%e228171229063%_
                                         _%hd228172229066%_
                                         _%tl228173229068%_
                                         _%e228174229071%_
                                         _%hd228175229074%_
                                         _%tl228176229076%_
                                         _%e228177229079%_
                                         _%hd228178229082%_
                                         _%tl228179229084%_
                                         _%e228180229087%_
                                         _%hd228181229090%_
                                         _%tl228182229092%_
                                         _%e228183229095%_
                                         _%hd228184229098%_
                                         _%tl228185229100%_
                                         _%e228186229103%_
                                         _%hd228187229106%_
                                         _%tl228188229108%_
                                         _%e228189229111%_
                                         _%hd228190229114%_
                                         _%tl228191229116%_))
                                    (_%__match234632234633%_
                                     _%e228165229047%_
                                     _%hd228166229050%_
                                     _%tl228167229052%_
                                     _%e228168229055%_
                                     _%hd228169229058%_
                                     _%tl228170229060%_
                                     _%e228171229063%_
                                     _%hd228172229066%_
                                     _%tl228173229068%_
                                     _%e228174229071%_
                                     _%hd228175229074%_
                                     _%tl228176229076%_
                                     _%e228177229079%_
                                     _%hd228178229082%_
                                     _%tl228179229084%_
                                     _%e228180229087%_
                                     _%hd228181229090%_
                                     _%tl228182229092%_
                                     _%e228183229095%_
                                     _%hd228184229098%_
                                     _%tl228185229100%_
                                     _%e228186229103%_
                                     _%hd228187229106%_
                                     _%tl228188229108%_))))
                            (_%__match234632234633%_
                             _%e228165229047%_
                             _%hd228166229050%_
                             _%tl228167229052%_
                             _%e228168229055%_
                             _%hd228169229058%_
                             _%tl228170229060%_
                             _%e228171229063%_
                             _%hd228172229066%_
                             _%tl228173229068%_
                             _%e228174229071%_
                             _%hd228175229074%_
                             _%tl228176229076%_
                             _%e228177229079%_
                             _%hd228178229082%_
                             _%tl228179229084%_
                             _%e228180229087%_
                             _%hd228181229090%_
                             _%tl228182229092%_
                             _%e228183229095%_
                             _%hd228184229098%_
                             _%tl228185229100%_
                             _%e228186229103%_
                             _%hd228187229106%_
                             _%tl228188229108%_))))
                    (_%__match234570234571%_
                     _%e228165229047%_
                     _%hd228166229050%_
                     _%tl228167229052%_
                     _%e228168229055%_
                     _%hd228169229058%_
                     _%tl228170229060%_
                     _%e228171229063%_
                     _%hd228172229066%_
                     _%tl228173229068%_
                     _%e228174229071%_
                     _%hd228175229074%_
                     _%tl228176229076%_
                     _%e228177229079%_
                     _%hd228178229082%_
                     _%tl228179229084%_
                     _%e228180229087%_
                     _%hd228181229090%_
                     _%tl228182229092%_
                     _%e228183229095%_
                     _%hd228184229098%_
                     _%tl228185229100%_))
                (_%__kont234153234154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont234153234154%_))
                                            (_%__kont234153234154%_))
                                        (_%__kont234153234154%_))))
                                (_%__kont234153234154%_))))
                        (_%__kont234153234154%_))
                    (_%__kont234153234154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont234153234154%_))
                                                (_%__kont234153234154%_))
                                            (_%__kont234153234154%_))))
                                    (_%__kont234153234154%_))))
                            (_%__kont234153234154%_))))
                    (_%__kont234153234154%_))))))))))
