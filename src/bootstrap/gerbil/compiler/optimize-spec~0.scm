(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1771104516)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp235766 (list gxc#::identity::t))
            (__tmp235765 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp235766
         '()
         __tmp235765
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args234563%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args234563%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp235767
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
        (__make-atomic-promise __tmp235767)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx234555%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self234558%_
                (let ((__obj235758
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj235758))
               (__tmp235768
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234558%_ _%stx234555%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235768
           gxc#current-compile-method
           _%self234558%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp235770 (list gxc#::false::t))
            (__tmp235769 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp235770
         '()
         __tmp235769
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args234552%_
        (apply make-instance gxc#::extract-receiver::t _%$args234552%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp235771
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
        (__make-atomic-promise __tmp235771)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx234544%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self234547%_
                (let ((__obj235760
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj235760))
               (__tmp235772
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self234547%_ _%stx234544%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp235772
           gxc#current-compile-method
           _%self234547%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp235774 (list gxc#::void::t))
            (__tmp235773 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp235774
         '(receiver methods slots)
         __tmp235773
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args234541%_
        (apply make-instance gxc#::collect-object-refs::t _%$args234541%_)))
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
      (let ((__tmp235775
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
        (__make-atomic-promise __tmp235775)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords234510%_
               _%receiver234505234511%_
               _%methods234506234512%_
               _%slots234507234513%_
               _%stx234514%_)
        (let* ((_%receiver234517%_
                (if (eq? _%receiver234505234511%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234505234511%_))
               (_%methods234519%_
                (if (eq? _%methods234506234512%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234506234512%_))
               (_%slots234521%_
                (if (eq? _%slots234507234513%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234507234513%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self234523%_
                  (let ((__obj235762
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
                       __obj235762
                       _%receiver234517%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235762
                       _%methods234519%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235762
                       _%slots234521%_
                       '3
                       '#f
                       '#f))
                    __obj235762))
                 (__tmp235776
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234523%_ _%stx234514%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235776
             gxc#current-compile-method
             _%self234523%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords234530%_ . _%args234531%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords234530%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234530%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234530%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234530%_
                  'slots:
                  absent-value))
               _%args234531%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args234508234537%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args234508234537%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp235778 (list gxc#::basic-xform-expression::t))
            (__tmp235777 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp235778
         '(receiver klass methods slots)
         __tmp235777
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args234501%_
        (apply make-instance gxc#::subst-object-refs::t _%$args234501%_)))
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
      (let ((__tmp235779
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
        (__make-atomic-promise __tmp235779)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords234467%_
               _%receiver234461234468%_
               _%klass234462234469%_
               _%methods234463234470%_
               _%slots234464234471%_
               _%stx234472%_)
        (let* ((_%receiver234475%_
                (if (eq? _%receiver234461234468%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver234461234468%_))
               (_%klass234477%_
                (if (eq? _%klass234462234469%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass234462234469%_))
               (_%methods234479%_
                (if (eq? _%methods234463234470%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods234463234470%_))
               (_%slots234481%_
                (if (eq? _%slots234464234471%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots234464234471%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self234483%_
                  (let ((__obj235764
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
                       __obj235764
                       _%receiver234475%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235764
                       _%klass234477%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235764
                       _%methods234479%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj235764
                       _%slots234481%_
                       '4
                       '#f
                       '#f))
                    __obj235764))
                 (__tmp235780
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self234483%_ _%stx234472%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp235780
             gxc#current-compile-method
             _%self234483%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords234490%_ . _%args234491%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords234490%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234490%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234490%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234490%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords234490%_
                  'slots:
                  absent-value))
               _%args234491%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args234465234497%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args234465234497%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self231592%_ _%stx231593%_)
        (letrec ((_%generate-method-bind231595%_
                  (lambda (_%$klass234453%_
                           _%$method-table234454%_
                           _%id234455%_
                           _%$id234456%_)
                    (let ((_%$tmp234458%_
                           (let ((__tmp235781
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235781))))
                      (cons (cons _%$id234456%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp234458%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table234454%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id234455%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp234458%_ '()))
                    (cons (cons '%#ref (cons _%$tmp234458%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id234455%_
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
                 (_%generate-slot-bind231596%_
                  (lambda (_%$klass234447%_ _%id234448%_ _%$id234449%_)
                    (let ((_%$tmp234451%_
                           (let ((__tmp235782
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp235782))))
                      (cons (cons _%$id234449%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp234451%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass234447%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id234448%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp234451%_ '()))
                        (cons (cons '%#ref (cons _%$tmp234451%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id234448%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl231597%_
                  (lambda (_%$klass234441%_
                           _%$method-table234442%_
                           _%methods-bind234443%_
                           _%slots-bind234444%_
                           _%specializer-impl234445%_)
                    (let ((__tmp235783
                           (cons '%#lambda
                                 (cons (cons _%$klass234441%_
                                             (cons _%$method-table234442%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (foldr__0
                                                            cons
                                                            _%slots-bind234444%_
                                                            _%methods-bind234443%_))
                                                         (cons _%specializer-impl234445%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235783 _%stx231593%_))))
                 (_%generate-specializer-def231598%_
                  (lambda (_%id234437%_
                           _%specializer-id234438%_
                           _%specializer-impl234439%_)
                    (let ((__tmp235784
                           (cons '%#begin
                                 (cons _%stx231593%_
                                       (cons (let ((__tmp235785
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id234438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl234439%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235785
                                                _%stx231593%_))
                                             (cons (let ((__tmp235786
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id234437%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id234438%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235786
                                                      _%stx231593%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp235784 _%stx231593%_)))))
          (let* ((_%__stx234652234653%_ _%stx231593%_)
                 (_%g231601231621%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx234652234653%_)))))
            (let ((_%__kont234654234655%_
                   (lambda (_%g231603231665%_ _%g231604231666%_)
                     (let ((_%method-calls231685%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs231686%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty231687%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?231689%_
                                 (lambda ()
                                   (if (let ((__tmp235787
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls231685%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235787))
                                       (let ((__tmp235788
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs231686%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp235788))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g231603231665%_))
                             (let* ((_%__stx234566234567%_ _%g231603231665%_)
                                    (_%g232073232091%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx234566234567%_)))))
                               (let ((_%__kont234568234569%_
                                      (lambda (_%g232075232127%_
                                               _%g232076232128%_
                                               _%g232077232129%_)
                                        (let ((_%receiver232149%_
                                               (let ((_%$e232146%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g232075232127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e232146%_
                                                     _%$e232146%_
                                                     _%g232077232129%_))))
                                          (for-each
                                           (lambda (_%g232150232152%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver232149%_
                                              _%method-calls231685%_
                                              _%slot-refs231686%_
                                              _%g232150232152%_))
                                           _%g232075232127%_)
                                          (if (_%no-specializer?231689%_)
                                              _%stx231593%_
                                              (let* ((_%specializer-id232161%_
                                                      (let* ((_%id232155%_
                                                              (let ((__tmp235789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231604231666%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235789 '"::specialize")))
                     (_%specializer-id232158%_
                      (let ((__tmp235790
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231593%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232155%_ __tmp235790))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232158%_))
                _%specializer-id232158%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232163%_
                                                      (let ((__tmp235791
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235791)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232165%_
                                                      (let ((__tmp235792
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235792)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232167%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231685%_)))
                                                     (_%$methods232171%_
                                                      (let ((__tmp235793
                                                             (lambda (_%id232169%_)
                                                               (let ((__tmp235794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232169%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235794)))))
                (declare (not safe))
                (##map __tmp235793 _%methods232167%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232180%_
                                                      (let ((__tmp235795
                                                             (lambda (_%g232172232175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232173232177%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231685%_
                          _%g232172232175%_
                          _%g232173232177%_)))))
                (declare (not safe))
                (##for-each __tmp235795 _%methods232167%_ _%$methods232171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232190%_
                                                      (let ((__tmp235796
                                                             (lambda (_%g232182232185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232183232187%_)
                       (_%generate-method-bind231595%_
                        _%$klass232163%_
                        _%$method-table232165%_
                        _%g232182232185%_
                        _%g232183232187%_))))
                (declare (not safe))
                (##map __tmp235796 _%methods232167%_ _%$methods232171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232192%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231686%_)))
                                                     (_%$slots232196%_
                                                      (let ((__tmp235797
                                                             (lambda (_%id232194%_)
                                                               (let ((__tmp235798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232194%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235798)))))
                (declare (not safe))
                (##map __tmp235797 _%slots232192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232205%_
                                                      (let ((__tmp235799
                                                             (lambda (_%g232197232200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232198232202%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231686%_
                          _%g232197232200%_
                          _%g232198232202%_)))))
                (declare (not safe))
                (##for-each __tmp235799 _%slots232192%_ _%$slots232196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232214%_
                                                      (let ((__tmp235800
                                                             (lambda (_%g232206232209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232207232211%_)
                       (_%generate-slot-bind231596%_
                        _%$klass232163%_
                        _%g232206232209%_
                        _%g232207232211%_))))
                (declare (not safe))
                (##map __tmp235800 _%slots232192%_ _%$slots232196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body232220%_
                                                      (map (lambda (_%g232215232217%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver232149%_
                                                              _%$klass232163%_
                                                              _%method-calls231685%_
                                                              _%slot-refs231686%_
                                                              _%g232215232217%_))
                                                           _%g232075232127%_))
                                                     (_%specializer-impl232222%_
                                                      (let ((__tmp235801
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g232077232129%_ _%g232076232128%_)
                                 _%specializer-body232220%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235801 _%stx231593%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl232224%_
                                                      (_%generate-specializer-impl231597%_
                                                       _%$klass232163%_
                                                       _%$method-table232165%_
                                                       _%methods-bind232190%_
                                                       _%slots-bind232214%_
                                                       _%specializer-impl232222%_)))
                                                (let ((__tmp235803
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231604231666%_)))
                                                      (__tmp235802
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232161%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235803
                                                   '" => "
                                                   __tmp235802))
                                                (_%generate-specializer-def231598%_
                                                 _%g231604231666%_
                                                 _%specializer-id232161%_
                                                 _%specializer-impl232224%_))))))
                                     (_%__kont234570234571%_
                                      (lambda () _%stx231593%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx234566234567%_))
                                     (let ((_%e232078232103%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx234566234567%_))))
                                       (let ((_%tl232080232108%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e232078232103%_)))
                                             (_%hd232079232106%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e232078232103%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl232080232108%_))
                                             (let ((_%e232081232111%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl232080232108%_))))
                                               (let ((_%tl232083232116%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e232081232111%_)))
                                                     (_%hd232082232114%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e232081232111%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd232082232114%_))
                                                     (let ((_%e232084232119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd232082232114%_))))
                                                       (let ((_%tl232086232124%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e232084232119%_)))
                     (_%hd232085232122%_
                      (let () (declare (not safe)) (##car _%e232084232119%_))))
                 (_%__kont234568234569%_
                  _%tl232083232116%_
                  _%tl232086232124%_
                  _%hd232085232122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont234570234571%_))))
                                             (_%__kont234570234571%_))))
                                     (_%__kont234570234571%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g231603231665%_))
                                 (let* ((_%g232231232250%_
                                         (lambda (_%g232232232247%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g232232232247%_))))
                                        (_%g232230232546%_
                                         (lambda (_%g232232232253%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g232232232253%_))
                                               (let ((_%e232234232255%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g232232232253%_))))
                                                 (let ((_%hd232235232258%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e232234232255%_)))
                                                       (_%tl232236232260%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e232234232255%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl232236232260%_))
                                                       (let ((_g235804_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl232236232260%_ '0))))
                 (begin
                   (let ((_g235805_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g235804_)
                                (##values-length _g235804_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g235805_ 2)))
                         (error "Context expects 2 values" _g235805_)))
                   (let ((_%target232237232263%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235804_ 0)))
                         (_%tl232239232265%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g235804_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl232239232265%_))
                         (letrec ((_%loop232240232268%_
                                   (lambda (_%hd232238232271%_
                                            _%clause232244232273%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232238232271%_))
                                         (let ((_%e232241232275%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232238232271%_))))
                                           (let ((_%lp-hd232242232278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232241232275%_)))
                                                 (_%lp-tl232243232280%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232241232275%_))))
                                             (_%loop232240232268%_
                                              _%lp-tl232243232280%_
                                              (cons _%lp-hd232242232278%_
                                                    _%clause232244232273%_))))
                                         (let ((_%clause232245232283%_
                                                (reverse _%clause232244232273%_)))
                                           ((lambda (_%g232233232285%_)
                                              (for-each
                                               (lambda (_%clause232299%_)
                                                 (let* ((_%__stx234592234593%_
                                                         _%clause232299%_)
                                                        (_%g232302232317%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx234592234593%_)))))
                                                   (let ((_%__kont234594234595%_
                                                          (lambda (_%g232304232345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g232305232346%_
                           _%g232306232347%_)
                    (let ((_%receiver232366%_
                           (let ((_%$e232363%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g232304232345%_))))
                             (if _%$e232363%_
                                 _%$e232363%_
                                 _%g232306232347%_))))
                      (for-each
                       (lambda (_%g232367232369%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver232366%_
                          _%method-calls231685%_
                          _%slot-refs231686%_
                          _%g232367232369%_))
                       _%g232304232345%_))))
                 (_%__kont234596234597%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx234592234593%_))
                                                         (let ((_%e232307232329%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx234592234593%_))))
                   (let ((_%tl232309232334%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e232307232329%_)))
                         (_%hd232308232332%_
                          (let ()
                            (declare (not safe))
                            (##car _%e232307232329%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd232308232332%_))
                         (let ((_%e232310232337%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd232308232332%_))))
                           (let ((_%tl232312232342%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e232310232337%_)))
                                 (_%hd232311232340%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e232310232337%_))))
                             (_%__kont234594234595%_
                              _%tl232309232334%_
                              _%tl232312232342%_
                              _%hd232311232340%_)))
                         (_%__kont234596234597%_))))
                 (_%__kont234596234597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp235806
                                                      (lambda (_%g232374232377%_
                                                               _%g232375232379%_)
                                                        (cons _%g232374232377%_
                                                              _%g232375232379%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235806
                                                  '()
                                                  _%g232233232285%_)))
                                              (if (_%no-specializer?231689%_)
                                                  _%stx231593%_
                                                  (let* ((_%specializer-id232388%_
                                                          (let* ((_%id232382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235807
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231604231666%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235807 '"::specialize")))
                         (_%specializer-id232385%_
                          (let ((__tmp235808
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231593%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id232382%_
                             __tmp235808))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id232385%_))
                    _%specializer-id232385%_))
                 (_%$klass232390%_
                  (let ((__tmp235809
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235809)))
                 (_%$method-table232392%_
                  (let ((__tmp235810
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235810)))
                 (_%methods232394%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231685%_)))
                 (_%$methods232398%_
                  (let ((__tmp235811
                         (lambda (_%id232396%_)
                           (let ((__tmp235812 (gensym _%id232396%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235812)))))
                    (declare (not safe))
                    (##map __tmp235811 _%methods232394%_)))
                 (_%_232407%_
                  (let ((__tmp235813
                         (lambda (_%g232399232402%_ _%g232400232404%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231685%_
                              _%g232399232402%_
                              _%g232400232404%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235813
                     _%methods232394%_
                     _%$methods232398%_)))
                 (_%methods-bind232417%_
                  (let ((__tmp235814
                         (lambda (_%g232409232412%_ _%g232410232414%_)
                           (_%generate-method-bind231595%_
                            _%$klass232390%_
                            _%$method-table232392%_
                            _%g232409232412%_
                            _%g232410232414%_))))
                    (declare (not safe))
                    (##map __tmp235814 _%methods232394%_ _%$methods232398%_)))
                 (_%slots232419%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231686%_)))
                 (_%$slots232423%_
                  (let ((__tmp235815
                         (lambda (_%id232421%_)
                           (let ((__tmp235816 (gensym _%id232421%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235816)))))
                    (declare (not safe))
                    (##map __tmp235815 _%slots232419%_)))
                 (_%_232432%_
                  (let ((__tmp235817
                         (lambda (_%g232424232427%_ _%g232425232429%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231686%_
                              _%g232424232427%_
                              _%g232425232429%_)))))
                    (declare (not safe))
                    (##for-each __tmp235817 _%slots232419%_ _%$slots232423%_)))
                 (_%slots-bind232441%_
                  (let ((__tmp235818
                         (lambda (_%g232433232436%_ _%g232434232438%_)
                           (_%generate-slot-bind231596%_
                            _%$klass232390%_
                            _%g232433232436%_
                            _%g232434232438%_))))
                    (declare (not safe))
                    (##map __tmp235818 _%slots232419%_ _%$slots232423%_)))
                 (_%specializer-clauses232539%_
                  (map (lambda (_%clause232443%_)
                         (let* ((_%__stx234612234613%_ _%clause232443%_)
                                (_%g232446232461%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx234612234613%_)))))
                           (let ((_%__kont234614234615%_
                                  (lambda (_%g232448232489%_
                                           _%g232449232490%_
                                           _%g232450232491%_)
                                    (let* ((_%receiver232520%_
                                            (let ((_%$e232517%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g232448232489%_))))
                                              (if _%$e232517%_
                                                  _%$e232517%_
                                                  _%g232450232491%_)))
                                           (_%body232526%_
                                            (map (lambda (_%g232521232523%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver232520%_
                                                    _%$klass232390%_
                                                    _%method-calls231685%_
                                                    _%slot-refs231686%_
                                                    _%g232521232523%_))
                                                 _%g232448232489%_)))
                                      (cons (cons _%g232450232491%_
                                                  _%g232449232490%_)
                                            _%body232526%_))))
                                 (_%__kont234616234617%_
                                  (lambda () _%clause232443%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx234612234613%_))
                                 (let ((_%e232451232473%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx234612234613%_))))
                                   (let ((_%tl232453232478%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e232451232473%_)))
                                         (_%hd232452232476%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e232451232473%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd232452232476%_))
                                         (let ((_%e232454232481%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd232452232476%_))))
                                           (let ((_%tl232456232486%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e232454232481%_)))
                                                 (_%hd232455232484%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e232454232481%_))))
                                             (_%__kont234614234615%_
                                              _%tl232453232478%_
                                              _%tl232456232486%_
                                              _%hd232455232484%_)))
                                         (_%__kont234616234617%_))))
                                 (_%__kont234616234617%_)))))
                       (let ((__tmp235819
                              (lambda (_%g232531232534%_ _%g232532232536%_)
                                (cons _%g232531232534%_ _%g232532232536%_))))
                         (declare (not safe))
                         (foldr__0 __tmp235819 '() _%g232233232285%_))))
                 (_%specializer-impl232541%_
                  (let ((__tmp235820
                         (cons '%#case-lambda _%specializer-clauses232539%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235820 _%stx231593%_)))
                 (_%specializer-impl232543%_
                  (_%generate-specializer-impl231597%_
                   _%$klass232390%_
                   _%$method-table232392%_
                   _%methods-bind232417%_
                   _%slots-bind232441%_
                   _%specializer-impl232541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235822
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231604231666%_)))
                                                          (__tmp235821
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id232388%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235822
                                                       '" => "
                                                       __tmp235821))
                                                    (_%generate-specializer-def231598%_
                                                     _%g231604231666%_
                                                     _%specializer-id232388%_
                                                     _%specializer-impl232543%_))))
                                            _%clause232245232283%_))))))
                           (_%loop232240232268%_ _%target232237232263%_ '()))
                         (_%g232231232250%_ _%g232232232253%_)))))
               (_%g232231232250%_ _%g232232232253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g232231232250%_
                                                _%g232232232253%_)))))
                                   (_%g232230232546%_ _%g231603231665%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g231603231665%_))
                                     (let* ((_%g232550232580%_
                                             (lambda (_%g232551232577%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g232551232577%_))))
                                            (_%g232549233207%_
                                             (lambda (_%g232551232583%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g232551232583%_))
                                                   (let ((_%e232555232585%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g232551232583%_))))
                                                     (let ((_%hd232556232588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e232555232585%_)))
                                                           (_%tl232557232590%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e232555232585%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl232557232590%_))
                                                           (let ((_%e232558232593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl232557232590%_))))
                     (let ((_%hd232559232596%_
                            (let ()
                              (declare (not safe))
                              (##car _%e232558232593%_)))
                           (_%tl232560232598%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e232558232593%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd232559232596%_))
                           (let ((_%e232561232601%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd232559232596%_))))
                             (let ((_%hd232562232604%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e232561232601%_)))
                                   (_%tl232563232606%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e232561232601%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd232562232604%_))
                                   (let ((_%e232564232609%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd232562232604%_))))
                                     (let ((_%hd232565232612%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e232564232609%_)))
                                           (_%tl232566232614%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e232564232609%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd232565232612%_))
                                           (let ((_%e232567232617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd232565232612%_))))
                                             (let ((_%hd232568232620%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e232567232617%_)))
                                                   (_%tl232569232622%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e232567232617%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl232569232622%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl232566232614%_))
                                                       (let ((_%e232570232625%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl232566232614%_))))
                 (let ((_%hd232571232628%_
                        (let ()
                          (declare (not safe))
                          (##car _%e232570232625%_)))
                       (_%tl232572232630%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e232570232625%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl232572232630%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl232563232606%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl232560232598%_))
                               (let ((_%e232573232633%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl232560232598%_))))
                                 (let ((_%hd232574232636%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e232573232633%_)))
                                       (_%tl232575232638%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e232573232633%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl232575232638%_))
                                       ((lambda (_%g232552232641%_
                                                 _%g232553232642%_
                                                 _%g232554232643%_)
                                          (let* ((_%g232667232685%_
                                                  (lambda (_%g232668232682%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232668232682%_))))
                                                 (_%g232666232741%_
                                                  (lambda (_%g232668232688%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232668232688%_))
                                                        (let ((_%e232672232690%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232668232688%_))))
                  (let ((_%hd232673232693%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232672232690%_)))
                        (_%tl232674232695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232672232690%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl232674232695%_))
                        (let ((_%e232675232698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl232674232695%_))))
                          (let ((_%hd232676232701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e232675232698%_)))
                                (_%tl232677232703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e232675232698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd232676232701%_))
                                (let ((_%e232678232706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd232676232701%_))))
                                  (let ((_%hd232679232709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232678232706%_)))
                                        (_%tl232680232711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232678232706%_))))
                                    ((lambda (_%g232669232714%_
                                              _%g232670232715%_
                                              _%g232671232716%_)
                                       (let ((_%receiver232735%_
                                              (let ((_%$e232732%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g232669232714%_))))
                                                (if _%$e232732%_
                                                    _%$e232732%_
                                                    _%g232671232716%_))))
                                         (for-each
                                          (lambda (_%g232736232738%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver232735%_
                                             _%method-calls231685%_
                                             _%slot-refs231686%_
                                             _%g232736232738%_))
                                          _%g232669232714%_)))
                                     _%tl232677232703%_
                                     _%tl232680232711%_
                                     _%hd232679232709%_)))
                                (_%g232667232685%_ _%g232668232688%_))))
                        (_%g232667232685%_ _%g232668232688%_))))
                (_%g232667232685%_ _%g232668232688%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232666232741%_
                                             _%g232553232642%_))
                                          (let* ((_%g232744232763%_
                                                  (lambda (_%g232745232760%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g232745232760%_))))
                                                 (_%g232743232885%_
                                                  (lambda (_%g232745232766%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g232745232766%_))
                                                        (let ((_%e232747232768%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g232745232766%_))))
                  (let ((_%hd232748232771%_
                         (let ()
                           (declare (not safe))
                           (##car _%e232747232768%_)))
                        (_%tl232749232773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e232747232768%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl232749232773%_))
                        (let ((_g235823_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl232749232773%_
                                  '0))))
                          (begin
                            (let ((_g235824_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g235823_)
                                         (##values-length _g235823_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g235824_ 2)))
                                  (error "Context expects 2 values"
                                         _g235824_)))
                            (let ((_%target232750232776%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235823_ 0)))
                                  (_%tl232752232778%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g235823_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl232752232778%_))
                                  (letrec ((_%loop232753232781%_
                                            (lambda (_%hd232751232784%_
                                                     _%clause232757232786%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd232751232784%_))
                                                  (let ((_%e232754232788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd232751232784%_))))
                                                    (let ((_%lp-hd232755232791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e232754232788%_)))
                                                          (_%lp-tl232756232793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e232754232788%_))))
                                                      (_%loop232753232781%_
                                                       _%lp-tl232756232793%_
                                                       (cons _%lp-hd232755232791%_
                                                             _%clause232757232786%_))))
                                                  (let ((_%clause232758232796%_
                                                         (reverse _%clause232757232786%_)))
                                                    ((lambda (_%g232746232798%_)
                                                       (for-each
                                                        (lambda (_%clause232811%_)
                                                          (let* ((_%g232813232828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g232814232825%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g232814232825%_))))
                         (_%g232812232875%_
                          (lambda (_%g232814232831%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g232814232831%_))
                                (let ((_%e232818232833%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g232814232831%_))))
                                  (let ((_%hd232819232836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e232818232833%_)))
                                        (_%tl232820232838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e232818232833%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd232819232836%_))
                                        (let ((_%e232821232841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd232819232836%_))))
                                          (let ((_%hd232822232844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e232821232841%_)))
                                                (_%tl232823232846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e232821232841%_))))
                                            ((lambda (_%g232815232849%_
                                                      _%g232816232850%_
                                                      _%g232817232851%_)
                                               (let ((_%receiver232869%_
                                                      (let ((_%$e232866%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g232815232849%_))))
                (if _%$e232866%_ _%$e232866%_ _%g232817232851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g232870232872%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver232869%_
                                                     _%method-calls231685%_
                                                     _%slot-refs231686%_
                                                     _%g232870232872%_))
                                                  _%g232815232849%_)))
                                             _%tl232820232838%_
                                             _%tl232823232846%_
                                             _%hd232822232844%_)))
                                        (_%g232813232828%_
                                         _%g232814232831%_))))
                                (_%g232813232828%_ _%g232814232831%_)))))
                    (_%g232812232875%_ _%clause232811%_)))
                (let ((__tmp235825
                       (lambda (_%g232877232880%_ _%g232878232882%_)
                         (cons _%g232877232880%_ _%g232878232882%_))))
                  (declare (not safe))
                  (foldr__0 __tmp235825 '() _%g232746232798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause232758232796%_))))))
                                    (_%loop232753232781%_
                                     _%target232750232776%_
                                     '()))
                                  (_%g232744232763%_ _%g232745232766%_)))))
                        (_%g232744232763%_ _%g232745232766%_))))
                (_%g232744232763%_ _%g232745232766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g232743232885%_
                                             _%g232552232641%_))
                                          (if (_%no-specializer?231689%_)
                                              _%stx231593%_
                                              (let* ((_%specializer-id232894%_
                                                      (let* ((_%id232888%_
                                                              (let ((__tmp235826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231604231666%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp235826 '"::specialize")))
                     (_%specializer-id232891%_
                      (let ((__tmp235827
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx231593%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id232888%_ __tmp235827))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id232891%_))
                _%specializer-id232891%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass232896%_
                                                      (let ((__tmp235828
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp235828)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table232898%_
                                                      (let ((__tmp235829
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp235829)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods232900%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls231685%_)))
                                                     (_%$methods232904%_
                                                      (let ((__tmp235830
                                                             (lambda (_%id232902%_)
                                                               (let ((__tmp235831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232902%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235831)))))
                (declare (not safe))
                (##map __tmp235830 _%methods232900%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232913%_
                                                      (let ((__tmp235832
                                                             (lambda (_%g232905232908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232906232910%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls231685%_
                          _%g232905232908%_
                          _%g232906232910%_)))))
                (declare (not safe))
                (##for-each __tmp235832 _%methods232900%_ _%$methods232904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind232923%_
                                                      (let ((__tmp235833
                                                             (lambda (_%g232915232918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232916232920%_)
                       (_%generate-method-bind231595%_
                        _%$klass232896%_
                        _%$method-table232898%_
                        _%g232915232918%_
                        _%g232916232920%_))))
                (declare (not safe))
                (##map __tmp235833 _%methods232900%_ _%$methods232904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots232925%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs231686%_)))
                                                     (_%$slots232929%_
                                                      (let ((__tmp235834
                                                             (lambda (_%id232927%_)
                                                               (let ((__tmp235835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id232927%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp235835)))))
                (declare (not safe))
                (##map __tmp235834 _%slots232925%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_232938%_
                                                      (let ((__tmp235836
                                                             (lambda (_%g232930232933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232931232935%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs231686%_
                          _%g232930232933%_
                          _%g232931232935%_)))))
                (declare (not safe))
                (##for-each __tmp235836 _%slots232925%_ _%$slots232929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind232947%_
                                                      (let ((__tmp235837
                                                             (lambda (_%g232939232942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g232940232944%_)
                       (_%generate-slot-bind231596%_
                        _%$klass232896%_
                        _%g232939232942%_
                        _%g232940232944%_))))
                (declare (not safe))
                (##map __tmp235837 _%slots232925%_ _%$slots232929%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr233039%_
                                                      (let* ((_%g232949232967%_
                                                              (lambda (_%g232950232964%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g232950232964%_))))
                     (_%g232948233036%_
                      (lambda (_%g232950232970%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g232950232970%_))
                            (let ((_%e232954232972%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g232950232970%_))))
                              (let ((_%hd232955232975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e232954232972%_)))
                                    (_%tl232956232977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e232954232972%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl232956232977%_))
                                    (let ((_%e232957232980%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl232956232977%_))))
                                      (let ((_%hd232958232983%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e232957232980%_)))
                                            (_%tl232959232985%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e232957232980%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd232958232983%_))
                                            (let ((_%e232960232988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd232958232983%_))))
                                              (let ((_%hd232961232991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e232960232988%_)))
                                                    (_%tl232962232993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e232960232988%_))))
                                                ((lambda (_%g232951232996%_
                                                          _%g232952232997%_
                                                          _%g232953232998%_)
                                                   (let* ((_%receiver233027%_
                                                           (let ((_%$e233024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g232951232996%_))))
                     (if _%$e233024%_ _%$e233024%_ _%g232953232998%_)))
                  (_%body233033%_
                   (map (lambda (_%g233028233030%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver233027%_
                           _%$klass232896%_
                           _%method-calls231685%_
                           _%slot-refs231686%_
                           _%g233028233030%_))
                        _%g232951232996%_))
                  (__tmp235838
                   (cons '%#lambda
                         (cons (cons _%g232953232998%_ _%g232952232997%_)
                               _%body233033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp235838
                                                      _%g232553232642%_)))
                                                 _%tl232959232985%_
                                                 _%tl232962232993%_
                                                 _%hd232961232991%_)))
                                            (_%g232949232967%_
                                             _%g232950232970%_))))
                                    (_%g232949232967%_ _%g232950232970%_))))
                            (_%g232949232967%_ _%g232950232970%_)))))
                (_%g232948233036%_ _%g232553232642%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr233200%_
                                                      (let* ((_%g233041233060%_
                                                              (lambda (_%g233042233057%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233042233057%_))))
                     (_%g233040233197%_
                      (lambda (_%g233042233063%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233042233063%_))
                            (let ((_%e233044233065%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233042233063%_))))
                              (let ((_%hd233045233068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233044233065%_)))
                                    (_%tl233046233070%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233044233065%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl233046233070%_))
                                    (let ((_g235839_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl233046233070%_
                                              '0))))
                                      (begin
                                        (let ((_g235840_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g235839_)
                                                     (##values-length
                                                      _g235839_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g235840_ 2)))
                                              (error "Context expects 2 values"
                                                     _g235840_)))
                                        (let ((_%target233047233073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235839_ 0)))
                                              (_%tl233049233075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g235839_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233049233075%_))
                                              (letrec ((_%loop233050233078%_
                                                        (lambda (_%hd233048233081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause233054233083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233048233081%_))
                      (let ((_%e233051233085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233048233081%_))))
                        (let ((_%lp-hd233052233088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233051233085%_)))
                              (_%lp-tl233053233090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233051233085%_))))
                          (_%loop233050233078%_
                           _%lp-tl233053233090%_
                           (cons _%lp-hd233052233088%_
                                 _%clause233054233083%_))))
                      (let ((_%clause233055233093%_
                             (reverse _%clause233054233083%_)))
                        ((lambda (_%g233043233095%_)
                           (let* ((_%clauses233195%_
                                   (map (lambda (_%clause233109%_)
                                          (let* ((_%__stx234632234633%_
                                                  _%clause233109%_)
                                                 (_%g233112233127%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx234632234633%_)))))
                                            (let ((_%__kont234634234635%_
                                                   (lambda (_%g233114233155%_
                                                            _%g233115233156%_
                                                            _%g233116233157%_)
                                                     (let* ((_%receiver233176%_
                                                             (let ((_%$e233173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g233114233155%_))))
                       (if _%$e233173%_ _%$e233173%_ _%g233116233157%_)))
                    (_%body233182%_
                     (map (lambda (_%g233177233179%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver233176%_
                             _%$klass232896%_
                             _%method-calls231685%_
                             _%slot-refs231686%_
                             _%g233177233179%_))
                          _%g233114233155%_)))
               (cons (cons _%g233116233157%_ _%g233115233156%_)
                     _%body233182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234636234637%_
                                                   (lambda ()
                                                     _%clause233109%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx234632234633%_))
                                                  (let ((_%e233117233139%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx234632234633%_))))
                                                    (let ((_%tl233119233144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e233117233139%_)))
                                                          (_%hd233118233142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e233117233139%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd233118233142%_))
                                                          (let ((_%e233120233147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd233118233142%_))))
                    (let ((_%tl233122233152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e233120233147%_)))
                          (_%hd233121233150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e233120233147%_))))
                      (_%__kont234634234635%_
                       _%tl233119233144%_
                       _%tl233122233152%_
                       _%hd233121233150%_)))
                  (_%__kont234636234637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234636234637%_)))))
                                        (let ((__tmp235841
                                               (lambda (_%g233187233190%_
                                                        _%g233188233192%_)
                                                 (cons _%g233187233190%_
                                                       _%g233188233192%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp235841
                                           '()
                                           _%g233043233095%_))))
                                  (__tmp235842
                                   (cons '%#case-lambda _%clauses233195%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235842
                              _%g232552232641%_)))
                         _%clause233055233093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233050233078%_
                                                 _%target233047233073%_
                                                 '()))
                                              (_%g233041233060%_
                                               _%g233042233063%_)))))
                                    (_%g233041233060%_ _%g233042233063%_))))
                            (_%g233041233060%_ _%g233042233063%_)))))
                (_%g233040233197%_ _%g232552232641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233202%_
                                                      (let ((__tmp235843
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g232554232643%_ '())
                                             (cons _%specializer-lambda-expr233039%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr233200%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp235843 _%stx231593%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl233204%_
                                                      (_%generate-specializer-impl231597%_
                                                       _%$klass232896%_
                                                       _%$method-table232898%_
                                                       _%methods-bind232923%_
                                                       _%slots-bind232947%_
                                                       _%specializer-impl233202%_)))
                                                (let ((__tmp235845
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231604231666%_)))
                                                      (__tmp235844
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id232894%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp235845
                                                   '" => "
                                                   __tmp235844))
                                                (_%generate-specializer-def231598%_
                                                 _%g231604231666%_
                                                 _%specializer-id232894%_
                                                 _%specializer-impl233204%_))))
                                        _%hd232574232636%_
                                        _%hd232571232628%_
                                        _%hd232568232620%_)
                                       (_%g232550232580%_ _%g232551232583%_))))
                               (_%g232550232580%_ _%g232551232583%_))
                           (_%g232550232580%_ _%g232551232583%_))
                       (_%g232550232580%_ _%g232551232583%_))))
               (_%g232550232580%_ _%g232551232583%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232550232580%_
                                                    _%g232551232583%_))))
                                           (_%g232550232580%_
                                            _%g232551232583%_))))
                                   (_%g232550232580%_ _%g232551232583%_))))
                           (_%g232550232580%_ _%g232551232583%_))))
                   (_%g232550232580%_ _%g232551232583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g232550232580%_
                                                    _%g232551232583%_)))))
                                       (_%g232549233207%_ _%g231603231665%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g231603231665%_))
                                         (let* ((_%g233211233264%_
                                                 (lambda (_%g233212233261%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233212233261%_))))
                                                (_%g233210234429%_
                                                 (lambda (_%g233212233267%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233212233267%_))
                                                       (let ((_%e233218233269%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233212233267%_))))
                 (let ((_%hd233219233272%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233218233269%_)))
                       (_%tl233220233274%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233218233269%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd233219233272%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd233219233272%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl233220233274%_))
                               (let ((_%e233221233277%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl233220233274%_))))
                                 (let ((_%hd233222233280%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233221233277%_)))
                                       (_%tl233223233282%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233221233277%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233222233280%_))
                                       (let ((_%e233224233285%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233222233280%_))))
                                         (let ((_%hd233225233288%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233224233285%_)))
                                               (_%tl233226233290%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233224233285%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233225233288%_))
                                               (let ((_%e233227233293%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233225233288%_))))
                                                 (let ((_%hd233228233296%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233227233293%_)))
                                                       (_%tl233229233298%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233227233293%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd233228233296%_))
                                                       (let ((_%e233230233301%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd233228233296%_))))
                 (let ((_%hd233231233304%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233230233301%_)))
                       (_%tl233232233306%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233230233301%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl233232233306%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl233229233298%_))
                           (let ((_%e233233233309%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl233229233298%_))))
                             (let ((_%hd233234233312%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233233233309%_)))
                                   (_%tl233235233314%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233233233309%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233234233312%_))
                                   (let ((_%e233236233317%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233234233312%_))))
                                     (let ((_%hd233237233320%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233236233317%_)))
                                           (_%tl233238233322%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233236233317%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd233237233320%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd233237233320%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl233238233322%_))
                                                   (let ((_%e233239233325%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl233238233322%_))))
                                                     (let ((_%hd233240233328%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233239233325%_)))
                                                           (_%tl233241233330%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233239233325%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd233240233328%_))
                                                           (let ((_%e233242233333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd233240233328%_))))
                     (let ((_%hd233243233336%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233242233333%_)))
                           (_%tl233244233338%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233242233333%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd233243233336%_))
                           (let ((_%e233245233341%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd233243233336%_))))
                             (let ((_%hd233246233344%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e233245233341%_)))
                                   (_%tl233247233346%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e233245233341%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd233246233344%_))
                                   (let ((_%e233248233349%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd233246233344%_))))
                                     (let ((_%hd233249233352%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233248233349%_)))
                                           (_%tl233250233354%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233248233349%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233250233354%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl233247233346%_))
                                               (let ((_%e233251233357%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl233247233346%_))))
                                                 (let ((_%hd233252233360%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233251233357%_)))
                                                       (_%tl233253233362%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233251233357%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233253233362%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl233244233338%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl233241233330%_))
                       (let ((_%e233254233365%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233241233330%_))))
                         (let ((_%hd233255233368%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233254233365%_)))
                               (_%tl233256233370%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233254233365%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233256233370%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl233235233314%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl233226233290%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl233223233282%_))
                                           (let ((_%e233257233373%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl233223233282%_))))
                                             (let ((_%hd233258233376%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e233257233373%_)))
                                                   (_%tl233259233378%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e233257233373%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl233259233378%_))
                                                   ((lambda (_%g233213233381%_
                                                             _%g233214233382%_
                                                             _%g233215233383%_
                                                             _%g233216233384%_
                                                             _%g233217233385%_)
                                                      (let* ((_%g233425233487%_
                                                              (lambda (_%g233426233484%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g233426233484%_))))
                     (_%g233424234426%_
                      (lambda (_%g233426233490%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g233426233490%_))
                            (let ((_%e233432233492%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g233426233490%_))))
                              (let ((_%hd233433233495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233432233492%_)))
                                    (_%tl233434233497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233432233492%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd233433233495%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd233433233495%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl233434233497%_))
                                            (let ((_%e233435233500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl233434233497%_))))
                                              (let ((_%hd233436233503%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233435233500%_)))
                                                    (_%tl233437233505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233435233500%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233437233505%_))
                                                    (let ((_%e233438233508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233437233505%_))))
                                                      (let ((_%hd233439233511%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233438233508%_)))
                    (_%tl233440233513%_
                     (let () (declare (not safe)) (##cdr _%e233438233508%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd233439233511%_))
                    (let ((_%e233441233516%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd233439233511%_))))
                      (let ((_%hd233442233519%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233441233516%_)))
                            (_%tl233443233521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233441233516%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd233442233519%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd233442233519%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl233443233521%_))
                                    (let ((_%e233444233524%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl233443233521%_))))
                                      (let ((_%hd233445233527%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233444233524%_)))
                                            (_%tl233446233529%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233444233524%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd233445233527%_))
                                            (let ((_%e233447233532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd233445233527%_))))
                                              (let ((_%hd233448233535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e233447233532%_)))
                                                    (_%tl233449233537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e233447233532%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd233448233535%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd233448233535%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl233449233537%_))
                                                            (let ((_%e233450233540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl233449233537%_))))
                      (let ((_%hd233451233543%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233450233540%_)))
                            (_%tl233452233545%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233450233540%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233452233545%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl233446233529%_))
                                (let ((_%e233453233548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl233446233529%_))))
                                  (let ((_%hd233454233551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e233453233548%_)))
                                        (_%tl233455233553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e233453233548%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd233454233551%_))
                                        (let ((_%e233456233556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd233454233551%_))))
                                          (let ((_%hd233457233559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e233456233556%_)))
                                                (_%tl233458233561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e233456233556%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd233457233559%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd233457233559%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl233458233561%_))
                                                        (let ((_%e233459233564%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl233458233561%_))))
                  (let ((_%hd233460233567%_
                         (let ()
                           (declare (not safe))
                           (##car _%e233459233564%_)))
                        (_%tl233461233569%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e233459233564%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl233461233569%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233455233553%_))
                            (let ((_%e233462233572%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233455233553%_))))
                              (let ((_%hd233463233575%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233462233572%_)))
                                    (_%tl233464233577%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233462233572%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd233463233575%_))
                                    (let ((_%e233465233580%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd233463233575%_))))
                                      (let ((_%hd233466233583%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e233465233580%_)))
                                            (_%tl233467233585%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e233465233580%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd233466233583%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd233466233583%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl233467233585%_))
                                                    (let ((_%e233468233588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl233467233585%_))))
                                                      (let ((_%hd233469233591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e233468233588%_)))
                    (_%tl233470233593%_
                     (let () (declare (not safe)) (##cdr _%e233468233588%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl233470233593%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl233464233577%_))
                        (if (let ((__tmp235846
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl233464233577%_))))
                              (declare (not safe))
                              (##fx>= __tmp235846 '1))
                            (let ((_g235847_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl233464233577%_
                                      '1))))
                              (begin
                                (let ((_g235848_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235847_)
                                             (##values-length _g235847_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235848_ 2)))
                                      (error "Context expects 2 values"
                                             _g235848_)))
                                (let ((_%target233471233596%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235847_ 0)))
                                      (_%tl233473233598%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235847_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl233473233598%_))
                                      (let ((_%e233480233601%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl233473233598%_))))
                                        (let ((_%hd233481233604%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e233480233601%_)))
                                              (_%tl233482233606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e233480233601%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl233482233606%_))
                                              (letrec ((_%loop233474233609%_
                                                        (lambda (_%hd233472233612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref233478233614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd233472233612%_))
                      (let ((_%e233475233616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd233472233612%_))))
                        (let ((_%lp-hd233476233619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e233475233616%_)))
                              (_%lp-tl233477233621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e233475233616%_))))
                          (_%loop233474233609%_
                           _%lp-tl233477233621%_
                           (cons _%lp-hd233476233619%_
                                 _%kw-ref233478233614%_))))
                      (let ((_%kw-ref233479233624%_
                             (reverse _%kw-ref233478233614%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl233440233513%_))
                            ((lambda (_%g233427233626%_
                                      _%g233428233627%_
                                      _%g233429233628%_
                                      _%g233430233629%_
                                      _%g233431233630%_)
                               (let* ((_%kw-count233681%_
                                       (length (let ((__tmp235849
                                                      (lambda (_%g233673233676%_
                                                               _%g233674233678%_)
                                                        (cons _%g233673233676%_
                                                              _%g233674233678%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp235849
                                                  '()
                                                  _%g233428233627%_))))
                                      (_%self-index233683%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count233681%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g233215233383%_))
                                     (let* ((_%g233687233701%_
                                             (lambda (_%g233688233698%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g233688233698%_))))
                                            (_%g233686233824%_
                                             (lambda (_%g233688233704%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g233688233704%_))
                                                   (let ((_%e233691233706%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g233688233704%_))))
                                                     (let ((_%hd233692233709%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e233691233706%_)))
                                                           (_%tl233693233711%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e233691233706%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233693233711%_))
                                                           (let ((_%e233694233714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233693233711%_))))
                     (let ((_%hd233695233717%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233694233714%_)))
                           (_%tl233696233719%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233694233714%_))))
                       ((lambda (_%g233689233722%_ _%g233690233723%_)
                          (let* ((_%self233740%_
                                  (list-ref
                                   _%g233690233723%_
                                   _%self-index233683%_))
                                 (_%receiver233745%_
                                  (let ((_%$e233742%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g233689233722%_))))
                                    (if _%$e233742%_
                                        _%$e233742%_
                                        _%self233740%_))))
                            (for-each
                             (lambda (_%g233747233749%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver233745%_
                                _%method-calls231685%_
                                _%slot-refs231686%_
                                _%g233747233749%_))
                             _%g233689233722%_)
                            (if (_%no-specializer?231689%_)
                                _%stx231593%_
                                (let* ((_%specializer-id233758%_
                                        (let* ((_%id233752%_
                                                (let ((__tmp235850
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g231604231666%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp235850
                                                   '"::specialize")))
                                               (_%specializer-id233755%_
                                                (let ((__tmp235851
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx231593%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id233752%_
                                                   __tmp235851))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id233755%_))
                                          _%specializer-id233755%_))
                                       (_%$klass233760%_
                                        (let ((__tmp235852
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235852)))
                                       (_%$method-table233762%_
                                        (let ((__tmp235853
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp235853)))
                                       (_%methods233764%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls231685%_)))
                                       (_%$methods233768%_
                                        (let ((__tmp235854
                                               (lambda (_%id233766%_)
                                                 (let ((__tmp235855
                                                        (gensym _%id233766%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235855)))))
                                          (declare (not safe))
                                          (##map __tmp235854
                                                 _%methods233764%_)))
                                       (_%_233777%_
                                        (let ((__tmp235856
                                               (lambda (_%g233769233772%_
                                                        _%g233770233774%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls231685%_
                                                    _%g233769233772%_
                                                    _%g233770233774%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235856
                                           _%methods233764%_
                                           _%$methods233768%_)))
                                       (_%methods-bind233787%_
                                        (let ((__tmp235857
                                               (lambda (_%g233779233782%_
                                                        _%g233780233784%_)
                                                 (_%generate-method-bind231595%_
                                                  _%$klass233760%_
                                                  _%$method-table233762%_
                                                  _%g233779233782%_
                                                  _%g233780233784%_))))
                                          (declare (not safe))
                                          (##map __tmp235857
                                                 _%methods233764%_
                                                 _%$methods233768%_)))
                                       (_%slots233789%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs231686%_)))
                                       (_%$slots233793%_
                                        (let ((__tmp235858
                                               (lambda (_%id233791%_)
                                                 (let ((__tmp235859
                                                        (gensym _%id233791%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp235859)))))
                                          (declare (not safe))
                                          (##map __tmp235858 _%slots233789%_)))
                                       (_%_233802%_
                                        (let ((__tmp235860
                                               (lambda (_%g233794233797%_
                                                        _%g233795233799%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs231686%_
                                                    _%g233794233797%_
                                                    _%g233795233799%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp235860
                                           _%slots233789%_
                                           _%$slots233793%_)))
                                       (_%slots-bind233811%_
                                        (let ((__tmp235861
                                               (lambda (_%g233803233806%_
                                                        _%g233804233808%_)
                                                 (_%generate-slot-bind231596%_
                                                  _%$klass233760%_
                                                  _%g233803233806%_
                                                  _%g233804233808%_))))
                                          (declare (not safe))
                                          (##map __tmp235861
                                                 _%slots233789%_
                                                 _%$slots233793%_)))
                                       (_%specializer-impl233819%_
                                        (let* ((_%specializer-body233817%_
                                                (map (lambda (_%g233812233814%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver233745%_
                                                        _%$klass233760%_
                                                        _%method-calls231685%_
                                                        _%slot-refs231686%_
                                                        _%g233812233814%_))
                                                     _%g233689233722%_))
                                               (__tmp235862
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g233217233385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g233216233384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp235863
                                   (cons '%#lambda
                                         (cons _%g233690233723%_
                                               _%specializer-body233817%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp235863
                               _%g233215233383%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g233214233382%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g233213233381%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp235862
                                           _%stx231593%_)))
                                       (_%specializer-impl233821%_
                                        (_%generate-specializer-impl231597%_
                                         _%$klass233760%_
                                         _%$method-table233762%_
                                         _%methods-bind233787%_
                                         _%slots-bind233811%_
                                         _%specializer-impl233819%_)))
                                  (let ((__tmp235865
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g231604231666%_)))
                                        (__tmp235864
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id233758%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp235865
                                     '" => "
                                     __tmp235864))
                                  (_%generate-specializer-def231598%_
                                   _%g231604231666%_
                                   _%specializer-id233758%_
                                   _%specializer-impl233821%_)))))
                        _%tl233696233719%_
                        _%hd233695233717%_)))
                   (_%g233687233701%_ _%g233688233704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233687233701%_
                                                    _%g233688233704%_)))))
                                       (_%g233686233824%_ _%g233215233383%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g233215233383%_))
                                         (let* ((_%g233828233858%_
                                                 (lambda (_%g233829233855%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g233829233855%_))))
                                                (_%g233827234422%_
                                                 (lambda (_%g233829233861%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g233829233861%_))
                                                       (let ((_%e233833233863%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g233829233861%_))))
                 (let ((_%hd233834233866%_
                        (let ()
                          (declare (not safe))
                          (##car _%e233833233863%_)))
                       (_%tl233835233868%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e233833233863%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl233835233868%_))
                       (let ((_%e233836233871%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl233835233868%_))))
                         (let ((_%hd233837233874%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e233836233871%_)))
                               (_%tl233838233876%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e233836233871%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd233837233874%_))
                               (let ((_%e233839233879%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd233837233874%_))))
                                 (let ((_%hd233840233882%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e233839233879%_)))
                                       (_%tl233841233884%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e233839233879%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd233840233882%_))
                                       (let ((_%e233842233887%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd233840233882%_))))
                                         (let ((_%hd233843233890%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e233842233887%_)))
                                               (_%tl233844233892%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e233842233887%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd233843233890%_))
                                               (let ((_%e233845233895%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd233843233890%_))))
                                                 (let ((_%hd233846233898%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e233845233895%_)))
                                                       (_%tl233847233900%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e233845233895%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl233847233900%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl233844233892%_))
                                                           (let ((_%e233848233903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl233844233892%_))))
                     (let ((_%hd233849233906%_
                            (let ()
                              (declare (not safe))
                              (##car _%e233848233903%_)))
                           (_%tl233850233908%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e233848233903%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl233850233908%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl233841233884%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl233838233876%_))
                                   (let ((_%e233851233911%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl233838233876%_))))
                                     (let ((_%hd233852233914%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e233851233911%_)))
                                           (_%tl233853233916%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e233851233911%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl233853233916%_))
                                           ((lambda (_%g233830233919%_
                                                     _%g233831233920%_
                                                     _%g233832233921%_)
                                              (let* ((_%g233945233959%_
                                                      (lambda (_%g233946233956%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g233946233956%_))))
                                                     (_%g233944234006%_
                                                      (lambda (_%g233946233962%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g233946233962%_))
                                                            (let ((_%e233949233964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g233946233962%_))))
                      (let ((_%hd233950233967%_
                             (let ()
                               (declare (not safe))
                               (##car _%e233949233964%_)))
                            (_%tl233951233969%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e233949233964%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl233951233969%_))
                            (let ((_%e233952233972%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl233951233969%_))))
                              (let ((_%hd233953233975%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e233952233972%_)))
                                    (_%tl233954233977%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e233952233972%_))))
                                ((lambda (_%g233947233980%_ _%g233948233981%_)
                                   (let* ((_%self233994%_
                                           (list-ref
                                            _%g233948233981%_
                                            _%self-index233683%_))
                                          (_%receiver233999%_
                                           (let ((_%$e233996%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g233947233980%_))))
                                             (if _%$e233996%_
                                                 _%$e233996%_
                                                 _%self233994%_))))
                                     (for-each
                                      (lambda (_%g234001234003%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver233999%_
                                         _%method-calls231685%_
                                         _%slot-refs231686%_
                                         _%g234001234003%_))
                                      _%g233947233980%_)))
                                 _%tl233954233977%_
                                 _%hd233953233975%_)))
                            (_%g233945233959%_ _%g233946233962%_))))
                    (_%g233945233959%_ _%g233946233962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g233944234006%_
                                                 _%g233831233920%_))
                                              (let* ((_%g234009234028%_
                                                      (lambda (_%g234010234025%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234010234025%_))))
                                                     (_%g234008234137%_
                                                      (lambda (_%g234010234031%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234010234031%_))
                                                            (let ((_%e234012234033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234010234031%_))))
                      (let ((_%hd234013234036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234012234033%_)))
                            (_%tl234014234038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234012234033%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl234014234038%_))
                            (let ((_g235866_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl234014234038%_
                                      '0))))
                              (begin
                                (let ((_g235867_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g235866_)
                                             (##values-length _g235866_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g235867_ 2)))
                                      (error "Context expects 2 values"
                                             _g235867_)))
                                (let ((_%target234015234041%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235866_ 0)))
                                      (_%tl234017234043%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g235866_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl234017234043%_))
                                      (letrec ((_%loop234018234046%_
                                                (lambda (_%hd234016234049%_
                                                         _%clause234022234051%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd234016234049%_))
                                                      (let ((_%e234019234053%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd234016234049%_))))
                (let ((_%lp-hd234020234056%_
                       (let () (declare (not safe)) (##car _%e234019234053%_)))
                      (_%lp-tl234021234058%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e234019234053%_))))
                  (_%loop234018234046%_
                   _%lp-tl234021234058%_
                   (cons _%lp-hd234020234056%_ _%clause234022234051%_))))
              (let ((_%clause234023234061%_ (reverse _%clause234022234051%_)))
                ((lambda (_%g234011234063%_)
                   (for-each
                    (lambda (_%clause234076%_)
                      (let* ((_%g234078234089%_
                              (lambda (_%g234079234086%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g234079234086%_))))
                             (_%g234077234127%_
                              (lambda (_%g234079234092%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g234079234092%_))
                                    (let ((_%e234082234094%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g234079234092%_))))
                                      (let ((_%hd234083234097%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e234082234094%_)))
                                            (_%tl234084234099%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e234082234094%_))))
                                        ((lambda (_%g234080234102%_
                                                  _%g234081234103%_)
                                           (let* ((_%self234115%_
                                                   (list-ref
                                                    _%g234081234103%_
                                                    _%self-index233683%_))
                                                  (_%receiver234120%_
                                                   (let ((_%$e234117%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g234080234102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e234117%_
                                                         _%$e234117%_
                                                         _%self234115%_))))
                                             (for-each
                                              (lambda (_%g234122234124%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver234120%_
                                                 _%method-calls231685%_
                                                 _%slot-refs231686%_
                                                 _%g234122234124%_))
                                              _%g234080234102%_)))
                                         _%tl234084234099%_
                                         _%hd234083234097%_)))
                                    (_%g234078234089%_ _%g234079234092%_)))))
                        (_%g234077234127%_ _%clause234076%_)))
                    (let ((__tmp235868
                           (lambda (_%g234129234132%_ _%g234130234134%_)
                             (cons _%g234129234132%_ _%g234130234134%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235868 '() _%g234011234063%_))))
                 _%clause234023234061%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop234018234046%_
                                         _%target234015234041%_
                                         '()))
                                      (_%g234009234028%_ _%g234010234031%_)))))
                            (_%g234009234028%_ _%g234010234031%_))))
                    (_%g234009234028%_ _%g234010234031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234008234137%_
                                                 _%g233830233919%_))
                                              (if (_%no-specializer?231689%_)
                                                  _%stx231593%_
                                                  (let* ((_%specializer-id234146%_
                                                          (let* ((_%id234140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp235869
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g231604231666%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp235869 '"::specialize")))
                         (_%specializer-id234143%_
                          (let ((__tmp235870
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx231593%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id234140%_
                             __tmp235870))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id234143%_))
                    _%specializer-id234143%_))
                 (_%$klass234148%_
                  (let ((__tmp235871
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235871)))
                 (_%$method-table234150%_
                  (let ((__tmp235872
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp235872)))
                 (_%methods234152%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls231685%_)))
                 (_%$methods234156%_
                  (let ((__tmp235873
                         (lambda (_%id234154%_)
                           (let ((__tmp235874 (gensym _%id234154%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235874)))))
                    (declare (not safe))
                    (##map __tmp235873 _%methods234152%_)))
                 (_%_234165%_
                  (let ((__tmp235875
                         (lambda (_%g234157234160%_ _%g234158234162%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls231685%_
                              _%g234157234160%_
                              _%g234158234162%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp235875
                     _%methods234152%_
                     _%$methods234156%_)))
                 (_%methods-bind234175%_
                  (let ((__tmp235876
                         (lambda (_%g234167234170%_ _%g234168234172%_)
                           (_%generate-method-bind231595%_
                            _%$klass234148%_
                            _%$method-table234150%_
                            _%g234167234170%_
                            _%g234168234172%_))))
                    (declare (not safe))
                    (##map __tmp235876 _%methods234152%_ _%$methods234156%_)))
                 (_%slots234177%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs231686%_)))
                 (_%$slots234181%_
                  (let ((__tmp235877
                         (lambda (_%id234179%_)
                           (let ((__tmp235878 (gensym _%id234179%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp235878)))))
                    (declare (not safe))
                    (##map __tmp235877 _%slots234177%_)))
                 (_%_234190%_
                  (let ((__tmp235879
                         (lambda (_%g234182234185%_ _%g234183234187%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs231686%_
                              _%g234182234185%_
                              _%g234183234187%_)))))
                    (declare (not safe))
                    (##for-each __tmp235879 _%slots234177%_ _%$slots234181%_)))
                 (_%slots-bind234199%_
                  (let ((__tmp235880
                         (lambda (_%g234191234194%_ _%g234192234196%_)
                           (_%generate-slot-bind231596%_
                            _%$klass234148%_
                            _%g234191234194%_
                            _%g234192234196%_))))
                    (declare (not safe))
                    (##map __tmp235880 _%slots234177%_ _%$slots234181%_)))
                 (_%specializer-lambda-expr234277%_
                  (let* ((_%g234201234215%_
                          (lambda (_%g234202234212%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234202234212%_))))
                         (_%g234200234274%_
                          (lambda (_%g234202234218%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234202234218%_))
                                (let ((_%e234205234220%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234202234218%_))))
                                  (let ((_%hd234206234223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234205234220%_)))
                                        (_%tl234207234225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234205234220%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl234207234225%_))
                                        (let ((_%e234208234228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl234207234225%_))))
                                          (let ((_%hd234209234231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e234208234228%_)))
                                                (_%tl234210234233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e234208234228%_))))
                                            ((lambda (_%g234203234236%_
                                                      _%g234204234237%_)
                                               (let* ((_%self234260%_
                                                       (list-ref
                                                        _%g234204234237%_
                                                        _%self-index233683%_))
                                                      (_%receiver234265%_
                                                       (let ((_%$e234262%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g234203234236%_))))
                 (if _%$e234262%_ _%$e234262%_ _%self234260%_)))
              (_%body234271%_
               (map (lambda (_%g234266234268%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver234265%_
                       _%$klass234148%_
                       _%method-calls231685%_
                       _%slot-refs231686%_
                       _%g234266234268%_))
                    _%g234203234236%_))
              (__tmp235881
               (cons '%#lambda (cons _%g234204234237%_ _%body234271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp235881
                                                  _%g233831233920%_)))
                                             _%tl234210234233%_
                                             _%hd234209234231%_)))
                                        (_%g234201234215%_
                                         _%g234202234218%_))))
                                (_%g234201234215%_ _%g234202234218%_)))))
                    (_%g234200234274%_ _%g233831233920%_)))
                 (_%specializer-case-lambda-expr234415%_
                  (let* ((_%g234279234298%_
                          (lambda (_%g234280234295%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g234280234295%_))))
                         (_%g234278234412%_
                          (lambda (_%g234280234301%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g234280234301%_))
                                (let ((_%e234282234303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g234280234301%_))))
                                  (let ((_%hd234283234306%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e234282234303%_)))
                                        (_%tl234284234308%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e234282234303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl234284234308%_))
                                        (let ((_g235882_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl234284234308%_
                                                  '0))))
                                          (begin
                                            (let ((_g235883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g235882_)
                                                         (##values-length
                                                          _g235882_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g235883_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g235883_)))
                                            (let ((_%target234285234311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235882_
                                                      0)))
                                                  (_%tl234287234313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g235882_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl234287234313%_))
                                                  (letrec ((_%loop234288234316%_
                                                            (lambda (_%hd234286234319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause234292234321%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd234286234319%_))
                          (let ((_%e234289234323%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd234286234319%_))))
                            (let ((_%lp-hd234290234326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e234289234323%_)))
                                  (_%lp-tl234291234328%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e234289234323%_))))
                              (_%loop234288234316%_
                               _%lp-tl234291234328%_
                               (cons _%lp-hd234290234326%_
                                     _%clause234292234321%_))))
                          (let ((_%clause234293234331%_
                                 (reverse _%clause234292234321%_)))
                            ((lambda (_%g234281234333%_)
                               (let* ((_%clauses234410%_
                                       (map (lambda (_%clause234347%_)
                                              (let* ((_%g234349234360%_
                                                      (lambda (_%g234350234357%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g234350234357%_))))
                                                     (_%g234348234400%_
                                                      (lambda (_%g234350234363%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g234350234363%_))
                                                            (let ((_%e234353234365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g234350234363%_))))
                      (let ((_%hd234354234368%_
                             (let ()
                               (declare (not safe))
                               (##car _%e234353234365%_)))
                            (_%tl234355234370%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e234353234365%_))))
                        ((lambda (_%g234351234373%_ _%g234352234374%_)
                           (let* ((_%self234386%_
                                   (list-ref
                                    _%g234352234374%_
                                    _%self-index233683%_))
                                  (_%receiver234391%_
                                   (let ((_%$e234388%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g234351234373%_))))
                                     (if _%$e234388%_
                                         _%$e234388%_
                                         _%self234386%_)))
                                  (_%body234397%_
                                   (map (lambda (_%g234392234394%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver234391%_
                                           _%$klass234148%_
                                           _%method-calls231685%_
                                           _%slot-refs231686%_
                                           _%g234392234394%_))
                                        _%g234351234373%_)))
                             (cons _%g234352234374%_ _%body234397%_)))
                         _%tl234355234370%_
                         _%hd234354234368%_)))
                    (_%g234349234360%_ _%g234350234363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g234348234400%_
                                                 _%clause234347%_)))
                                            (let ((__tmp235884
                                                   (lambda (_%g234402234405%_
                                                            _%g234403234407%_)
                                                     (cons _%g234402234405%_
                                                           _%g234403234407%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp235884
                                               '()
                                               _%g234281234333%_))))
                                      (__tmp235885
                                       (cons '%#case-lambda
                                             _%clauses234410%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp235885
                                  _%g233830233919%_)))
                             _%clause234293234331%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop234288234316%_
                                                     _%target234285234311%_
                                                     '()))
                                                  (_%g234279234298%_
                                                   _%g234280234301%_)))))
                                        (_%g234279234298%_
                                         _%g234280234301%_))))
                                (_%g234279234298%_ _%g234280234301%_)))))
                    (_%g234278234412%_ _%g233830233919%_)))
                 (_%specializer-impl234417%_
                  (let ((__tmp235886
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g233217233385%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g233216233384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp235887
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g233832233921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr234277%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr234415%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp235887
                                                _%stx231593%_))
                                             '()))
                                 '())
                           (cons _%g233214233382%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g233213233381%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp235886 _%stx231593%_)))
                 (_%specializer-impl234419%_
                  (_%generate-specializer-impl231597%_
                   _%$klass234148%_
                   _%$method-table234150%_
                   _%methods-bind234175%_
                   _%slots-bind234199%_
                   _%specializer-impl234417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp235889
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g231604231666%_)))
                                                          (__tmp235888
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id234146%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp235889
                                                       '" => "
                                                       __tmp235888))
                                                    (_%generate-specializer-def231598%_
                                                     _%g231604231666%_
                                                     _%specializer-id234146%_
                                                     _%specializer-impl234419%_))))
                                            _%hd233852233914%_
                                            _%hd233849233906%_
                                            _%hd233846233898%_)
                                           (_%g233828233858%_
                                            _%g233829233861%_))))
                                   (_%g233828233858%_ _%g233829233861%_))
                               (_%g233828233858%_ _%g233829233861%_))
                           (_%g233828233858%_ _%g233829233861%_))))
                   (_%g233828233858%_ _%g233829233861%_))
               (_%g233828233858%_ _%g233829233861%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233828233858%_
                                                _%g233829233861%_))))
                                       (_%g233828233858%_ _%g233829233861%_))))
                               (_%g233828233858%_ _%g233829233861%_))))
                       (_%g233828233858%_ _%g233829233861%_))))
               (_%g233828233858%_ _%g233829233861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233827234422%_
                                            _%g233215233383%_))
                                         _%stx231593%_))))
                             _%hd233481233604%_
                             _%kw-ref233479233624%_
                             _%hd233469233591%_
                             _%hd233460233567%_
                             _%hd233451233543%_)
                            (_%g233425233487%_ _%g233426233490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop233474233609%_
                                                 _%target233471233596%_
                                                 '()))
                                              (_%g233425233487%_
                                               _%g233426233490%_))))
                                      (_%g233425233487%_ _%g233426233490%_)))))
                            (_%g233425233487%_ _%g233426233490%_))
                        (_%g233425233487%_ _%g233426233490%_))
                    (_%g233425233487%_ _%g233426233490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233425233487%_
                                                     _%g233426233490%_))
                                                (_%g233425233487%_
                                                 _%g233426233490%_))
                                            (_%g233425233487%_
                                             _%g233426233490%_))))
                                    (_%g233425233487%_ _%g233426233490%_))))
                            (_%g233425233487%_ _%g233426233490%_))
                        (_%g233425233487%_ _%g233426233490%_))))
                (_%g233425233487%_ _%g233426233490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233425233487%_
                                                     _%g233426233490%_))
                                                (_%g233425233487%_
                                                 _%g233426233490%_))))
                                        (_%g233425233487%_
                                         _%g233426233490%_))))
                                (_%g233425233487%_ _%g233426233490%_))
                            (_%g233425233487%_ _%g233426233490%_))))
                    (_%g233425233487%_ _%g233426233490%_))
                (_%g233425233487%_ _%g233426233490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233425233487%_
                                                     _%g233426233490%_))))
                                            (_%g233425233487%_
                                             _%g233426233490%_))))
                                    (_%g233425233487%_ _%g233426233490%_))
                                (_%g233425233487%_ _%g233426233490%_))
                            (_%g233425233487%_ _%g233426233490%_))))
                    (_%g233425233487%_ _%g233426233490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g233425233487%_
                                                     _%g233426233490%_))))
                                            (_%g233425233487%_
                                             _%g233426233490%_))
                                        (_%g233425233487%_ _%g233426233490%_))
                                    (_%g233425233487%_ _%g233426233490%_))))
                            (_%g233425233487%_ _%g233426233490%_)))))
                (_%g233424234426%_ _%g233214233382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd233258233376%_
                                                    _%hd233255233368%_
                                                    _%hd233252233360%_
                                                    _%hd233249233352%_
                                                    _%hd233231233304%_)
                                                   (_%g233211233264%_
                                                    _%g233212233267%_))))
                                           (_%g233211233264%_
                                            _%g233212233267%_))
                                       (_%g233211233264%_ _%g233212233267%_))
                                   (_%g233211233264%_ _%g233212233267%_))
                               (_%g233211233264%_ _%g233212233267%_))))
                       (_%g233211233264%_ _%g233212233267%_))
                   (_%g233211233264%_ _%g233212233267%_))
               (_%g233211233264%_ _%g233212233267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233211233264%_
                                                _%g233212233267%_))
                                           (_%g233211233264%_
                                            _%g233212233267%_))))
                                   (_%g233211233264%_ _%g233212233267%_))))
                           (_%g233211233264%_ _%g233212233267%_))))
                   (_%g233211233264%_ _%g233212233267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g233211233264%_
                                                    _%g233212233267%_))
                                               (_%g233211233264%_
                                                _%g233212233267%_))
                                           (_%g233211233264%_
                                            _%g233212233267%_))))
                                   (_%g233211233264%_ _%g233212233267%_))))
                           (_%g233211233264%_ _%g233212233267%_))
                       (_%g233211233264%_ _%g233212233267%_))))
               (_%g233211233264%_ _%g233212233267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g233211233264%_
                                                _%g233212233267%_))))
                                       (_%g233211233264%_ _%g233212233267%_))))
                               (_%g233211233264%_ _%g233212233267%_))
                           (_%g233211233264%_ _%g233212233267%_))
                       (_%g233211233264%_ _%g233212233267%_))))
               (_%g233211233264%_ _%g233212233267%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g233210234429%_
                                            _%g231603231665%_))
                                         _%stx231593%_))))))))
                  (_%__kont234656234657%_ (lambda () _%stx231593%_)))
              (let ((_%__match234685234686%_
                     (lambda (_%e231605231633%_
                              _%hd231606231636%_
                              _%tl231607231638%_
                              _%e231608231641%_
                              _%hd231609231644%_
                              _%tl231610231646%_
                              _%e231611231649%_
                              _%hd231612231652%_
                              _%tl231613231654%_
                              _%e231614231657%_
                              _%hd231615231660%_
                              _%tl231616231662%_)
                       (let ((_%g231603231665%_ _%hd231615231660%_)
                             (_%g231604231666%_ _%hd231612231652%_))
                         (if (let ((__tmp235890
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g231604231666%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp235890))
                             (_%__kont234654234655%_
                              _%g231603231665%_
                              _%g231604231666%_)
                             (_%__kont234656234657%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx234652234653%_))
                    (let ((_%e231605231633%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx234652234653%_))))
                      (let ((_%tl231607231638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231605231633%_)))
                            (_%hd231606231636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231605231633%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl231607231638%_))
                            (let ((_%e231608231641%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl231607231638%_))))
                              (let ((_%tl231610231646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e231608231641%_)))
                                    (_%hd231609231644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e231608231641%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd231609231644%_))
                                    (let ((_%e231611231649%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd231609231644%_))))
                                      (let ((_%tl231613231654%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231611231649%_)))
                                            (_%hd231612231652%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231611231649%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231613231654%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231610231646%_))
                                                (let ((_%e231614231657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231610231646%_))))
                                                  (let ((_%tl231616231662%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231614231657%_)))
                                                        (_%hd231615231660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231614231657%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231616231662%_))
                                                        (_%__match234685234686%_
                                                         _%e231605231633%_
                                                         _%hd231606231636%_
                                                         _%tl231607231638%_
                                                         _%e231608231641%_
                                                         _%hd231609231644%_
                                                         _%tl231610231646%_
                                                         _%e231611231649%_
                                                         _%hd231612231652%_
                                                         _%tl231613231654%_
                                                         _%e231614231657%_
                                                         _%hd231615231660%_
                                                         _%tl231616231662%_)
                                                        (_%__kont234656234657%_))))
                                                (_%__kont234656234657%_))
                                            (_%__kont234656234657%_))))
                                    (_%__kont234656234657%_))))
                            (_%__kont234656234657%_))))
                    (_%__kont234656234657%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self231445%_ _%stx231446%_)
        (let* ((_%__stx234688234689%_ _%stx231446%_)
               (_%g231449231482%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234688234689%_)))))
          (let ((_%__kont234690234691%_
                 (lambda (_%g231451231572%_) _%g231451231572%_))
                (_%__kont234692234693%_
                 (lambda (_%g231467231511%_ _%g231468231512%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self231445%_ _%g231467231511%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx234688234689%_))
                (let ((_%e231452231532%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx234688234689%_))))
                  (let ((_%tl231454231537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e231452231532%_)))
                        (_%hd231453231535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e231452231532%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl231454231537%_))
                        (let ((_%e231455231540%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl231454231537%_))))
                          (let ((_%tl231457231545%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e231455231540%_)))
                                (_%hd231456231543%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e231455231540%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd231456231543%_))
                                (let ((_%e231458231548%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd231456231543%_))))
                                  (let ((_%tl231460231553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e231458231548%_)))
                                        (_%hd231459231551%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e231458231548%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd231459231551%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd231459231551%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231460231553%_))
                                                (let ((_%e231461231556%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231460231553%_))))
                                                  (let ((_%tl231463231561%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231461231556%_)))
                                                        (_%hd231462231559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231461231556%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231463231561%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl231457231545%_))
                                                            (let ((_%e231464231564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231457231545%_))))
                      (let ((_%tl231466231569%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231464231564%_)))
                            (_%hd231465231567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231464231564%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231466231569%_))
                            (_%__kont234690234691%_ _%hd231462231559%_)
                            (let ()
                              (declare (not safe))
                              (_%g231449231482%_)))))
                    (let () (declare (not safe)) (_%g231449231482%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl231457231545%_))
                    (let ((_%e231475231503%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl231457231545%_))))
                      (let ((_%tl231477231508%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e231475231503%_)))
                            (_%hd231476231506%_
                             (let ()
                               (declare (not safe))
                               (##car _%e231475231503%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl231477231508%_))
                            (_%__kont234692234693%_
                             _%hd231476231506%_
                             _%hd231456231543%_)
                            (let ()
                              (declare (not safe))
                              (_%g231449231482%_)))))
                    (let () (declare (not safe)) (_%g231449231482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl231457231545%_))
                                                    (let ((_%e231475231503%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl231457231545%_))))
                                                      (let ((_%tl231477231508%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e231475231503%_)))
                    (_%hd231476231506%_
                     (let () (declare (not safe)) (##car _%e231475231503%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl231477231508%_))
                    (_%__kont234692234693%_
                     _%hd231476231506%_
                     _%hd231456231543%_)
                    (let () (declare (not safe)) (_%g231449231482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231449231482%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl231457231545%_))
                                                (let ((_%e231475231503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl231457231545%_))))
                                                  (let ((_%tl231477231508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e231475231503%_)))
                                                        (_%hd231476231506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e231475231503%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl231477231508%_))
                                                        (_%__kont234692234693%_
                                                         _%hd231476231506%_
                                                         _%hd231456231543%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g231449231482%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g231449231482%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl231457231545%_))
                                            (let ((_%e231475231503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl231457231545%_))))
                                              (let ((_%tl231477231508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e231475231503%_)))
                                                    (_%hd231476231506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e231475231503%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl231477231508%_))
                                                    (_%__kont234692234693%_
                                                     _%hd231476231506%_
                                                     _%hd231456231543%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g231449231482%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g231449231482%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl231457231545%_))
                                    (let ((_%e231475231503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl231457231545%_))))
                                      (let ((_%tl231477231508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e231475231503%_)))
                                            (_%hd231476231506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e231475231503%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl231477231508%_))
                                            (_%__kont234692234693%_
                                             _%hd231476231506%_
                                             _%hd231456231543%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g231449231482%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g231449231482%_))))))
                        (let () (declare (not safe)) (_%g231449231482%_)))))
                (let () (declare (not safe)) (_%g231449231482%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self231361%_ _%stx231362%_)
        (let* ((_%g231364231385%_
                (lambda (_%g231365231382%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g231365231382%_))))
               (_%g231363231442%_
                (lambda (_%g231365231388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g231365231388%_))
                      (let ((_%e231369231390%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g231365231388%_))))
                        (let ((_%hd231370231393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e231369231390%_)))
                              (_%tl231371231395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e231369231390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl231371231395%_))
                              (let ((_%e231372231398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl231371231395%_))))
                                (let ((_%hd231373231401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e231372231398%_)))
                                      (_%tl231374231403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e231372231398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl231374231403%_))
                                      (let ((_%e231375231406%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl231374231403%_))))
                                        (let ((_%hd231376231409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e231375231406%_)))
                                              (_%tl231377231411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e231375231406%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl231377231411%_))
                                              (let ((_%e231378231414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl231377231411%_))))
                                                (let ((_%hd231379231417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e231378231414%_)))
                                                      (_%tl231380231419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e231378231414%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl231380231419%_))
                                                      ((lambda (_%g231366231422%_
                                                                _%g231367231423%_
                                                                _%g231368231424%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self231361%_
                                                            _%g231367231423%_)))
                                                       _%hd231379231417%_
                                                       _%hd231376231409%_
                                                       _%hd231373231401%_)
                                                      (_%g231364231385%_
                                                       _%g231365231388%_))))
                                              (_%g231364231385%_
                                               _%g231365231388%_))))
                                      (_%g231364231385%_ _%g231365231388%_))))
                              (_%g231364231385%_ _%g231365231388%_))))
                      (_%g231364231385%_ _%g231365231388%_)))))
          (_%g231363231442%_ _%stx231362%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self230326%_ _%stx230327%_)
        (let* ((_%__stx234754234755%_ _%stx230327%_)
               (_%g230335230557%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx234754234755%_)))))
          (let ((_%__kont234756234757%_
                 (lambda (_%g230337231310%_
                          _%g230338231311%_
                          _%g230339231312%_
                          _%g230340231313%_)
                   (let ((__tmp235892
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230326%_ 'methods)))
                         (__tmp235891
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230338231311%_))))
                     (declare (not safe))
                     (hash-put! __tmp235892 __tmp235891 '#t))
                   (for-each
                    (lambda (_%g231346231348%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230326%_ _%g231346231348%_)))
                    (let ((__tmp235893
                           (lambda (_%g231350231353%_ _%g231351231355%_)
                             (cons _%g231350231353%_ _%g231351231355%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235893 '() _%g230337231310%_)))))
                (_%__kont234760234761%_
                 (lambda (_%g230380231147%_
                          _%g230381231148%_
                          _%g230382231149%_
                          _%g230383231150%_
                          _%g230384231151%_)
                   (let ((__tmp235895
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230326%_ 'methods)))
                         (__tmp235894
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230381231148%_))))
                     (declare (not safe))
                     (hash-put! __tmp235895 __tmp235894 '#t))
                   (for-each
                    (lambda (_%g231191231193%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self230326%_ _%g231191231193%_)))
                    (let ((__tmp235896
                           (lambda (_%g231195231198%_ _%g231196231200%_)
                             (cons _%g231195231198%_ _%g231196231200%_))))
                      (declare (not safe))
                      (foldr__0 __tmp235896 '() _%g230380231147%_)))))
                (_%__kont234764234765%_
                 (lambda (_%g230433230982%_
                          _%g230434230983%_
                          _%g230435230984%_)
                   (let ((__tmp235898
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230326%_ 'slots)))
                         (__tmp235897
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230433230982%_))))
                     (declare (not safe))
                     (hash-put! __tmp235898 __tmp235897 '#t))))
                (_%__kont234766234767%_
                 (lambda (_%g230466230859%_
                          _%g230467230860%_
                          _%g230468230861%_
                          _%g230469230862%_)
                   (let ((__tmp235900
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self230326%_ 'slots)))
                         (__tmp235899
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g230467230860%_))))
                     (declare (not safe))
                     (hash-put! __tmp235900 __tmp235899 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self230326%_ _%g230466230859%_))))
                (_%__kont234768234769%_
                 (lambda (_%g230503230733%_ _%g230504230734%_)
                   (let* ((_%accessor230756%_
                           (let ((__tmp235901
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230504230734%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235901)))
                          (_%klass230758%_
                           (let ((__tmp235902
                                  (##structure-ref
                                   _%accessor230756%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230327%_
                              __tmp235902)))
                          (_%slot230760%_
                           (##structure-ref
                            _%accessor230756%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor230756%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230758%_
                                    _%slot230760%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230758%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235904
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230326%_ 'slots)))
                               (__tmp235903
                                (##structure-ref
                                 _%accessor230756%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp235904 __tmp235903 '#t))))))
                (_%__kont234770234771%_
                 (lambda (_%g230526230633%_
                          _%g230527230634%_
                          _%g230528230635%_)
                   (let* ((_%mutator230662%_
                           (let ((__tmp235905
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g230528230635%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp235905)))
                          (_%klass230664%_
                           (let ((__tmp235906
                                  (##structure-ref
                                   _%mutator230662%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx230327%_
                              __tmp235906)))
                          (_%slot230666%_
                           (##structure-ref
                            _%mutator230662%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator230662%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass230664%_
                                    _%slot230666%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass230664%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp235907
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self230326%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp235907 _%slot230666%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self230326%_ _%g230526230633%_)))))
                (_%__kont234772234773%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self230326%_ _%stx230327%_)))))
            (let* ((_%__match235253235254%_
                    (lambda (_%e230529230569%_
                             _%hd230530230572%_
                             _%tl230531230574%_
                             _%e230532230577%_
                             _%hd230533230580%_
                             _%tl230534230582%_
                             _%e230535230585%_
                             _%hd230536230588%_
                             _%tl230537230590%_
                             _%e230538230593%_
                             _%hd230539230596%_
                             _%tl230540230598%_
                             _%e230541230601%_
                             _%hd230542230604%_
                             _%tl230543230606%_
                             _%e230544230609%_
                             _%hd230545230612%_
                             _%tl230546230614%_
                             _%e230547230617%_
                             _%hd230548230620%_
                             _%tl230549230622%_
                             _%e230550230625%_
                             _%hd230551230628%_
                             _%tl230552230630%_)
                      (let ((_%g230526230633%_ _%hd230551230628%_)
                            (_%g230527230634%_ _%hd230548230620%_)
                            (_%g230528230635%_ _%hd230539230596%_))
                        (if (and (let ((__tmp235908
                                        (let ((__tmp235909
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230528230635%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235909))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235908
                                    'gxc#!mutator::t))
                                 (let ((__tmp235910
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230326%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230527230634%_
                                    __tmp235910)))
                            (_%__kont234770234771%_
                             _%g230526230633%_
                             _%g230527230634%_
                             _%g230528230635%_)
                            (_%__kont234772234773%_)))))
                   (_%__match235251235252%_
                    (lambda (_%e230529230569%_
                             _%hd230530230572%_
                             _%tl230531230574%_
                             _%e230532230577%_
                             _%hd230533230580%_
                             _%tl230534230582%_
                             _%e230535230585%_
                             _%hd230536230588%_
                             _%tl230537230590%_
                             _%e230538230593%_
                             _%hd230539230596%_
                             _%tl230540230598%_
                             _%e230541230601%_
                             _%hd230542230604%_
                             _%tl230543230606%_
                             _%e230544230609%_
                             _%hd230545230612%_
                             _%tl230546230614%_
                             _%e230547230617%_
                             _%hd230548230620%_
                             _%tl230549230622%_
                             _%e230550230625%_
                             _%hd230551230628%_
                             _%tl230552230630%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230552230630%_))
                          (_%__match235253235254%_
                           _%e230529230569%_
                           _%hd230530230572%_
                           _%tl230531230574%_
                           _%e230532230577%_
                           _%hd230533230580%_
                           _%tl230534230582%_
                           _%e230535230585%_
                           _%hd230536230588%_
                           _%tl230537230590%_
                           _%e230538230593%_
                           _%hd230539230596%_
                           _%tl230540230598%_
                           _%e230541230601%_
                           _%hd230542230604%_
                           _%tl230543230606%_
                           _%e230544230609%_
                           _%hd230545230612%_
                           _%tl230546230614%_
                           _%e230547230617%_
                           _%hd230548230620%_
                           _%tl230549230622%_
                           _%e230550230625%_
                           _%hd230551230628%_
                           _%tl230552230630%_)
                          (_%__kont234772234773%_))))
                   (_%__match235245235246%_
                    (lambda (_%e230529230569%_
                             _%hd230530230572%_
                             _%tl230531230574%_
                             _%e230532230577%_
                             _%hd230533230580%_
                             _%tl230534230582%_
                             _%e230535230585%_
                             _%hd230536230588%_
                             _%tl230537230590%_
                             _%e230538230593%_
                             _%hd230539230596%_
                             _%tl230540230598%_
                             _%e230541230601%_
                             _%hd230542230604%_
                             _%tl230543230606%_
                             _%e230544230609%_
                             _%hd230545230612%_
                             _%tl230546230614%_
                             _%e230547230617%_
                             _%hd230548230620%_
                             _%tl230549230622%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230543230606%_))
                          (let ((_%e230550230625%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230543230606%_))))
                            (let ((_%tl230552230630%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230550230625%_)))
                                  (_%hd230551230628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230550230625%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230552230630%_))
                                  (_%__match235253235254%_
                                   _%e230529230569%_
                                   _%hd230530230572%_
                                   _%tl230531230574%_
                                   _%e230532230577%_
                                   _%hd230533230580%_
                                   _%tl230534230582%_
                                   _%e230535230585%_
                                   _%hd230536230588%_
                                   _%tl230537230590%_
                                   _%e230538230593%_
                                   _%hd230539230596%_
                                   _%tl230540230598%_
                                   _%e230541230601%_
                                   _%hd230542230604%_
                                   _%tl230543230606%_
                                   _%e230544230609%_
                                   _%hd230545230612%_
                                   _%tl230546230614%_
                                   _%e230547230617%_
                                   _%hd230548230620%_
                                   _%tl230549230622%_
                                   _%e230550230625%_
                                   _%hd230551230628%_
                                   _%tl230552230630%_)
                                  (_%__kont234772234773%_))))
                          (_%__kont234772234773%_))))
                   (_%__match235191235192%_
                    (lambda (_%e230505230677%_
                             _%hd230506230680%_
                             _%tl230507230682%_
                             _%e230508230685%_
                             _%hd230509230688%_
                             _%tl230510230690%_
                             _%e230511230693%_
                             _%hd230512230696%_
                             _%tl230513230698%_
                             _%e230514230701%_
                             _%hd230515230704%_
                             _%tl230516230706%_
                             _%e230517230709%_
                             _%hd230518230712%_
                             _%tl230519230714%_
                             _%e230520230717%_
                             _%hd230521230720%_
                             _%tl230522230722%_
                             _%e230523230725%_
                             _%hd230524230728%_
                             _%tl230525230730%_)
                      (let ((_%g230503230733%_ _%hd230524230728%_)
                            (_%g230504230734%_ _%hd230515230704%_))
                        (if (and (let ((__tmp235911
                                        (let ((__tmp235912
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g230504230734%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp235912))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp235911
                                    'gxc#!accessor::t))
                                 (let ((__tmp235913
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230326%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230503230733%_
                                    __tmp235913)))
                            (_%__kont234768234769%_
                             _%g230503230733%_
                             _%g230504230734%_)
                            (_%__kont234772234773%_)))))
                   (_%__match235189235190%_
                    (lambda (_%e230505230677%_
                             _%hd230506230680%_
                             _%tl230507230682%_
                             _%e230508230685%_
                             _%hd230509230688%_
                             _%tl230510230690%_
                             _%e230511230693%_
                             _%hd230512230696%_
                             _%tl230513230698%_
                             _%e230514230701%_
                             _%hd230515230704%_
                             _%tl230516230706%_
                             _%e230517230709%_
                             _%hd230518230712%_
                             _%tl230519230714%_
                             _%e230520230717%_
                             _%hd230521230720%_
                             _%tl230522230722%_
                             _%e230523230725%_
                             _%hd230524230728%_
                             _%tl230525230730%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230519230714%_))
                          (_%__match235191235192%_
                           _%e230505230677%_
                           _%hd230506230680%_
                           _%tl230507230682%_
                           _%e230508230685%_
                           _%hd230509230688%_
                           _%tl230510230690%_
                           _%e230511230693%_
                           _%hd230512230696%_
                           _%tl230513230698%_
                           _%e230514230701%_
                           _%hd230515230704%_
                           _%tl230516230706%_
                           _%e230517230709%_
                           _%hd230518230712%_
                           _%tl230519230714%_
                           _%e230520230717%_
                           _%hd230521230720%_
                           _%tl230522230722%_
                           _%e230523230725%_
                           _%hd230524230728%_
                           _%tl230525230730%_)
                          (_%__match235245235246%_
                           _%e230505230677%_
                           _%hd230506230680%_
                           _%tl230507230682%_
                           _%e230508230685%_
                           _%hd230509230688%_
                           _%tl230510230690%_
                           _%e230511230693%_
                           _%hd230512230696%_
                           _%tl230513230698%_
                           _%e230514230701%_
                           _%hd230515230704%_
                           _%tl230516230706%_
                           _%e230517230709%_
                           _%hd230518230712%_
                           _%tl230519230714%_
                           _%e230520230717%_
                           _%hd230521230720%_
                           _%tl230522230722%_
                           _%e230523230725%_
                           _%hd230524230728%_
                           _%tl230525230730%_))))
                   (_%__match235135235136%_
                    (lambda (_%e230470230771%_
                             _%hd230471230774%_
                             _%tl230472230776%_
                             _%e230473230779%_
                             _%hd230474230782%_
                             _%tl230475230784%_
                             _%e230476230787%_
                             _%hd230477230790%_
                             _%tl230478230792%_
                             _%e230479230795%_
                             _%hd230480230798%_
                             _%tl230481230800%_
                             _%e230482230803%_
                             _%hd230483230806%_
                             _%tl230484230808%_
                             _%e230485230811%_
                             _%hd230486230814%_
                             _%tl230487230816%_
                             _%e230488230819%_
                             _%hd230489230822%_
                             _%tl230490230824%_
                             _%e230491230827%_
                             _%hd230492230830%_
                             _%tl230493230832%_
                             _%e230494230835%_
                             _%hd230495230838%_
                             _%tl230496230840%_
                             _%e230497230843%_
                             _%hd230498230846%_
                             _%tl230499230848%_
                             _%e230500230851%_
                             _%hd230501230854%_
                             _%tl230502230856%_)
                      (let ((_%g230466230859%_ _%hd230501230854%_)
                            (_%g230467230860%_ _%hd230498230846%_)
                            (_%g230468230861%_ _%hd230489230822%_)
                            (_%g230469230862%_ _%hd230480230798%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230469230862%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230469230862%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp235914
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230326%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230468230861%_
                                    __tmp235914)))
                            (_%__kont234766234767%_
                             _%g230466230859%_
                             _%g230467230860%_
                             _%g230468230861%_
                             _%g230469230862%_)
                            (_%__kont234772234773%_)))))
                   (_%__match235127235128%_
                    (lambda (_%e230470230771%_
                             _%hd230471230774%_
                             _%tl230472230776%_
                             _%e230473230779%_
                             _%hd230474230782%_
                             _%tl230475230784%_
                             _%e230476230787%_
                             _%hd230477230790%_
                             _%tl230478230792%_
                             _%e230479230795%_
                             _%hd230480230798%_
                             _%tl230481230800%_
                             _%e230482230803%_
                             _%hd230483230806%_
                             _%tl230484230808%_
                             _%e230485230811%_
                             _%hd230486230814%_
                             _%tl230487230816%_
                             _%e230488230819%_
                             _%hd230489230822%_
                             _%tl230490230824%_
                             _%e230491230827%_
                             _%hd230492230830%_
                             _%tl230493230832%_
                             _%e230494230835%_
                             _%hd230495230838%_
                             _%tl230496230840%_
                             _%e230497230843%_
                             _%hd230498230846%_
                             _%tl230499230848%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230493230832%_))
                          (let ((_%e230500230851%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230493230832%_))))
                            (let ((_%tl230502230856%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230500230851%_)))
                                  (_%hd230501230854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230500230851%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230502230856%_))
                                  (_%__match235135235136%_
                                   _%e230470230771%_
                                   _%hd230471230774%_
                                   _%tl230472230776%_
                                   _%e230473230779%_
                                   _%hd230474230782%_
                                   _%tl230475230784%_
                                   _%e230476230787%_
                                   _%hd230477230790%_
                                   _%tl230478230792%_
                                   _%e230479230795%_
                                   _%hd230480230798%_
                                   _%tl230481230800%_
                                   _%e230482230803%_
                                   _%hd230483230806%_
                                   _%tl230484230808%_
                                   _%e230485230811%_
                                   _%hd230486230814%_
                                   _%tl230487230816%_
                                   _%e230488230819%_
                                   _%hd230489230822%_
                                   _%tl230490230824%_
                                   _%e230491230827%_
                                   _%hd230492230830%_
                                   _%tl230493230832%_
                                   _%e230494230835%_
                                   _%hd230495230838%_
                                   _%tl230496230840%_
                                   _%e230497230843%_
                                   _%hd230498230846%_
                                   _%tl230499230848%_
                                   _%e230500230851%_
                                   _%hd230501230854%_
                                   _%tl230502230856%_)
                                  (_%__kont234772234773%_))))
                          (_%__match235251235252%_
                           _%e230470230771%_
                           _%hd230471230774%_
                           _%tl230472230776%_
                           _%e230473230779%_
                           _%hd230474230782%_
                           _%tl230475230784%_
                           _%e230476230787%_
                           _%hd230477230790%_
                           _%tl230478230792%_
                           _%e230479230795%_
                           _%hd230480230798%_
                           _%tl230481230800%_
                           _%e230482230803%_
                           _%hd230483230806%_
                           _%tl230484230808%_
                           _%e230485230811%_
                           _%hd230486230814%_
                           _%tl230487230816%_
                           _%e230488230819%_
                           _%hd230489230822%_
                           _%tl230490230824%_
                           _%e230491230827%_
                           _%hd230492230830%_
                           _%tl230493230832%_))))
                   (_%__match235049235050%_
                    (lambda (_%e230436230902%_
                             _%hd230437230905%_
                             _%tl230438230907%_
                             _%e230439230910%_
                             _%hd230440230913%_
                             _%tl230441230915%_
                             _%e230442230918%_
                             _%hd230443230921%_
                             _%tl230444230923%_
                             _%e230445230926%_
                             _%hd230446230929%_
                             _%tl230447230931%_
                             _%e230448230934%_
                             _%hd230449230937%_
                             _%tl230450230939%_
                             _%e230451230942%_
                             _%hd230452230945%_
                             _%tl230453230947%_
                             _%e230454230950%_
                             _%hd230455230953%_
                             _%tl230456230955%_
                             _%e230457230958%_
                             _%hd230458230961%_
                             _%tl230459230963%_
                             _%e230460230966%_
                             _%hd230461230969%_
                             _%tl230462230971%_
                             _%e230463230974%_
                             _%hd230464230977%_
                             _%tl230465230979%_)
                      (let ((_%g230433230982%_ _%hd230464230977%_)
                            (_%g230434230983%_ _%hd230455230953%_)
                            (_%g230435230984%_ _%hd230446230929%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230435230984%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g230435230984%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp235915
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self230326%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g230434230983%_
                                    __tmp235915)))
                            (_%__kont234764234765%_
                             _%g230433230982%_
                             _%g230434230983%_
                             _%g230435230984%_)
                            (_%__match235253235254%_
                             _%e230436230902%_
                             _%hd230437230905%_
                             _%tl230438230907%_
                             _%e230439230910%_
                             _%hd230440230913%_
                             _%tl230441230915%_
                             _%e230442230918%_
                             _%hd230443230921%_
                             _%tl230444230923%_
                             _%e230445230926%_
                             _%hd230446230929%_
                             _%tl230447230931%_
                             _%e230448230934%_
                             _%hd230449230937%_
                             _%tl230450230939%_
                             _%e230451230942%_
                             _%hd230452230945%_
                             _%tl230453230947%_
                             _%e230454230950%_
                             _%hd230455230953%_
                             _%tl230456230955%_
                             _%e230457230958%_
                             _%hd230458230961%_
                             _%tl230459230963%_)))))
                   (_%__match235047235048%_
                    (lambda (_%e230436230902%_
                             _%hd230437230905%_
                             _%tl230438230907%_
                             _%e230439230910%_
                             _%hd230440230913%_
                             _%tl230441230915%_
                             _%e230442230918%_
                             _%hd230443230921%_
                             _%tl230444230923%_
                             _%e230445230926%_
                             _%hd230446230929%_
                             _%tl230447230931%_
                             _%e230448230934%_
                             _%hd230449230937%_
                             _%tl230450230939%_
                             _%e230451230942%_
                             _%hd230452230945%_
                             _%tl230453230947%_
                             _%e230454230950%_
                             _%hd230455230953%_
                             _%tl230456230955%_
                             _%e230457230958%_
                             _%hd230458230961%_
                             _%tl230459230963%_
                             _%e230460230966%_
                             _%hd230461230969%_
                             _%tl230462230971%_
                             _%e230463230974%_
                             _%hd230464230977%_
                             _%tl230465230979%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl230459230963%_))
                          (_%__match235049235050%_
                           _%e230436230902%_
                           _%hd230437230905%_
                           _%tl230438230907%_
                           _%e230439230910%_
                           _%hd230440230913%_
                           _%tl230441230915%_
                           _%e230442230918%_
                           _%hd230443230921%_
                           _%tl230444230923%_
                           _%e230445230926%_
                           _%hd230446230929%_
                           _%tl230447230931%_
                           _%e230448230934%_
                           _%hd230449230937%_
                           _%tl230450230939%_
                           _%e230451230942%_
                           _%hd230452230945%_
                           _%tl230453230947%_
                           _%e230454230950%_
                           _%hd230455230953%_
                           _%tl230456230955%_
                           _%e230457230958%_
                           _%hd230458230961%_
                           _%tl230459230963%_
                           _%e230460230966%_
                           _%hd230461230969%_
                           _%tl230462230971%_
                           _%e230463230974%_
                           _%hd230464230977%_
                           _%tl230465230979%_)
                          (_%__match235127235128%_
                           _%e230436230902%_
                           _%hd230437230905%_
                           _%tl230438230907%_
                           _%e230439230910%_
                           _%hd230440230913%_
                           _%tl230441230915%_
                           _%e230442230918%_
                           _%hd230443230921%_
                           _%tl230444230923%_
                           _%e230445230926%_
                           _%hd230446230929%_
                           _%tl230447230931%_
                           _%e230448230934%_
                           _%hd230449230937%_
                           _%tl230450230939%_
                           _%e230451230942%_
                           _%hd230452230945%_
                           _%tl230453230947%_
                           _%e230454230950%_
                           _%hd230455230953%_
                           _%tl230456230955%_
                           _%e230457230958%_
                           _%hd230458230961%_
                           _%tl230459230963%_
                           _%e230460230966%_
                           _%hd230461230969%_
                           _%tl230462230971%_
                           _%e230463230974%_
                           _%hd230464230977%_
                           _%tl230465230979%_))))
                   (_%__match235037235038%_
                    (lambda (_%e230436230902%_
                             _%hd230437230905%_
                             _%tl230438230907%_
                             _%e230439230910%_
                             _%hd230440230913%_
                             _%tl230441230915%_
                             _%e230442230918%_
                             _%hd230443230921%_
                             _%tl230444230923%_
                             _%e230445230926%_
                             _%hd230446230929%_
                             _%tl230447230931%_
                             _%e230448230934%_
                             _%hd230449230937%_
                             _%tl230450230939%_
                             _%e230451230942%_
                             _%hd230452230945%_
                             _%tl230453230947%_
                             _%e230454230950%_
                             _%hd230455230953%_
                             _%tl230456230955%_
                             _%e230457230958%_
                             _%hd230458230961%_
                             _%tl230459230963%_
                             _%e230460230966%_
                             _%hd230461230969%_
                             _%tl230462230971%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd230461230969%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230462230971%_))
                              (let ((_%e230463230974%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230462230971%_))))
                                (let ((_%tl230465230979%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230463230974%_)))
                                      (_%hd230464230977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230463230974%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230465230979%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl230459230963%_))
                                          (_%__match235049235050%_
                                           _%e230436230902%_
                                           _%hd230437230905%_
                                           _%tl230438230907%_
                                           _%e230439230910%_
                                           _%hd230440230913%_
                                           _%tl230441230915%_
                                           _%e230442230918%_
                                           _%hd230443230921%_
                                           _%tl230444230923%_
                                           _%e230445230926%_
                                           _%hd230446230929%_
                                           _%tl230447230931%_
                                           _%e230448230934%_
                                           _%hd230449230937%_
                                           _%tl230450230939%_
                                           _%e230451230942%_
                                           _%hd230452230945%_
                                           _%tl230453230947%_
                                           _%e230454230950%_
                                           _%hd230455230953%_
                                           _%tl230456230955%_
                                           _%e230457230958%_
                                           _%hd230458230961%_
                                           _%tl230459230963%_
                                           _%e230460230966%_
                                           _%hd230461230969%_
                                           _%tl230462230971%_
                                           _%e230463230974%_
                                           _%hd230464230977%_
                                           _%tl230465230979%_)
                                          (_%__match235127235128%_
                                           _%e230436230902%_
                                           _%hd230437230905%_
                                           _%tl230438230907%_
                                           _%e230439230910%_
                                           _%hd230440230913%_
                                           _%tl230441230915%_
                                           _%e230442230918%_
                                           _%hd230443230921%_
                                           _%tl230444230923%_
                                           _%e230445230926%_
                                           _%hd230446230929%_
                                           _%tl230447230931%_
                                           _%e230448230934%_
                                           _%hd230449230937%_
                                           _%tl230450230939%_
                                           _%e230451230942%_
                                           _%hd230452230945%_
                                           _%tl230453230947%_
                                           _%e230454230950%_
                                           _%hd230455230953%_
                                           _%tl230456230955%_
                                           _%e230457230958%_
                                           _%hd230458230961%_
                                           _%tl230459230963%_
                                           _%e230460230966%_
                                           _%hd230461230969%_
                                           _%tl230462230971%_
                                           _%e230463230974%_
                                           _%hd230464230977%_
                                           _%tl230465230979%_))
                                      (_%__match235251235252%_
                                       _%e230436230902%_
                                       _%hd230437230905%_
                                       _%tl230438230907%_
                                       _%e230439230910%_
                                       _%hd230440230913%_
                                       _%tl230441230915%_
                                       _%e230442230918%_
                                       _%hd230443230921%_
                                       _%tl230444230923%_
                                       _%e230445230926%_
                                       _%hd230446230929%_
                                       _%tl230447230931%_
                                       _%e230448230934%_
                                       _%hd230449230937%_
                                       _%tl230450230939%_
                                       _%e230451230942%_
                                       _%hd230452230945%_
                                       _%tl230453230947%_
                                       _%e230454230950%_
                                       _%hd230455230953%_
                                       _%tl230456230955%_
                                       _%e230457230958%_
                                       _%hd230458230961%_
                                       _%tl230459230963%_))))
                              (_%__match235251235252%_
                               _%e230436230902%_
                               _%hd230437230905%_
                               _%tl230438230907%_
                               _%e230439230910%_
                               _%hd230440230913%_
                               _%tl230441230915%_
                               _%e230442230918%_
                               _%hd230443230921%_
                               _%tl230444230923%_
                               _%e230445230926%_
                               _%hd230446230929%_
                               _%tl230447230931%_
                               _%e230448230934%_
                               _%hd230449230937%_
                               _%tl230450230939%_
                               _%e230451230942%_
                               _%hd230452230945%_
                               _%tl230453230947%_
                               _%e230454230950%_
                               _%hd230455230953%_
                               _%tl230456230955%_
                               _%e230457230958%_
                               _%hd230458230961%_
                               _%tl230459230963%_))
                          (_%__match235251235252%_
                           _%e230436230902%_
                           _%hd230437230905%_
                           _%tl230438230907%_
                           _%e230439230910%_
                           _%hd230440230913%_
                           _%tl230441230915%_
                           _%e230442230918%_
                           _%hd230443230921%_
                           _%tl230444230923%_
                           _%e230445230926%_
                           _%hd230446230929%_
                           _%tl230447230931%_
                           _%e230448230934%_
                           _%hd230449230937%_
                           _%tl230450230939%_
                           _%e230451230942%_
                           _%hd230452230945%_
                           _%tl230453230947%_
                           _%e230454230950%_
                           _%hd230455230953%_
                           _%tl230456230955%_
                           _%e230457230958%_
                           _%hd230458230961%_
                           _%tl230459230963%_))))
                   (_%__match234969234970%_
                    (lambda (_%e230385231021%_
                             _%hd230386231024%_
                             _%tl230387231026%_
                             _%e230388231029%_
                             _%hd230389231032%_
                             _%tl230390231034%_
                             _%e230391231037%_
                             _%hd230392231040%_
                             _%tl230393231042%_
                             _%e230394231045%_
                             _%hd230395231048%_
                             _%tl230396231050%_
                             _%e230397231053%_
                             _%hd230398231056%_
                             _%tl230399231058%_
                             _%e230400231061%_
                             _%hd230401231064%_
                             _%tl230402231066%_
                             _%e230403231069%_
                             _%hd230404231072%_
                             _%tl230405231074%_
                             _%e230406231077%_
                             _%hd230407231080%_
                             _%tl230408231082%_
                             _%e230409231085%_
                             _%hd230410231088%_
                             _%tl230411231090%_
                             _%e230412231093%_
                             _%hd230413231096%_
                             _%tl230414231098%_
                             _%e230415231101%_
                             _%hd230416231104%_
                             _%tl230417231106%_
                             _%e230418231109%_
                             _%hd230419231112%_
                             _%tl230420231114%_
                             _%e230421231117%_
                             _%hd230422231120%_
                             _%tl230423231122%_
                             _%__splice234762234763%_
                             _%target230424231125%_
                             _%tl230426231127%_)
                      (letrec ((_%loop230427231130%_
                                (lambda (_%hd230425231133%_
                                         _%args230431231135%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230425231133%_))
                                      (let ((_%e230428231137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230425231133%_))))
                                        (let ((_%lp-tl230430231142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230428231137%_)))
                                              (_%lp-hd230429231140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230428231137%_))))
                                          (_%loop230427231130%_
                                           _%lp-tl230430231142%_
                                           (cons _%lp-hd230429231140%_
                                                 _%args230431231135%_))))
                                      (let ((_%args230432231145%_
                                             (reverse _%args230431231135%_)))
                                        (let ((_%g230380231147%_
                                               _%args230432231145%_)
                                              (_%g230381231148%_
                                               _%hd230422231120%_)
                                              (_%g230382231149%_
                                               _%hd230413231096%_)
                                              (_%g230383231150%_
                                               _%hd230404231072%_)
                                              (_%g230384231151%_
                                               _%hd230395231048%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230384231151%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230383231150%_
                                                      'call-method))
                                                   (let ((__tmp235916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230326%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230382231149%_
                                                      __tmp235916)))
                                              (_%__kont234760234761%_
                                               _%g230380231147%_
                                               _%g230381231148%_
                                               _%g230382231149%_
                                               _%g230383231150%_
                                               _%g230384231151%_)
                                              (_%__kont234772234773%_))))))))
                        (_%loop230427231130%_ _%target230424231125%_ '()))))
                   (_%__match234927234928%_
                    (lambda (_%e230385231021%_
                             _%hd230386231024%_
                             _%tl230387231026%_
                             _%e230388231029%_
                             _%hd230389231032%_
                             _%tl230390231034%_
                             _%e230391231037%_
                             _%hd230392231040%_
                             _%tl230393231042%_
                             _%e230394231045%_
                             _%hd230395231048%_
                             _%tl230396231050%_
                             _%e230397231053%_
                             _%hd230398231056%_
                             _%tl230399231058%_
                             _%e230400231061%_
                             _%hd230401231064%_
                             _%tl230402231066%_
                             _%e230403231069%_
                             _%hd230404231072%_
                             _%tl230405231074%_
                             _%e230406231077%_
                             _%hd230407231080%_
                             _%tl230408231082%_
                             _%e230409231085%_
                             _%hd230410231088%_
                             _%tl230411231090%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd230410231088%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl230411231090%_))
                              (let ((_%e230412231093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl230411231090%_))))
                                (let ((_%tl230414231098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230412231093%_)))
                                      (_%hd230413231096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230412231093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl230414231098%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230408231082%_))
                                          (let ((_%e230415231101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230408231082%_))))
                                            (let ((_%tl230417231106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230415231101%_)))
                                                  (_%hd230416231104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230415231101%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd230416231104%_))
                                                  (let ((_%e230418231109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd230416231104%_))))
                                                    (let ((_%tl230420231114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230418231109%_)))
                                                          (_%hd230419231112%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230418231109%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd230419231112%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd230419231112%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230420231114%_))
                          (let ((_%e230421231117%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230420231114%_))))
                            (let ((_%tl230423231122%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230421231117%_)))
                                  (_%hd230422231120%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230421231117%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl230423231122%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl230417231106%_))
                                      (let ((_%__splice234762234763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl230417231106%_
                                                '0))))
                                        (let ((_%tl230426231127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234762234763%_
                                                  '1)))
                                              (_%target230424231125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice234762234763%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl230426231127%_))
                                              (_%__match234969234970%_
                                               _%e230385231021%_
                                               _%hd230386231024%_
                                               _%tl230387231026%_
                                               _%e230388231029%_
                                               _%hd230389231032%_
                                               _%tl230390231034%_
                                               _%e230391231037%_
                                               _%hd230392231040%_
                                               _%tl230393231042%_
                                               _%e230394231045%_
                                               _%hd230395231048%_
                                               _%tl230396231050%_
                                               _%e230397231053%_
                                               _%hd230398231056%_
                                               _%tl230399231058%_
                                               _%e230400231061%_
                                               _%hd230401231064%_
                                               _%tl230402231066%_
                                               _%e230403231069%_
                                               _%hd230404231072%_
                                               _%tl230405231074%_
                                               _%e230406231077%_
                                               _%hd230407231080%_
                                               _%tl230408231082%_
                                               _%e230409231085%_
                                               _%hd230410231088%_
                                               _%tl230411231090%_
                                               _%e230412231093%_
                                               _%hd230413231096%_
                                               _%tl230414231098%_
                                               _%e230415231101%_
                                               _%hd230416231104%_
                                               _%tl230417231106%_
                                               _%e230418231109%_
                                               _%hd230419231112%_
                                               _%tl230420231114%_
                                               _%e230421231117%_
                                               _%hd230422231120%_
                                               _%tl230423231122%_
                                               _%__splice234762234763%_
                                               _%target230424231125%_
                                               _%tl230426231127%_)
                                              (_%__kont234772234773%_))))
                                      (_%__kont234772234773%_))
                                  (_%__kont234772234773%_))))
                          (_%__kont234772234773%_))
                      (_%__kont234772234773%_))
                  (_%__kont234772234773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234772234773%_))))
                                          (_%__match235251235252%_
                                           _%e230385231021%_
                                           _%hd230386231024%_
                                           _%tl230387231026%_
                                           _%e230388231029%_
                                           _%hd230389231032%_
                                           _%tl230390231034%_
                                           _%e230391231037%_
                                           _%hd230392231040%_
                                           _%tl230393231042%_
                                           _%e230394231045%_
                                           _%hd230395231048%_
                                           _%tl230396231050%_
                                           _%e230397231053%_
                                           _%hd230398231056%_
                                           _%tl230399231058%_
                                           _%e230400231061%_
                                           _%hd230401231064%_
                                           _%tl230402231066%_
                                           _%e230403231069%_
                                           _%hd230404231072%_
                                           _%tl230405231074%_
                                           _%e230406231077%_
                                           _%hd230407231080%_
                                           _%tl230408231082%_))
                                      (_%__match235251235252%_
                                       _%e230385231021%_
                                       _%hd230386231024%_
                                       _%tl230387231026%_
                                       _%e230388231029%_
                                       _%hd230389231032%_
                                       _%tl230390231034%_
                                       _%e230391231037%_
                                       _%hd230392231040%_
                                       _%tl230393231042%_
                                       _%e230394231045%_
                                       _%hd230395231048%_
                                       _%tl230396231050%_
                                       _%e230397231053%_
                                       _%hd230398231056%_
                                       _%tl230399231058%_
                                       _%e230400231061%_
                                       _%hd230401231064%_
                                       _%tl230402231066%_
                                       _%e230403231069%_
                                       _%hd230404231072%_
                                       _%tl230405231074%_
                                       _%e230406231077%_
                                       _%hd230407231080%_
                                       _%tl230408231082%_))))
                              (_%__match235251235252%_
                               _%e230385231021%_
                               _%hd230386231024%_
                               _%tl230387231026%_
                               _%e230388231029%_
                               _%hd230389231032%_
                               _%tl230390231034%_
                               _%e230391231037%_
                               _%hd230392231040%_
                               _%tl230393231042%_
                               _%e230394231045%_
                               _%hd230395231048%_
                               _%tl230396231050%_
                               _%e230397231053%_
                               _%hd230398231056%_
                               _%tl230399231058%_
                               _%e230400231061%_
                               _%hd230401231064%_
                               _%tl230402231066%_
                               _%e230403231069%_
                               _%hd230404231072%_
                               _%tl230405231074%_
                               _%e230406231077%_
                               _%hd230407231080%_
                               _%tl230408231082%_))
                          (_%__match235037235038%_
                           _%e230385231021%_
                           _%hd230386231024%_
                           _%tl230387231026%_
                           _%e230388231029%_
                           _%hd230389231032%_
                           _%tl230390231034%_
                           _%e230391231037%_
                           _%hd230392231040%_
                           _%tl230393231042%_
                           _%e230394231045%_
                           _%hd230395231048%_
                           _%tl230396231050%_
                           _%e230397231053%_
                           _%hd230398231056%_
                           _%tl230399231058%_
                           _%e230400231061%_
                           _%hd230401231064%_
                           _%tl230402231066%_
                           _%e230403231069%_
                           _%hd230404231072%_
                           _%tl230405231074%_
                           _%e230406231077%_
                           _%hd230407231080%_
                           _%tl230408231082%_
                           _%e230409231085%_
                           _%hd230410231088%_
                           _%tl230411231090%_))))
                   (_%__match234859234860%_
                    (lambda (_%e230341231208%_
                             _%hd230342231211%_
                             _%tl230343231213%_
                             _%e230344231216%_
                             _%hd230345231219%_
                             _%tl230346231221%_
                             _%e230347231224%_
                             _%hd230348231227%_
                             _%tl230349231229%_
                             _%e230350231232%_
                             _%hd230351231235%_
                             _%tl230352231237%_
                             _%e230353231240%_
                             _%hd230354231243%_
                             _%tl230355231245%_
                             _%e230356231248%_
                             _%hd230357231251%_
                             _%tl230358231253%_
                             _%e230359231256%_
                             _%hd230360231259%_
                             _%tl230361231261%_
                             _%e230362231264%_
                             _%hd230363231267%_
                             _%tl230364231269%_
                             _%e230365231272%_
                             _%hd230366231275%_
                             _%tl230367231277%_
                             _%e230368231280%_
                             _%hd230369231283%_
                             _%tl230370231285%_
                             _%__splice234758234759%_
                             _%target230371231288%_
                             _%tl230373231290%_)
                      (letrec ((_%loop230374231293%_
                                (lambda (_%hd230372231296%_
                                         _%args230378231298%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd230372231296%_))
                                      (let ((_%e230375231300%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd230372231296%_))))
                                        (let ((_%lp-tl230377231305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e230375231300%_)))
                                              (_%lp-hd230376231303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e230375231300%_))))
                                          (_%loop230374231293%_
                                           _%lp-tl230377231305%_
                                           (cons _%lp-hd230376231303%_
                                                 _%args230378231298%_))))
                                      (let ((_%args230379231308%_
                                             (reverse _%args230378231298%_)))
                                        (let ((_%g230337231310%_
                                               _%args230379231308%_)
                                              (_%g230338231311%_
                                               _%hd230369231283%_)
                                              (_%g230339231312%_
                                               _%hd230360231259%_)
                                              (_%g230340231313%_
                                               _%hd230351231235%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g230340231313%_
                                                      'call-method))
                                                   (let ((__tmp235917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self230326%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g230339231312%_
                                                      __tmp235917)))
                                              (_%__kont234756234757%_
                                               _%g230337231310%_
                                               _%g230338231311%_
                                               _%g230339231312%_
                                               _%g230340231313%_)
                                              (_%__match235047235048%_
                                               _%e230341231208%_
                                               _%hd230342231211%_
                                               _%tl230343231213%_
                                               _%e230344231216%_
                                               _%hd230345231219%_
                                               _%tl230346231221%_
                                               _%e230347231224%_
                                               _%hd230348231227%_
                                               _%tl230349231229%_
                                               _%e230350231232%_
                                               _%hd230351231235%_
                                               _%tl230352231237%_
                                               _%e230353231240%_
                                               _%hd230354231243%_
                                               _%tl230355231245%_
                                               _%e230356231248%_
                                               _%hd230357231251%_
                                               _%tl230358231253%_
                                               _%e230359231256%_
                                               _%hd230360231259%_
                                               _%tl230361231261%_
                                               _%e230362231264%_
                                               _%hd230363231267%_
                                               _%tl230364231269%_
                                               _%e230365231272%_
                                               _%hd230366231275%_
                                               _%tl230367231277%_
                                               _%e230368231280%_
                                               _%hd230369231283%_
                                               _%tl230370231285%_))))))))
                        (_%loop230374231293%_ _%target230371231288%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx234754234755%_))
                  (let ((_%e230341231208%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx234754234755%_))))
                    (let ((_%tl230343231213%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230341231208%_)))
                          (_%hd230342231211%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230341231208%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl230343231213%_))
                          (let ((_%e230344231216%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl230343231213%_))))
                            (let ((_%tl230346231221%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230344231216%_)))
                                  (_%hd230345231219%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230344231216%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd230345231219%_))
                                  (let ((_%e230347231224%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd230345231219%_))))
                                    (let ((_%tl230349231229%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e230347231224%_)))
                                          (_%hd230348231227%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e230347231224%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd230348231227%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd230348231227%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl230349231229%_))
                                                  (let ((_%e230350231232%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl230349231229%_))))
                                                    (let ((_%tl230352231237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e230350231232%_)))
                                                          (_%hd230351231235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e230350231232%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl230352231237%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl230346231221%_))
                      (let ((_%e230353231240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl230346231221%_))))
                        (let ((_%tl230355231245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e230353231240%_)))
                              (_%hd230354231243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e230353231240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd230354231243%_))
                              (let ((_%e230356231248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd230354231243%_))))
                                (let ((_%tl230358231253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e230356231248%_)))
                                      (_%hd230357231251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e230356231248%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd230357231251%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd230357231251%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl230358231253%_))
                                              (let ((_%e230359231256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl230358231253%_))))
                                                (let ((_%tl230361231261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e230359231256%_)))
                                                      (_%hd230360231259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e230359231256%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl230361231261%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl230355231245%_))
                                                          (let ((_%e230362231264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl230355231245%_))))
                    (let ((_%tl230364231269%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e230362231264%_)))
                          (_%hd230363231267%_
                           (let ()
                             (declare (not safe))
                             (##car _%e230362231264%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd230363231267%_))
                          (let ((_%e230365231272%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd230363231267%_))))
                            (let ((_%tl230367231277%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e230365231272%_)))
                                  (_%hd230366231275%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e230365231272%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd230366231275%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd230366231275%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl230367231277%_))
                                          (let ((_%e230368231280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl230367231277%_))))
                                            (let ((_%tl230370231285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e230368231280%_)))
                                                  (_%hd230369231283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e230368231280%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl230370231285%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl230364231269%_))
                                                      (let ((_%__splice234758234759%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl230364231269%_
                        '0))))
                (let ((_%tl230373231290%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234758234759%_ '1)))
                      (_%target230371231288%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice234758234759%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl230373231290%_))
                      (_%__match234859234860%_
                       _%e230341231208%_
                       _%hd230342231211%_
                       _%tl230343231213%_
                       _%e230344231216%_
                       _%hd230345231219%_
                       _%tl230346231221%_
                       _%e230347231224%_
                       _%hd230348231227%_
                       _%tl230349231229%_
                       _%e230350231232%_
                       _%hd230351231235%_
                       _%tl230352231237%_
                       _%e230353231240%_
                       _%hd230354231243%_
                       _%tl230355231245%_
                       _%e230356231248%_
                       _%hd230357231251%_
                       _%tl230358231253%_
                       _%e230359231256%_
                       _%hd230360231259%_
                       _%tl230361231261%_
                       _%e230362231264%_
                       _%hd230363231267%_
                       _%tl230364231269%_
                       _%e230365231272%_
                       _%hd230366231275%_
                       _%tl230367231277%_
                       _%e230368231280%_
                       _%hd230369231283%_
                       _%tl230370231285%_
                       _%__splice234758234759%_
                       _%target230371231288%_
                       _%tl230373231290%_)
                      (_%__match235047235048%_
                       _%e230341231208%_
                       _%hd230342231211%_
                       _%tl230343231213%_
                       _%e230344231216%_
                       _%hd230345231219%_
                       _%tl230346231221%_
                       _%e230347231224%_
                       _%hd230348231227%_
                       _%tl230349231229%_
                       _%e230350231232%_
                       _%hd230351231235%_
                       _%tl230352231237%_
                       _%e230353231240%_
                       _%hd230354231243%_
                       _%tl230355231245%_
                       _%e230356231248%_
                       _%hd230357231251%_
                       _%tl230358231253%_
                       _%e230359231256%_
                       _%hd230360231259%_
                       _%tl230361231261%_
                       _%e230362231264%_
                       _%hd230363231267%_
                       _%tl230364231269%_
                       _%e230365231272%_
                       _%hd230366231275%_
                       _%tl230367231277%_
                       _%e230368231280%_
                       _%hd230369231283%_
                       _%tl230370231285%_))))
              (_%__match235047235048%_
               _%e230341231208%_
               _%hd230342231211%_
               _%tl230343231213%_
               _%e230344231216%_
               _%hd230345231219%_
               _%tl230346231221%_
               _%e230347231224%_
               _%hd230348231227%_
               _%tl230349231229%_
               _%e230350231232%_
               _%hd230351231235%_
               _%tl230352231237%_
               _%e230353231240%_
               _%hd230354231243%_
               _%tl230355231245%_
               _%e230356231248%_
               _%hd230357231251%_
               _%tl230358231253%_
               _%e230359231256%_
               _%hd230360231259%_
               _%tl230361231261%_
               _%e230362231264%_
               _%hd230363231267%_
               _%tl230364231269%_
               _%e230365231272%_
               _%hd230366231275%_
               _%tl230367231277%_
               _%e230368231280%_
               _%hd230369231283%_
               _%tl230370231285%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match235251235252%_
                                                   _%e230341231208%_
                                                   _%hd230342231211%_
                                                   _%tl230343231213%_
                                                   _%e230344231216%_
                                                   _%hd230345231219%_
                                                   _%tl230346231221%_
                                                   _%e230347231224%_
                                                   _%hd230348231227%_
                                                   _%tl230349231229%_
                                                   _%e230350231232%_
                                                   _%hd230351231235%_
                                                   _%tl230352231237%_
                                                   _%e230353231240%_
                                                   _%hd230354231243%_
                                                   _%tl230355231245%_
                                                   _%e230356231248%_
                                                   _%hd230357231251%_
                                                   _%tl230358231253%_
                                                   _%e230359231256%_
                                                   _%hd230360231259%_
                                                   _%tl230361231261%_
                                                   _%e230362231264%_
                                                   _%hd230363231267%_
                                                   _%tl230364231269%_))))
                                          (_%__match235251235252%_
                                           _%e230341231208%_
                                           _%hd230342231211%_
                                           _%tl230343231213%_
                                           _%e230344231216%_
                                           _%hd230345231219%_
                                           _%tl230346231221%_
                                           _%e230347231224%_
                                           _%hd230348231227%_
                                           _%tl230349231229%_
                                           _%e230350231232%_
                                           _%hd230351231235%_
                                           _%tl230352231237%_
                                           _%e230353231240%_
                                           _%hd230354231243%_
                                           _%tl230355231245%_
                                           _%e230356231248%_
                                           _%hd230357231251%_
                                           _%tl230358231253%_
                                           _%e230359231256%_
                                           _%hd230360231259%_
                                           _%tl230361231261%_
                                           _%e230362231264%_
                                           _%hd230363231267%_
                                           _%tl230364231269%_))
                                      (_%__match234927234928%_
                                       _%e230341231208%_
                                       _%hd230342231211%_
                                       _%tl230343231213%_
                                       _%e230344231216%_
                                       _%hd230345231219%_
                                       _%tl230346231221%_
                                       _%e230347231224%_
                                       _%hd230348231227%_
                                       _%tl230349231229%_
                                       _%e230350231232%_
                                       _%hd230351231235%_
                                       _%tl230352231237%_
                                       _%e230353231240%_
                                       _%hd230354231243%_
                                       _%tl230355231245%_
                                       _%e230356231248%_
                                       _%hd230357231251%_
                                       _%tl230358231253%_
                                       _%e230359231256%_
                                       _%hd230360231259%_
                                       _%tl230361231261%_
                                       _%e230362231264%_
                                       _%hd230363231267%_
                                       _%tl230364231269%_
                                       _%e230365231272%_
                                       _%hd230366231275%_
                                       _%tl230367231277%_))
                                  (_%__match235251235252%_
                                   _%e230341231208%_
                                   _%hd230342231211%_
                                   _%tl230343231213%_
                                   _%e230344231216%_
                                   _%hd230345231219%_
                                   _%tl230346231221%_
                                   _%e230347231224%_
                                   _%hd230348231227%_
                                   _%tl230349231229%_
                                   _%e230350231232%_
                                   _%hd230351231235%_
                                   _%tl230352231237%_
                                   _%e230353231240%_
                                   _%hd230354231243%_
                                   _%tl230355231245%_
                                   _%e230356231248%_
                                   _%hd230357231251%_
                                   _%tl230358231253%_
                                   _%e230359231256%_
                                   _%hd230360231259%_
                                   _%tl230361231261%_
                                   _%e230362231264%_
                                   _%hd230363231267%_
                                   _%tl230364231269%_))))
                          (_%__match235251235252%_
                           _%e230341231208%_
                           _%hd230342231211%_
                           _%tl230343231213%_
                           _%e230344231216%_
                           _%hd230345231219%_
                           _%tl230346231221%_
                           _%e230347231224%_
                           _%hd230348231227%_
                           _%tl230349231229%_
                           _%e230350231232%_
                           _%hd230351231235%_
                           _%tl230352231237%_
                           _%e230353231240%_
                           _%hd230354231243%_
                           _%tl230355231245%_
                           _%e230356231248%_
                           _%hd230357231251%_
                           _%tl230358231253%_
                           _%e230359231256%_
                           _%hd230360231259%_
                           _%tl230361231261%_
                           _%e230362231264%_
                           _%hd230363231267%_
                           _%tl230364231269%_))))
                  (_%__match235189235190%_
                   _%e230341231208%_
                   _%hd230342231211%_
                   _%tl230343231213%_
                   _%e230344231216%_
                   _%hd230345231219%_
                   _%tl230346231221%_
                   _%e230347231224%_
                   _%hd230348231227%_
                   _%tl230349231229%_
                   _%e230350231232%_
                   _%hd230351231235%_
                   _%tl230352231237%_
                   _%e230353231240%_
                   _%hd230354231243%_
                   _%tl230355231245%_
                   _%e230356231248%_
                   _%hd230357231251%_
                   _%tl230358231253%_
                   _%e230359231256%_
                   _%hd230360231259%_
                   _%tl230361231261%_))
              (_%__kont234772234773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont234772234773%_))
                                          (_%__kont234772234773%_))
                                      (_%__kont234772234773%_))))
                              (_%__kont234772234773%_))))
                      (_%__kont234772234773%_))
                  (_%__kont234772234773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont234772234773%_))
                                              (_%__kont234772234773%_))
                                          (_%__kont234772234773%_))))
                                  (_%__kont234772234773%_))))
                          (_%__kont234772234773%_))))
                  (_%__kont234772234773%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self229269%_ _%stx229270%_)
        (letrec ((_%force-e229272%_
                  (lambda (_%target230324%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target230324%_ '()))
                                      '()))))))
          (let* ((_%__stx235256235257%_ _%stx229270%_)
                 (_%g229280229502%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx235256235257%_)))))
            (let ((_%__kont235258235259%_
                   (lambda (_%g229282230270%_
                            _%g229283230271%_
                            _%g229284230272%_
                            _%g229285230273%_)
                     (let ((_%$method230318%_
                            (let ((__tmp235919
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229269%_ 'methods)))
                                  (__tmp235918
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229283230271%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235919 __tmp235918)))
                           (_%args230319%_
                            (map (lambda (_%g230306230308%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229269%_
                                      _%g230306230308%_)))
                                 (let ((__tmp235920
                                        (lambda (_%g230310230313%_
                                                 _%g230311230315%_)
                                          (cons _%g230310230313%_
                                                _%g230311230315%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235920
                                    '()
                                    _%g229282230270%_)))))
                       (let ((__tmp235921
                              (cons '%#call
                                    (cons (_%force-e229272%_ _%$method230318%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229269%_
                                                               'receiver))
                                                            '()))
                                                _%args230319%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235921 _%stx229270%_)))))
                  (_%__kont235262235263%_
                   (lambda (_%g229325230104%_
                            _%g229326230105%_
                            _%g229327230106%_
                            _%g229328230107%_
                            _%g229329230108%_)
                     (let ((_%$method230160%_
                            (let ((__tmp235923
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229269%_ 'methods)))
                                  (__tmp235922
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229326230105%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235923 __tmp235922)))
                           (_%args230161%_
                            (map (lambda (_%g230148230150%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self229269%_
                                      _%g230148230150%_)))
                                 (let ((__tmp235924
                                        (lambda (_%g230152230155%_
                                                 _%g230153230157%_)
                                          (cons _%g230152230155%_
                                                _%g230153230157%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp235924
                                    '()
                                    _%g229325230104%_)))))
                       (let ((__tmp235925
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e229272%_
                                                 _%$method230160%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229269%_ 'receiver))
                          '()))
              _%args230161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235925 _%stx229270%_)))))
                  (_%__kont235266235267%_
                   (lambda (_%g229378229937%_
                            _%g229379229938%_
                            _%g229380229939%_)
                     (let* ((_%$field229971%_
                             (let ((__tmp235927
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self229269%_ 'slots)))
                                   (__tmp235926
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g229378229937%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp235927 __tmp235926)))
                            (__tmp235928
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self229269%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field229971%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self229269%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp235928 _%stx229270%_))))
                  (_%__kont235268235269%_
                   (lambda (_%g229411229811%_
                            _%g229412229812%_
                            _%g229413229813%_
                            _%g229414229814%_)
                     (let ((_%$field229849%_
                            (let ((__tmp235930
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self229269%_ 'slots)))
                                  (__tmp235929
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g229412229812%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp235930 __tmp235929)))
                           (_%expr229850%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self229269%_
                               _%g229411229811%_))))
                       (let ((__tmp235931
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self229269%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field229849%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self229269%_ 'receiver))
                          '()))
              (cons _%expr229850%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp235931 _%stx229270%_)))))
                  (_%__kont235270235271%_
                   (lambda (_%g229448229683%_ _%g229449229684%_)
                     (let* ((_%accessor229706%_
                             (let ((__tmp235932
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229449229684%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235932)))
                            (_%klass229708%_
                             (let ((__tmp235933
                                    (##structure-ref
                                     _%accessor229706%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229270%_
                                __tmp235933)))
                            (_%slot229710%_
                             (##structure-ref
                              _%accessor229706%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor229706%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229708%_
                                      _%slot229710%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229708%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx229270%_
                           (let* ((_%$field229716%_
                                   (let ((__tmp235934
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235934 _%slot229710%_)))
                                  (__tmp235935
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229269%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229269%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235935
                              _%stx229270%_))))))
                  (_%__kont235272235273%_
                   (lambda (_%g229471229578%_
                            _%g229472229579%_
                            _%g229473229580%_)
                     (let* ((_%mutator229608%_
                             (let ((__tmp235936
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g229473229580%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp235936)))
                            (_%klass229610%_
                             (let ((__tmp235937
                                    (##structure-ref
                                     _%mutator229608%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx229270%_
                                __tmp235937)))
                            (_%slot229612%_
                             (##structure-ref
                              _%mutator229608%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr229614%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self229269%_
                                _%g229471229578%_))))
                       (if (if (##structure-ref
                                _%mutator229608%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass229610%_
                                      _%slot229612%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass229610%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp235938
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g229473229580%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g229472229579%_
                                                                '()))
                                                    (cons _%expr229614%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp235938 _%stx229270%_))
                           (let* ((_%$field229620%_
                                   (let ((__tmp235939
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp235939 _%slot229612%_)))
                                  (__tmp235940
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self229269%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field229620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self229269%_ 'receiver))
                               '()))
                   (cons _%expr229614%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp235940
                              _%stx229270%_))))))
                  (_%__kont235274235275%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self229269%_ _%stx229270%_)))))
              (let* ((_%__match235755235756%_
                      (lambda (_%e229474229514%_
                               _%hd229475229517%_
                               _%tl229476229519%_
                               _%e229477229522%_
                               _%hd229478229525%_
                               _%tl229479229527%_
                               _%e229480229530%_
                               _%hd229481229533%_
                               _%tl229482229535%_
                               _%e229483229538%_
                               _%hd229484229541%_
                               _%tl229485229543%_
                               _%e229486229546%_
                               _%hd229487229549%_
                               _%tl229488229551%_
                               _%e229489229554%_
                               _%hd229490229557%_
                               _%tl229491229559%_
                               _%e229492229562%_
                               _%hd229493229565%_
                               _%tl229494229567%_
                               _%e229495229570%_
                               _%hd229496229573%_
                               _%tl229497229575%_)
                        (let ((_%g229471229578%_ _%hd229496229573%_)
                              (_%g229472229579%_ _%hd229493229565%_)
                              (_%g229473229580%_ _%hd229484229541%_))
                          (if (and (let ((__tmp235941
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229472229579%_
                                      __tmp235941))
                                   (let ((__tmp235942
                                          (let ((__tmp235943
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229473229580%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235943))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235942
                                      'gxc#!mutator::t)))
                              (_%__kont235272235273%_
                               _%g229471229578%_
                               _%g229472229579%_
                               _%g229473229580%_)
                              (_%__kont235274235275%_)))))
                     (_%__match235753235754%_
                      (lambda (_%e229474229514%_
                               _%hd229475229517%_
                               _%tl229476229519%_
                               _%e229477229522%_
                               _%hd229478229525%_
                               _%tl229479229527%_
                               _%e229480229530%_
                               _%hd229481229533%_
                               _%tl229482229535%_
                               _%e229483229538%_
                               _%hd229484229541%_
                               _%tl229485229543%_
                               _%e229486229546%_
                               _%hd229487229549%_
                               _%tl229488229551%_
                               _%e229489229554%_
                               _%hd229490229557%_
                               _%tl229491229559%_
                               _%e229492229562%_
                               _%hd229493229565%_
                               _%tl229494229567%_
                               _%e229495229570%_
                               _%hd229496229573%_
                               _%tl229497229575%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229497229575%_))
                            (_%__match235755235756%_
                             _%e229474229514%_
                             _%hd229475229517%_
                             _%tl229476229519%_
                             _%e229477229522%_
                             _%hd229478229525%_
                             _%tl229479229527%_
                             _%e229480229530%_
                             _%hd229481229533%_
                             _%tl229482229535%_
                             _%e229483229538%_
                             _%hd229484229541%_
                             _%tl229485229543%_
                             _%e229486229546%_
                             _%hd229487229549%_
                             _%tl229488229551%_
                             _%e229489229554%_
                             _%hd229490229557%_
                             _%tl229491229559%_
                             _%e229492229562%_
                             _%hd229493229565%_
                             _%tl229494229567%_
                             _%e229495229570%_
                             _%hd229496229573%_
                             _%tl229497229575%_)
                            (_%__kont235274235275%_))))
                     (_%__match235747235748%_
                      (lambda (_%e229474229514%_
                               _%hd229475229517%_
                               _%tl229476229519%_
                               _%e229477229522%_
                               _%hd229478229525%_
                               _%tl229479229527%_
                               _%e229480229530%_
                               _%hd229481229533%_
                               _%tl229482229535%_
                               _%e229483229538%_
                               _%hd229484229541%_
                               _%tl229485229543%_
                               _%e229486229546%_
                               _%hd229487229549%_
                               _%tl229488229551%_
                               _%e229489229554%_
                               _%hd229490229557%_
                               _%tl229491229559%_
                               _%e229492229562%_
                               _%hd229493229565%_
                               _%tl229494229567%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229488229551%_))
                            (let ((_%e229495229570%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229488229551%_))))
                              (let ((_%tl229497229575%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229495229570%_)))
                                    (_%hd229496229573%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229495229570%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229497229575%_))
                                    (_%__match235755235756%_
                                     _%e229474229514%_
                                     _%hd229475229517%_
                                     _%tl229476229519%_
                                     _%e229477229522%_
                                     _%hd229478229525%_
                                     _%tl229479229527%_
                                     _%e229480229530%_
                                     _%hd229481229533%_
                                     _%tl229482229535%_
                                     _%e229483229538%_
                                     _%hd229484229541%_
                                     _%tl229485229543%_
                                     _%e229486229546%_
                                     _%hd229487229549%_
                                     _%tl229488229551%_
                                     _%e229489229554%_
                                     _%hd229490229557%_
                                     _%tl229491229559%_
                                     _%e229492229562%_
                                     _%hd229493229565%_
                                     _%tl229494229567%_
                                     _%e229495229570%_
                                     _%hd229496229573%_
                                     _%tl229497229575%_)
                                    (_%__kont235274235275%_))))
                            (_%__kont235274235275%_))))
                     (_%__match235693235694%_
                      (lambda (_%e229450229627%_
                               _%hd229451229630%_
                               _%tl229452229632%_
                               _%e229453229635%_
                               _%hd229454229638%_
                               _%tl229455229640%_
                               _%e229456229643%_
                               _%hd229457229646%_
                               _%tl229458229648%_
                               _%e229459229651%_
                               _%hd229460229654%_
                               _%tl229461229656%_
                               _%e229462229659%_
                               _%hd229463229662%_
                               _%tl229464229664%_
                               _%e229465229667%_
                               _%hd229466229670%_
                               _%tl229467229672%_
                               _%e229468229675%_
                               _%hd229469229678%_
                               _%tl229470229680%_)
                        (let ((_%g229448229683%_ _%hd229469229678%_)
                              (_%g229449229684%_ _%hd229460229654%_))
                          (if (and (let ((__tmp235944
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229448229683%_
                                      __tmp235944))
                                   (let ((__tmp235945
                                          (let ((__tmp235946
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g229449229684%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp235946))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp235945
                                      'gxc#!accessor::t)))
                              (_%__kont235270235271%_
                               _%g229448229683%_
                               _%g229449229684%_)
                              (_%__kont235274235275%_)))))
                     (_%__match235691235692%_
                      (lambda (_%e229450229627%_
                               _%hd229451229630%_
                               _%tl229452229632%_
                               _%e229453229635%_
                               _%hd229454229638%_
                               _%tl229455229640%_
                               _%e229456229643%_
                               _%hd229457229646%_
                               _%tl229458229648%_
                               _%e229459229651%_
                               _%hd229460229654%_
                               _%tl229461229656%_
                               _%e229462229659%_
                               _%hd229463229662%_
                               _%tl229464229664%_
                               _%e229465229667%_
                               _%hd229466229670%_
                               _%tl229467229672%_
                               _%e229468229675%_
                               _%hd229469229678%_
                               _%tl229470229680%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229464229664%_))
                            (_%__match235693235694%_
                             _%e229450229627%_
                             _%hd229451229630%_
                             _%tl229452229632%_
                             _%e229453229635%_
                             _%hd229454229638%_
                             _%tl229455229640%_
                             _%e229456229643%_
                             _%hd229457229646%_
                             _%tl229458229648%_
                             _%e229459229651%_
                             _%hd229460229654%_
                             _%tl229461229656%_
                             _%e229462229659%_
                             _%hd229463229662%_
                             _%tl229464229664%_
                             _%e229465229667%_
                             _%hd229466229670%_
                             _%tl229467229672%_
                             _%e229468229675%_
                             _%hd229469229678%_
                             _%tl229470229680%_)
                            (_%__match235747235748%_
                             _%e229450229627%_
                             _%hd229451229630%_
                             _%tl229452229632%_
                             _%e229453229635%_
                             _%hd229454229638%_
                             _%tl229455229640%_
                             _%e229456229643%_
                             _%hd229457229646%_
                             _%tl229458229648%_
                             _%e229459229651%_
                             _%hd229460229654%_
                             _%tl229461229656%_
                             _%e229462229659%_
                             _%hd229463229662%_
                             _%tl229464229664%_
                             _%e229465229667%_
                             _%hd229466229670%_
                             _%tl229467229672%_
                             _%e229468229675%_
                             _%hd229469229678%_
                             _%tl229470229680%_))))
                     (_%__match235637235638%_
                      (lambda (_%e229415229723%_
                               _%hd229416229726%_
                               _%tl229417229728%_
                               _%e229418229731%_
                               _%hd229419229734%_
                               _%tl229420229736%_
                               _%e229421229739%_
                               _%hd229422229742%_
                               _%tl229423229744%_
                               _%e229424229747%_
                               _%hd229425229750%_
                               _%tl229426229752%_
                               _%e229427229755%_
                               _%hd229428229758%_
                               _%tl229429229760%_
                               _%e229430229763%_
                               _%hd229431229766%_
                               _%tl229432229768%_
                               _%e229433229771%_
                               _%hd229434229774%_
                               _%tl229435229776%_
                               _%e229436229779%_
                               _%hd229437229782%_
                               _%tl229438229784%_
                               _%e229439229787%_
                               _%hd229440229790%_
                               _%tl229441229792%_
                               _%e229442229795%_
                               _%hd229443229798%_
                               _%tl229444229800%_
                               _%e229445229803%_
                               _%hd229446229806%_
                               _%tl229447229808%_)
                        (let ((_%g229411229811%_ _%hd229446229806%_)
                              (_%g229412229812%_ _%hd229443229798%_)
                              (_%g229413229813%_ _%hd229434229774%_)
                              (_%g229414229814%_ _%hd229425229750%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229414229814%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229414229814%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp235947
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229413229813%_
                                      __tmp235947)))
                              (_%__kont235268235269%_
                               _%g229411229811%_
                               _%g229412229812%_
                               _%g229413229813%_
                               _%g229414229814%_)
                              (_%__kont235274235275%_)))))
                     (_%__match235629235630%_
                      (lambda (_%e229415229723%_
                               _%hd229416229726%_
                               _%tl229417229728%_
                               _%e229418229731%_
                               _%hd229419229734%_
                               _%tl229420229736%_
                               _%e229421229739%_
                               _%hd229422229742%_
                               _%tl229423229744%_
                               _%e229424229747%_
                               _%hd229425229750%_
                               _%tl229426229752%_
                               _%e229427229755%_
                               _%hd229428229758%_
                               _%tl229429229760%_
                               _%e229430229763%_
                               _%hd229431229766%_
                               _%tl229432229768%_
                               _%e229433229771%_
                               _%hd229434229774%_
                               _%tl229435229776%_
                               _%e229436229779%_
                               _%hd229437229782%_
                               _%tl229438229784%_
                               _%e229439229787%_
                               _%hd229440229790%_
                               _%tl229441229792%_
                               _%e229442229795%_
                               _%hd229443229798%_
                               _%tl229444229800%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229438229784%_))
                            (let ((_%e229445229803%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229438229784%_))))
                              (let ((_%tl229447229808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229445229803%_)))
                                    (_%hd229446229806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229445229803%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229447229808%_))
                                    (_%__match235637235638%_
                                     _%e229415229723%_
                                     _%hd229416229726%_
                                     _%tl229417229728%_
                                     _%e229418229731%_
                                     _%hd229419229734%_
                                     _%tl229420229736%_
                                     _%e229421229739%_
                                     _%hd229422229742%_
                                     _%tl229423229744%_
                                     _%e229424229747%_
                                     _%hd229425229750%_
                                     _%tl229426229752%_
                                     _%e229427229755%_
                                     _%hd229428229758%_
                                     _%tl229429229760%_
                                     _%e229430229763%_
                                     _%hd229431229766%_
                                     _%tl229432229768%_
                                     _%e229433229771%_
                                     _%hd229434229774%_
                                     _%tl229435229776%_
                                     _%e229436229779%_
                                     _%hd229437229782%_
                                     _%tl229438229784%_
                                     _%e229439229787%_
                                     _%hd229440229790%_
                                     _%tl229441229792%_
                                     _%e229442229795%_
                                     _%hd229443229798%_
                                     _%tl229444229800%_
                                     _%e229445229803%_
                                     _%hd229446229806%_
                                     _%tl229447229808%_)
                                    (_%__kont235274235275%_))))
                            (_%__match235753235754%_
                             _%e229415229723%_
                             _%hd229416229726%_
                             _%tl229417229728%_
                             _%e229418229731%_
                             _%hd229419229734%_
                             _%tl229420229736%_
                             _%e229421229739%_
                             _%hd229422229742%_
                             _%tl229423229744%_
                             _%e229424229747%_
                             _%hd229425229750%_
                             _%tl229426229752%_
                             _%e229427229755%_
                             _%hd229428229758%_
                             _%tl229429229760%_
                             _%e229430229763%_
                             _%hd229431229766%_
                             _%tl229432229768%_
                             _%e229433229771%_
                             _%hd229434229774%_
                             _%tl229435229776%_
                             _%e229436229779%_
                             _%hd229437229782%_
                             _%tl229438229784%_))))
                     (_%__match235551235552%_
                      (lambda (_%e229381229857%_
                               _%hd229382229860%_
                               _%tl229383229862%_
                               _%e229384229865%_
                               _%hd229385229868%_
                               _%tl229386229870%_
                               _%e229387229873%_
                               _%hd229388229876%_
                               _%tl229389229878%_
                               _%e229390229881%_
                               _%hd229391229884%_
                               _%tl229392229886%_
                               _%e229393229889%_
                               _%hd229394229892%_
                               _%tl229395229894%_
                               _%e229396229897%_
                               _%hd229397229900%_
                               _%tl229398229902%_
                               _%e229399229905%_
                               _%hd229400229908%_
                               _%tl229401229910%_
                               _%e229402229913%_
                               _%hd229403229916%_
                               _%tl229404229918%_
                               _%e229405229921%_
                               _%hd229406229924%_
                               _%tl229407229926%_
                               _%e229408229929%_
                               _%hd229409229932%_
                               _%tl229410229934%_)
                        (let ((_%g229378229937%_ _%hd229409229932%_)
                              (_%g229379229938%_ _%hd229400229908%_)
                              (_%g229380229939%_ _%hd229391229884%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229380229939%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g229380229939%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp235948
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self229269%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g229379229938%_
                                      __tmp235948)))
                              (_%__kont235266235267%_
                               _%g229378229937%_
                               _%g229379229938%_
                               _%g229380229939%_)
                              (_%__match235755235756%_
                               _%e229381229857%_
                               _%hd229382229860%_
                               _%tl229383229862%_
                               _%e229384229865%_
                               _%hd229385229868%_
                               _%tl229386229870%_
                               _%e229387229873%_
                               _%hd229388229876%_
                               _%tl229389229878%_
                               _%e229390229881%_
                               _%hd229391229884%_
                               _%tl229392229886%_
                               _%e229393229889%_
                               _%hd229394229892%_
                               _%tl229395229894%_
                               _%e229396229897%_
                               _%hd229397229900%_
                               _%tl229398229902%_
                               _%e229399229905%_
                               _%hd229400229908%_
                               _%tl229401229910%_
                               _%e229402229913%_
                               _%hd229403229916%_
                               _%tl229404229918%_)))))
                     (_%__match235549235550%_
                      (lambda (_%e229381229857%_
                               _%hd229382229860%_
                               _%tl229383229862%_
                               _%e229384229865%_
                               _%hd229385229868%_
                               _%tl229386229870%_
                               _%e229387229873%_
                               _%hd229388229876%_
                               _%tl229389229878%_
                               _%e229390229881%_
                               _%hd229391229884%_
                               _%tl229392229886%_
                               _%e229393229889%_
                               _%hd229394229892%_
                               _%tl229395229894%_
                               _%e229396229897%_
                               _%hd229397229900%_
                               _%tl229398229902%_
                               _%e229399229905%_
                               _%hd229400229908%_
                               _%tl229401229910%_
                               _%e229402229913%_
                               _%hd229403229916%_
                               _%tl229404229918%_
                               _%e229405229921%_
                               _%hd229406229924%_
                               _%tl229407229926%_
                               _%e229408229929%_
                               _%hd229409229932%_
                               _%tl229410229934%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl229404229918%_))
                            (_%__match235551235552%_
                             _%e229381229857%_
                             _%hd229382229860%_
                             _%tl229383229862%_
                             _%e229384229865%_
                             _%hd229385229868%_
                             _%tl229386229870%_
                             _%e229387229873%_
                             _%hd229388229876%_
                             _%tl229389229878%_
                             _%e229390229881%_
                             _%hd229391229884%_
                             _%tl229392229886%_
                             _%e229393229889%_
                             _%hd229394229892%_
                             _%tl229395229894%_
                             _%e229396229897%_
                             _%hd229397229900%_
                             _%tl229398229902%_
                             _%e229399229905%_
                             _%hd229400229908%_
                             _%tl229401229910%_
                             _%e229402229913%_
                             _%hd229403229916%_
                             _%tl229404229918%_
                             _%e229405229921%_
                             _%hd229406229924%_
                             _%tl229407229926%_
                             _%e229408229929%_
                             _%hd229409229932%_
                             _%tl229410229934%_)
                            (_%__match235629235630%_
                             _%e229381229857%_
                             _%hd229382229860%_
                             _%tl229383229862%_
                             _%e229384229865%_
                             _%hd229385229868%_
                             _%tl229386229870%_
                             _%e229387229873%_
                             _%hd229388229876%_
                             _%tl229389229878%_
                             _%e229390229881%_
                             _%hd229391229884%_
                             _%tl229392229886%_
                             _%e229393229889%_
                             _%hd229394229892%_
                             _%tl229395229894%_
                             _%e229396229897%_
                             _%hd229397229900%_
                             _%tl229398229902%_
                             _%e229399229905%_
                             _%hd229400229908%_
                             _%tl229401229910%_
                             _%e229402229913%_
                             _%hd229403229916%_
                             _%tl229404229918%_
                             _%e229405229921%_
                             _%hd229406229924%_
                             _%tl229407229926%_
                             _%e229408229929%_
                             _%hd229409229932%_
                             _%tl229410229934%_))))
                     (_%__match235539235540%_
                      (lambda (_%e229381229857%_
                               _%hd229382229860%_
                               _%tl229383229862%_
                               _%e229384229865%_
                               _%hd229385229868%_
                               _%tl229386229870%_
                               _%e229387229873%_
                               _%hd229388229876%_
                               _%tl229389229878%_
                               _%e229390229881%_
                               _%hd229391229884%_
                               _%tl229392229886%_
                               _%e229393229889%_
                               _%hd229394229892%_
                               _%tl229395229894%_
                               _%e229396229897%_
                               _%hd229397229900%_
                               _%tl229398229902%_
                               _%e229399229905%_
                               _%hd229400229908%_
                               _%tl229401229910%_
                               _%e229402229913%_
                               _%hd229403229916%_
                               _%tl229404229918%_
                               _%e229405229921%_
                               _%hd229406229924%_
                               _%tl229407229926%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd229406229924%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229407229926%_))
                                (let ((_%e229408229929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229407229926%_))))
                                  (let ((_%tl229410229934%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229408229929%_)))
                                        (_%hd229409229932%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229408229929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229410229934%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl229404229918%_))
                                            (_%__match235551235552%_
                                             _%e229381229857%_
                                             _%hd229382229860%_
                                             _%tl229383229862%_
                                             _%e229384229865%_
                                             _%hd229385229868%_
                                             _%tl229386229870%_
                                             _%e229387229873%_
                                             _%hd229388229876%_
                                             _%tl229389229878%_
                                             _%e229390229881%_
                                             _%hd229391229884%_
                                             _%tl229392229886%_
                                             _%e229393229889%_
                                             _%hd229394229892%_
                                             _%tl229395229894%_
                                             _%e229396229897%_
                                             _%hd229397229900%_
                                             _%tl229398229902%_
                                             _%e229399229905%_
                                             _%hd229400229908%_
                                             _%tl229401229910%_
                                             _%e229402229913%_
                                             _%hd229403229916%_
                                             _%tl229404229918%_
                                             _%e229405229921%_
                                             _%hd229406229924%_
                                             _%tl229407229926%_
                                             _%e229408229929%_
                                             _%hd229409229932%_
                                             _%tl229410229934%_)
                                            (_%__match235629235630%_
                                             _%e229381229857%_
                                             _%hd229382229860%_
                                             _%tl229383229862%_
                                             _%e229384229865%_
                                             _%hd229385229868%_
                                             _%tl229386229870%_
                                             _%e229387229873%_
                                             _%hd229388229876%_
                                             _%tl229389229878%_
                                             _%e229390229881%_
                                             _%hd229391229884%_
                                             _%tl229392229886%_
                                             _%e229393229889%_
                                             _%hd229394229892%_
                                             _%tl229395229894%_
                                             _%e229396229897%_
                                             _%hd229397229900%_
                                             _%tl229398229902%_
                                             _%e229399229905%_
                                             _%hd229400229908%_
                                             _%tl229401229910%_
                                             _%e229402229913%_
                                             _%hd229403229916%_
                                             _%tl229404229918%_
                                             _%e229405229921%_
                                             _%hd229406229924%_
                                             _%tl229407229926%_
                                             _%e229408229929%_
                                             _%hd229409229932%_
                                             _%tl229410229934%_))
                                        (_%__match235753235754%_
                                         _%e229381229857%_
                                         _%hd229382229860%_
                                         _%tl229383229862%_
                                         _%e229384229865%_
                                         _%hd229385229868%_
                                         _%tl229386229870%_
                                         _%e229387229873%_
                                         _%hd229388229876%_
                                         _%tl229389229878%_
                                         _%e229390229881%_
                                         _%hd229391229884%_
                                         _%tl229392229886%_
                                         _%e229393229889%_
                                         _%hd229394229892%_
                                         _%tl229395229894%_
                                         _%e229396229897%_
                                         _%hd229397229900%_
                                         _%tl229398229902%_
                                         _%e229399229905%_
                                         _%hd229400229908%_
                                         _%tl229401229910%_
                                         _%e229402229913%_
                                         _%hd229403229916%_
                                         _%tl229404229918%_))))
                                (_%__match235753235754%_
                                 _%e229381229857%_
                                 _%hd229382229860%_
                                 _%tl229383229862%_
                                 _%e229384229865%_
                                 _%hd229385229868%_
                                 _%tl229386229870%_
                                 _%e229387229873%_
                                 _%hd229388229876%_
                                 _%tl229389229878%_
                                 _%e229390229881%_
                                 _%hd229391229884%_
                                 _%tl229392229886%_
                                 _%e229393229889%_
                                 _%hd229394229892%_
                                 _%tl229395229894%_
                                 _%e229396229897%_
                                 _%hd229397229900%_
                                 _%tl229398229902%_
                                 _%e229399229905%_
                                 _%hd229400229908%_
                                 _%tl229401229910%_
                                 _%e229402229913%_
                                 _%hd229403229916%_
                                 _%tl229404229918%_))
                            (_%__match235753235754%_
                             _%e229381229857%_
                             _%hd229382229860%_
                             _%tl229383229862%_
                             _%e229384229865%_
                             _%hd229385229868%_
                             _%tl229386229870%_
                             _%e229387229873%_
                             _%hd229388229876%_
                             _%tl229389229878%_
                             _%e229390229881%_
                             _%hd229391229884%_
                             _%tl229392229886%_
                             _%e229393229889%_
                             _%hd229394229892%_
                             _%tl229395229894%_
                             _%e229396229897%_
                             _%hd229397229900%_
                             _%tl229398229902%_
                             _%e229399229905%_
                             _%hd229400229908%_
                             _%tl229401229910%_
                             _%e229402229913%_
                             _%hd229403229916%_
                             _%tl229404229918%_))))
                     (_%__match235471235472%_
                      (lambda (_%e229330229978%_
                               _%hd229331229981%_
                               _%tl229332229983%_
                               _%e229333229986%_
                               _%hd229334229989%_
                               _%tl229335229991%_
                               _%e229336229994%_
                               _%hd229337229997%_
                               _%tl229338229999%_
                               _%e229339230002%_
                               _%hd229340230005%_
                               _%tl229341230007%_
                               _%e229342230010%_
                               _%hd229343230013%_
                               _%tl229344230015%_
                               _%e229345230018%_
                               _%hd229346230021%_
                               _%tl229347230023%_
                               _%e229348230026%_
                               _%hd229349230029%_
                               _%tl229350230031%_
                               _%e229351230034%_
                               _%hd229352230037%_
                               _%tl229353230039%_
                               _%e229354230042%_
                               _%hd229355230045%_
                               _%tl229356230047%_
                               _%e229357230050%_
                               _%hd229358230053%_
                               _%tl229359230055%_
                               _%e229360230058%_
                               _%hd229361230061%_
                               _%tl229362230063%_
                               _%e229363230066%_
                               _%hd229364230069%_
                               _%tl229365230071%_
                               _%e229366230074%_
                               _%hd229367230077%_
                               _%tl229368230079%_
                               _%__splice235264235265%_
                               _%target229369230082%_
                               _%tl229371230084%_)
                        (letrec ((_%loop229372230087%_
                                  (lambda (_%hd229370230090%_
                                           _%args229376230092%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229370230090%_))
                                        (let ((_%e229373230094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229370230090%_))))
                                          (let ((_%lp-tl229375230099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229373230094%_)))
                                                (_%lp-hd229374230097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229373230094%_))))
                                            (_%loop229372230087%_
                                             _%lp-tl229375230099%_
                                             (cons _%lp-hd229374230097%_
                                                   _%args229376230092%_))))
                                        (let ((_%args229377230102%_
                                               (reverse _%args229376230092%_)))
                                          (let ((_%g229325230104%_
                                                 _%args229377230102%_)
                                                (_%g229326230105%_
                                                 _%hd229367230077%_)
                                                (_%g229327230106%_
                                                 _%hd229358230053%_)
                                                (_%g229328230107%_
                                                 _%hd229349230029%_)
                                                (_%g229329230108%_
                                                 _%hd229340230005%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229329230108%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229328230107%_
                                                        'call-method))
                                                     (let ((__tmp235949
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229269%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229327230106%_
                                                        __tmp235949)))
                                                (_%__kont235262235263%_
                                                 _%g229325230104%_
                                                 _%g229326230105%_
                                                 _%g229327230106%_
                                                 _%g229328230107%_
                                                 _%g229329230108%_)
                                                (_%__kont235274235275%_))))))))
                          (_%loop229372230087%_ _%target229369230082%_ '()))))
                     (_%__match235429235430%_
                      (lambda (_%e229330229978%_
                               _%hd229331229981%_
                               _%tl229332229983%_
                               _%e229333229986%_
                               _%hd229334229989%_
                               _%tl229335229991%_
                               _%e229336229994%_
                               _%hd229337229997%_
                               _%tl229338229999%_
                               _%e229339230002%_
                               _%hd229340230005%_
                               _%tl229341230007%_
                               _%e229342230010%_
                               _%hd229343230013%_
                               _%tl229344230015%_
                               _%e229345230018%_
                               _%hd229346230021%_
                               _%tl229347230023%_
                               _%e229348230026%_
                               _%hd229349230029%_
                               _%tl229350230031%_
                               _%e229351230034%_
                               _%hd229352230037%_
                               _%tl229353230039%_
                               _%e229354230042%_
                               _%hd229355230045%_
                               _%tl229356230047%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd229355230045%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl229356230047%_))
                                (let ((_%e229357230050%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl229356230047%_))))
                                  (let ((_%tl229359230055%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229357230050%_)))
                                        (_%hd229358230053%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229357230050%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl229359230055%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229353230039%_))
                                            (let ((_%e229360230058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229353230039%_))))
                                              (let ((_%tl229362230063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229360230058%_)))
                                                    (_%hd229361230061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229360230058%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd229361230061%_))
                                                    (let ((_%e229363230066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd229361230061%_))))
                                                      (let ((_%tl229365230071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229363230066%_)))
                    (_%hd229364230069%_
                     (let () (declare (not safe)) (##car _%e229363230066%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd229364230069%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd229364230069%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229365230071%_))
                            (let ((_%e229366230074%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229365230071%_))))
                              (let ((_%tl229368230079%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229366230074%_)))
                                    (_%hd229367230077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229366230074%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl229368230079%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl229362230063%_))
                                        (let ((_%__splice235264235265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl229362230063%_
                                                  '0))))
                                          (let ((_%tl229371230084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235264235265%_
                                                    '1)))
                                                (_%target229369230082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice235264235265%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl229371230084%_))
                                                (_%__match235471235472%_
                                                 _%e229330229978%_
                                                 _%hd229331229981%_
                                                 _%tl229332229983%_
                                                 _%e229333229986%_
                                                 _%hd229334229989%_
                                                 _%tl229335229991%_
                                                 _%e229336229994%_
                                                 _%hd229337229997%_
                                                 _%tl229338229999%_
                                                 _%e229339230002%_
                                                 _%hd229340230005%_
                                                 _%tl229341230007%_
                                                 _%e229342230010%_
                                                 _%hd229343230013%_
                                                 _%tl229344230015%_
                                                 _%e229345230018%_
                                                 _%hd229346230021%_
                                                 _%tl229347230023%_
                                                 _%e229348230026%_
                                                 _%hd229349230029%_
                                                 _%tl229350230031%_
                                                 _%e229351230034%_
                                                 _%hd229352230037%_
                                                 _%tl229353230039%_
                                                 _%e229354230042%_
                                                 _%hd229355230045%_
                                                 _%tl229356230047%_
                                                 _%e229357230050%_
                                                 _%hd229358230053%_
                                                 _%tl229359230055%_
                                                 _%e229360230058%_
                                                 _%hd229361230061%_
                                                 _%tl229362230063%_
                                                 _%e229363230066%_
                                                 _%hd229364230069%_
                                                 _%tl229365230071%_
                                                 _%e229366230074%_
                                                 _%hd229367230077%_
                                                 _%tl229368230079%_
                                                 _%__splice235264235265%_
                                                 _%target229369230082%_
                                                 _%tl229371230084%_)
                                                (_%__kont235274235275%_))))
                                        (_%__kont235274235275%_))
                                    (_%__kont235274235275%_))))
                            (_%__kont235274235275%_))
                        (_%__kont235274235275%_))
                    (_%__kont235274235275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235274235275%_))))
                                            (_%__match235753235754%_
                                             _%e229330229978%_
                                             _%hd229331229981%_
                                             _%tl229332229983%_
                                             _%e229333229986%_
                                             _%hd229334229989%_
                                             _%tl229335229991%_
                                             _%e229336229994%_
                                             _%hd229337229997%_
                                             _%tl229338229999%_
                                             _%e229339230002%_
                                             _%hd229340230005%_
                                             _%tl229341230007%_
                                             _%e229342230010%_
                                             _%hd229343230013%_
                                             _%tl229344230015%_
                                             _%e229345230018%_
                                             _%hd229346230021%_
                                             _%tl229347230023%_
                                             _%e229348230026%_
                                             _%hd229349230029%_
                                             _%tl229350230031%_
                                             _%e229351230034%_
                                             _%hd229352230037%_
                                             _%tl229353230039%_))
                                        (_%__match235753235754%_
                                         _%e229330229978%_
                                         _%hd229331229981%_
                                         _%tl229332229983%_
                                         _%e229333229986%_
                                         _%hd229334229989%_
                                         _%tl229335229991%_
                                         _%e229336229994%_
                                         _%hd229337229997%_
                                         _%tl229338229999%_
                                         _%e229339230002%_
                                         _%hd229340230005%_
                                         _%tl229341230007%_
                                         _%e229342230010%_
                                         _%hd229343230013%_
                                         _%tl229344230015%_
                                         _%e229345230018%_
                                         _%hd229346230021%_
                                         _%tl229347230023%_
                                         _%e229348230026%_
                                         _%hd229349230029%_
                                         _%tl229350230031%_
                                         _%e229351230034%_
                                         _%hd229352230037%_
                                         _%tl229353230039%_))))
                                (_%__match235753235754%_
                                 _%e229330229978%_
                                 _%hd229331229981%_
                                 _%tl229332229983%_
                                 _%e229333229986%_
                                 _%hd229334229989%_
                                 _%tl229335229991%_
                                 _%e229336229994%_
                                 _%hd229337229997%_
                                 _%tl229338229999%_
                                 _%e229339230002%_
                                 _%hd229340230005%_
                                 _%tl229341230007%_
                                 _%e229342230010%_
                                 _%hd229343230013%_
                                 _%tl229344230015%_
                                 _%e229345230018%_
                                 _%hd229346230021%_
                                 _%tl229347230023%_
                                 _%e229348230026%_
                                 _%hd229349230029%_
                                 _%tl229350230031%_
                                 _%e229351230034%_
                                 _%hd229352230037%_
                                 _%tl229353230039%_))
                            (_%__match235539235540%_
                             _%e229330229978%_
                             _%hd229331229981%_
                             _%tl229332229983%_
                             _%e229333229986%_
                             _%hd229334229989%_
                             _%tl229335229991%_
                             _%e229336229994%_
                             _%hd229337229997%_
                             _%tl229338229999%_
                             _%e229339230002%_
                             _%hd229340230005%_
                             _%tl229341230007%_
                             _%e229342230010%_
                             _%hd229343230013%_
                             _%tl229344230015%_
                             _%e229345230018%_
                             _%hd229346230021%_
                             _%tl229347230023%_
                             _%e229348230026%_
                             _%hd229349230029%_
                             _%tl229350230031%_
                             _%e229351230034%_
                             _%hd229352230037%_
                             _%tl229353230039%_
                             _%e229354230042%_
                             _%hd229355230045%_
                             _%tl229356230047%_))))
                     (_%__match235361235362%_
                      (lambda (_%e229286230168%_
                               _%hd229287230171%_
                               _%tl229288230173%_
                               _%e229289230176%_
                               _%hd229290230179%_
                               _%tl229291230181%_
                               _%e229292230184%_
                               _%hd229293230187%_
                               _%tl229294230189%_
                               _%e229295230192%_
                               _%hd229296230195%_
                               _%tl229297230197%_
                               _%e229298230200%_
                               _%hd229299230203%_
                               _%tl229300230205%_
                               _%e229301230208%_
                               _%hd229302230211%_
                               _%tl229303230213%_
                               _%e229304230216%_
                               _%hd229305230219%_
                               _%tl229306230221%_
                               _%e229307230224%_
                               _%hd229308230227%_
                               _%tl229309230229%_
                               _%e229310230232%_
                               _%hd229311230235%_
                               _%tl229312230237%_
                               _%e229313230240%_
                               _%hd229314230243%_
                               _%tl229315230245%_
                               _%__splice235260235261%_
                               _%target229316230248%_
                               _%tl229318230250%_)
                        (letrec ((_%loop229319230253%_
                                  (lambda (_%hd229317230256%_
                                           _%args229323230258%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd229317230256%_))
                                        (let ((_%e229320230260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd229317230256%_))))
                                          (let ((_%lp-tl229322230265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e229320230260%_)))
                                                (_%lp-hd229321230263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e229320230260%_))))
                                            (_%loop229319230253%_
                                             _%lp-tl229322230265%_
                                             (cons _%lp-hd229321230263%_
                                                   _%args229323230258%_))))
                                        (let ((_%args229324230268%_
                                               (reverse _%args229323230258%_)))
                                          (let ((_%g229282230270%_
                                                 _%args229324230268%_)
                                                (_%g229283230271%_
                                                 _%hd229314230243%_)
                                                (_%g229284230272%_
                                                 _%hd229305230219%_)
                                                (_%g229285230273%_
                                                 _%hd229296230195%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g229285230273%_
                                                        'call-method))
                                                     (let ((__tmp235950
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self229269%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g229284230272%_
                                                        __tmp235950)))
                                                (_%__kont235258235259%_
                                                 _%g229282230270%_
                                                 _%g229283230271%_
                                                 _%g229284230272%_
                                                 _%g229285230273%_)
                                                (_%__match235549235550%_
                                                 _%e229286230168%_
                                                 _%hd229287230171%_
                                                 _%tl229288230173%_
                                                 _%e229289230176%_
                                                 _%hd229290230179%_
                                                 _%tl229291230181%_
                                                 _%e229292230184%_
                                                 _%hd229293230187%_
                                                 _%tl229294230189%_
                                                 _%e229295230192%_
                                                 _%hd229296230195%_
                                                 _%tl229297230197%_
                                                 _%e229298230200%_
                                                 _%hd229299230203%_
                                                 _%tl229300230205%_
                                                 _%e229301230208%_
                                                 _%hd229302230211%_
                                                 _%tl229303230213%_
                                                 _%e229304230216%_
                                                 _%hd229305230219%_
                                                 _%tl229306230221%_
                                                 _%e229307230224%_
                                                 _%hd229308230227%_
                                                 _%tl229309230229%_
                                                 _%e229310230232%_
                                                 _%hd229311230235%_
                                                 _%tl229312230237%_
                                                 _%e229313230240%_
                                                 _%hd229314230243%_
                                                 _%tl229315230245%_))))))))
                          (_%loop229319230253%_ _%target229316230248%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx235256235257%_))
                    (let ((_%e229286230168%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx235256235257%_))))
                      (let ((_%tl229288230173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229286230168%_)))
                            (_%hd229287230171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229286230168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl229288230173%_))
                            (let ((_%e229289230176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl229288230173%_))))
                              (let ((_%tl229291230181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229289230176%_)))
                                    (_%hd229290230179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229289230176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd229290230179%_))
                                    (let ((_%e229292230184%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd229290230179%_))))
                                      (let ((_%tl229294230189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e229292230184%_)))
                                            (_%hd229293230187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e229292230184%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd229293230187%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd229293230187%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl229294230189%_))
                                                    (let ((_%e229295230192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl229294230189%_))))
                                                      (let ((_%tl229297230197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e229295230192%_)))
                    (_%hd229296230195%_
                     (let () (declare (not safe)) (##car _%e229295230192%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl229297230197%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl229291230181%_))
                        (let ((_%e229298230200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl229291230181%_))))
                          (let ((_%tl229300230205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e229298230200%_)))
                                (_%hd229299230203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e229298230200%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd229299230203%_))
                                (let ((_%e229301230208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd229299230203%_))))
                                  (let ((_%tl229303230213%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e229301230208%_)))
                                        (_%hd229302230211%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e229301230208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd229302230211%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd229302230211%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl229303230213%_))
                                                (let ((_%e229304230216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl229303230213%_))))
                                                  (let ((_%tl229306230221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e229304230216%_)))
                                                        (_%hd229305230219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e229304230216%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl229306230221%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl229300230205%_))
                                                            (let ((_%e229307230224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl229300230205%_))))
                      (let ((_%tl229309230229%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e229307230224%_)))
                            (_%hd229308230227%_
                             (let ()
                               (declare (not safe))
                               (##car _%e229307230224%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd229308230227%_))
                            (let ((_%e229310230232%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd229308230227%_))))
                              (let ((_%tl229312230237%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e229310230232%_)))
                                    (_%hd229311230235%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e229310230232%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd229311230235%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd229311230235%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl229312230237%_))
                                            (let ((_%e229313230240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl229312230237%_))))
                                              (let ((_%tl229315230245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e229313230240%_)))
                                                    (_%hd229314230243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e229313230240%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl229315230245%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl229309230229%_))
                                                        (let ((_%__splice235260235261%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl229309230229%_
                          '0))))
                  (let ((_%tl229318230250%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235260235261%_ '1)))
                        (_%target229316230248%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice235260235261%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl229318230250%_))
                        (_%__match235361235362%_
                         _%e229286230168%_
                         _%hd229287230171%_
                         _%tl229288230173%_
                         _%e229289230176%_
                         _%hd229290230179%_
                         _%tl229291230181%_
                         _%e229292230184%_
                         _%hd229293230187%_
                         _%tl229294230189%_
                         _%e229295230192%_
                         _%hd229296230195%_
                         _%tl229297230197%_
                         _%e229298230200%_
                         _%hd229299230203%_
                         _%tl229300230205%_
                         _%e229301230208%_
                         _%hd229302230211%_
                         _%tl229303230213%_
                         _%e229304230216%_
                         _%hd229305230219%_
                         _%tl229306230221%_
                         _%e229307230224%_
                         _%hd229308230227%_
                         _%tl229309230229%_
                         _%e229310230232%_
                         _%hd229311230235%_
                         _%tl229312230237%_
                         _%e229313230240%_
                         _%hd229314230243%_
                         _%tl229315230245%_
                         _%__splice235260235261%_
                         _%target229316230248%_
                         _%tl229318230250%_)
                        (_%__match235549235550%_
                         _%e229286230168%_
                         _%hd229287230171%_
                         _%tl229288230173%_
                         _%e229289230176%_
                         _%hd229290230179%_
                         _%tl229291230181%_
                         _%e229292230184%_
                         _%hd229293230187%_
                         _%tl229294230189%_
                         _%e229295230192%_
                         _%hd229296230195%_
                         _%tl229297230197%_
                         _%e229298230200%_
                         _%hd229299230203%_
                         _%tl229300230205%_
                         _%e229301230208%_
                         _%hd229302230211%_
                         _%tl229303230213%_
                         _%e229304230216%_
                         _%hd229305230219%_
                         _%tl229306230221%_
                         _%e229307230224%_
                         _%hd229308230227%_
                         _%tl229309230229%_
                         _%e229310230232%_
                         _%hd229311230235%_
                         _%tl229312230237%_
                         _%e229313230240%_
                         _%hd229314230243%_
                         _%tl229315230245%_))))
                (_%__match235549235550%_
                 _%e229286230168%_
                 _%hd229287230171%_
                 _%tl229288230173%_
                 _%e229289230176%_
                 _%hd229290230179%_
                 _%tl229291230181%_
                 _%e229292230184%_
                 _%hd229293230187%_
                 _%tl229294230189%_
                 _%e229295230192%_
                 _%hd229296230195%_
                 _%tl229297230197%_
                 _%e229298230200%_
                 _%hd229299230203%_
                 _%tl229300230205%_
                 _%e229301230208%_
                 _%hd229302230211%_
                 _%tl229303230213%_
                 _%e229304230216%_
                 _%hd229305230219%_
                 _%tl229306230221%_
                 _%e229307230224%_
                 _%hd229308230227%_
                 _%tl229309230229%_
                 _%e229310230232%_
                 _%hd229311230235%_
                 _%tl229312230237%_
                 _%e229313230240%_
                 _%hd229314230243%_
                 _%tl229315230245%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match235753235754%_
                                                     _%e229286230168%_
                                                     _%hd229287230171%_
                                                     _%tl229288230173%_
                                                     _%e229289230176%_
                                                     _%hd229290230179%_
                                                     _%tl229291230181%_
                                                     _%e229292230184%_
                                                     _%hd229293230187%_
                                                     _%tl229294230189%_
                                                     _%e229295230192%_
                                                     _%hd229296230195%_
                                                     _%tl229297230197%_
                                                     _%e229298230200%_
                                                     _%hd229299230203%_
                                                     _%tl229300230205%_
                                                     _%e229301230208%_
                                                     _%hd229302230211%_
                                                     _%tl229303230213%_
                                                     _%e229304230216%_
                                                     _%hd229305230219%_
                                                     _%tl229306230221%_
                                                     _%e229307230224%_
                                                     _%hd229308230227%_
                                                     _%tl229309230229%_))))
                                            (_%__match235753235754%_
                                             _%e229286230168%_
                                             _%hd229287230171%_
                                             _%tl229288230173%_
                                             _%e229289230176%_
                                             _%hd229290230179%_
                                             _%tl229291230181%_
                                             _%e229292230184%_
                                             _%hd229293230187%_
                                             _%tl229294230189%_
                                             _%e229295230192%_
                                             _%hd229296230195%_
                                             _%tl229297230197%_
                                             _%e229298230200%_
                                             _%hd229299230203%_
                                             _%tl229300230205%_
                                             _%e229301230208%_
                                             _%hd229302230211%_
                                             _%tl229303230213%_
                                             _%e229304230216%_
                                             _%hd229305230219%_
                                             _%tl229306230221%_
                                             _%e229307230224%_
                                             _%hd229308230227%_
                                             _%tl229309230229%_))
                                        (_%__match235429235430%_
                                         _%e229286230168%_
                                         _%hd229287230171%_
                                         _%tl229288230173%_
                                         _%e229289230176%_
                                         _%hd229290230179%_
                                         _%tl229291230181%_
                                         _%e229292230184%_
                                         _%hd229293230187%_
                                         _%tl229294230189%_
                                         _%e229295230192%_
                                         _%hd229296230195%_
                                         _%tl229297230197%_
                                         _%e229298230200%_
                                         _%hd229299230203%_
                                         _%tl229300230205%_
                                         _%e229301230208%_
                                         _%hd229302230211%_
                                         _%tl229303230213%_
                                         _%e229304230216%_
                                         _%hd229305230219%_
                                         _%tl229306230221%_
                                         _%e229307230224%_
                                         _%hd229308230227%_
                                         _%tl229309230229%_
                                         _%e229310230232%_
                                         _%hd229311230235%_
                                         _%tl229312230237%_))
                                    (_%__match235753235754%_
                                     _%e229286230168%_
                                     _%hd229287230171%_
                                     _%tl229288230173%_
                                     _%e229289230176%_
                                     _%hd229290230179%_
                                     _%tl229291230181%_
                                     _%e229292230184%_
                                     _%hd229293230187%_
                                     _%tl229294230189%_
                                     _%e229295230192%_
                                     _%hd229296230195%_
                                     _%tl229297230197%_
                                     _%e229298230200%_
                                     _%hd229299230203%_
                                     _%tl229300230205%_
                                     _%e229301230208%_
                                     _%hd229302230211%_
                                     _%tl229303230213%_
                                     _%e229304230216%_
                                     _%hd229305230219%_
                                     _%tl229306230221%_
                                     _%e229307230224%_
                                     _%hd229308230227%_
                                     _%tl229309230229%_))))
                            (_%__match235753235754%_
                             _%e229286230168%_
                             _%hd229287230171%_
                             _%tl229288230173%_
                             _%e229289230176%_
                             _%hd229290230179%_
                             _%tl229291230181%_
                             _%e229292230184%_
                             _%hd229293230187%_
                             _%tl229294230189%_
                             _%e229295230192%_
                             _%hd229296230195%_
                             _%tl229297230197%_
                             _%e229298230200%_
                             _%hd229299230203%_
                             _%tl229300230205%_
                             _%e229301230208%_
                             _%hd229302230211%_
                             _%tl229303230213%_
                             _%e229304230216%_
                             _%hd229305230219%_
                             _%tl229306230221%_
                             _%e229307230224%_
                             _%hd229308230227%_
                             _%tl229309230229%_))))
                    (_%__match235691235692%_
                     _%e229286230168%_
                     _%hd229287230171%_
                     _%tl229288230173%_
                     _%e229289230176%_
                     _%hd229290230179%_
                     _%tl229291230181%_
                     _%e229292230184%_
                     _%hd229293230187%_
                     _%tl229294230189%_
                     _%e229295230192%_
                     _%hd229296230195%_
                     _%tl229297230197%_
                     _%e229298230200%_
                     _%hd229299230203%_
                     _%tl229300230205%_
                     _%e229301230208%_
                     _%hd229302230211%_
                     _%tl229303230213%_
                     _%e229304230216%_
                     _%hd229305230219%_
                     _%tl229306230221%_))
                (_%__kont235274235275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont235274235275%_))
                                            (_%__kont235274235275%_))
                                        (_%__kont235274235275%_))))
                                (_%__kont235274235275%_))))
                        (_%__kont235274235275%_))
                    (_%__kont235274235275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont235274235275%_))
                                                (_%__kont235274235275%_))
                                            (_%__kont235274235275%_))))
                                    (_%__kont235274235275%_))))
                            (_%__kont235274235275%_))))
                    (_%__kont235274235275%_))))))))))
