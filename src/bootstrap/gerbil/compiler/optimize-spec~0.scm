(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712823030)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp173782 (list gxc#::identity::t))
            (__tmp173781 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp173782
         '()
         __tmp173781
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args172579%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args172579%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp173783
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
        (__make-promise __tmp173783)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx172571%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self172574%_
                (let ((__obj173774
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj173774))
               (__tmp173784
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self172574%_ _%stx172571%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173784
           gxc#current-compile-method
           _%self172574%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp173786 (list gxc#::false::t))
            (__tmp173785 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp173786
         '()
         __tmp173785
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args172568%_
        (apply make-instance gxc#::extract-receiver::t _%$args172568%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp173787
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
        (__make-promise __tmp173787)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx172560%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self172563%_
                (let ((__obj173776
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj173776))
               (__tmp173788
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self172563%_ _%stx172560%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173788
           gxc#current-compile-method
           _%self172563%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp173790 (list gxc#::void::t))
            (__tmp173789 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp173790
         '(receiver methods slots)
         __tmp173789
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args172557%_
        (apply make-instance gxc#::collect-object-refs::t _%$args172557%_)))
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
      (let ((__tmp173791
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
        (__make-promise __tmp173791)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords172523%_
               _%receiver172518172524%_
               _%methods172519172526%_
               _%slots172520172528%_
               _%stx172530%_)
        (let* ((_%receiver172533%_
                (if (eq? _%receiver172518172524%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver172518172524%_))
               (_%methods172535%_
                (if (eq? _%methods172519172526%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods172519172526%_))
               (_%slots172537%_
                (if (eq? _%slots172520172528%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots172520172528%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self172539%_
                  (let ((__obj173778
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
                       __obj173778
                       _%receiver172533%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173778
                       _%methods172535%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173778
                       _%slots172537%_
                       '3
                       '#f
                       '#f))
                    __obj173778))
                 (__tmp173792
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self172539%_ _%stx172530%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173792
             gxc#current-compile-method
             _%self172539%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords172546%_ . _%args172547%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords172546%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172546%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172546%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172546%_
                  'slots:
                  absent-value))
               _%args172547%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args172521172553%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args172521172553%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp173794 (list gxc#::basic-xform-expression::t))
            (__tmp173793 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp173794
         '(receiver klass methods slots)
         __tmp173793
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args172514%_
        (apply make-instance gxc#::subst-object-refs::t _%$args172514%_)))
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
      (let ((__tmp173795
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
        (__make-promise __tmp173795)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords172476%_
               _%receiver172470172477%_
               _%klass172471172479%_
               _%methods172472172481%_
               _%slots172473172483%_
               _%stx172485%_)
        (let* ((_%receiver172488%_
                (if (eq? _%receiver172470172477%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver172470172477%_))
               (_%klass172490%_
                (if (eq? _%klass172471172479%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass172471172479%_))
               (_%methods172492%_
                (if (eq? _%methods172472172481%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods172472172481%_))
               (_%slots172494%_
                (if (eq? _%slots172473172483%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots172473172483%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self172496%_
                  (let ((__obj173780
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
                       __obj173780
                       _%receiver172488%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173780
                       _%klass172490%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173780
                       _%methods172492%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173780
                       _%slots172494%_
                       '4
                       '#f
                       '#f))
                    __obj173780))
                 (__tmp173796
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self172496%_ _%stx172485%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173796
             gxc#current-compile-method
             _%self172496%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords172503%_ . _%args172504%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords172503%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172503%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172503%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172503%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172503%_
                  'slots:
                  absent-value))
               _%args172504%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args172474172510%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args172474172510%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self169585%_ _%stx169586%_)
        (letrec ((_%generate-method-bind169588%_
                  (lambda (_%$klass172462%_
                           _%$method-table172463%_
                           _%id172464%_
                           _%$id172465%_)
                    (let ((_%$tmp172467%_
                           (let ((__tmp173797
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173797))))
                      (cons (cons _%$id172465%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp172467%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table172463%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id172464%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp172467%_ '()))
                    (cons (cons '%#ref (cons _%$tmp172467%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id172464%_
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
                 (_%generate-slot-bind169589%_
                  (lambda (_%$klass172456%_ _%id172457%_ _%$id172458%_)
                    (let ((_%$tmp172460%_
                           (let ((__tmp173798
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173798))))
                      (cons (cons _%$id172458%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp172460%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass172456%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id172457%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp172460%_ '()))
                        (cons (cons '%#ref (cons _%$tmp172460%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id172457%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl169590%_
                  (lambda (_%$klass172450%_
                           _%$method-table172451%_
                           _%methods-bind172452%_
                           _%slots-bind172453%_
                           _%specializer-impl172454%_)
                    (let ((__tmp173799
                           (cons '%#lambda
                                 (cons (cons _%$klass172450%_
                                             (cons _%$method-table172451%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind172453%_
                                                            _%methods-bind172452%_))
                                                         (cons _%specializer-impl172454%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173799 _%stx169586%_))))
                 (_%generate-specializer-def169591%_
                  (lambda (_%id172446%_
                           _%specializer-id172447%_
                           _%specializer-impl172448%_)
                    (let ((__tmp173800
                           (cons '%#begin
                                 (cons _%stx169586%_
                                       (cons (let ((__tmp173801
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id172447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl172448%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173801
                                                _%stx169586%_))
                                             (cons (let ((__tmp173802
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id172446%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id172447%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173802
                                                      _%stx169586%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173800 _%stx169586%_)))))
          (let* ((_%__stx172668172669%_ _%stx169586%_)
                 (_%g169594169614%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172668172669%_)))))
            (let ((_%__kont172670172671%_
                   (lambda (_%L169658%_ _%L169659%_)
                     (let ((_%method-calls169678%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs169679%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty169680%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?169682%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls169678%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs169679%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L169658%_))
                             (let* ((_%__stx172582172583%_ _%L169658%_)
                                    (_%g170070170088%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx172582172583%_)))))
                               (let ((_%__kont172584172585%_
                                      (lambda (_%L170124%_
                                               _%L170125%_
                                               _%L170126%_)
                                        (let ((_%receiver170146%_
                                               (let ((_%$e170143%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L170124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e170143%_
                                                     _%$e170143%_
                                                     _%L170126%_))))
                                          (for-each
                                           (lambda (_%g170147170149%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver170146%_
                                              _%method-calls169678%_
                                              _%slot-refs169679%_
                                              _%g170147170149%_))
                                           _%L170124%_)
                                          (if (_%no-specializer?169682%_)
                                              _%stx169586%_
                                              (let* ((_%specializer-id170158%_
                                                      (let* ((_%id170152%_
                                                              (let ((__tmp173803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L169659%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173803 '"::specialize")))
                     (_%specializer-id170155%_
                      (let ((__tmp173804
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx169586%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id170152%_ __tmp173804))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id170155%_))
                _%specializer-id170155%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass170160%_
                                                      (let ((__tmp173805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173805)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table170162%_
                                                      (let ((__tmp173806
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173806)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods170164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls169678%_)))
                                                     (_%$methods170168%_
                                                      (map (lambda (_%id170166%_)
                                                             (let ((__tmp173807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170166%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173807)))
                   _%methods170164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170177%_
                                                      (for-each
                                                       (lambda (_%g170169170172%_
                                                                _%g170170170174%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls169678%_
                                                            _%g170169170172%_
                                                            _%g170170170174%_)))
                                                       _%methods170164%_
                                                       _%$methods170168%_))
                                                     (_%methods-bind170187%_
                                                      (map (lambda (_%g170179170182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170180170184%_)
                     (_%generate-method-bind169588%_
                      _%$klass170160%_
                      _%$method-table170162%_
                      _%g170179170182%_
                      _%g170180170184%_))
                   _%methods170164%_
                   _%$methods170168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots170189%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs169679%_)))
                                                     (_%$slots170193%_
                                                      (map (lambda (_%id170191%_)
                                                             (let ((__tmp173808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170191%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173808)))
                   _%slots170189%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170202%_
                                                      (for-each
                                                       (lambda (_%g170194170197%_
                                                                _%g170195170199%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs169679%_
                                                            _%g170194170197%_
                                                            _%g170195170199%_)))
                                                       _%slots170189%_
                                                       _%$slots170193%_))
                                                     (_%slots-bind170211%_
                                                      (map (lambda (_%g170203170206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170204170208%_)
                     (_%generate-slot-bind169589%_
                      _%$klass170160%_
                      _%g170203170206%_
                      _%g170204170208%_))
                   _%slots170189%_
                   _%$slots170193%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body170217%_
                                                      (map (lambda (_%g170212170214%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver170146%_
                                                              _%$klass170160%_
                                                              _%method-calls169678%_
                                                              _%slot-refs169679%_
                                                              _%g170212170214%_))
                                                           _%L170124%_))
                                                     (_%specializer-impl170219%_
                                                      (let ((__tmp173809
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L170126%_ _%L170125%_)
                                 _%specializer-body170217%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173809 _%stx169586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170221%_
                                                      (_%generate-specializer-impl169590%_
                                                       _%$klass170160%_
                                                       _%$method-table170162%_
                                                       _%methods-bind170187%_
                                                       _%slots-bind170211%_
                                                       _%specializer-impl170219%_)))
                                                (let ((__tmp173811
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169659%_)))
                                                      (__tmp173810
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id170158%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173811
                                                   '" => "
                                                   __tmp173810))
                                                (_%generate-specializer-def169591%_
                                                 _%L169659%_
                                                 _%specializer-id170158%_
                                                 _%specializer-impl170221%_))))))
                                     (_%__kont172586172587%_
                                      (lambda () _%stx169586%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx172582172583%_))
                                     (let ((_%e170075170100%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx172582172583%_))))
                                       (let ((_%tl170077170105%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170075170100%_)))
                                             (_%hd170076170103%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170075170100%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170077170105%_))
                                             (let ((_%e170078170108%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170077170105%_))))
                                               (let ((_%tl170080170113%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170078170108%_)))
                                                     (_%hd170079170111%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170078170108%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd170079170111%_))
                                                     (let ((_%e170081170116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd170079170111%_))))
                                                       (let ((_%tl170083170121%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e170081170116%_)))
                     (_%hd170082170119%_
                      (let () (declare (not safe)) (##car _%e170081170116%_))))
                 (_%__kont172584172585%_
                  _%tl170080170113%_
                  _%tl170083170121%_
                  _%hd170082170119%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172586172587%_))))
                                             (_%__kont172586172587%_))))
                                     (_%__kont172586172587%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L169658%_))
                                 (let* ((_%g170228170247%_
                                         (lambda (_%g170229170244%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g170229170244%_))))
                                        (_%g170227170545%_
                                         (lambda (_%g170229170250%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g170229170250%_))
                                               (let ((_%e170231170252%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g170229170250%_))))
                                                 (let ((_%hd170232170255%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170231170252%_)))
                                                       (_%tl170233170257%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170231170252%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl170233170257%_))
                                                       (let ((_g173812_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl170233170257%_ '0))))
                 (begin
                   (let ((_g173813_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g173812_)
                                (##vector-length _g173812_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g173813_ 2)))
                         (error "Context expects 2 values" _g173813_)))
                   (let ((_%target170234170260%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173812_ 0)))
                         (_%tl170236170262%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173812_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170236170262%_))
                         (letrec ((_%loop170237170265%_
                                   (lambda (_%hd170235170268%_
                                            _%clause170241170270%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170235170268%_))
                                         (let ((_%e170238170273%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170235170268%_))))
                                           (let ((_%lp-hd170239170276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170238170273%_)))
                                                 (_%lp-tl170240170278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170238170273%_))))
                                             (_%loop170237170265%_
                                              _%lp-tl170240170278%_
                                              (cons _%lp-hd170239170276%_
                                                    _%clause170241170270%_))))
                                         (let ((_%clause170242170281%_
                                                (reverse _%clause170241170270%_)))
                                           ((lambda (_%L170284%_)
                                              (for-each
                                               (lambda (_%clause170298%_)
                                                 (let* ((_%__stx172608172609%_
                                                         _%clause170298%_)
                                                        (_%g170301170316%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx172608172609%_)))))
                                                   (let ((_%__kont172610172611%_
                                                          (lambda (_%L170344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L170345%_
                           _%L170346%_)
                    (let ((_%receiver170365%_
                           (let ((_%$e170362%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L170344%_))))
                             (if _%$e170362%_ _%$e170362%_ _%L170346%_))))
                      (for-each
                       (lambda (_%g170366170368%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver170365%_
                          _%method-calls169678%_
                          _%slot-refs169679%_
                          _%g170366170368%_))
                       _%L170344%_))))
                 (_%__kont172612172613%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx172608172609%_))
                                                         (let ((_%e170306170328%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx172608172609%_))))
                   (let ((_%tl170308170333%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170306170328%_)))
                         (_%hd170307170331%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170306170328%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd170307170331%_))
                         (let ((_%e170309170336%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170307170331%_))))
                           (let ((_%tl170311170341%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170309170336%_)))
                                 (_%hd170310170339%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170309170336%_))))
                             (_%__kont172610172611%_
                              _%tl170308170333%_
                              _%tl170311170341%_
                              _%hd170310170339%_)))
                         (_%__kont172612172613%_))))
                 (_%__kont172612172613%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp173814
                                                      (lambda (_%g170373170376%_
                                                               _%g170374170378%_)
                                                        (cons _%g170373170376%_
                                                              _%g170374170378%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173814
                                                  '()
                                                  _%L170284%_)))
                                              (if (_%no-specializer?169682%_)
                                                  _%stx169586%_
                                                  (let* ((_%specializer-id170387%_
                                                          (let* ((_%id170381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173815
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L169659%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173815 '"::specialize")))
                         (_%specializer-id170384%_
                          (let ((__tmp173816
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx169586%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170381%_
                             __tmp173816))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170384%_))
                    _%specializer-id170384%_))
                 (_%$klass170389%_
                  (let ((__tmp173817
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173817)))
                 (_%$method-table170391%_
                  (let ((__tmp173818
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173818)))
                 (_%methods170393%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls169678%_)))
                 (_%$methods170397%_
                  (map (lambda (_%id170395%_)
                         (let ((__tmp173819 (gensym _%id170395%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173819)))
                       _%methods170393%_))
                 (_%_170406%_
                  (for-each
                   (lambda (_%g170398170401%_ _%g170399170403%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls169678%_
                        _%g170398170401%_
                        _%g170399170403%_)))
                   _%methods170393%_
                   _%$methods170397%_))
                 (_%methods-bind170416%_
                  (map (lambda (_%g170408170411%_ _%g170409170413%_)
                         (_%generate-method-bind169588%_
                          _%$klass170389%_
                          _%$method-table170391%_
                          _%g170408170411%_
                          _%g170409170413%_))
                       _%methods170393%_
                       _%$methods170397%_))
                 (_%slots170418%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs169679%_)))
                 (_%$slots170422%_
                  (map (lambda (_%id170420%_)
                         (let ((__tmp173820 (gensym _%id170420%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173820)))
                       _%slots170418%_))
                 (_%_170431%_
                  (for-each
                   (lambda (_%g170423170426%_ _%g170424170428%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs169679%_
                        _%g170423170426%_
                        _%g170424170428%_)))
                   _%slots170418%_
                   _%$slots170422%_))
                 (_%slots-bind170440%_
                  (map (lambda (_%g170432170435%_ _%g170433170437%_)
                         (_%generate-slot-bind169589%_
                          _%$klass170389%_
                          _%g170432170435%_
                          _%g170433170437%_))
                       _%slots170418%_
                       _%$slots170422%_))
                 (_%specializer-clauses170538%_
                  (map (lambda (_%clause170442%_)
                         (let* ((_%__stx172628172629%_ _%clause170442%_)
                                (_%g170445170460%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172628172629%_)))))
                           (let ((_%__kont172630172631%_
                                  (lambda (_%L170488%_ _%L170489%_ _%L170490%_)
                                    (let* ((_%receiver170519%_
                                            (let ((_%$e170516%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L170488%_))))
                                              (if _%$e170516%_
                                                  _%$e170516%_
                                                  _%L170490%_)))
                                           (_%body170525%_
                                            (map (lambda (_%g170520170522%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver170519%_
                                                    _%$klass170389%_
                                                    _%method-calls169678%_
                                                    _%slot-refs169679%_
                                                    _%g170520170522%_))
                                                 _%L170488%_)))
                                      (cons (cons _%L170490%_ _%L170489%_)
                                            _%body170525%_))))
                                 (_%__kont172632172633%_
                                  (lambda () _%clause170442%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172628172629%_))
                                 (let ((_%e170450170472%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172628172629%_))))
                                   (let ((_%tl170452170477%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170450170472%_)))
                                         (_%hd170451170475%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170450170472%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170451170475%_))
                                         (let ((_%e170453170480%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170451170475%_))))
                                           (let ((_%tl170455170485%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170453170480%_)))
                                                 (_%hd170454170483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170453170480%_))))
                                             (_%__kont172630172631%_
                                              _%tl170452170477%_
                                              _%tl170455170485%_
                                              _%hd170454170483%_)))
                                         (_%__kont172632172633%_))))
                                 (_%__kont172632172633%_)))))
                       (let ((__tmp173821
                              (lambda (_%g170530170533%_ _%g170531170535%_)
                                (cons _%g170530170533%_ _%g170531170535%_))))
                         (declare (not safe))
                         (__foldr1 __tmp173821 '() _%L170284%_))))
                 (_%specializer-impl170540%_
                  (let ((__tmp173822
                         (cons '%#case-lambda _%specializer-clauses170538%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173822 _%stx169586%_)))
                 (_%specializer-impl170542%_
                  (_%generate-specializer-impl169590%_
                   _%$klass170389%_
                   _%$method-table170391%_
                   _%methods-bind170416%_
                   _%slots-bind170440%_
                   _%specializer-impl170540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173824
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L169659%_)))
                                                          (__tmp173823
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170387%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173824
                                                       '" => "
                                                       __tmp173823))
                                                    (_%generate-specializer-def169591%_
                                                     _%L169659%_
                                                     _%specializer-id170387%_
                                                     _%specializer-impl170542%_))))
                                            _%clause170242170281%_))))))
                           (_%loop170237170265%_ _%target170234170260%_ '()))
                         (_%g170228170247%_ _%g170229170250%_)))))
               (_%g170228170247%_ _%g170229170250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170228170247%_
                                                _%g170229170250%_)))))
                                   (_%g170227170545%_ _%L169658%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L169658%_))
                                     (let* ((_%g170549170579%_
                                             (lambda (_%g170550170576%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g170550170576%_))))
                                            (_%g170548171210%_
                                             (lambda (_%g170550170582%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g170550170582%_))
                                                   (let ((_%e170554170584%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g170550170582%_))))
                                                     (let ((_%hd170555170587%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170554170584%_)))
                                                           (_%tl170556170589%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170554170584%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl170556170589%_))
                                                           (let ((_%e170557170592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl170556170589%_))))
                     (let ((_%hd170558170595%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170557170592%_)))
                           (_%tl170559170597%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170557170592%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd170558170595%_))
                           (let ((_%e170560170600%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd170558170595%_))))
                             (let ((_%hd170561170603%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170560170600%_)))
                                   (_%tl170562170605%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170560170600%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170561170603%_))
                                   (let ((_%e170563170608%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170561170603%_))))
                                     (let ((_%hd170564170611%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170563170608%_)))
                                           (_%tl170565170613%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170563170608%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170564170611%_))
                                           (let ((_%e170566170616%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170564170611%_))))
                                             (let ((_%hd170567170619%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170566170616%_)))
                                                   (_%tl170568170621%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170566170616%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl170568170621%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl170565170613%_))
                                                       (let ((_%e170569170624%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl170565170613%_))))
                 (let ((_%hd170570170627%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170569170624%_)))
                       (_%tl170571170629%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170569170624%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl170571170629%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl170562170605%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl170559170597%_))
                               (let ((_%e170572170632%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl170559170597%_))))
                                 (let ((_%hd170573170635%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e170572170632%_)))
                                       (_%tl170574170637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e170572170632%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl170574170637%_))
                                       ((lambda (_%L170640%_
                                                 _%L170641%_
                                                 _%L170642%_)
                                          (let* ((_%g170666170684%_
                                                  (lambda (_%g170667170681%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g170667170681%_))))
                                                 (_%g170665170740%_
                                                  (lambda (_%g170667170687%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g170667170687%_))
                                                        (let ((_%e170671170689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g170667170687%_))))
                  (let ((_%hd170672170692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170671170689%_)))
                        (_%tl170673170694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170671170689%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170673170694%_))
                        (let ((_%e170674170697%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170673170694%_))))
                          (let ((_%hd170675170700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170674170697%_)))
                                (_%tl170676170702%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170674170697%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170675170700%_))
                                (let ((_%e170677170705%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170675170700%_))))
                                  (let ((_%hd170678170708%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170677170705%_)))
                                        (_%tl170679170710%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170677170705%_))))
                                    ((lambda (_%L170713%_
                                              _%L170714%_
                                              _%L170715%_)
                                       (let ((_%receiver170734%_
                                              (let ((_%$e170731%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L170713%_))))
                                                (if _%$e170731%_
                                                    _%$e170731%_
                                                    _%L170715%_))))
                                         (for-each
                                          (lambda (_%g170735170737%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver170734%_
                                             _%method-calls169678%_
                                             _%slot-refs169679%_
                                             _%g170735170737%_))
                                          _%L170713%_)))
                                     _%tl170676170702%_
                                     _%tl170679170710%_
                                     _%hd170678170708%_)))
                                (_%g170666170684%_ _%g170667170687%_))))
                        (_%g170666170684%_ _%g170667170687%_))))
                (_%g170666170684%_ _%g170667170687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g170665170740%_ _%L170641%_))
                                          (let* ((_%g170743170762%_
                                                  (lambda (_%g170744170759%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g170744170759%_))))
                                                 (_%g170742170886%_
                                                  (lambda (_%g170744170765%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g170744170765%_))
                                                        (let ((_%e170746170767%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g170744170765%_))))
                  (let ((_%hd170747170770%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170746170767%_)))
                        (_%tl170748170772%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170746170767%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl170748170772%_))
                        (let ((_g173825_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl170748170772%_
                                  '0))))
                          (begin
                            (let ((_g173826_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g173825_)
                                         (##vector-length _g173825_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g173826_ 2)))
                                  (error "Context expects 2 values"
                                         _g173826_)))
                            (let ((_%target170749170775%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173825_ 0)))
                                  (_%tl170751170777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173825_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170751170777%_))
                                  (letrec ((_%loop170752170780%_
                                            (lambda (_%hd170750170783%_
                                                     _%clause170756170785%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170750170783%_))
                                                  (let ((_%e170753170788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170750170783%_))))
                                                    (let ((_%lp-hd170754170791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170753170788%_)))
                                                          (_%lp-tl170755170793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170753170788%_))))
                                                      (_%loop170752170780%_
                                                       _%lp-tl170755170793%_
                                                       (cons _%lp-hd170754170791%_
                                                             _%clause170756170785%_))))
                                                  (let ((_%clause170757170796%_
                                                         (reverse _%clause170756170785%_)))
                                                    ((lambda (_%L170799%_)
                                                       (for-each
                                                        (lambda (_%clause170812%_)
                                                          (let* ((_%g170814170829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g170815170826%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170815170826%_))))
                         (_%g170813170876%_
                          (lambda (_%g170815170832%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170815170832%_))
                                (let ((_%e170819170834%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170815170832%_))))
                                  (let ((_%hd170820170837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170819170834%_)))
                                        (_%tl170821170839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170819170834%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170820170837%_))
                                        (let ((_%e170822170842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170820170837%_))))
                                          (let ((_%hd170823170845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170822170842%_)))
                                                (_%tl170824170847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170822170842%_))))
                                            ((lambda (_%L170850%_
                                                      _%L170851%_
                                                      _%L170852%_)
                                               (let ((_%receiver170870%_
                                                      (let ((_%$e170867%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L170850%_))))
                (if _%$e170867%_ _%$e170867%_ _%L170852%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g170871170873%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver170870%_
                                                     _%method-calls169678%_
                                                     _%slot-refs169679%_
                                                     _%g170871170873%_))
                                                  _%L170850%_)))
                                             _%tl170821170839%_
                                             _%tl170824170847%_
                                             _%hd170823170845%_)))
                                        (_%g170814170829%_
                                         _%g170815170832%_))))
                                (_%g170814170829%_ _%g170815170832%_)))))
                    (_%g170813170876%_ _%clause170812%_)))
                (let ((__tmp173827
                       (lambda (_%g170878170881%_ _%g170879170883%_)
                         (cons _%g170878170881%_ _%g170879170883%_))))
                  (declare (not safe))
                  (__foldr1 __tmp173827 '() _%L170799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause170757170796%_))))))
                                    (_%loop170752170780%_
                                     _%target170749170775%_
                                     '()))
                                  (_%g170743170762%_ _%g170744170765%_)))))
                        (_%g170743170762%_ _%g170744170765%_))))
                (_%g170743170762%_ _%g170744170765%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g170742170886%_ _%L170640%_))
                                          (if (_%no-specializer?169682%_)
                                              _%stx169586%_
                                              (let* ((_%specializer-id170895%_
                                                      (let* ((_%id170889%_
                                                              (let ((__tmp173828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L169659%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173828 '"::specialize")))
                     (_%specializer-id170892%_
                      (let ((__tmp173829
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx169586%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id170889%_ __tmp173829))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id170892%_))
                _%specializer-id170892%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass170897%_
                                                      (let ((__tmp173830
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173830)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table170899%_
                                                      (let ((__tmp173831
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173831)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods170901%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls169678%_)))
                                                     (_%$methods170905%_
                                                      (map (lambda (_%id170903%_)
                                                             (let ((__tmp173832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170903%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173832)))
                   _%methods170901%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170914%_
                                                      (for-each
                                                       (lambda (_%g170906170909%_
                                                                _%g170907170911%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls169678%_
                                                            _%g170906170909%_
                                                            _%g170907170911%_)))
                                                       _%methods170901%_
                                                       _%$methods170905%_))
                                                     (_%methods-bind170924%_
                                                      (map (lambda (_%g170916170919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170917170921%_)
                     (_%generate-method-bind169588%_
                      _%$klass170897%_
                      _%$method-table170899%_
                      _%g170916170919%_
                      _%g170917170921%_))
                   _%methods170901%_
                   _%$methods170905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots170926%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs169679%_)))
                                                     (_%$slots170930%_
                                                      (map (lambda (_%id170928%_)
                                                             (let ((__tmp173833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170928%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173833)))
                   _%slots170926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170939%_
                                                      (for-each
                                                       (lambda (_%g170931170934%_
                                                                _%g170932170936%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs169679%_
                                                            _%g170931170934%_
                                                            _%g170932170936%_)))
                                                       _%slots170926%_
                                                       _%$slots170930%_))
                                                     (_%slots-bind170948%_
                                                      (map (lambda (_%g170940170943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170941170945%_)
                     (_%generate-slot-bind169589%_
                      _%$klass170897%_
                      _%g170940170943%_
                      _%g170941170945%_))
                   _%slots170926%_
                   _%$slots170930%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr171040%_
                                                      (let* ((_%g170950170968%_
                                                              (lambda (_%g170951170965%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170951170965%_))))
                     (_%g170949171037%_
                      (lambda (_%g170951170971%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170951170971%_))
                            (let ((_%e170955170973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170951170971%_))))
                              (let ((_%hd170956170976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170955170973%_)))
                                    (_%tl170957170978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170955170973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170957170978%_))
                                    (let ((_%e170958170981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170957170978%_))))
                                      (let ((_%hd170959170984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170958170981%_)))
                                            (_%tl170960170986%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170958170981%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd170959170984%_))
                                            (let ((_%e170961170989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd170959170984%_))))
                                              (let ((_%hd170962170992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170961170989%_)))
                                                    (_%tl170963170994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170961170989%_))))
                                                ((lambda (_%L170997%_
                                                          _%L170998%_
                                                          _%L170999%_)
                                                   (let* ((_%receiver171028%_
                                                           (let ((_%$e171025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L170997%_))))
                     (if _%$e171025%_ _%$e171025%_ _%L170999%_)))
                  (_%body171034%_
                   (map (lambda (_%g171029171031%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver171028%_
                           _%$klass170897%_
                           _%method-calls169678%_
                           _%slot-refs169679%_
                           _%g171029171031%_))
                        _%L170997%_))
                  (__tmp173834
                   (cons '%#lambda
                         (cons (cons _%L170999%_ _%L170998%_)
                               _%body171034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173834
                                                      _%L170641%_)))
                                                 _%tl170960170986%_
                                                 _%tl170963170994%_
                                                 _%hd170962170992%_)))
                                            (_%g170950170968%_
                                             _%g170951170971%_))))
                                    (_%g170950170968%_ _%g170951170971%_))))
                            (_%g170950170968%_ _%g170951170971%_)))))
                (_%g170949171037%_ _%L170641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr171203%_
                                                      (let* ((_%g171042171061%_
                                                              (lambda (_%g171043171058%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171043171058%_))))
                     (_%g171041171200%_
                      (lambda (_%g171043171064%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g171043171064%_))
                            (let ((_%e171045171066%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g171043171064%_))))
                              (let ((_%hd171046171069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171045171066%_)))
                                    (_%tl171047171071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171045171066%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl171047171071%_))
                                    (let ((_g173835_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl171047171071%_
                                              '0))))
                                      (begin
                                        (let ((_g173836_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173835_)
                                                     (##vector-length
                                                      _g173835_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173836_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173836_)))
                                        (let ((_%target171048171074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173835_ 0)))
                                              (_%tl171050171076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173835_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171050171076%_))
                                              (letrec ((_%loop171051171079%_
                                                        (lambda (_%hd171049171082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause171055171084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd171049171082%_))
                      (let ((_%e171052171087%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd171049171082%_))))
                        (let ((_%lp-hd171053171090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171052171087%_)))
                              (_%lp-tl171054171092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171052171087%_))))
                          (_%loop171051171079%_
                           _%lp-tl171054171092%_
                           (cons _%lp-hd171053171090%_
                                 _%clause171055171084%_))))
                      (let ((_%clause171056171095%_
                             (reverse _%clause171055171084%_)))
                        ((lambda (_%L171098%_)
                           (let* ((_%clauses171198%_
                                   (map (lambda (_%clause171112%_)
                                          (let* ((_%__stx172648172649%_
                                                  _%clause171112%_)
                                                 (_%g171115171130%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx172648172649%_)))))
                                            (let ((_%__kont172650172651%_
                                                   (lambda (_%L171158%_
                                                            _%L171159%_
                                                            _%L171160%_)
                                                     (let* ((_%receiver171179%_
                                                             (let ((_%$e171176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L171158%_))))
                       (if _%$e171176%_ _%$e171176%_ _%L171160%_)))
                    (_%body171185%_
                     (map (lambda (_%g171180171182%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver171179%_
                             _%$klass170897%_
                             _%method-calls169678%_
                             _%slot-refs169679%_
                             _%g171180171182%_))
                          _%L171158%_)))
               (cons (cons _%L171160%_ _%L171159%_) _%body171185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172652172653%_
                                                   (lambda ()
                                                     _%clause171112%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx172648172649%_))
                                                  (let ((_%e171120171142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx172648172649%_))))
                                                    (let ((_%tl171122171147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171120171142%_)))
                                                          (_%hd171121171145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171120171142%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd171121171145%_))
                                                          (let ((_%e171123171150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd171121171145%_))))
                    (let ((_%tl171125171155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171123171150%_)))
                          (_%hd171124171153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171123171150%_))))
                      (_%__kont172650172651%_
                       _%tl171122171147%_
                       _%tl171125171155%_
                       _%hd171124171153%_)))
                  (_%__kont172652172653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172652172653%_)))))
                                        (let ((__tmp173837
                                               (lambda (_%g171190171193%_
                                                        _%g171191171195%_)
                                                 (cons _%g171190171193%_
                                                       _%g171191171195%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173837
                                           '()
                                           _%L171098%_))))
                                  (__tmp173838
                                   (cons '%#case-lambda _%clauses171198%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173838 _%L170640%_)))
                         _%clause171056171095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171051171079%_
                                                 _%target171048171074%_
                                                 '()))
                                              (_%g171042171061%_
                                               _%g171043171064%_)))))
                                    (_%g171042171061%_ _%g171043171064%_))))
                            (_%g171042171061%_ _%g171043171064%_)))))
                (_%g171041171200%_ _%L170640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171205%_
                                                      (let ((__tmp173839
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L170642%_ '())
                                             (cons _%specializer-lambda-expr171040%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr171203%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173839 _%stx169586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171207%_
                                                      (_%generate-specializer-impl169590%_
                                                       _%$klass170897%_
                                                       _%$method-table170899%_
                                                       _%methods-bind170924%_
                                                       _%slots-bind170948%_
                                                       _%specializer-impl171205%_)))
                                                (let ((__tmp173841
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169659%_)))
                                                      (__tmp173840
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id170895%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173841
                                                   '" => "
                                                   __tmp173840))
                                                (_%generate-specializer-def169591%_
                                                 _%L169659%_
                                                 _%specializer-id170895%_
                                                 _%specializer-impl171207%_))))
                                        _%hd170573170635%_
                                        _%hd170570170627%_
                                        _%hd170567170619%_)
                                       (_%g170549170579%_ _%g170550170582%_))))
                               (_%g170549170579%_ _%g170550170582%_))
                           (_%g170549170579%_ _%g170550170582%_))
                       (_%g170549170579%_ _%g170550170582%_))))
               (_%g170549170579%_ _%g170550170582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170549170579%_
                                                    _%g170550170582%_))))
                                           (_%g170549170579%_
                                            _%g170550170582%_))))
                                   (_%g170549170579%_ _%g170550170582%_))))
                           (_%g170549170579%_ _%g170550170582%_))))
                   (_%g170549170579%_ _%g170550170582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170549170579%_
                                                    _%g170550170582%_)))))
                                       (_%g170548171210%_ _%L169658%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L169658%_))
                                         (let* ((_%g171214171267%_
                                                 (lambda (_%g171215171264%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g171215171264%_))))
                                                (_%g171213172438%_
                                                 (lambda (_%g171215171270%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g171215171270%_))
                                                       (let ((_%e171221171272%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g171215171270%_))))
                 (let ((_%hd171222171275%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171221171272%_)))
                       (_%tl171223171277%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171221171272%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd171222171275%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd171222171275%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl171223171277%_))
                               (let ((_%e171224171280%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl171223171277%_))))
                                 (let ((_%hd171225171283%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171224171280%_)))
                                       (_%tl171226171285%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171224171280%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd171225171283%_))
                                       (let ((_%e171227171288%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd171225171283%_))))
                                         (let ((_%hd171228171291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e171227171288%_)))
                                               (_%tl171229171293%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e171227171288%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd171228171291%_))
                                               (let ((_%e171230171296%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd171228171291%_))))
                                                 (let ((_%hd171231171299%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171230171296%_)))
                                                       (_%tl171232171301%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171230171296%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd171231171299%_))
                                                       (let ((_%e171233171304%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd171231171299%_))))
                 (let ((_%hd171234171307%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171233171304%_)))
                       (_%tl171235171309%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171233171304%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl171235171309%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl171232171301%_))
                           (let ((_%e171236171312%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl171232171301%_))))
                             (let ((_%hd171237171315%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171236171312%_)))
                                   (_%tl171238171317%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171236171312%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171237171315%_))
                                   (let ((_%e171239171320%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171237171315%_))))
                                     (let ((_%hd171240171323%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171239171320%_)))
                                           (_%tl171241171325%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171239171320%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd171240171323%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd171240171323%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl171241171325%_))
                                                   (let ((_%e171242171328%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl171241171325%_))))
                                                     (let ((_%hd171243171331%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171242171328%_)))
                                                           (_%tl171244171333%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171242171328%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd171243171331%_))
                                                           (let ((_%e171245171336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd171243171331%_))))
                     (let ((_%hd171246171339%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171245171336%_)))
                           (_%tl171247171341%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171245171336%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd171246171339%_))
                           (let ((_%e171248171344%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd171246171339%_))))
                             (let ((_%hd171249171347%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171248171344%_)))
                                   (_%tl171250171349%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171248171344%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171249171347%_))
                                   (let ((_%e171251171352%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171249171347%_))))
                                     (let ((_%hd171252171355%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171251171352%_)))
                                           (_%tl171253171357%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171251171352%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl171253171357%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl171250171349%_))
                                               (let ((_%e171254171360%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl171250171349%_))))
                                                 (let ((_%hd171255171363%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171254171360%_)))
                                                       (_%tl171256171365%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171254171360%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl171256171365%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl171247171341%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl171244171333%_))
                       (let ((_%e171257171368%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl171244171333%_))))
                         (let ((_%hd171258171371%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e171257171368%_)))
                               (_%tl171259171373%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e171257171368%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl171259171373%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl171238171317%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl171229171293%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl171226171285%_))
                                           (let ((_%e171260171376%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl171226171285%_))))
                                             (let ((_%hd171261171379%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e171260171376%_)))
                                                   (_%tl171262171381%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e171260171376%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl171262171381%_))
                                                   ((lambda (_%L171384%_
                                                             _%L171385%_
                                                             _%L171386%_
                                                             _%L171387%_
                                                             _%L171388%_)
                                                      (let* ((_%g171428171490%_
                                                              (lambda (_%g171429171487%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171429171487%_))))
                     (_%g171427172435%_
                      (lambda (_%g171429171493%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g171429171493%_))
                            (let ((_%e171435171495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g171429171493%_))))
                              (let ((_%hd171436171498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171435171495%_)))
                                    (_%tl171437171500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171435171495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171436171498%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd171436171498%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171437171500%_))
                                            (let ((_%e171438171503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171437171500%_))))
                                              (let ((_%hd171439171506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171438171503%_)))
                                                    (_%tl171440171508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171438171503%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171440171508%_))
                                                    (let ((_%e171441171511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171440171508%_))))
                                                      (let ((_%hd171442171514%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e171441171511%_)))
                    (_%tl171443171516%_
                     (let () (declare (not safe)) (##cdr _%e171441171511%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd171442171514%_))
                    (let ((_%e171444171519%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd171442171514%_))))
                      (let ((_%hd171445171522%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171444171519%_)))
                            (_%tl171446171524%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171444171519%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd171445171522%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd171445171522%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl171446171524%_))
                                    (let ((_%e171447171527%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl171446171524%_))))
                                      (let ((_%hd171448171530%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171447171527%_)))
                                            (_%tl171449171532%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171447171527%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd171448171530%_))
                                            (let ((_%e171450171535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd171448171530%_))))
                                              (let ((_%hd171451171538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171450171535%_)))
                                                    (_%tl171452171540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171450171535%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd171451171538%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd171451171538%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171452171540%_))
                                                            (let ((_%e171453171543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171452171540%_))))
                      (let ((_%hd171454171546%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171453171543%_)))
                            (_%tl171455171548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171453171543%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171455171548%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171449171532%_))
                                (let ((_%e171456171551%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171449171532%_))))
                                  (let ((_%hd171457171554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171456171551%_)))
                                        (_%tl171458171556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171456171551%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171457171554%_))
                                        (let ((_%e171459171559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171457171554%_))))
                                          (let ((_%hd171460171562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171459171559%_)))
                                                (_%tl171461171564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171459171559%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd171460171562%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd171460171562%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl171461171564%_))
                                                        (let ((_%e171462171567%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl171461171564%_))))
                  (let ((_%hd171463171570%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171462171567%_)))
                        (_%tl171464171572%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171462171567%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171464171572%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171458171556%_))
                            (let ((_%e171465171575%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171458171556%_))))
                              (let ((_%hd171466171578%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171465171575%_)))
                                    (_%tl171467171580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171465171575%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171466171578%_))
                                    (let ((_%e171468171583%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171466171578%_))))
                                      (let ((_%hd171469171586%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171468171583%_)))
                                            (_%tl171470171588%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171468171583%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171469171586%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171469171586%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171470171588%_))
                                                    (let ((_%e171471171591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171470171588%_))))
                                                      (let ((_%hd171472171594%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e171471171591%_)))
                    (_%tl171473171596%_
                     (let () (declare (not safe)) (##cdr _%e171471171591%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171473171596%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl171467171580%_))
                        (if (let ((__tmp173842
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl171467171580%_))))
                              (declare (not safe))
                              (##fx>= __tmp173842 '1))
                            (let ((_g173843_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl171467171580%_
                                      '1))))
                              (begin
                                (let ((_g173844_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173843_)
                                             (##vector-length _g173843_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173844_ 2)))
                                      (error "Context expects 2 values"
                                             _g173844_)))
                                (let ((_%target171474171599%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173843_ 0)))
                                      (_%tl171476171601%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173843_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171476171601%_))
                                      (let ((_%e171483171604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171476171601%_))))
                                        (let ((_%hd171484171607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171483171604%_)))
                                              (_%tl171485171609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171483171604%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171485171609%_))
                                              (letrec ((_%loop171477171612%_
                                                        (lambda (_%hd171475171615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref171481171617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd171475171615%_))
                      (let ((_%e171478171620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd171475171615%_))))
                        (let ((_%lp-hd171479171623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171478171620%_)))
                              (_%lp-tl171480171625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171478171620%_))))
                          (_%loop171477171612%_
                           _%lp-tl171480171625%_
                           (cons _%lp-hd171479171623%_
                                 _%kw-ref171481171617%_))))
                      (let ((_%kw-ref171482171628%_
                             (reverse _%kw-ref171481171617%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171443171516%_))
                            ((lambda (_%L171631%_
                                      _%L171632%_
                                      _%L171633%_
                                      _%L171634%_
                                      _%L171635%_)
                               (let* ((_%kw-count171686%_
                                       (length (let ((__tmp173845
                                                      (lambda (_%g171678171681%_
                                                               _%g171679171683%_)
                                                        (cons _%g171678171681%_
                                                              _%g171679171683%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173845
                                                  '()
                                                  _%L171632%_))))
                                      (_%self-index171688%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count171686%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L171386%_))
                                     (let* ((_%g171692171706%_
                                             (lambda (_%g171693171703%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g171693171703%_))))
                                            (_%g171691171829%_
                                             (lambda (_%g171693171709%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g171693171709%_))
                                                   (let ((_%e171696171711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g171693171709%_))))
                                                     (let ((_%hd171697171714%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171696171711%_)))
                                                           (_%tl171698171716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171696171711%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171698171716%_))
                                                           (let ((_%e171699171719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171698171716%_))))
                     (let ((_%hd171700171722%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171699171719%_)))
                           (_%tl171701171724%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171699171719%_))))
                       ((lambda (_%L171727%_ _%L171728%_)
                          (let* ((_%self171745%_
                                  (list-ref _%L171728%_ _%self-index171688%_))
                                 (_%receiver171750%_
                                  (let ((_%$e171747%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L171727%_))))
                                    (if _%$e171747%_
                                        _%$e171747%_
                                        _%self171745%_))))
                            (for-each
                             (lambda (_%g171752171754%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver171750%_
                                _%method-calls169678%_
                                _%slot-refs169679%_
                                _%g171752171754%_))
                             _%L171727%_)
                            (if (_%no-specializer?169682%_)
                                _%stx169586%_
                                (let* ((_%specializer-id171763%_
                                        (let* ((_%id171757%_
                                                (let ((__tmp173846
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169659%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp173846
                                                   '"::specialize")))
                                               (_%specializer-id171760%_
                                                (let ((__tmp173847
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx169586%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id171757%_
                                                   __tmp173847))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id171760%_))
                                          _%specializer-id171760%_))
                                       (_%$klass171765%_
                                        (let ((__tmp173848
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173848)))
                                       (_%$method-table171767%_
                                        (let ((__tmp173849
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173849)))
                                       (_%methods171769%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls169678%_)))
                                       (_%$methods171773%_
                                        (map (lambda (_%id171771%_)
                                               (let ((__tmp173850
                                                      (gensym _%id171771%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173850)))
                                             _%methods171769%_))
                                       (_%_171782%_
                                        (for-each
                                         (lambda (_%g171774171777%_
                                                  _%g171775171779%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls169678%_
                                              _%g171774171777%_
                                              _%g171775171779%_)))
                                         _%methods171769%_
                                         _%$methods171773%_))
                                       (_%methods-bind171792%_
                                        (map (lambda (_%g171784171787%_
                                                      _%g171785171789%_)
                                               (_%generate-method-bind169588%_
                                                _%$klass171765%_
                                                _%$method-table171767%_
                                                _%g171784171787%_
                                                _%g171785171789%_))
                                             _%methods171769%_
                                             _%$methods171773%_))
                                       (_%slots171794%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs169679%_)))
                                       (_%$slots171798%_
                                        (map (lambda (_%id171796%_)
                                               (let ((__tmp173851
                                                      (gensym _%id171796%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173851)))
                                             _%slots171794%_))
                                       (_%_171807%_
                                        (for-each
                                         (lambda (_%g171799171802%_
                                                  _%g171800171804%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs169679%_
                                              _%g171799171802%_
                                              _%g171800171804%_)))
                                         _%slots171794%_
                                         _%$slots171798%_))
                                       (_%slots-bind171816%_
                                        (map (lambda (_%g171808171811%_
                                                      _%g171809171813%_)
                                               (_%generate-slot-bind169589%_
                                                _%$klass171765%_
                                                _%g171808171811%_
                                                _%g171809171813%_))
                                             _%slots171794%_
                                             _%$slots171798%_))
                                       (_%specializer-impl171824%_
                                        (let* ((_%specializer-body171822%_
                                                (map (lambda (_%g171817171819%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver171750%_
                                                        _%$klass171765%_
                                                        _%method-calls169678%_
                                                        _%slot-refs169679%_
                                                        _%g171817171819%_))
                                                     _%L171727%_))
                                               (__tmp173852
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L171388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L171387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp173853
                                   (cons '%#lambda
                                         (cons _%L171728%_
                                               _%specializer-body171822%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp173853 _%L171386%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L171385%_ '())))
                                      '()))
                          '())
                    (cons _%L171384%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp173852
                                           _%stx169586%_)))
                                       (_%specializer-impl171826%_
                                        (_%generate-specializer-impl169590%_
                                         _%$klass171765%_
                                         _%$method-table171767%_
                                         _%methods-bind171792%_
                                         _%slots-bind171816%_
                                         _%specializer-impl171824%_)))
                                  (let ((__tmp173855
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L169659%_)))
                                        (__tmp173854
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id171763%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp173855
                                     '" => "
                                     __tmp173854))
                                  (_%generate-specializer-def169591%_
                                   _%L169659%_
                                   _%specializer-id171763%_
                                   _%specializer-impl171826%_)))))
                        _%tl171701171724%_
                        _%hd171700171722%_)))
                   (_%g171692171706%_ _%g171693171709%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171692171706%_
                                                    _%g171693171709%_)))))
                                       (_%g171691171829%_ _%L171386%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L171386%_))
                                         (let* ((_%g171833171863%_
                                                 (lambda (_%g171834171860%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g171834171860%_))))
                                                (_%g171832172431%_
                                                 (lambda (_%g171834171866%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g171834171866%_))
                                                       (let ((_%e171838171868%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g171834171866%_))))
                 (let ((_%hd171839171871%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171838171868%_)))
                       (_%tl171840171873%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171838171868%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl171840171873%_))
                       (let ((_%e171841171876%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl171840171873%_))))
                         (let ((_%hd171842171879%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e171841171876%_)))
                               (_%tl171843171881%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e171841171876%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd171842171879%_))
                               (let ((_%e171844171884%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd171842171879%_))))
                                 (let ((_%hd171845171887%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171844171884%_)))
                                       (_%tl171846171889%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171844171884%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd171845171887%_))
                                       (let ((_%e171847171892%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd171845171887%_))))
                                         (let ((_%hd171848171895%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e171847171892%_)))
                                               (_%tl171849171897%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e171847171892%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd171848171895%_))
                                               (let ((_%e171850171900%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd171848171895%_))))
                                                 (let ((_%hd171851171903%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171850171900%_)))
                                                       (_%tl171852171905%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171850171900%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl171852171905%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171849171897%_))
                                                           (let ((_%e171853171908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171849171897%_))))
                     (let ((_%hd171854171911%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171853171908%_)))
                           (_%tl171855171913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171853171908%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl171855171913%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl171846171889%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl171843171881%_))
                                   (let ((_%e171856171916%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl171843171881%_))))
                                     (let ((_%hd171857171919%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171856171916%_)))
                                           (_%tl171858171921%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171856171916%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl171858171921%_))
                                           ((lambda (_%L171924%_
                                                     _%L171925%_
                                                     _%L171926%_)
                                              (let* ((_%g171950171964%_
                                                      (lambda (_%g171951171961%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171951171961%_))))
                                                     (_%g171949172011%_
                                                      (lambda (_%g171951171967%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171951171967%_))
                                                            (let ((_%e171954171969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171951171967%_))))
                      (let ((_%hd171955171972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171954171969%_)))
                            (_%tl171956171974%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171954171969%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171956171974%_))
                            (let ((_%e171957171977%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171956171974%_))))
                              (let ((_%hd171958171980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171957171977%_)))
                                    (_%tl171959171982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171957171977%_))))
                                ((lambda (_%L171985%_ _%L171986%_)
                                   (let* ((_%self171999%_
                                           (list-ref
                                            _%L171986%_
                                            _%self-index171688%_))
                                          (_%receiver172004%_
                                           (let ((_%$e172001%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L171985%_))))
                                             (if _%$e172001%_
                                                 _%$e172001%_
                                                 _%self171999%_))))
                                     (for-each
                                      (lambda (_%g172006172008%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver172004%_
                                         _%method-calls169678%_
                                         _%slot-refs169679%_
                                         _%g172006172008%_))
                                      _%L171985%_)))
                                 _%tl171959171982%_
                                 _%hd171958171980%_)))
                            (_%g171950171964%_ _%g171951171967%_))))
                    (_%g171950171964%_ _%g171951171967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171949172011%_
                                                 _%L171925%_))
                                              (let* ((_%g172014172033%_
                                                      (lambda (_%g172015172030%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g172015172030%_))))
                                                     (_%g172013172144%_
                                                      (lambda (_%g172015172036%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g172015172036%_))
                                                            (let ((_%e172017172038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g172015172036%_))))
                      (let ((_%hd172018172041%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172017172038%_)))
                            (_%tl172019172043%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172017172038%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl172019172043%_))
                            (let ((_g173856_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl172019172043%_
                                      '0))))
                              (begin
                                (let ((_g173857_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173856_)
                                             (##vector-length _g173856_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173857_ 2)))
                                      (error "Context expects 2 values"
                                             _g173857_)))
                                (let ((_%target172020172046%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173856_ 0)))
                                      (_%tl172022172048%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173856_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl172022172048%_))
                                      (letrec ((_%loop172023172051%_
                                                (lambda (_%hd172021172054%_
                                                         _%clause172027172056%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd172021172054%_))
                                                      (let ((_%e172024172059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd172021172054%_))))
                (let ((_%lp-hd172025172062%_
                       (let () (declare (not safe)) (##car _%e172024172059%_)))
                      (_%lp-tl172026172064%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e172024172059%_))))
                  (_%loop172023172051%_
                   _%lp-tl172026172064%_
                   (cons _%lp-hd172025172062%_ _%clause172027172056%_))))
              (let ((_%clause172028172067%_ (reverse _%clause172027172056%_)))
                ((lambda (_%L172070%_)
                   (for-each
                    (lambda (_%clause172083%_)
                      (let* ((_%g172085172096%_
                              (lambda (_%g172086172093%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g172086172093%_))))
                             (_%g172084172134%_
                              (lambda (_%g172086172099%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g172086172099%_))
                                    (let ((_%e172089172101%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g172086172099%_))))
                                      (let ((_%hd172090172104%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172089172101%_)))
                                            (_%tl172091172106%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172089172101%_))))
                                        ((lambda (_%L172109%_ _%L172110%_)
                                           (let* ((_%self172122%_
                                                   (list-ref
                                                    _%L172110%_
                                                    _%self-index171688%_))
                                                  (_%receiver172127%_
                                                   (let ((_%$e172124%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L172109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e172124%_
                                                         _%$e172124%_
                                                         _%self172122%_))))
                                             (for-each
                                              (lambda (_%g172129172131%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver172127%_
                                                 _%method-calls169678%_
                                                 _%slot-refs169679%_
                                                 _%g172129172131%_))
                                              _%L172109%_)))
                                         _%tl172091172106%_
                                         _%hd172090172104%_)))
                                    (_%g172085172096%_ _%g172086172099%_)))))
                        (_%g172084172134%_ _%clause172083%_)))
                    (let ((__tmp173858
                           (lambda (_%g172136172139%_ _%g172137172141%_)
                             (cons _%g172136172139%_ _%g172137172141%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173858 '() _%L172070%_))))
                 _%clause172028172067%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop172023172051%_
                                         _%target172020172046%_
                                         '()))
                                      (_%g172014172033%_ _%g172015172036%_)))))
                            (_%g172014172033%_ _%g172015172036%_))))
                    (_%g172014172033%_ _%g172015172036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g172013172144%_
                                                 _%L171924%_))
                                              (if (_%no-specializer?169682%_)
                                                  _%stx169586%_
                                                  (let* ((_%specializer-id172153%_
                                                          (let* ((_%id172147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173859
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L169659%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173859 '"::specialize")))
                         (_%specializer-id172150%_
                          (let ((__tmp173860
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx169586%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172147%_
                             __tmp173860))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172150%_))
                    _%specializer-id172150%_))
                 (_%$klass172155%_
                  (let ((__tmp173861
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173861)))
                 (_%$method-table172157%_
                  (let ((__tmp173862
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173862)))
                 (_%methods172159%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls169678%_)))
                 (_%$methods172163%_
                  (map (lambda (_%id172161%_)
                         (let ((__tmp173863 (gensym _%id172161%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173863)))
                       _%methods172159%_))
                 (_%_172172%_
                  (for-each
                   (lambda (_%g172164172167%_ _%g172165172169%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls169678%_
                        _%g172164172167%_
                        _%g172165172169%_)))
                   _%methods172159%_
                   _%$methods172163%_))
                 (_%methods-bind172182%_
                  (map (lambda (_%g172174172177%_ _%g172175172179%_)
                         (_%generate-method-bind169588%_
                          _%$klass172155%_
                          _%$method-table172157%_
                          _%g172174172177%_
                          _%g172175172179%_))
                       _%methods172159%_
                       _%$methods172163%_))
                 (_%slots172184%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs169679%_)))
                 (_%$slots172188%_
                  (map (lambda (_%id172186%_)
                         (let ((__tmp173864 (gensym _%id172186%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173864)))
                       _%slots172184%_))
                 (_%_172197%_
                  (for-each
                   (lambda (_%g172189172192%_ _%g172190172194%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs169679%_
                        _%g172189172192%_
                        _%g172190172194%_)))
                   _%slots172184%_
                   _%$slots172188%_))
                 (_%slots-bind172206%_
                  (map (lambda (_%g172198172201%_ _%g172199172203%_)
                         (_%generate-slot-bind169589%_
                          _%$klass172155%_
                          _%g172198172201%_
                          _%g172199172203%_))
                       _%slots172184%_
                       _%$slots172188%_))
                 (_%specializer-lambda-expr172284%_
                  (let* ((_%g172208172222%_
                          (lambda (_%g172209172219%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172209172219%_))))
                         (_%g172207172281%_
                          (lambda (_%g172209172225%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172209172225%_))
                                (let ((_%e172212172227%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172209172225%_))))
                                  (let ((_%hd172213172230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172212172227%_)))
                                        (_%tl172214172232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172212172227%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl172214172232%_))
                                        (let ((_%e172215172235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl172214172232%_))))
                                          (let ((_%hd172216172238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172215172235%_)))
                                                (_%tl172217172240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172215172235%_))))
                                            ((lambda (_%L172243%_ _%L172244%_)
                                               (let* ((_%self172267%_
                                                       (list-ref
                                                        _%L172244%_
                                                        _%self-index171688%_))
                                                      (_%receiver172272%_
                                                       (let ((_%$e172269%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L172243%_))))
                 (if _%$e172269%_ _%$e172269%_ _%self172267%_)))
              (_%body172278%_
               (map (lambda (_%g172273172275%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver172272%_
                       _%$klass172155%_
                       _%method-calls169678%_
                       _%slot-refs169679%_
                       _%g172273172275%_))
                    _%L172243%_))
              (__tmp173865 (cons '%#lambda (cons _%L172244%_ _%body172278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp173865
                                                  _%L171925%_)))
                                             _%tl172217172240%_
                                             _%hd172216172238%_)))
                                        (_%g172208172222%_
                                         _%g172209172225%_))))
                                (_%g172208172222%_ _%g172209172225%_)))))
                    (_%g172207172281%_ _%L171925%_)))
                 (_%specializer-case-lambda-expr172424%_
                  (let* ((_%g172286172305%_
                          (lambda (_%g172287172302%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172287172302%_))))
                         (_%g172285172421%_
                          (lambda (_%g172287172308%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172287172308%_))
                                (let ((_%e172289172310%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172287172308%_))))
                                  (let ((_%hd172290172313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172289172310%_)))
                                        (_%tl172291172315%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172289172310%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172291172315%_))
                                        (let ((_g173866_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172291172315%_
                                                  '0))))
                                          (begin
                                            (let ((_g173867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173866_)
                                                         (##vector-length
                                                          _g173866_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173867_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173867_)))
                                            (let ((_%target172292172318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173866_
                                                      0)))
                                                  (_%tl172294172320%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173866_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172294172320%_))
                                                  (letrec ((_%loop172295172323%_
                                                            (lambda (_%hd172293172326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause172299172328%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172293172326%_))
                          (let ((_%e172296172331%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172293172326%_))))
                            (let ((_%lp-hd172297172334%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172296172331%_)))
                                  (_%lp-tl172298172336%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172296172331%_))))
                              (_%loop172295172323%_
                               _%lp-tl172298172336%_
                               (cons _%lp-hd172297172334%_
                                     _%clause172299172328%_))))
                          (let ((_%clause172300172339%_
                                 (reverse _%clause172299172328%_)))
                            ((lambda (_%L172342%_)
                               (let* ((_%clauses172419%_
                                       (map (lambda (_%clause172356%_)
                                              (let* ((_%g172358172369%_
                                                      (lambda (_%g172359172366%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g172359172366%_))))
                                                     (_%g172357172409%_
                                                      (lambda (_%g172359172372%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g172359172372%_))
                                                            (let ((_%e172362172374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g172359172372%_))))
                      (let ((_%hd172363172377%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172362172374%_)))
                            (_%tl172364172379%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172362172374%_))))
                        ((lambda (_%L172382%_ _%L172383%_)
                           (let* ((_%self172395%_
                                   (list-ref _%L172383%_ _%self-index171688%_))
                                  (_%receiver172400%_
                                   (let ((_%$e172397%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L172382%_))))
                                     (if _%$e172397%_
                                         _%$e172397%_
                                         _%self172395%_)))
                                  (_%body172406%_
                                   (map (lambda (_%g172401172403%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver172400%_
                                           _%$klass172155%_
                                           _%method-calls169678%_
                                           _%slot-refs169679%_
                                           _%g172401172403%_))
                                        _%L172382%_)))
                             (cons _%L172383%_ _%body172406%_)))
                         _%tl172364172379%_
                         _%hd172363172377%_)))
                    (_%g172358172369%_ _%g172359172372%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g172357172409%_
                                                 _%clause172356%_)))
                                            (let ((__tmp173868
                                                   (lambda (_%g172411172414%_
                                                            _%g172412172416%_)
                                                     (cons _%g172411172414%_
                                                           _%g172412172416%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173868
                                               '()
                                               _%L172342%_))))
                                      (__tmp173869
                                       (cons '%#case-lambda
                                             _%clauses172419%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp173869
                                  _%L171924%_)))
                             _%clause172300172339%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop172295172323%_
                                                     _%target172292172318%_
                                                     '()))
                                                  (_%g172286172305%_
                                                   _%g172287172308%_)))))
                                        (_%g172286172305%_
                                         _%g172287172308%_))))
                                (_%g172286172305%_ _%g172287172308%_)))))
                    (_%g172285172421%_ _%L171924%_)))
                 (_%specializer-impl172426%_
                  (let ((__tmp173870
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L171388%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L171387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp173871
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L171926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr172284%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr172424%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173871
                                                _%stx169586%_))
                                             '()))
                                 '())
                           (cons _%L171385%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L171384%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173870 _%stx169586%_)))
                 (_%specializer-impl172428%_
                  (_%generate-specializer-impl169590%_
                   _%$klass172155%_
                   _%$method-table172157%_
                   _%methods-bind172182%_
                   _%slots-bind172206%_
                   _%specializer-impl172426%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173873
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L169659%_)))
                                                          (__tmp173872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172153%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173873
                                                       '" => "
                                                       __tmp173872))
                                                    (_%generate-specializer-def169591%_
                                                     _%L169659%_
                                                     _%specializer-id172153%_
                                                     _%specializer-impl172428%_))))
                                            _%hd171857171919%_
                                            _%hd171854171911%_
                                            _%hd171851171903%_)
                                           (_%g171833171863%_
                                            _%g171834171866%_))))
                                   (_%g171833171863%_ _%g171834171866%_))
                               (_%g171833171863%_ _%g171834171866%_))
                           (_%g171833171863%_ _%g171834171866%_))))
                   (_%g171833171863%_ _%g171834171866%_))
               (_%g171833171863%_ _%g171834171866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171833171863%_
                                                _%g171834171866%_))))
                                       (_%g171833171863%_ _%g171834171866%_))))
                               (_%g171833171863%_ _%g171834171866%_))))
                       (_%g171833171863%_ _%g171834171866%_))))
               (_%g171833171863%_ _%g171834171866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g171832172431%_ _%L171386%_))
                                         _%stx169586%_))))
                             _%hd171484171607%_
                             _%kw-ref171482171628%_
                             _%hd171472171594%_
                             _%hd171463171570%_
                             _%hd171454171546%_)
                            (_%g171428171490%_ _%g171429171493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171477171612%_
                                                 _%target171474171599%_
                                                 '()))
                                              (_%g171428171490%_
                                               _%g171429171493%_))))
                                      (_%g171428171490%_ _%g171429171493%_)))))
                            (_%g171428171490%_ _%g171429171493%_))
                        (_%g171428171490%_ _%g171429171493%_))
                    (_%g171428171490%_ _%g171429171493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171428171490%_
                                                     _%g171429171493%_))
                                                (_%g171428171490%_
                                                 _%g171429171493%_))
                                            (_%g171428171490%_
                                             _%g171429171493%_))))
                                    (_%g171428171490%_ _%g171429171493%_))))
                            (_%g171428171490%_ _%g171429171493%_))
                        (_%g171428171490%_ _%g171429171493%_))))
                (_%g171428171490%_ _%g171429171493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171428171490%_
                                                     _%g171429171493%_))
                                                (_%g171428171490%_
                                                 _%g171429171493%_))))
                                        (_%g171428171490%_
                                         _%g171429171493%_))))
                                (_%g171428171490%_ _%g171429171493%_))
                            (_%g171428171490%_ _%g171429171493%_))))
                    (_%g171428171490%_ _%g171429171493%_))
                (_%g171428171490%_ _%g171429171493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171428171490%_
                                                     _%g171429171493%_))))
                                            (_%g171428171490%_
                                             _%g171429171493%_))))
                                    (_%g171428171490%_ _%g171429171493%_))
                                (_%g171428171490%_ _%g171429171493%_))
                            (_%g171428171490%_ _%g171429171493%_))))
                    (_%g171428171490%_ _%g171429171493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171428171490%_
                                                     _%g171429171493%_))))
                                            (_%g171428171490%_
                                             _%g171429171493%_))
                                        (_%g171428171490%_ _%g171429171493%_))
                                    (_%g171428171490%_ _%g171429171493%_))))
                            (_%g171428171490%_ _%g171429171493%_)))))
                (_%g171427172435%_ _%L171385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd171261171379%_
                                                    _%hd171258171371%_
                                                    _%hd171255171363%_
                                                    _%hd171252171355%_
                                                    _%hd171234171307%_)
                                                   (_%g171214171267%_
                                                    _%g171215171270%_))))
                                           (_%g171214171267%_
                                            _%g171215171270%_))
                                       (_%g171214171267%_ _%g171215171270%_))
                                   (_%g171214171267%_ _%g171215171270%_))
                               (_%g171214171267%_ _%g171215171270%_))))
                       (_%g171214171267%_ _%g171215171270%_))
                   (_%g171214171267%_ _%g171215171270%_))
               (_%g171214171267%_ _%g171215171270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171214171267%_
                                                _%g171215171270%_))
                                           (_%g171214171267%_
                                            _%g171215171270%_))))
                                   (_%g171214171267%_ _%g171215171270%_))))
                           (_%g171214171267%_ _%g171215171270%_))))
                   (_%g171214171267%_ _%g171215171270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171214171267%_
                                                    _%g171215171270%_))
                                               (_%g171214171267%_
                                                _%g171215171270%_))
                                           (_%g171214171267%_
                                            _%g171215171270%_))))
                                   (_%g171214171267%_ _%g171215171270%_))))
                           (_%g171214171267%_ _%g171215171270%_))
                       (_%g171214171267%_ _%g171215171270%_))))
               (_%g171214171267%_ _%g171215171270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171214171267%_
                                                _%g171215171270%_))))
                                       (_%g171214171267%_ _%g171215171270%_))))
                               (_%g171214171267%_ _%g171215171270%_))
                           (_%g171214171267%_ _%g171215171270%_))
                       (_%g171214171267%_ _%g171215171270%_))))
               (_%g171214171267%_ _%g171215171270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g171213172438%_ _%L169658%_))
                                         _%stx169586%_))))))))
                  (_%__kont172672172673%_ (lambda () _%stx169586%_)))
              (let ((_%__match172701172702%_
                     (lambda (_%e169598169626%_
                              _%hd169599169629%_
                              _%tl169600169631%_
                              _%e169601169634%_
                              _%hd169602169637%_
                              _%tl169603169639%_
                              _%e169604169642%_
                              _%hd169605169645%_
                              _%tl169606169647%_
                              _%e169607169650%_
                              _%hd169608169653%_
                              _%tl169609169655%_)
                       (let ((_%L169658%_ _%hd169608169653%_)
                             (_%L169659%_ _%hd169605169645%_))
                         (if (let ((__tmp173874
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169659%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp173874))
                             (_%__kont172670172671%_ _%L169658%_ _%L169659%_)
                             (_%__kont172672172673%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172668172669%_))
                    (let ((_%e169598169626%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172668172669%_))))
                      (let ((_%tl169600169631%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169598169626%_)))
                            (_%hd169599169629%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169598169626%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169600169631%_))
                            (let ((_%e169601169634%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169600169631%_))))
                              (let ((_%tl169603169639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169601169634%_)))
                                    (_%hd169602169637%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169601169634%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169602169637%_))
                                    (let ((_%e169604169642%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169602169637%_))))
                                      (let ((_%tl169606169647%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169604169642%_)))
                                            (_%hd169605169645%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169604169642%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169606169647%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169603169639%_))
                                                (let ((_%e169607169650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169603169639%_))))
                                                  (let ((_%tl169609169655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169607169650%_)))
                                                        (_%hd169608169653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169607169650%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169609169655%_))
                                                        (_%__match172701172702%_
                                                         _%e169598169626%_
                                                         _%hd169599169629%_
                                                         _%tl169600169631%_
                                                         _%e169601169634%_
                                                         _%hd169602169637%_
                                                         _%tl169603169639%_
                                                         _%e169604169642%_
                                                         _%hd169605169645%_
                                                         _%tl169606169647%_
                                                         _%e169607169650%_
                                                         _%hd169608169653%_
                                                         _%tl169609169655%_)
                                                        (_%__kont172672172673%_))))
                                                (_%__kont172672172673%_))
                                            (_%__kont172672172673%_))))
                                    (_%__kont172672172673%_))))
                            (_%__kont172672172673%_))))
                    (_%__kont172672172673%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self169438%_ _%stx169439%_)
        (let* ((_%__stx172704172705%_ _%stx169439%_)
               (_%g169442169475%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172704172705%_)))))
          (let ((_%__kont172706172707%_ (lambda (_%L169565%_) _%L169565%_))
                (_%__kont172708172709%_
                 (lambda (_%L169504%_ _%L169505%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self169438%_ _%L169504%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx172704172705%_))
                (let ((_%e169445169525%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx172704172705%_))))
                  (let ((_%tl169447169530%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169445169525%_)))
                        (_%hd169446169528%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169445169525%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169447169530%_))
                        (let ((_%e169448169533%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169447169530%_))))
                          (let ((_%tl169450169538%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169448169533%_)))
                                (_%hd169449169536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169448169533%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169449169536%_))
                                (let ((_%e169451169541%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169449169536%_))))
                                  (let ((_%tl169453169546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169451169541%_)))
                                        (_%hd169452169544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169451169541%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169452169544%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd169452169544%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169453169546%_))
                                                (let ((_%e169454169549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169453169546%_))))
                                                  (let ((_%tl169456169554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169454169549%_)))
                                                        (_%hd169455169552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169454169549%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169456169554%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169450169538%_))
                                                            (let ((_%e169457169557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169450169538%_))))
                      (let ((_%tl169459169562%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169457169557%_)))
                            (_%hd169458169560%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169457169557%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169459169562%_))
                            (_%__kont172706172707%_ _%hd169455169552%_)
                            (let ()
                              (declare (not safe))
                              (_%g169442169475%_)))))
                    (let () (declare (not safe)) (_%g169442169475%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl169450169538%_))
                    (let ((_%e169468169496%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169450169538%_))))
                      (let ((_%tl169470169501%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169468169496%_)))
                            (_%hd169469169499%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169468169496%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169470169501%_))
                            (_%__kont172708172709%_
                             _%hd169469169499%_
                             _%hd169449169536%_)
                            (let ()
                              (declare (not safe))
                              (_%g169442169475%_)))))
                    (let () (declare (not safe)) (_%g169442169475%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169450169538%_))
                                                    (let ((_%e169468169496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169450169538%_))))
                                                      (let ((_%tl169470169501%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169468169496%_)))
                    (_%hd169469169499%_
                     (let () (declare (not safe)) (##car _%e169468169496%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169470169501%_))
                    (_%__kont172708172709%_
                     _%hd169469169499%_
                     _%hd169449169536%_)
                    (let () (declare (not safe)) (_%g169442169475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g169442169475%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169450169538%_))
                                                (let ((_%e169468169496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169450169538%_))))
                                                  (let ((_%tl169470169501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169468169496%_)))
                                                        (_%hd169469169499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169468169496%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169470169501%_))
                                                        (_%__kont172708172709%_
                                                         _%hd169469169499%_
                                                         _%hd169449169536%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g169442169475%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169442169475%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169450169538%_))
                                            (let ((_%e169468169496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169450169538%_))))
                                              (let ((_%tl169470169501%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169468169496%_)))
                                                    (_%hd169469169499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169468169496%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169470169501%_))
                                                    (_%__kont172708172709%_
                                                     _%hd169469169499%_
                                                     _%hd169449169536%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g169442169475%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169442169475%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169450169538%_))
                                    (let ((_%e169468169496%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169450169538%_))))
                                      (let ((_%tl169470169501%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169468169496%_)))
                                            (_%hd169469169499%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169468169496%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169470169501%_))
                                            (_%__kont172708172709%_
                                             _%hd169469169499%_
                                             _%hd169449169536%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g169442169475%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169442169475%_))))))
                        (let () (declare (not safe)) (_%g169442169475%_)))))
                (let () (declare (not safe)) (_%g169442169475%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self169354%_ _%stx169355%_)
        (let* ((_%g169357169378%_
                (lambda (_%g169358169375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169358169375%_))))
               (_%g169356169435%_
                (lambda (_%g169358169381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169358169381%_))
                      (let ((_%e169362169383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169358169381%_))))
                        (let ((_%hd169363169386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169362169383%_)))
                              (_%tl169364169388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169362169383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169364169388%_))
                              (let ((_%e169365169391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169364169388%_))))
                                (let ((_%hd169366169394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169365169391%_)))
                                      (_%tl169367169396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169365169391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169367169396%_))
                                      (let ((_%e169368169399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169367169396%_))))
                                        (let ((_%hd169369169402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169368169399%_)))
                                              (_%tl169370169404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169368169399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169370169404%_))
                                              (let ((_%e169371169407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169370169404%_))))
                                                (let ((_%hd169372169410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169371169407%_)))
                                                      (_%tl169373169412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169371169407%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169373169412%_))
                                                      ((lambda (_%L169415%_
                                                                _%L169416%_
                                                                _%L169417%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self169354%_
                                                            _%L169416%_)))
                                                       _%hd169372169410%_
                                                       _%hd169369169402%_
                                                       _%hd169366169394%_)
                                                      (_%g169357169378%_
                                                       _%g169358169381%_))))
                                              (_%g169357169378%_
                                               _%g169358169381%_))))
                                      (_%g169357169378%_ _%g169358169381%_))))
                              (_%g169357169378%_ _%g169358169381%_))))
                      (_%g169357169378%_ _%g169358169381%_)))))
          (_%g169356169435%_ _%stx169355%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self168315%_ _%stx168316%_)
        (let* ((_%__stx172770172771%_ _%stx168316%_)
               (_%g168324168546%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172770172771%_)))))
          (let ((_%__kont172772172773%_
                 (lambda (_%L169303%_ _%L169304%_ _%L169305%_ _%L169306%_)
                   (let ((__tmp173876
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168315%_ 'methods)))
                         (__tmp173875
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L169304%_))))
                     (declare (not safe))
                     (hash-put! __tmp173876 __tmp173875 '#t))
                   (for-each
                    (lambda (_%g169339169341%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self168315%_ _%g169339169341%_)))
                    (let ((__tmp173877
                           (lambda (_%g169343169346%_ _%g169344169348%_)
                             (cons _%g169343169346%_ _%g169344169348%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173877 '() _%L169303%_)))))
                (_%__kont172776172777%_
                 (lambda (_%L169138%_
                          _%L169139%_
                          _%L169140%_
                          _%L169141%_
                          _%L169142%_)
                   (let ((__tmp173879
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168315%_ 'methods)))
                         (__tmp173878
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L169139%_))))
                     (declare (not safe))
                     (hash-put! __tmp173879 __tmp173878 '#t))
                   (for-each
                    (lambda (_%g169182169184%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self168315%_ _%g169182169184%_)))
                    (let ((__tmp173880
                           (lambda (_%g169186169189%_ _%g169187169191%_)
                             (cons _%g169186169189%_ _%g169187169191%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173880 '() _%L169138%_)))))
                (_%__kont172780172781%_
                 (lambda (_%L168971%_ _%L168972%_ _%L168973%_)
                   (let ((__tmp173882
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168315%_ 'slots)))
                         (__tmp173881
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168971%_))))
                     (declare (not safe))
                     (hash-put! __tmp173882 __tmp173881 '#t))))
                (_%__kont172782172783%_
                 (lambda (_%L168848%_ _%L168849%_ _%L168850%_ _%L168851%_)
                   (let ((__tmp173884
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168315%_ 'slots)))
                         (__tmp173883
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168849%_))))
                     (declare (not safe))
                     (hash-put! __tmp173884 __tmp173883 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self168315%_ _%L168848%_))))
                (_%__kont172784172785%_
                 (lambda (_%L168722%_ _%L168723%_)
                   (let* ((_%accessor168745%_
                           (let ((__tmp173885
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168723%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173885)))
                          (_%klass168747%_
                           (let ((__tmp173886
                                  (##structure-ref
                                   _%accessor168745%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx168316%_
                              __tmp173886)))
                          (_%slot168749%_
                           (##structure-ref
                            _%accessor168745%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor168745%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168747%_
                                     _%slot168749%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168747%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173888
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self168315%_ 'slots)))
                               (__tmp173887
                                (##structure-ref
                                 _%accessor168745%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp173888 __tmp173887 '#t))))))
                (_%__kont172786172787%_
                 (lambda (_%L168622%_ _%L168623%_ _%L168624%_)
                   (let* ((_%mutator168651%_
                           (let ((__tmp173889
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168624%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173889)))
                          (_%klass168653%_
                           (let ((__tmp173890
                                  (##structure-ref
                                   _%mutator168651%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx168316%_
                              __tmp173890)))
                          (_%slot168655%_
                           (##structure-ref
                            _%mutator168651%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator168651%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168653%_
                                     _%slot168655%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168653%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173891
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self168315%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp173891 _%slot168655%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self168315%_ _%L168622%_)))))
                (_%__kont172788172789%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self168315%_ _%stx168316%_)))))
            (let* ((_%__match173269173270%_
                    (lambda (_%e168518168558%_
                             _%hd168519168561%_
                             _%tl168520168563%_
                             _%e168521168566%_
                             _%hd168522168569%_
                             _%tl168523168571%_
                             _%e168524168574%_
                             _%hd168525168577%_
                             _%tl168526168579%_
                             _%e168527168582%_
                             _%hd168528168585%_
                             _%tl168529168587%_
                             _%e168530168590%_
                             _%hd168531168593%_
                             _%tl168532168595%_
                             _%e168533168598%_
                             _%hd168534168601%_
                             _%tl168535168603%_
                             _%e168536168606%_
                             _%hd168537168609%_
                             _%tl168538168611%_
                             _%e168539168614%_
                             _%hd168540168617%_
                             _%tl168541168619%_)
                      (let ((_%L168622%_ _%hd168540168617%_)
                            (_%L168623%_ _%hd168537168609%_)
                            (_%L168624%_ _%hd168528168585%_))
                        (if (and (let ((__tmp173892
                                        (let ((__tmp173893
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168624%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173893))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173892
                                    'gxc#!mutator::t))
                                 (let ((__tmp173894
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168315%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168623%_
                                    __tmp173894)))
                            (_%__kont172786172787%_
                             _%L168622%_
                             _%L168623%_
                             _%L168624%_)
                            (_%__kont172788172789%_)))))
                   (_%__match173267173268%_
                    (lambda (_%e168518168558%_
                             _%hd168519168561%_
                             _%tl168520168563%_
                             _%e168521168566%_
                             _%hd168522168569%_
                             _%tl168523168571%_
                             _%e168524168574%_
                             _%hd168525168577%_
                             _%tl168526168579%_
                             _%e168527168582%_
                             _%hd168528168585%_
                             _%tl168529168587%_
                             _%e168530168590%_
                             _%hd168531168593%_
                             _%tl168532168595%_
                             _%e168533168598%_
                             _%hd168534168601%_
                             _%tl168535168603%_
                             _%e168536168606%_
                             _%hd168537168609%_
                             _%tl168538168611%_
                             _%e168539168614%_
                             _%hd168540168617%_
                             _%tl168541168619%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168541168619%_))
                          (_%__match173269173270%_
                           _%e168518168558%_
                           _%hd168519168561%_
                           _%tl168520168563%_
                           _%e168521168566%_
                           _%hd168522168569%_
                           _%tl168523168571%_
                           _%e168524168574%_
                           _%hd168525168577%_
                           _%tl168526168579%_
                           _%e168527168582%_
                           _%hd168528168585%_
                           _%tl168529168587%_
                           _%e168530168590%_
                           _%hd168531168593%_
                           _%tl168532168595%_
                           _%e168533168598%_
                           _%hd168534168601%_
                           _%tl168535168603%_
                           _%e168536168606%_
                           _%hd168537168609%_
                           _%tl168538168611%_
                           _%e168539168614%_
                           _%hd168540168617%_
                           _%tl168541168619%_)
                          (_%__kont172788172789%_))))
                   (_%__match173261173262%_
                    (lambda (_%e168518168558%_
                             _%hd168519168561%_
                             _%tl168520168563%_
                             _%e168521168566%_
                             _%hd168522168569%_
                             _%tl168523168571%_
                             _%e168524168574%_
                             _%hd168525168577%_
                             _%tl168526168579%_
                             _%e168527168582%_
                             _%hd168528168585%_
                             _%tl168529168587%_
                             _%e168530168590%_
                             _%hd168531168593%_
                             _%tl168532168595%_
                             _%e168533168598%_
                             _%hd168534168601%_
                             _%tl168535168603%_
                             _%e168536168606%_
                             _%hd168537168609%_
                             _%tl168538168611%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168532168595%_))
                          (let ((_%e168539168614%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168532168595%_))))
                            (let ((_%tl168541168619%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168539168614%_)))
                                  (_%hd168540168617%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168539168614%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168541168619%_))
                                  (_%__match173269173270%_
                                   _%e168518168558%_
                                   _%hd168519168561%_
                                   _%tl168520168563%_
                                   _%e168521168566%_
                                   _%hd168522168569%_
                                   _%tl168523168571%_
                                   _%e168524168574%_
                                   _%hd168525168577%_
                                   _%tl168526168579%_
                                   _%e168527168582%_
                                   _%hd168528168585%_
                                   _%tl168529168587%_
                                   _%e168530168590%_
                                   _%hd168531168593%_
                                   _%tl168532168595%_
                                   _%e168533168598%_
                                   _%hd168534168601%_
                                   _%tl168535168603%_
                                   _%e168536168606%_
                                   _%hd168537168609%_
                                   _%tl168538168611%_
                                   _%e168539168614%_
                                   _%hd168540168617%_
                                   _%tl168541168619%_)
                                  (_%__kont172788172789%_))))
                          (_%__kont172788172789%_))))
                   (_%__match173207173208%_
                    (lambda (_%e168494168666%_
                             _%hd168495168669%_
                             _%tl168496168671%_
                             _%e168497168674%_
                             _%hd168498168677%_
                             _%tl168499168679%_
                             _%e168500168682%_
                             _%hd168501168685%_
                             _%tl168502168687%_
                             _%e168503168690%_
                             _%hd168504168693%_
                             _%tl168505168695%_
                             _%e168506168698%_
                             _%hd168507168701%_
                             _%tl168508168703%_
                             _%e168509168706%_
                             _%hd168510168709%_
                             _%tl168511168711%_
                             _%e168512168714%_
                             _%hd168513168717%_
                             _%tl168514168719%_)
                      (let ((_%L168722%_ _%hd168513168717%_)
                            (_%L168723%_ _%hd168504168693%_))
                        (if (and (let ((__tmp173895
                                        (let ((__tmp173896
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168723%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173896))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173895
                                    'gxc#!accessor::t))
                                 (let ((__tmp173897
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168315%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168722%_
                                    __tmp173897)))
                            (_%__kont172784172785%_ _%L168722%_ _%L168723%_)
                            (_%__kont172788172789%_)))))
                   (_%__match173205173206%_
                    (lambda (_%e168494168666%_
                             _%hd168495168669%_
                             _%tl168496168671%_
                             _%e168497168674%_
                             _%hd168498168677%_
                             _%tl168499168679%_
                             _%e168500168682%_
                             _%hd168501168685%_
                             _%tl168502168687%_
                             _%e168503168690%_
                             _%hd168504168693%_
                             _%tl168505168695%_
                             _%e168506168698%_
                             _%hd168507168701%_
                             _%tl168508168703%_
                             _%e168509168706%_
                             _%hd168510168709%_
                             _%tl168511168711%_
                             _%e168512168714%_
                             _%hd168513168717%_
                             _%tl168514168719%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168508168703%_))
                          (_%__match173207173208%_
                           _%e168494168666%_
                           _%hd168495168669%_
                           _%tl168496168671%_
                           _%e168497168674%_
                           _%hd168498168677%_
                           _%tl168499168679%_
                           _%e168500168682%_
                           _%hd168501168685%_
                           _%tl168502168687%_
                           _%e168503168690%_
                           _%hd168504168693%_
                           _%tl168505168695%_
                           _%e168506168698%_
                           _%hd168507168701%_
                           _%tl168508168703%_
                           _%e168509168706%_
                           _%hd168510168709%_
                           _%tl168511168711%_
                           _%e168512168714%_
                           _%hd168513168717%_
                           _%tl168514168719%_)
                          (_%__match173261173262%_
                           _%e168494168666%_
                           _%hd168495168669%_
                           _%tl168496168671%_
                           _%e168497168674%_
                           _%hd168498168677%_
                           _%tl168499168679%_
                           _%e168500168682%_
                           _%hd168501168685%_
                           _%tl168502168687%_
                           _%e168503168690%_
                           _%hd168504168693%_
                           _%tl168505168695%_
                           _%e168506168698%_
                           _%hd168507168701%_
                           _%tl168508168703%_
                           _%e168509168706%_
                           _%hd168510168709%_
                           _%tl168511168711%_
                           _%e168512168714%_
                           _%hd168513168717%_
                           _%tl168514168719%_))))
                   (_%__match173151173152%_
                    (lambda (_%e168459168760%_
                             _%hd168460168763%_
                             _%tl168461168765%_
                             _%e168462168768%_
                             _%hd168463168771%_
                             _%tl168464168773%_
                             _%e168465168776%_
                             _%hd168466168779%_
                             _%tl168467168781%_
                             _%e168468168784%_
                             _%hd168469168787%_
                             _%tl168470168789%_
                             _%e168471168792%_
                             _%hd168472168795%_
                             _%tl168473168797%_
                             _%e168474168800%_
                             _%hd168475168803%_
                             _%tl168476168805%_
                             _%e168477168808%_
                             _%hd168478168811%_
                             _%tl168479168813%_
                             _%e168480168816%_
                             _%hd168481168819%_
                             _%tl168482168821%_
                             _%e168483168824%_
                             _%hd168484168827%_
                             _%tl168485168829%_
                             _%e168486168832%_
                             _%hd168487168835%_
                             _%tl168488168837%_
                             _%e168489168840%_
                             _%hd168490168843%_
                             _%tl168491168845%_)
                      (let ((_%L168848%_ _%hd168490168843%_)
                            (_%L168849%_ _%hd168487168835%_)
                            (_%L168850%_ _%hd168478168811%_)
                            (_%L168851%_ _%hd168469168787%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168851%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168851%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp173898
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168315%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168850%_
                                    __tmp173898)))
                            (_%__kont172782172783%_
                             _%L168848%_
                             _%L168849%_
                             _%L168850%_
                             _%L168851%_)
                            (_%__kont172788172789%_)))))
                   (_%__match173143173144%_
                    (lambda (_%e168459168760%_
                             _%hd168460168763%_
                             _%tl168461168765%_
                             _%e168462168768%_
                             _%hd168463168771%_
                             _%tl168464168773%_
                             _%e168465168776%_
                             _%hd168466168779%_
                             _%tl168467168781%_
                             _%e168468168784%_
                             _%hd168469168787%_
                             _%tl168470168789%_
                             _%e168471168792%_
                             _%hd168472168795%_
                             _%tl168473168797%_
                             _%e168474168800%_
                             _%hd168475168803%_
                             _%tl168476168805%_
                             _%e168477168808%_
                             _%hd168478168811%_
                             _%tl168479168813%_
                             _%e168480168816%_
                             _%hd168481168819%_
                             _%tl168482168821%_
                             _%e168483168824%_
                             _%hd168484168827%_
                             _%tl168485168829%_
                             _%e168486168832%_
                             _%hd168487168835%_
                             _%tl168488168837%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168482168821%_))
                          (let ((_%e168489168840%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168482168821%_))))
                            (let ((_%tl168491168845%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168489168840%_)))
                                  (_%hd168490168843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168489168840%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168491168845%_))
                                  (_%__match173151173152%_
                                   _%e168459168760%_
                                   _%hd168460168763%_
                                   _%tl168461168765%_
                                   _%e168462168768%_
                                   _%hd168463168771%_
                                   _%tl168464168773%_
                                   _%e168465168776%_
                                   _%hd168466168779%_
                                   _%tl168467168781%_
                                   _%e168468168784%_
                                   _%hd168469168787%_
                                   _%tl168470168789%_
                                   _%e168471168792%_
                                   _%hd168472168795%_
                                   _%tl168473168797%_
                                   _%e168474168800%_
                                   _%hd168475168803%_
                                   _%tl168476168805%_
                                   _%e168477168808%_
                                   _%hd168478168811%_
                                   _%tl168479168813%_
                                   _%e168480168816%_
                                   _%hd168481168819%_
                                   _%tl168482168821%_
                                   _%e168483168824%_
                                   _%hd168484168827%_
                                   _%tl168485168829%_
                                   _%e168486168832%_
                                   _%hd168487168835%_
                                   _%tl168488168837%_
                                   _%e168489168840%_
                                   _%hd168490168843%_
                                   _%tl168491168845%_)
                                  (_%__kont172788172789%_))))
                          (_%__match173267173268%_
                           _%e168459168760%_
                           _%hd168460168763%_
                           _%tl168461168765%_
                           _%e168462168768%_
                           _%hd168463168771%_
                           _%tl168464168773%_
                           _%e168465168776%_
                           _%hd168466168779%_
                           _%tl168467168781%_
                           _%e168468168784%_
                           _%hd168469168787%_
                           _%tl168470168789%_
                           _%e168471168792%_
                           _%hd168472168795%_
                           _%tl168473168797%_
                           _%e168474168800%_
                           _%hd168475168803%_
                           _%tl168476168805%_
                           _%e168477168808%_
                           _%hd168478168811%_
                           _%tl168479168813%_
                           _%e168480168816%_
                           _%hd168481168819%_
                           _%tl168482168821%_))))
                   (_%__match173065173066%_
                    (lambda (_%e168425168891%_
                             _%hd168426168894%_
                             _%tl168427168896%_
                             _%e168428168899%_
                             _%hd168429168902%_
                             _%tl168430168904%_
                             _%e168431168907%_
                             _%hd168432168910%_
                             _%tl168433168912%_
                             _%e168434168915%_
                             _%hd168435168918%_
                             _%tl168436168920%_
                             _%e168437168923%_
                             _%hd168438168926%_
                             _%tl168439168928%_
                             _%e168440168931%_
                             _%hd168441168934%_
                             _%tl168442168936%_
                             _%e168443168939%_
                             _%hd168444168942%_
                             _%tl168445168944%_
                             _%e168446168947%_
                             _%hd168447168950%_
                             _%tl168448168952%_
                             _%e168449168955%_
                             _%hd168450168958%_
                             _%tl168451168960%_
                             _%e168452168963%_
                             _%hd168453168966%_
                             _%tl168454168968%_)
                      (let ((_%L168971%_ _%hd168453168966%_)
                            (_%L168972%_ _%hd168444168942%_)
                            (_%L168973%_ _%hd168435168918%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168973%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168973%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp173899
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168315%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168972%_
                                    __tmp173899)))
                            (_%__kont172780172781%_
                             _%L168971%_
                             _%L168972%_
                             _%L168973%_)
                            (_%__match173269173270%_
                             _%e168425168891%_
                             _%hd168426168894%_
                             _%tl168427168896%_
                             _%e168428168899%_
                             _%hd168429168902%_
                             _%tl168430168904%_
                             _%e168431168907%_
                             _%hd168432168910%_
                             _%tl168433168912%_
                             _%e168434168915%_
                             _%hd168435168918%_
                             _%tl168436168920%_
                             _%e168437168923%_
                             _%hd168438168926%_
                             _%tl168439168928%_
                             _%e168440168931%_
                             _%hd168441168934%_
                             _%tl168442168936%_
                             _%e168443168939%_
                             _%hd168444168942%_
                             _%tl168445168944%_
                             _%e168446168947%_
                             _%hd168447168950%_
                             _%tl168448168952%_)))))
                   (_%__match173063173064%_
                    (lambda (_%e168425168891%_
                             _%hd168426168894%_
                             _%tl168427168896%_
                             _%e168428168899%_
                             _%hd168429168902%_
                             _%tl168430168904%_
                             _%e168431168907%_
                             _%hd168432168910%_
                             _%tl168433168912%_
                             _%e168434168915%_
                             _%hd168435168918%_
                             _%tl168436168920%_
                             _%e168437168923%_
                             _%hd168438168926%_
                             _%tl168439168928%_
                             _%e168440168931%_
                             _%hd168441168934%_
                             _%tl168442168936%_
                             _%e168443168939%_
                             _%hd168444168942%_
                             _%tl168445168944%_
                             _%e168446168947%_
                             _%hd168447168950%_
                             _%tl168448168952%_
                             _%e168449168955%_
                             _%hd168450168958%_
                             _%tl168451168960%_
                             _%e168452168963%_
                             _%hd168453168966%_
                             _%tl168454168968%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168448168952%_))
                          (_%__match173065173066%_
                           _%e168425168891%_
                           _%hd168426168894%_
                           _%tl168427168896%_
                           _%e168428168899%_
                           _%hd168429168902%_
                           _%tl168430168904%_
                           _%e168431168907%_
                           _%hd168432168910%_
                           _%tl168433168912%_
                           _%e168434168915%_
                           _%hd168435168918%_
                           _%tl168436168920%_
                           _%e168437168923%_
                           _%hd168438168926%_
                           _%tl168439168928%_
                           _%e168440168931%_
                           _%hd168441168934%_
                           _%tl168442168936%_
                           _%e168443168939%_
                           _%hd168444168942%_
                           _%tl168445168944%_
                           _%e168446168947%_
                           _%hd168447168950%_
                           _%tl168448168952%_
                           _%e168449168955%_
                           _%hd168450168958%_
                           _%tl168451168960%_
                           _%e168452168963%_
                           _%hd168453168966%_
                           _%tl168454168968%_)
                          (_%__match173143173144%_
                           _%e168425168891%_
                           _%hd168426168894%_
                           _%tl168427168896%_
                           _%e168428168899%_
                           _%hd168429168902%_
                           _%tl168430168904%_
                           _%e168431168907%_
                           _%hd168432168910%_
                           _%tl168433168912%_
                           _%e168434168915%_
                           _%hd168435168918%_
                           _%tl168436168920%_
                           _%e168437168923%_
                           _%hd168438168926%_
                           _%tl168439168928%_
                           _%e168440168931%_
                           _%hd168441168934%_
                           _%tl168442168936%_
                           _%e168443168939%_
                           _%hd168444168942%_
                           _%tl168445168944%_
                           _%e168446168947%_
                           _%hd168447168950%_
                           _%tl168448168952%_
                           _%e168449168955%_
                           _%hd168450168958%_
                           _%tl168451168960%_
                           _%e168452168963%_
                           _%hd168453168966%_
                           _%tl168454168968%_))))
                   (_%__match173053173054%_
                    (lambda (_%e168425168891%_
                             _%hd168426168894%_
                             _%tl168427168896%_
                             _%e168428168899%_
                             _%hd168429168902%_
                             _%tl168430168904%_
                             _%e168431168907%_
                             _%hd168432168910%_
                             _%tl168433168912%_
                             _%e168434168915%_
                             _%hd168435168918%_
                             _%tl168436168920%_
                             _%e168437168923%_
                             _%hd168438168926%_
                             _%tl168439168928%_
                             _%e168440168931%_
                             _%hd168441168934%_
                             _%tl168442168936%_
                             _%e168443168939%_
                             _%hd168444168942%_
                             _%tl168445168944%_
                             _%e168446168947%_
                             _%hd168447168950%_
                             _%tl168448168952%_
                             _%e168449168955%_
                             _%hd168450168958%_
                             _%tl168451168960%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd168450168958%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168451168960%_))
                              (let ((_%e168452168963%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168451168960%_))))
                                (let ((_%tl168454168968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168452168963%_)))
                                      (_%hd168453168966%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168452168963%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl168454168968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168448168952%_))
                                          (_%__match173065173066%_
                                           _%e168425168891%_
                                           _%hd168426168894%_
                                           _%tl168427168896%_
                                           _%e168428168899%_
                                           _%hd168429168902%_
                                           _%tl168430168904%_
                                           _%e168431168907%_
                                           _%hd168432168910%_
                                           _%tl168433168912%_
                                           _%e168434168915%_
                                           _%hd168435168918%_
                                           _%tl168436168920%_
                                           _%e168437168923%_
                                           _%hd168438168926%_
                                           _%tl168439168928%_
                                           _%e168440168931%_
                                           _%hd168441168934%_
                                           _%tl168442168936%_
                                           _%e168443168939%_
                                           _%hd168444168942%_
                                           _%tl168445168944%_
                                           _%e168446168947%_
                                           _%hd168447168950%_
                                           _%tl168448168952%_
                                           _%e168449168955%_
                                           _%hd168450168958%_
                                           _%tl168451168960%_
                                           _%e168452168963%_
                                           _%hd168453168966%_
                                           _%tl168454168968%_)
                                          (_%__match173143173144%_
                                           _%e168425168891%_
                                           _%hd168426168894%_
                                           _%tl168427168896%_
                                           _%e168428168899%_
                                           _%hd168429168902%_
                                           _%tl168430168904%_
                                           _%e168431168907%_
                                           _%hd168432168910%_
                                           _%tl168433168912%_
                                           _%e168434168915%_
                                           _%hd168435168918%_
                                           _%tl168436168920%_
                                           _%e168437168923%_
                                           _%hd168438168926%_
                                           _%tl168439168928%_
                                           _%e168440168931%_
                                           _%hd168441168934%_
                                           _%tl168442168936%_
                                           _%e168443168939%_
                                           _%hd168444168942%_
                                           _%tl168445168944%_
                                           _%e168446168947%_
                                           _%hd168447168950%_
                                           _%tl168448168952%_
                                           _%e168449168955%_
                                           _%hd168450168958%_
                                           _%tl168451168960%_
                                           _%e168452168963%_
                                           _%hd168453168966%_
                                           _%tl168454168968%_))
                                      (_%__match173267173268%_
                                       _%e168425168891%_
                                       _%hd168426168894%_
                                       _%tl168427168896%_
                                       _%e168428168899%_
                                       _%hd168429168902%_
                                       _%tl168430168904%_
                                       _%e168431168907%_
                                       _%hd168432168910%_
                                       _%tl168433168912%_
                                       _%e168434168915%_
                                       _%hd168435168918%_
                                       _%tl168436168920%_
                                       _%e168437168923%_
                                       _%hd168438168926%_
                                       _%tl168439168928%_
                                       _%e168440168931%_
                                       _%hd168441168934%_
                                       _%tl168442168936%_
                                       _%e168443168939%_
                                       _%hd168444168942%_
                                       _%tl168445168944%_
                                       _%e168446168947%_
                                       _%hd168447168950%_
                                       _%tl168448168952%_))))
                              (_%__match173267173268%_
                               _%e168425168891%_
                               _%hd168426168894%_
                               _%tl168427168896%_
                               _%e168428168899%_
                               _%hd168429168902%_
                               _%tl168430168904%_
                               _%e168431168907%_
                               _%hd168432168910%_
                               _%tl168433168912%_
                               _%e168434168915%_
                               _%hd168435168918%_
                               _%tl168436168920%_
                               _%e168437168923%_
                               _%hd168438168926%_
                               _%tl168439168928%_
                               _%e168440168931%_
                               _%hd168441168934%_
                               _%tl168442168936%_
                               _%e168443168939%_
                               _%hd168444168942%_
                               _%tl168445168944%_
                               _%e168446168947%_
                               _%hd168447168950%_
                               _%tl168448168952%_))
                          (_%__match173267173268%_
                           _%e168425168891%_
                           _%hd168426168894%_
                           _%tl168427168896%_
                           _%e168428168899%_
                           _%hd168429168902%_
                           _%tl168430168904%_
                           _%e168431168907%_
                           _%hd168432168910%_
                           _%tl168433168912%_
                           _%e168434168915%_
                           _%hd168435168918%_
                           _%tl168436168920%_
                           _%e168437168923%_
                           _%hd168438168926%_
                           _%tl168439168928%_
                           _%e168440168931%_
                           _%hd168441168934%_
                           _%tl168442168936%_
                           _%e168443168939%_
                           _%hd168444168942%_
                           _%tl168445168944%_
                           _%e168446168947%_
                           _%hd168447168950%_
                           _%tl168448168952%_))))
                   (_%__match172985172986%_
                    (lambda (_%e168374169010%_
                             _%hd168375169013%_
                             _%tl168376169015%_
                             _%e168377169018%_
                             _%hd168378169021%_
                             _%tl168379169023%_
                             _%e168380169026%_
                             _%hd168381169029%_
                             _%tl168382169031%_
                             _%e168383169034%_
                             _%hd168384169037%_
                             _%tl168385169039%_
                             _%e168386169042%_
                             _%hd168387169045%_
                             _%tl168388169047%_
                             _%e168389169050%_
                             _%hd168390169053%_
                             _%tl168391169055%_
                             _%e168392169058%_
                             _%hd168393169061%_
                             _%tl168394169063%_
                             _%e168395169066%_
                             _%hd168396169069%_
                             _%tl168397169071%_
                             _%e168398169074%_
                             _%hd168399169077%_
                             _%tl168400169079%_
                             _%e168401169082%_
                             _%hd168402169085%_
                             _%tl168403169087%_
                             _%e168404169090%_
                             _%hd168405169093%_
                             _%tl168406169095%_
                             _%e168407169098%_
                             _%hd168408169101%_
                             _%tl168409169103%_
                             _%e168410169106%_
                             _%hd168411169109%_
                             _%tl168412169111%_
                             _%__splice172778172779%_
                             _%target168413169114%_
                             _%tl168415169116%_)
                      (letrec ((_%loop168416169119%_
                                (lambda (_%hd168414169122%_
                                         _%args168420169124%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168414169122%_))
                                      (let ((_%e168417169127%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168414169122%_))))
                                        (let ((_%lp-tl168419169132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168417169127%_)))
                                              (_%lp-hd168418169130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168417169127%_))))
                                          (_%loop168416169119%_
                                           _%lp-tl168419169132%_
                                           (cons _%lp-hd168418169130%_
                                                 _%args168420169124%_))))
                                      (let ((_%args168421169135%_
                                             (reverse _%args168420169124%_)))
                                        (let ((_%L169138%_
                                               _%args168421169135%_)
                                              (_%L169139%_ _%hd168411169109%_)
                                              (_%L169140%_ _%hd168402169085%_)
                                              (_%L169141%_ _%hd168393169061%_)
                                              (_%L169142%_ _%hd168384169037%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169142%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169141%_
                                                      'call-method))
                                                   (let ((__tmp173900
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self168315%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L169140%_
                                                      __tmp173900)))
                                              (_%__kont172776172777%_
                                               _%L169138%_
                                               _%L169139%_
                                               _%L169140%_
                                               _%L169141%_
                                               _%L169142%_)
                                              (_%__kont172788172789%_))))))))
                        (_%loop168416169119%_ _%target168413169114%_ '()))))
                   (_%__match172943172944%_
                    (lambda (_%e168374169010%_
                             _%hd168375169013%_
                             _%tl168376169015%_
                             _%e168377169018%_
                             _%hd168378169021%_
                             _%tl168379169023%_
                             _%e168380169026%_
                             _%hd168381169029%_
                             _%tl168382169031%_
                             _%e168383169034%_
                             _%hd168384169037%_
                             _%tl168385169039%_
                             _%e168386169042%_
                             _%hd168387169045%_
                             _%tl168388169047%_
                             _%e168389169050%_
                             _%hd168390169053%_
                             _%tl168391169055%_
                             _%e168392169058%_
                             _%hd168393169061%_
                             _%tl168394169063%_
                             _%e168395169066%_
                             _%hd168396169069%_
                             _%tl168397169071%_
                             _%e168398169074%_
                             _%hd168399169077%_
                             _%tl168400169079%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd168399169077%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168400169079%_))
                              (let ((_%e168401169082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168400169079%_))))
                                (let ((_%tl168403169087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168401169082%_)))
                                      (_%hd168402169085%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168401169082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl168403169087%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168397169071%_))
                                          (let ((_%e168404169090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168397169071%_))))
                                            (let ((_%tl168406169095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168404169090%_)))
                                                  (_%hd168405169093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168404169090%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168405169093%_))
                                                  (let ((_%e168407169098%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168405169093%_))))
                                                    (let ((_%tl168409169103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168407169098%_)))
                                                          (_%hd168408169101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168407169098%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168408169101%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd168408169101%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168409169103%_))
                          (let ((_%e168410169106%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168409169103%_))))
                            (let ((_%tl168412169111%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168410169106%_)))
                                  (_%hd168411169109%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168410169106%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168412169111%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168406169095%_))
                                      (let ((_%__splice172778172779%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168406169095%_
                                                '0))))
                                        (let ((_%tl168415169116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172778172779%_
                                                  '1)))
                                              (_%target168413169114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172778172779%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168415169116%_))
                                              (_%__match172985172986%_
                                               _%e168374169010%_
                                               _%hd168375169013%_
                                               _%tl168376169015%_
                                               _%e168377169018%_
                                               _%hd168378169021%_
                                               _%tl168379169023%_
                                               _%e168380169026%_
                                               _%hd168381169029%_
                                               _%tl168382169031%_
                                               _%e168383169034%_
                                               _%hd168384169037%_
                                               _%tl168385169039%_
                                               _%e168386169042%_
                                               _%hd168387169045%_
                                               _%tl168388169047%_
                                               _%e168389169050%_
                                               _%hd168390169053%_
                                               _%tl168391169055%_
                                               _%e168392169058%_
                                               _%hd168393169061%_
                                               _%tl168394169063%_
                                               _%e168395169066%_
                                               _%hd168396169069%_
                                               _%tl168397169071%_
                                               _%e168398169074%_
                                               _%hd168399169077%_
                                               _%tl168400169079%_
                                               _%e168401169082%_
                                               _%hd168402169085%_
                                               _%tl168403169087%_
                                               _%e168404169090%_
                                               _%hd168405169093%_
                                               _%tl168406169095%_
                                               _%e168407169098%_
                                               _%hd168408169101%_
                                               _%tl168409169103%_
                                               _%e168410169106%_
                                               _%hd168411169109%_
                                               _%tl168412169111%_
                                               _%__splice172778172779%_
                                               _%target168413169114%_
                                               _%tl168415169116%_)
                                              (_%__kont172788172789%_))))
                                      (_%__kont172788172789%_))
                                  (_%__kont172788172789%_))))
                          (_%__kont172788172789%_))
                      (_%__kont172788172789%_))
                  (_%__kont172788172789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172788172789%_))))
                                          (_%__match173267173268%_
                                           _%e168374169010%_
                                           _%hd168375169013%_
                                           _%tl168376169015%_
                                           _%e168377169018%_
                                           _%hd168378169021%_
                                           _%tl168379169023%_
                                           _%e168380169026%_
                                           _%hd168381169029%_
                                           _%tl168382169031%_
                                           _%e168383169034%_
                                           _%hd168384169037%_
                                           _%tl168385169039%_
                                           _%e168386169042%_
                                           _%hd168387169045%_
                                           _%tl168388169047%_
                                           _%e168389169050%_
                                           _%hd168390169053%_
                                           _%tl168391169055%_
                                           _%e168392169058%_
                                           _%hd168393169061%_
                                           _%tl168394169063%_
                                           _%e168395169066%_
                                           _%hd168396169069%_
                                           _%tl168397169071%_))
                                      (_%__match173267173268%_
                                       _%e168374169010%_
                                       _%hd168375169013%_
                                       _%tl168376169015%_
                                       _%e168377169018%_
                                       _%hd168378169021%_
                                       _%tl168379169023%_
                                       _%e168380169026%_
                                       _%hd168381169029%_
                                       _%tl168382169031%_
                                       _%e168383169034%_
                                       _%hd168384169037%_
                                       _%tl168385169039%_
                                       _%e168386169042%_
                                       _%hd168387169045%_
                                       _%tl168388169047%_
                                       _%e168389169050%_
                                       _%hd168390169053%_
                                       _%tl168391169055%_
                                       _%e168392169058%_
                                       _%hd168393169061%_
                                       _%tl168394169063%_
                                       _%e168395169066%_
                                       _%hd168396169069%_
                                       _%tl168397169071%_))))
                              (_%__match173267173268%_
                               _%e168374169010%_
                               _%hd168375169013%_
                               _%tl168376169015%_
                               _%e168377169018%_
                               _%hd168378169021%_
                               _%tl168379169023%_
                               _%e168380169026%_
                               _%hd168381169029%_
                               _%tl168382169031%_
                               _%e168383169034%_
                               _%hd168384169037%_
                               _%tl168385169039%_
                               _%e168386169042%_
                               _%hd168387169045%_
                               _%tl168388169047%_
                               _%e168389169050%_
                               _%hd168390169053%_
                               _%tl168391169055%_
                               _%e168392169058%_
                               _%hd168393169061%_
                               _%tl168394169063%_
                               _%e168395169066%_
                               _%hd168396169069%_
                               _%tl168397169071%_))
                          (_%__match173053173054%_
                           _%e168374169010%_
                           _%hd168375169013%_
                           _%tl168376169015%_
                           _%e168377169018%_
                           _%hd168378169021%_
                           _%tl168379169023%_
                           _%e168380169026%_
                           _%hd168381169029%_
                           _%tl168382169031%_
                           _%e168383169034%_
                           _%hd168384169037%_
                           _%tl168385169039%_
                           _%e168386169042%_
                           _%hd168387169045%_
                           _%tl168388169047%_
                           _%e168389169050%_
                           _%hd168390169053%_
                           _%tl168391169055%_
                           _%e168392169058%_
                           _%hd168393169061%_
                           _%tl168394169063%_
                           _%e168395169066%_
                           _%hd168396169069%_
                           _%tl168397169071%_
                           _%e168398169074%_
                           _%hd168399169077%_
                           _%tl168400169079%_))))
                   (_%__match172875172876%_
                    (lambda (_%e168330169199%_
                             _%hd168331169202%_
                             _%tl168332169204%_
                             _%e168333169207%_
                             _%hd168334169210%_
                             _%tl168335169212%_
                             _%e168336169215%_
                             _%hd168337169218%_
                             _%tl168338169220%_
                             _%e168339169223%_
                             _%hd168340169226%_
                             _%tl168341169228%_
                             _%e168342169231%_
                             _%hd168343169234%_
                             _%tl168344169236%_
                             _%e168345169239%_
                             _%hd168346169242%_
                             _%tl168347169244%_
                             _%e168348169247%_
                             _%hd168349169250%_
                             _%tl168350169252%_
                             _%e168351169255%_
                             _%hd168352169258%_
                             _%tl168353169260%_
                             _%e168354169263%_
                             _%hd168355169266%_
                             _%tl168356169268%_
                             _%e168357169271%_
                             _%hd168358169274%_
                             _%tl168359169276%_
                             _%__splice172774172775%_
                             _%target168360169279%_
                             _%tl168362169281%_)
                      (letrec ((_%loop168363169284%_
                                (lambda (_%hd168361169287%_
                                         _%args168367169289%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168361169287%_))
                                      (let ((_%e168364169292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168361169287%_))))
                                        (let ((_%lp-tl168366169297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168364169292%_)))
                                              (_%lp-hd168365169295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168364169292%_))))
                                          (_%loop168363169284%_
                                           _%lp-tl168366169297%_
                                           (cons _%lp-hd168365169295%_
                                                 _%args168367169289%_))))
                                      (let ((_%args168368169300%_
                                             (reverse _%args168367169289%_)))
                                        (let ((_%L169303%_
                                               _%args168368169300%_)
                                              (_%L169304%_ _%hd168358169274%_)
                                              (_%L169305%_ _%hd168349169250%_)
                                              (_%L169306%_ _%hd168340169226%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169306%_
                                                      'call-method))
                                                   (let ((__tmp173901
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self168315%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L169305%_
                                                      __tmp173901)))
                                              (_%__kont172772172773%_
                                               _%L169303%_
                                               _%L169304%_
                                               _%L169305%_
                                               _%L169306%_)
                                              (_%__match173063173064%_
                                               _%e168330169199%_
                                               _%hd168331169202%_
                                               _%tl168332169204%_
                                               _%e168333169207%_
                                               _%hd168334169210%_
                                               _%tl168335169212%_
                                               _%e168336169215%_
                                               _%hd168337169218%_
                                               _%tl168338169220%_
                                               _%e168339169223%_
                                               _%hd168340169226%_
                                               _%tl168341169228%_
                                               _%e168342169231%_
                                               _%hd168343169234%_
                                               _%tl168344169236%_
                                               _%e168345169239%_
                                               _%hd168346169242%_
                                               _%tl168347169244%_
                                               _%e168348169247%_
                                               _%hd168349169250%_
                                               _%tl168350169252%_
                                               _%e168351169255%_
                                               _%hd168352169258%_
                                               _%tl168353169260%_
                                               _%e168354169263%_
                                               _%hd168355169266%_
                                               _%tl168356169268%_
                                               _%e168357169271%_
                                               _%hd168358169274%_
                                               _%tl168359169276%_))))))))
                        (_%loop168363169284%_ _%target168360169279%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172770172771%_))
                  (let ((_%e168330169199%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172770172771%_))))
                    (let ((_%tl168332169204%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168330169199%_)))
                          (_%hd168331169202%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168330169199%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168332169204%_))
                          (let ((_%e168333169207%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168332169204%_))))
                            (let ((_%tl168335169212%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168333169207%_)))
                                  (_%hd168334169210%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168333169207%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168334169210%_))
                                  (let ((_%e168336169215%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168334169210%_))))
                                    (let ((_%tl168338169220%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168336169215%_)))
                                          (_%hd168337169218%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168336169215%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168337169218%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168337169218%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168338169220%_))
                                                  (let ((_%e168339169223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168338169220%_))))
                                                    (let ((_%tl168341169228%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168339169223%_)))
                                                          (_%hd168340169226%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168339169223%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168341169228%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168335169212%_))
                      (let ((_%e168342169231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168335169212%_))))
                        (let ((_%tl168344169236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168342169231%_)))
                              (_%hd168343169234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168342169231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168343169234%_))
                              (let ((_%e168345169239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168343169234%_))))
                                (let ((_%tl168347169244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168345169239%_)))
                                      (_%hd168346169242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168345169239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168346169242%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168346169242%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168347169244%_))
                                              (let ((_%e168348169247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168347169244%_))))
                                                (let ((_%tl168350169252%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168348169247%_)))
                                                      (_%hd168349169250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168348169247%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168350169252%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168344169236%_))
                                                          (let ((_%e168351169255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168344169236%_))))
                    (let ((_%tl168353169260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168351169255%_)))
                          (_%hd168352169258%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168351169255%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd168352169258%_))
                          (let ((_%e168354169263%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd168352169258%_))))
                            (let ((_%tl168356169268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168354169263%_)))
                                  (_%hd168355169266%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168354169263%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd168355169266%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd168355169266%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168356169268%_))
                                          (let ((_%e168357169271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168356169268%_))))
                                            (let ((_%tl168359169276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168357169271%_)))
                                                  (_%hd168358169274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168357169271%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168359169276%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl168353169260%_))
                                                      (let ((_%__splice172774172775%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl168353169260%_ '0))))
                (let ((_%tl168362169281%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172774172775%_ '1)))
                      (_%target168360169279%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172774172775%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168362169281%_))
                      (_%__match172875172876%_
                       _%e168330169199%_
                       _%hd168331169202%_
                       _%tl168332169204%_
                       _%e168333169207%_
                       _%hd168334169210%_
                       _%tl168335169212%_
                       _%e168336169215%_
                       _%hd168337169218%_
                       _%tl168338169220%_
                       _%e168339169223%_
                       _%hd168340169226%_
                       _%tl168341169228%_
                       _%e168342169231%_
                       _%hd168343169234%_
                       _%tl168344169236%_
                       _%e168345169239%_
                       _%hd168346169242%_
                       _%tl168347169244%_
                       _%e168348169247%_
                       _%hd168349169250%_
                       _%tl168350169252%_
                       _%e168351169255%_
                       _%hd168352169258%_
                       _%tl168353169260%_
                       _%e168354169263%_
                       _%hd168355169266%_
                       _%tl168356169268%_
                       _%e168357169271%_
                       _%hd168358169274%_
                       _%tl168359169276%_
                       _%__splice172774172775%_
                       _%target168360169279%_
                       _%tl168362169281%_)
                      (_%__match173063173064%_
                       _%e168330169199%_
                       _%hd168331169202%_
                       _%tl168332169204%_
                       _%e168333169207%_
                       _%hd168334169210%_
                       _%tl168335169212%_
                       _%e168336169215%_
                       _%hd168337169218%_
                       _%tl168338169220%_
                       _%e168339169223%_
                       _%hd168340169226%_
                       _%tl168341169228%_
                       _%e168342169231%_
                       _%hd168343169234%_
                       _%tl168344169236%_
                       _%e168345169239%_
                       _%hd168346169242%_
                       _%tl168347169244%_
                       _%e168348169247%_
                       _%hd168349169250%_
                       _%tl168350169252%_
                       _%e168351169255%_
                       _%hd168352169258%_
                       _%tl168353169260%_
                       _%e168354169263%_
                       _%hd168355169266%_
                       _%tl168356169268%_
                       _%e168357169271%_
                       _%hd168358169274%_
                       _%tl168359169276%_))))
              (_%__match173063173064%_
               _%e168330169199%_
               _%hd168331169202%_
               _%tl168332169204%_
               _%e168333169207%_
               _%hd168334169210%_
               _%tl168335169212%_
               _%e168336169215%_
               _%hd168337169218%_
               _%tl168338169220%_
               _%e168339169223%_
               _%hd168340169226%_
               _%tl168341169228%_
               _%e168342169231%_
               _%hd168343169234%_
               _%tl168344169236%_
               _%e168345169239%_
               _%hd168346169242%_
               _%tl168347169244%_
               _%e168348169247%_
               _%hd168349169250%_
               _%tl168350169252%_
               _%e168351169255%_
               _%hd168352169258%_
               _%tl168353169260%_
               _%e168354169263%_
               _%hd168355169266%_
               _%tl168356169268%_
               _%e168357169271%_
               _%hd168358169274%_
               _%tl168359169276%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match173267173268%_
                                                   _%e168330169199%_
                                                   _%hd168331169202%_
                                                   _%tl168332169204%_
                                                   _%e168333169207%_
                                                   _%hd168334169210%_
                                                   _%tl168335169212%_
                                                   _%e168336169215%_
                                                   _%hd168337169218%_
                                                   _%tl168338169220%_
                                                   _%e168339169223%_
                                                   _%hd168340169226%_
                                                   _%tl168341169228%_
                                                   _%e168342169231%_
                                                   _%hd168343169234%_
                                                   _%tl168344169236%_
                                                   _%e168345169239%_
                                                   _%hd168346169242%_
                                                   _%tl168347169244%_
                                                   _%e168348169247%_
                                                   _%hd168349169250%_
                                                   _%tl168350169252%_
                                                   _%e168351169255%_
                                                   _%hd168352169258%_
                                                   _%tl168353169260%_))))
                                          (_%__match173267173268%_
                                           _%e168330169199%_
                                           _%hd168331169202%_
                                           _%tl168332169204%_
                                           _%e168333169207%_
                                           _%hd168334169210%_
                                           _%tl168335169212%_
                                           _%e168336169215%_
                                           _%hd168337169218%_
                                           _%tl168338169220%_
                                           _%e168339169223%_
                                           _%hd168340169226%_
                                           _%tl168341169228%_
                                           _%e168342169231%_
                                           _%hd168343169234%_
                                           _%tl168344169236%_
                                           _%e168345169239%_
                                           _%hd168346169242%_
                                           _%tl168347169244%_
                                           _%e168348169247%_
                                           _%hd168349169250%_
                                           _%tl168350169252%_
                                           _%e168351169255%_
                                           _%hd168352169258%_
                                           _%tl168353169260%_))
                                      (_%__match172943172944%_
                                       _%e168330169199%_
                                       _%hd168331169202%_
                                       _%tl168332169204%_
                                       _%e168333169207%_
                                       _%hd168334169210%_
                                       _%tl168335169212%_
                                       _%e168336169215%_
                                       _%hd168337169218%_
                                       _%tl168338169220%_
                                       _%e168339169223%_
                                       _%hd168340169226%_
                                       _%tl168341169228%_
                                       _%e168342169231%_
                                       _%hd168343169234%_
                                       _%tl168344169236%_
                                       _%e168345169239%_
                                       _%hd168346169242%_
                                       _%tl168347169244%_
                                       _%e168348169247%_
                                       _%hd168349169250%_
                                       _%tl168350169252%_
                                       _%e168351169255%_
                                       _%hd168352169258%_
                                       _%tl168353169260%_
                                       _%e168354169263%_
                                       _%hd168355169266%_
                                       _%tl168356169268%_))
                                  (_%__match173267173268%_
                                   _%e168330169199%_
                                   _%hd168331169202%_
                                   _%tl168332169204%_
                                   _%e168333169207%_
                                   _%hd168334169210%_
                                   _%tl168335169212%_
                                   _%e168336169215%_
                                   _%hd168337169218%_
                                   _%tl168338169220%_
                                   _%e168339169223%_
                                   _%hd168340169226%_
                                   _%tl168341169228%_
                                   _%e168342169231%_
                                   _%hd168343169234%_
                                   _%tl168344169236%_
                                   _%e168345169239%_
                                   _%hd168346169242%_
                                   _%tl168347169244%_
                                   _%e168348169247%_
                                   _%hd168349169250%_
                                   _%tl168350169252%_
                                   _%e168351169255%_
                                   _%hd168352169258%_
                                   _%tl168353169260%_))))
                          (_%__match173267173268%_
                           _%e168330169199%_
                           _%hd168331169202%_
                           _%tl168332169204%_
                           _%e168333169207%_
                           _%hd168334169210%_
                           _%tl168335169212%_
                           _%e168336169215%_
                           _%hd168337169218%_
                           _%tl168338169220%_
                           _%e168339169223%_
                           _%hd168340169226%_
                           _%tl168341169228%_
                           _%e168342169231%_
                           _%hd168343169234%_
                           _%tl168344169236%_
                           _%e168345169239%_
                           _%hd168346169242%_
                           _%tl168347169244%_
                           _%e168348169247%_
                           _%hd168349169250%_
                           _%tl168350169252%_
                           _%e168351169255%_
                           _%hd168352169258%_
                           _%tl168353169260%_))))
                  (_%__match173205173206%_
                   _%e168330169199%_
                   _%hd168331169202%_
                   _%tl168332169204%_
                   _%e168333169207%_
                   _%hd168334169210%_
                   _%tl168335169212%_
                   _%e168336169215%_
                   _%hd168337169218%_
                   _%tl168338169220%_
                   _%e168339169223%_
                   _%hd168340169226%_
                   _%tl168341169228%_
                   _%e168342169231%_
                   _%hd168343169234%_
                   _%tl168344169236%_
                   _%e168345169239%_
                   _%hd168346169242%_
                   _%tl168347169244%_
                   _%e168348169247%_
                   _%hd168349169250%_
                   _%tl168350169252%_))
              (_%__kont172788172789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont172788172789%_))
                                          (_%__kont172788172789%_))
                                      (_%__kont172788172789%_))))
                              (_%__kont172788172789%_))))
                      (_%__kont172788172789%_))
                  (_%__kont172788172789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172788172789%_))
                                              (_%__kont172788172789%_))
                                          (_%__kont172788172789%_))))
                                  (_%__kont172788172789%_))))
                          (_%__kont172788172789%_))))
                  (_%__kont172788172789%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self167254%_ _%stx167255%_)
        (letrec ((_%force-e167257%_
                  (lambda (_%target168313%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target168313%_ '()))
                                      '()))))))
          (let* ((_%__stx173272173273%_ _%stx167255%_)
                 (_%g167265167487%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx173272173273%_)))))
            (let ((_%__kont173274173275%_
                   (lambda (_%L168259%_ _%L168260%_ _%L168261%_ _%L168262%_)
                     (let ((_%$method168307%_
                            (let ((__tmp173903
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167254%_ 'methods)))
                                  (__tmp173902
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168260%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173903 __tmp173902)))
                           (_%args168308%_
                            (map (lambda (_%g168295168297%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self167254%_
                                      _%g168295168297%_)))
                                 (let ((__tmp173904
                                        (lambda (_%g168299168302%_
                                                 _%g168300168304%_)
                                          (cons _%g168299168302%_
                                                _%g168300168304%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173904 '() _%L168259%_)))))
                       (let ((__tmp173905
                              (cons '%#call
                                    (cons (_%force-e167257%_ _%$method168307%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167254%_
                                                               'receiver))
                                                            '()))
                                                _%args168308%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173905 _%stx167255%_)))))
                  (_%__kont173278173279%_
                   (lambda (_%L168091%_
                            _%L168092%_
                            _%L168093%_
                            _%L168094%_
                            _%L168095%_)
                     (let ((_%$method168147%_
                            (let ((__tmp173907
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167254%_ 'methods)))
                                  (__tmp173906
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168092%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173907 __tmp173906)))
                           (_%args168148%_
                            (map (lambda (_%g168135168137%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self167254%_
                                      _%g168135168137%_)))
                                 (let ((__tmp173908
                                        (lambda (_%g168139168142%_
                                                 _%g168140168144%_)
                                          (cons _%g168139168142%_
                                                _%g168140168144%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173908 '() _%L168091%_)))))
                       (let ((__tmp173909
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e167257%_
                                                 _%$method168147%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self167254%_ 'receiver))
                          '()))
              _%args168148%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173909 _%stx167255%_)))))
                  (_%__kont173282173283%_
                   (lambda (_%L167922%_ _%L167923%_ _%L167924%_)
                     (let* ((_%$field167956%_
                             (let ((__tmp173911
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self167254%_ 'slots)))
                                   (__tmp173910
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167922%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp173911 __tmp173910)))
                            (__tmp173912
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self167254%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167956%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self167254%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp173912 _%stx167255%_))))
                  (_%__kont173284173285%_
                   (lambda (_%L167796%_ _%L167797%_ _%L167798%_ _%L167799%_)
                     (let ((_%$field167834%_
                            (let ((__tmp173914
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167254%_ 'slots)))
                                  (__tmp173913
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167797%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173914 __tmp173913)))
                           (_%expr167835%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self167254%_ _%L167796%_))))
                       (let ((__tmp173915
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self167254%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167834%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self167254%_ 'receiver))
                          '()))
              (cons _%expr167835%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173915 _%stx167255%_)))))
                  (_%__kont173286173287%_
                   (lambda (_%L167668%_ _%L167669%_)
                     (let* ((_%accessor167691%_
                             (let ((__tmp173916
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167669%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173916)))
                            (_%klass167693%_
                             (let ((__tmp173917
                                    (##structure-ref
                                     _%accessor167691%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx167255%_
                                __tmp173917)))
                            (_%slot167695%_
                             (##structure-ref
                              _%accessor167691%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor167691%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass167693%_
                                       _%slot167695%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass167693%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx167255%_
                           (let* ((_%$field167701%_
                                   (let ((__tmp173918
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173918 _%slot167695%_)))
                                  (__tmp173919
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self167254%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field167701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self167254%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173919
                              _%stx167255%_))))))
                  (_%__kont173288173289%_
                   (lambda (_%L167563%_ _%L167564%_ _%L167565%_)
                     (let* ((_%mutator167593%_
                             (let ((__tmp173920
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167565%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173920)))
                            (_%klass167595%_
                             (let ((__tmp173921
                                    (##structure-ref
                                     _%mutator167593%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx167255%_
                                __tmp173921)))
                            (_%slot167597%_
                             (##structure-ref
                              _%mutator167593%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr167599%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self167254%_ _%L167563%_))))
                       (if (and (not (##structure-ref
                                      _%mutator167593%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass167595%_
                                       _%slot167597%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass167595%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp173922
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L167565%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L167564%_
                                                                '()))
                                                    (cons _%expr167599%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173922 _%stx167255%_))
                           (let* ((_%$field167605%_
                                   (let ((__tmp173923
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173923 _%slot167597%_)))
                                  (__tmp173924
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self167254%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field167605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self167254%_ 'receiver))
                               '()))
                   (cons _%expr167599%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173924
                              _%stx167255%_))))))
                  (_%__kont173290173291%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self167254%_ _%stx167255%_)))))
              (let* ((_%__match173771173772%_
                      (lambda (_%e167459167499%_
                               _%hd167460167502%_
                               _%tl167461167504%_
                               _%e167462167507%_
                               _%hd167463167510%_
                               _%tl167464167512%_
                               _%e167465167515%_
                               _%hd167466167518%_
                               _%tl167467167520%_
                               _%e167468167523%_
                               _%hd167469167526%_
                               _%tl167470167528%_
                               _%e167471167531%_
                               _%hd167472167534%_
                               _%tl167473167536%_
                               _%e167474167539%_
                               _%hd167475167542%_
                               _%tl167476167544%_
                               _%e167477167547%_
                               _%hd167478167550%_
                               _%tl167479167552%_
                               _%e167480167555%_
                               _%hd167481167558%_
                               _%tl167482167560%_)
                        (let ((_%L167563%_ _%hd167481167558%_)
                              (_%L167564%_ _%hd167478167550%_)
                              (_%L167565%_ _%hd167469167526%_))
                          (if (and (let ((__tmp173925
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167564%_
                                      __tmp173925))
                                   (let ((__tmp173926
                                          (let ((__tmp173927
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L167565%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173927))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173926
                                      'gxc#!mutator::t)))
                              (_%__kont173288173289%_
                               _%L167563%_
                               _%L167564%_
                               _%L167565%_)
                              (_%__kont173290173291%_)))))
                     (_%__match173769173770%_
                      (lambda (_%e167459167499%_
                               _%hd167460167502%_
                               _%tl167461167504%_
                               _%e167462167507%_
                               _%hd167463167510%_
                               _%tl167464167512%_
                               _%e167465167515%_
                               _%hd167466167518%_
                               _%tl167467167520%_
                               _%e167468167523%_
                               _%hd167469167526%_
                               _%tl167470167528%_
                               _%e167471167531%_
                               _%hd167472167534%_
                               _%tl167473167536%_
                               _%e167474167539%_
                               _%hd167475167542%_
                               _%tl167476167544%_
                               _%e167477167547%_
                               _%hd167478167550%_
                               _%tl167479167552%_
                               _%e167480167555%_
                               _%hd167481167558%_
                               _%tl167482167560%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167482167560%_))
                            (_%__match173771173772%_
                             _%e167459167499%_
                             _%hd167460167502%_
                             _%tl167461167504%_
                             _%e167462167507%_
                             _%hd167463167510%_
                             _%tl167464167512%_
                             _%e167465167515%_
                             _%hd167466167518%_
                             _%tl167467167520%_
                             _%e167468167523%_
                             _%hd167469167526%_
                             _%tl167470167528%_
                             _%e167471167531%_
                             _%hd167472167534%_
                             _%tl167473167536%_
                             _%e167474167539%_
                             _%hd167475167542%_
                             _%tl167476167544%_
                             _%e167477167547%_
                             _%hd167478167550%_
                             _%tl167479167552%_
                             _%e167480167555%_
                             _%hd167481167558%_
                             _%tl167482167560%_)
                            (_%__kont173290173291%_))))
                     (_%__match173763173764%_
                      (lambda (_%e167459167499%_
                               _%hd167460167502%_
                               _%tl167461167504%_
                               _%e167462167507%_
                               _%hd167463167510%_
                               _%tl167464167512%_
                               _%e167465167515%_
                               _%hd167466167518%_
                               _%tl167467167520%_
                               _%e167468167523%_
                               _%hd167469167526%_
                               _%tl167470167528%_
                               _%e167471167531%_
                               _%hd167472167534%_
                               _%tl167473167536%_
                               _%e167474167539%_
                               _%hd167475167542%_
                               _%tl167476167544%_
                               _%e167477167547%_
                               _%hd167478167550%_
                               _%tl167479167552%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167473167536%_))
                            (let ((_%e167480167555%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167473167536%_))))
                              (let ((_%tl167482167560%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167480167555%_)))
                                    (_%hd167481167558%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167480167555%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167482167560%_))
                                    (_%__match173771173772%_
                                     _%e167459167499%_
                                     _%hd167460167502%_
                                     _%tl167461167504%_
                                     _%e167462167507%_
                                     _%hd167463167510%_
                                     _%tl167464167512%_
                                     _%e167465167515%_
                                     _%hd167466167518%_
                                     _%tl167467167520%_
                                     _%e167468167523%_
                                     _%hd167469167526%_
                                     _%tl167470167528%_
                                     _%e167471167531%_
                                     _%hd167472167534%_
                                     _%tl167473167536%_
                                     _%e167474167539%_
                                     _%hd167475167542%_
                                     _%tl167476167544%_
                                     _%e167477167547%_
                                     _%hd167478167550%_
                                     _%tl167479167552%_
                                     _%e167480167555%_
                                     _%hd167481167558%_
                                     _%tl167482167560%_)
                                    (_%__kont173290173291%_))))
                            (_%__kont173290173291%_))))
                     (_%__match173709173710%_
                      (lambda (_%e167435167612%_
                               _%hd167436167615%_
                               _%tl167437167617%_
                               _%e167438167620%_
                               _%hd167439167623%_
                               _%tl167440167625%_
                               _%e167441167628%_
                               _%hd167442167631%_
                               _%tl167443167633%_
                               _%e167444167636%_
                               _%hd167445167639%_
                               _%tl167446167641%_
                               _%e167447167644%_
                               _%hd167448167647%_
                               _%tl167449167649%_
                               _%e167450167652%_
                               _%hd167451167655%_
                               _%tl167452167657%_
                               _%e167453167660%_
                               _%hd167454167663%_
                               _%tl167455167665%_)
                        (let ((_%L167668%_ _%hd167454167663%_)
                              (_%L167669%_ _%hd167445167639%_))
                          (if (and (let ((__tmp173928
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167668%_
                                      __tmp173928))
                                   (let ((__tmp173929
                                          (let ((__tmp173930
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L167669%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173930))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173929
                                      'gxc#!accessor::t)))
                              (_%__kont173286173287%_ _%L167668%_ _%L167669%_)
                              (_%__kont173290173291%_)))))
                     (_%__match173707173708%_
                      (lambda (_%e167435167612%_
                               _%hd167436167615%_
                               _%tl167437167617%_
                               _%e167438167620%_
                               _%hd167439167623%_
                               _%tl167440167625%_
                               _%e167441167628%_
                               _%hd167442167631%_
                               _%tl167443167633%_
                               _%e167444167636%_
                               _%hd167445167639%_
                               _%tl167446167641%_
                               _%e167447167644%_
                               _%hd167448167647%_
                               _%tl167449167649%_
                               _%e167450167652%_
                               _%hd167451167655%_
                               _%tl167452167657%_
                               _%e167453167660%_
                               _%hd167454167663%_
                               _%tl167455167665%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167449167649%_))
                            (_%__match173709173710%_
                             _%e167435167612%_
                             _%hd167436167615%_
                             _%tl167437167617%_
                             _%e167438167620%_
                             _%hd167439167623%_
                             _%tl167440167625%_
                             _%e167441167628%_
                             _%hd167442167631%_
                             _%tl167443167633%_
                             _%e167444167636%_
                             _%hd167445167639%_
                             _%tl167446167641%_
                             _%e167447167644%_
                             _%hd167448167647%_
                             _%tl167449167649%_
                             _%e167450167652%_
                             _%hd167451167655%_
                             _%tl167452167657%_
                             _%e167453167660%_
                             _%hd167454167663%_
                             _%tl167455167665%_)
                            (_%__match173763173764%_
                             _%e167435167612%_
                             _%hd167436167615%_
                             _%tl167437167617%_
                             _%e167438167620%_
                             _%hd167439167623%_
                             _%tl167440167625%_
                             _%e167441167628%_
                             _%hd167442167631%_
                             _%tl167443167633%_
                             _%e167444167636%_
                             _%hd167445167639%_
                             _%tl167446167641%_
                             _%e167447167644%_
                             _%hd167448167647%_
                             _%tl167449167649%_
                             _%e167450167652%_
                             _%hd167451167655%_
                             _%tl167452167657%_
                             _%e167453167660%_
                             _%hd167454167663%_
                             _%tl167455167665%_))))
                     (_%__match173653173654%_
                      (lambda (_%e167400167708%_
                               _%hd167401167711%_
                               _%tl167402167713%_
                               _%e167403167716%_
                               _%hd167404167719%_
                               _%tl167405167721%_
                               _%e167406167724%_
                               _%hd167407167727%_
                               _%tl167408167729%_
                               _%e167409167732%_
                               _%hd167410167735%_
                               _%tl167411167737%_
                               _%e167412167740%_
                               _%hd167413167743%_
                               _%tl167414167745%_
                               _%e167415167748%_
                               _%hd167416167751%_
                               _%tl167417167753%_
                               _%e167418167756%_
                               _%hd167419167759%_
                               _%tl167420167761%_
                               _%e167421167764%_
                               _%hd167422167767%_
                               _%tl167423167769%_
                               _%e167424167772%_
                               _%hd167425167775%_
                               _%tl167426167777%_
                               _%e167427167780%_
                               _%hd167428167783%_
                               _%tl167429167785%_
                               _%e167430167788%_
                               _%hd167431167791%_
                               _%tl167432167793%_)
                        (let ((_%L167796%_ _%hd167431167791%_)
                              (_%L167797%_ _%hd167428167783%_)
                              (_%L167798%_ _%hd167419167759%_)
                              (_%L167799%_ _%hd167410167735%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167799%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167799%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp173931
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167798%_
                                      __tmp173931)))
                              (_%__kont173284173285%_
                               _%L167796%_
                               _%L167797%_
                               _%L167798%_
                               _%L167799%_)
                              (_%__kont173290173291%_)))))
                     (_%__match173645173646%_
                      (lambda (_%e167400167708%_
                               _%hd167401167711%_
                               _%tl167402167713%_
                               _%e167403167716%_
                               _%hd167404167719%_
                               _%tl167405167721%_
                               _%e167406167724%_
                               _%hd167407167727%_
                               _%tl167408167729%_
                               _%e167409167732%_
                               _%hd167410167735%_
                               _%tl167411167737%_
                               _%e167412167740%_
                               _%hd167413167743%_
                               _%tl167414167745%_
                               _%e167415167748%_
                               _%hd167416167751%_
                               _%tl167417167753%_
                               _%e167418167756%_
                               _%hd167419167759%_
                               _%tl167420167761%_
                               _%e167421167764%_
                               _%hd167422167767%_
                               _%tl167423167769%_
                               _%e167424167772%_
                               _%hd167425167775%_
                               _%tl167426167777%_
                               _%e167427167780%_
                               _%hd167428167783%_
                               _%tl167429167785%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167423167769%_))
                            (let ((_%e167430167788%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167423167769%_))))
                              (let ((_%tl167432167793%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167430167788%_)))
                                    (_%hd167431167791%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167430167788%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167432167793%_))
                                    (_%__match173653173654%_
                                     _%e167400167708%_
                                     _%hd167401167711%_
                                     _%tl167402167713%_
                                     _%e167403167716%_
                                     _%hd167404167719%_
                                     _%tl167405167721%_
                                     _%e167406167724%_
                                     _%hd167407167727%_
                                     _%tl167408167729%_
                                     _%e167409167732%_
                                     _%hd167410167735%_
                                     _%tl167411167737%_
                                     _%e167412167740%_
                                     _%hd167413167743%_
                                     _%tl167414167745%_
                                     _%e167415167748%_
                                     _%hd167416167751%_
                                     _%tl167417167753%_
                                     _%e167418167756%_
                                     _%hd167419167759%_
                                     _%tl167420167761%_
                                     _%e167421167764%_
                                     _%hd167422167767%_
                                     _%tl167423167769%_
                                     _%e167424167772%_
                                     _%hd167425167775%_
                                     _%tl167426167777%_
                                     _%e167427167780%_
                                     _%hd167428167783%_
                                     _%tl167429167785%_
                                     _%e167430167788%_
                                     _%hd167431167791%_
                                     _%tl167432167793%_)
                                    (_%__kont173290173291%_))))
                            (_%__match173769173770%_
                             _%e167400167708%_
                             _%hd167401167711%_
                             _%tl167402167713%_
                             _%e167403167716%_
                             _%hd167404167719%_
                             _%tl167405167721%_
                             _%e167406167724%_
                             _%hd167407167727%_
                             _%tl167408167729%_
                             _%e167409167732%_
                             _%hd167410167735%_
                             _%tl167411167737%_
                             _%e167412167740%_
                             _%hd167413167743%_
                             _%tl167414167745%_
                             _%e167415167748%_
                             _%hd167416167751%_
                             _%tl167417167753%_
                             _%e167418167756%_
                             _%hd167419167759%_
                             _%tl167420167761%_
                             _%e167421167764%_
                             _%hd167422167767%_
                             _%tl167423167769%_))))
                     (_%__match173567173568%_
                      (lambda (_%e167366167842%_
                               _%hd167367167845%_
                               _%tl167368167847%_
                               _%e167369167850%_
                               _%hd167370167853%_
                               _%tl167371167855%_
                               _%e167372167858%_
                               _%hd167373167861%_
                               _%tl167374167863%_
                               _%e167375167866%_
                               _%hd167376167869%_
                               _%tl167377167871%_
                               _%e167378167874%_
                               _%hd167379167877%_
                               _%tl167380167879%_
                               _%e167381167882%_
                               _%hd167382167885%_
                               _%tl167383167887%_
                               _%e167384167890%_
                               _%hd167385167893%_
                               _%tl167386167895%_
                               _%e167387167898%_
                               _%hd167388167901%_
                               _%tl167389167903%_
                               _%e167390167906%_
                               _%hd167391167909%_
                               _%tl167392167911%_
                               _%e167393167914%_
                               _%hd167394167917%_
                               _%tl167395167919%_)
                        (let ((_%L167922%_ _%hd167394167917%_)
                              (_%L167923%_ _%hd167385167893%_)
                              (_%L167924%_ _%hd167376167869%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167924%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167924%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp173932
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167254%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167923%_
                                      __tmp173932)))
                              (_%__kont173282173283%_
                               _%L167922%_
                               _%L167923%_
                               _%L167924%_)
                              (_%__match173771173772%_
                               _%e167366167842%_
                               _%hd167367167845%_
                               _%tl167368167847%_
                               _%e167369167850%_
                               _%hd167370167853%_
                               _%tl167371167855%_
                               _%e167372167858%_
                               _%hd167373167861%_
                               _%tl167374167863%_
                               _%e167375167866%_
                               _%hd167376167869%_
                               _%tl167377167871%_
                               _%e167378167874%_
                               _%hd167379167877%_
                               _%tl167380167879%_
                               _%e167381167882%_
                               _%hd167382167885%_
                               _%tl167383167887%_
                               _%e167384167890%_
                               _%hd167385167893%_
                               _%tl167386167895%_
                               _%e167387167898%_
                               _%hd167388167901%_
                               _%tl167389167903%_)))))
                     (_%__match173565173566%_
                      (lambda (_%e167366167842%_
                               _%hd167367167845%_
                               _%tl167368167847%_
                               _%e167369167850%_
                               _%hd167370167853%_
                               _%tl167371167855%_
                               _%e167372167858%_
                               _%hd167373167861%_
                               _%tl167374167863%_
                               _%e167375167866%_
                               _%hd167376167869%_
                               _%tl167377167871%_
                               _%e167378167874%_
                               _%hd167379167877%_
                               _%tl167380167879%_
                               _%e167381167882%_
                               _%hd167382167885%_
                               _%tl167383167887%_
                               _%e167384167890%_
                               _%hd167385167893%_
                               _%tl167386167895%_
                               _%e167387167898%_
                               _%hd167388167901%_
                               _%tl167389167903%_
                               _%e167390167906%_
                               _%hd167391167909%_
                               _%tl167392167911%_
                               _%e167393167914%_
                               _%hd167394167917%_
                               _%tl167395167919%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167389167903%_))
                            (_%__match173567173568%_
                             _%e167366167842%_
                             _%hd167367167845%_
                             _%tl167368167847%_
                             _%e167369167850%_
                             _%hd167370167853%_
                             _%tl167371167855%_
                             _%e167372167858%_
                             _%hd167373167861%_
                             _%tl167374167863%_
                             _%e167375167866%_
                             _%hd167376167869%_
                             _%tl167377167871%_
                             _%e167378167874%_
                             _%hd167379167877%_
                             _%tl167380167879%_
                             _%e167381167882%_
                             _%hd167382167885%_
                             _%tl167383167887%_
                             _%e167384167890%_
                             _%hd167385167893%_
                             _%tl167386167895%_
                             _%e167387167898%_
                             _%hd167388167901%_
                             _%tl167389167903%_
                             _%e167390167906%_
                             _%hd167391167909%_
                             _%tl167392167911%_
                             _%e167393167914%_
                             _%hd167394167917%_
                             _%tl167395167919%_)
                            (_%__match173645173646%_
                             _%e167366167842%_
                             _%hd167367167845%_
                             _%tl167368167847%_
                             _%e167369167850%_
                             _%hd167370167853%_
                             _%tl167371167855%_
                             _%e167372167858%_
                             _%hd167373167861%_
                             _%tl167374167863%_
                             _%e167375167866%_
                             _%hd167376167869%_
                             _%tl167377167871%_
                             _%e167378167874%_
                             _%hd167379167877%_
                             _%tl167380167879%_
                             _%e167381167882%_
                             _%hd167382167885%_
                             _%tl167383167887%_
                             _%e167384167890%_
                             _%hd167385167893%_
                             _%tl167386167895%_
                             _%e167387167898%_
                             _%hd167388167901%_
                             _%tl167389167903%_
                             _%e167390167906%_
                             _%hd167391167909%_
                             _%tl167392167911%_
                             _%e167393167914%_
                             _%hd167394167917%_
                             _%tl167395167919%_))))
                     (_%__match173555173556%_
                      (lambda (_%e167366167842%_
                               _%hd167367167845%_
                               _%tl167368167847%_
                               _%e167369167850%_
                               _%hd167370167853%_
                               _%tl167371167855%_
                               _%e167372167858%_
                               _%hd167373167861%_
                               _%tl167374167863%_
                               _%e167375167866%_
                               _%hd167376167869%_
                               _%tl167377167871%_
                               _%e167378167874%_
                               _%hd167379167877%_
                               _%tl167380167879%_
                               _%e167381167882%_
                               _%hd167382167885%_
                               _%tl167383167887%_
                               _%e167384167890%_
                               _%hd167385167893%_
                               _%tl167386167895%_
                               _%e167387167898%_
                               _%hd167388167901%_
                               _%tl167389167903%_
                               _%e167390167906%_
                               _%hd167391167909%_
                               _%tl167392167911%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd167391167909%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167392167911%_))
                                (let ((_%e167393167914%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167392167911%_))))
                                  (let ((_%tl167395167919%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167393167914%_)))
                                        (_%hd167394167917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167393167914%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl167395167919%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167389167903%_))
                                            (_%__match173567173568%_
                                             _%e167366167842%_
                                             _%hd167367167845%_
                                             _%tl167368167847%_
                                             _%e167369167850%_
                                             _%hd167370167853%_
                                             _%tl167371167855%_
                                             _%e167372167858%_
                                             _%hd167373167861%_
                                             _%tl167374167863%_
                                             _%e167375167866%_
                                             _%hd167376167869%_
                                             _%tl167377167871%_
                                             _%e167378167874%_
                                             _%hd167379167877%_
                                             _%tl167380167879%_
                                             _%e167381167882%_
                                             _%hd167382167885%_
                                             _%tl167383167887%_
                                             _%e167384167890%_
                                             _%hd167385167893%_
                                             _%tl167386167895%_
                                             _%e167387167898%_
                                             _%hd167388167901%_
                                             _%tl167389167903%_
                                             _%e167390167906%_
                                             _%hd167391167909%_
                                             _%tl167392167911%_
                                             _%e167393167914%_
                                             _%hd167394167917%_
                                             _%tl167395167919%_)
                                            (_%__match173645173646%_
                                             _%e167366167842%_
                                             _%hd167367167845%_
                                             _%tl167368167847%_
                                             _%e167369167850%_
                                             _%hd167370167853%_
                                             _%tl167371167855%_
                                             _%e167372167858%_
                                             _%hd167373167861%_
                                             _%tl167374167863%_
                                             _%e167375167866%_
                                             _%hd167376167869%_
                                             _%tl167377167871%_
                                             _%e167378167874%_
                                             _%hd167379167877%_
                                             _%tl167380167879%_
                                             _%e167381167882%_
                                             _%hd167382167885%_
                                             _%tl167383167887%_
                                             _%e167384167890%_
                                             _%hd167385167893%_
                                             _%tl167386167895%_
                                             _%e167387167898%_
                                             _%hd167388167901%_
                                             _%tl167389167903%_
                                             _%e167390167906%_
                                             _%hd167391167909%_
                                             _%tl167392167911%_
                                             _%e167393167914%_
                                             _%hd167394167917%_
                                             _%tl167395167919%_))
                                        (_%__match173769173770%_
                                         _%e167366167842%_
                                         _%hd167367167845%_
                                         _%tl167368167847%_
                                         _%e167369167850%_
                                         _%hd167370167853%_
                                         _%tl167371167855%_
                                         _%e167372167858%_
                                         _%hd167373167861%_
                                         _%tl167374167863%_
                                         _%e167375167866%_
                                         _%hd167376167869%_
                                         _%tl167377167871%_
                                         _%e167378167874%_
                                         _%hd167379167877%_
                                         _%tl167380167879%_
                                         _%e167381167882%_
                                         _%hd167382167885%_
                                         _%tl167383167887%_
                                         _%e167384167890%_
                                         _%hd167385167893%_
                                         _%tl167386167895%_
                                         _%e167387167898%_
                                         _%hd167388167901%_
                                         _%tl167389167903%_))))
                                (_%__match173769173770%_
                                 _%e167366167842%_
                                 _%hd167367167845%_
                                 _%tl167368167847%_
                                 _%e167369167850%_
                                 _%hd167370167853%_
                                 _%tl167371167855%_
                                 _%e167372167858%_
                                 _%hd167373167861%_
                                 _%tl167374167863%_
                                 _%e167375167866%_
                                 _%hd167376167869%_
                                 _%tl167377167871%_
                                 _%e167378167874%_
                                 _%hd167379167877%_
                                 _%tl167380167879%_
                                 _%e167381167882%_
                                 _%hd167382167885%_
                                 _%tl167383167887%_
                                 _%e167384167890%_
                                 _%hd167385167893%_
                                 _%tl167386167895%_
                                 _%e167387167898%_
                                 _%hd167388167901%_
                                 _%tl167389167903%_))
                            (_%__match173769173770%_
                             _%e167366167842%_
                             _%hd167367167845%_
                             _%tl167368167847%_
                             _%e167369167850%_
                             _%hd167370167853%_
                             _%tl167371167855%_
                             _%e167372167858%_
                             _%hd167373167861%_
                             _%tl167374167863%_
                             _%e167375167866%_
                             _%hd167376167869%_
                             _%tl167377167871%_
                             _%e167378167874%_
                             _%hd167379167877%_
                             _%tl167380167879%_
                             _%e167381167882%_
                             _%hd167382167885%_
                             _%tl167383167887%_
                             _%e167384167890%_
                             _%hd167385167893%_
                             _%tl167386167895%_
                             _%e167387167898%_
                             _%hd167388167901%_
                             _%tl167389167903%_))))
                     (_%__match173487173488%_
                      (lambda (_%e167315167963%_
                               _%hd167316167966%_
                               _%tl167317167968%_
                               _%e167318167971%_
                               _%hd167319167974%_
                               _%tl167320167976%_
                               _%e167321167979%_
                               _%hd167322167982%_
                               _%tl167323167984%_
                               _%e167324167987%_
                               _%hd167325167990%_
                               _%tl167326167992%_
                               _%e167327167995%_
                               _%hd167328167998%_
                               _%tl167329168000%_
                               _%e167330168003%_
                               _%hd167331168006%_
                               _%tl167332168008%_
                               _%e167333168011%_
                               _%hd167334168014%_
                               _%tl167335168016%_
                               _%e167336168019%_
                               _%hd167337168022%_
                               _%tl167338168024%_
                               _%e167339168027%_
                               _%hd167340168030%_
                               _%tl167341168032%_
                               _%e167342168035%_
                               _%hd167343168038%_
                               _%tl167344168040%_
                               _%e167345168043%_
                               _%hd167346168046%_
                               _%tl167347168048%_
                               _%e167348168051%_
                               _%hd167349168054%_
                               _%tl167350168056%_
                               _%e167351168059%_
                               _%hd167352168062%_
                               _%tl167353168064%_
                               _%__splice173280173281%_
                               _%target167354168067%_
                               _%tl167356168069%_)
                        (letrec ((_%loop167357168072%_
                                  (lambda (_%hd167355168075%_
                                           _%args167361168077%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd167355168075%_))
                                        (let ((_%e167358168080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd167355168075%_))))
                                          (let ((_%lp-tl167360168085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167358168080%_)))
                                                (_%lp-hd167359168083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167358168080%_))))
                                            (_%loop167357168072%_
                                             _%lp-tl167360168085%_
                                             (cons _%lp-hd167359168083%_
                                                   _%args167361168077%_))))
                                        (let ((_%args167362168088%_
                                               (reverse _%args167361168077%_)))
                                          (let ((_%L168091%_
                                                 _%args167362168088%_)
                                                (_%L168092%_
                                                 _%hd167352168062%_)
                                                (_%L168093%_
                                                 _%hd167343168038%_)
                                                (_%L168094%_
                                                 _%hd167334168014%_)
                                                (_%L168095%_
                                                 _%hd167325167990%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168095%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168094%_
                                                        'call-method))
                                                     (let ((__tmp173933
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167254%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L168093%_
                                                        __tmp173933)))
                                                (_%__kont173278173279%_
                                                 _%L168091%_
                                                 _%L168092%_
                                                 _%L168093%_
                                                 _%L168094%_
                                                 _%L168095%_)
                                                (_%__kont173290173291%_))))))))
                          (_%loop167357168072%_ _%target167354168067%_ '()))))
                     (_%__match173445173446%_
                      (lambda (_%e167315167963%_
                               _%hd167316167966%_
                               _%tl167317167968%_
                               _%e167318167971%_
                               _%hd167319167974%_
                               _%tl167320167976%_
                               _%e167321167979%_
                               _%hd167322167982%_
                               _%tl167323167984%_
                               _%e167324167987%_
                               _%hd167325167990%_
                               _%tl167326167992%_
                               _%e167327167995%_
                               _%hd167328167998%_
                               _%tl167329168000%_
                               _%e167330168003%_
                               _%hd167331168006%_
                               _%tl167332168008%_
                               _%e167333168011%_
                               _%hd167334168014%_
                               _%tl167335168016%_
                               _%e167336168019%_
                               _%hd167337168022%_
                               _%tl167338168024%_
                               _%e167339168027%_
                               _%hd167340168030%_
                               _%tl167341168032%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd167340168030%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167341168032%_))
                                (let ((_%e167342168035%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167341168032%_))))
                                  (let ((_%tl167344168040%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167342168035%_)))
                                        (_%hd167343168038%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167342168035%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl167344168040%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167338168024%_))
                                            (let ((_%e167345168043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167338168024%_))))
                                              (let ((_%tl167347168048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167345168043%_)))
                                                    (_%hd167346168046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167345168043%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd167346168046%_))
                                                    (let ((_%e167348168051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd167346168046%_))))
                                                      (let ((_%tl167350168056%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167348168051%_)))
                    (_%hd167349168054%_
                     (let () (declare (not safe)) (##car _%e167348168051%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd167349168054%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd167349168054%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167350168056%_))
                            (let ((_%e167351168059%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167350168056%_))))
                              (let ((_%tl167353168064%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167351168059%_)))
                                    (_%hd167352168062%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167351168059%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167353168064%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl167347168048%_))
                                        (let ((_%__splice173280173281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl167347168048%_
                                                  '0))))
                                          (let ((_%tl167356168069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice173280173281%_
                                                    '1)))
                                                (_%target167354168067%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice173280173281%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167356168069%_))
                                                (_%__match173487173488%_
                                                 _%e167315167963%_
                                                 _%hd167316167966%_
                                                 _%tl167317167968%_
                                                 _%e167318167971%_
                                                 _%hd167319167974%_
                                                 _%tl167320167976%_
                                                 _%e167321167979%_
                                                 _%hd167322167982%_
                                                 _%tl167323167984%_
                                                 _%e167324167987%_
                                                 _%hd167325167990%_
                                                 _%tl167326167992%_
                                                 _%e167327167995%_
                                                 _%hd167328167998%_
                                                 _%tl167329168000%_
                                                 _%e167330168003%_
                                                 _%hd167331168006%_
                                                 _%tl167332168008%_
                                                 _%e167333168011%_
                                                 _%hd167334168014%_
                                                 _%tl167335168016%_
                                                 _%e167336168019%_
                                                 _%hd167337168022%_
                                                 _%tl167338168024%_
                                                 _%e167339168027%_
                                                 _%hd167340168030%_
                                                 _%tl167341168032%_
                                                 _%e167342168035%_
                                                 _%hd167343168038%_
                                                 _%tl167344168040%_
                                                 _%e167345168043%_
                                                 _%hd167346168046%_
                                                 _%tl167347168048%_
                                                 _%e167348168051%_
                                                 _%hd167349168054%_
                                                 _%tl167350168056%_
                                                 _%e167351168059%_
                                                 _%hd167352168062%_
                                                 _%tl167353168064%_
                                                 _%__splice173280173281%_
                                                 _%target167354168067%_
                                                 _%tl167356168069%_)
                                                (_%__kont173290173291%_))))
                                        (_%__kont173290173291%_))
                                    (_%__kont173290173291%_))))
                            (_%__kont173290173291%_))
                        (_%__kont173290173291%_))
                    (_%__kont173290173291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173290173291%_))))
                                            (_%__match173769173770%_
                                             _%e167315167963%_
                                             _%hd167316167966%_
                                             _%tl167317167968%_
                                             _%e167318167971%_
                                             _%hd167319167974%_
                                             _%tl167320167976%_
                                             _%e167321167979%_
                                             _%hd167322167982%_
                                             _%tl167323167984%_
                                             _%e167324167987%_
                                             _%hd167325167990%_
                                             _%tl167326167992%_
                                             _%e167327167995%_
                                             _%hd167328167998%_
                                             _%tl167329168000%_
                                             _%e167330168003%_
                                             _%hd167331168006%_
                                             _%tl167332168008%_
                                             _%e167333168011%_
                                             _%hd167334168014%_
                                             _%tl167335168016%_
                                             _%e167336168019%_
                                             _%hd167337168022%_
                                             _%tl167338168024%_))
                                        (_%__match173769173770%_
                                         _%e167315167963%_
                                         _%hd167316167966%_
                                         _%tl167317167968%_
                                         _%e167318167971%_
                                         _%hd167319167974%_
                                         _%tl167320167976%_
                                         _%e167321167979%_
                                         _%hd167322167982%_
                                         _%tl167323167984%_
                                         _%e167324167987%_
                                         _%hd167325167990%_
                                         _%tl167326167992%_
                                         _%e167327167995%_
                                         _%hd167328167998%_
                                         _%tl167329168000%_
                                         _%e167330168003%_
                                         _%hd167331168006%_
                                         _%tl167332168008%_
                                         _%e167333168011%_
                                         _%hd167334168014%_
                                         _%tl167335168016%_
                                         _%e167336168019%_
                                         _%hd167337168022%_
                                         _%tl167338168024%_))))
                                (_%__match173769173770%_
                                 _%e167315167963%_
                                 _%hd167316167966%_
                                 _%tl167317167968%_
                                 _%e167318167971%_
                                 _%hd167319167974%_
                                 _%tl167320167976%_
                                 _%e167321167979%_
                                 _%hd167322167982%_
                                 _%tl167323167984%_
                                 _%e167324167987%_
                                 _%hd167325167990%_
                                 _%tl167326167992%_
                                 _%e167327167995%_
                                 _%hd167328167998%_
                                 _%tl167329168000%_
                                 _%e167330168003%_
                                 _%hd167331168006%_
                                 _%tl167332168008%_
                                 _%e167333168011%_
                                 _%hd167334168014%_
                                 _%tl167335168016%_
                                 _%e167336168019%_
                                 _%hd167337168022%_
                                 _%tl167338168024%_))
                            (_%__match173555173556%_
                             _%e167315167963%_
                             _%hd167316167966%_
                             _%tl167317167968%_
                             _%e167318167971%_
                             _%hd167319167974%_
                             _%tl167320167976%_
                             _%e167321167979%_
                             _%hd167322167982%_
                             _%tl167323167984%_
                             _%e167324167987%_
                             _%hd167325167990%_
                             _%tl167326167992%_
                             _%e167327167995%_
                             _%hd167328167998%_
                             _%tl167329168000%_
                             _%e167330168003%_
                             _%hd167331168006%_
                             _%tl167332168008%_
                             _%e167333168011%_
                             _%hd167334168014%_
                             _%tl167335168016%_
                             _%e167336168019%_
                             _%hd167337168022%_
                             _%tl167338168024%_
                             _%e167339168027%_
                             _%hd167340168030%_
                             _%tl167341168032%_))))
                     (_%__match173377173378%_
                      (lambda (_%e167271168155%_
                               _%hd167272168158%_
                               _%tl167273168160%_
                               _%e167274168163%_
                               _%hd167275168166%_
                               _%tl167276168168%_
                               _%e167277168171%_
                               _%hd167278168174%_
                               _%tl167279168176%_
                               _%e167280168179%_
                               _%hd167281168182%_
                               _%tl167282168184%_
                               _%e167283168187%_
                               _%hd167284168190%_
                               _%tl167285168192%_
                               _%e167286168195%_
                               _%hd167287168198%_
                               _%tl167288168200%_
                               _%e167289168203%_
                               _%hd167290168206%_
                               _%tl167291168208%_
                               _%e167292168211%_
                               _%hd167293168214%_
                               _%tl167294168216%_
                               _%e167295168219%_
                               _%hd167296168222%_
                               _%tl167297168224%_
                               _%e167298168227%_
                               _%hd167299168230%_
                               _%tl167300168232%_
                               _%__splice173276173277%_
                               _%target167301168235%_
                               _%tl167303168237%_)
                        (letrec ((_%loop167304168240%_
                                  (lambda (_%hd167302168243%_
                                           _%args167308168245%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd167302168243%_))
                                        (let ((_%e167305168248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd167302168243%_))))
                                          (let ((_%lp-tl167307168253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167305168248%_)))
                                                (_%lp-hd167306168251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167305168248%_))))
                                            (_%loop167304168240%_
                                             _%lp-tl167307168253%_
                                             (cons _%lp-hd167306168251%_
                                                   _%args167308168245%_))))
                                        (let ((_%args167309168256%_
                                               (reverse _%args167308168245%_)))
                                          (let ((_%L168259%_
                                                 _%args167309168256%_)
                                                (_%L168260%_
                                                 _%hd167299168230%_)
                                                (_%L168261%_
                                                 _%hd167290168206%_)
                                                (_%L168262%_
                                                 _%hd167281168182%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168262%_
                                                        'call-method))
                                                     (let ((__tmp173934
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167254%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L168261%_
                                                        __tmp173934)))
                                                (_%__kont173274173275%_
                                                 _%L168259%_
                                                 _%L168260%_
                                                 _%L168261%_
                                                 _%L168262%_)
                                                (_%__match173565173566%_
                                                 _%e167271168155%_
                                                 _%hd167272168158%_
                                                 _%tl167273168160%_
                                                 _%e167274168163%_
                                                 _%hd167275168166%_
                                                 _%tl167276168168%_
                                                 _%e167277168171%_
                                                 _%hd167278168174%_
                                                 _%tl167279168176%_
                                                 _%e167280168179%_
                                                 _%hd167281168182%_
                                                 _%tl167282168184%_
                                                 _%e167283168187%_
                                                 _%hd167284168190%_
                                                 _%tl167285168192%_
                                                 _%e167286168195%_
                                                 _%hd167287168198%_
                                                 _%tl167288168200%_
                                                 _%e167289168203%_
                                                 _%hd167290168206%_
                                                 _%tl167291168208%_
                                                 _%e167292168211%_
                                                 _%hd167293168214%_
                                                 _%tl167294168216%_
                                                 _%e167295168219%_
                                                 _%hd167296168222%_
                                                 _%tl167297168224%_
                                                 _%e167298168227%_
                                                 _%hd167299168230%_
                                                 _%tl167300168232%_))))))))
                          (_%loop167304168240%_ _%target167301168235%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx173272173273%_))
                    (let ((_%e167271168155%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx173272173273%_))))
                      (let ((_%tl167273168160%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167271168155%_)))
                            (_%hd167272168158%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167271168155%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167273168160%_))
                            (let ((_%e167274168163%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167273168160%_))))
                              (let ((_%tl167276168168%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167274168163%_)))
                                    (_%hd167275168166%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167274168163%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167275168166%_))
                                    (let ((_%e167277168171%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167275168166%_))))
                                      (let ((_%tl167279168176%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167277168171%_)))
                                            (_%hd167278168174%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167277168171%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd167278168174%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd167278168174%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167279168176%_))
                                                    (let ((_%e167280168179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167279168176%_))))
                                                      (let ((_%tl167282168184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167280168179%_)))
                    (_%hd167281168182%_
                     (let () (declare (not safe)) (##car _%e167280168179%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167282168184%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl167276168168%_))
                        (let ((_%e167283168187%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167276168168%_))))
                          (let ((_%tl167285168192%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167283168187%_)))
                                (_%hd167284168190%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167283168187%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd167284168190%_))
                                (let ((_%e167286168195%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd167284168190%_))))
                                  (let ((_%tl167288168200%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167286168195%_)))
                                        (_%hd167287168198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167286168195%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd167287168198%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd167287168198%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167288168200%_))
                                                (let ((_%e167289168203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167288168200%_))))
                                                  (let ((_%tl167291168208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167289168203%_)))
                                                        (_%hd167290168206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167289168203%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167291168208%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167285168192%_))
                                                            (let ((_%e167292168211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167285168192%_))))
                      (let ((_%tl167294168216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167292168211%_)))
                            (_%hd167293168214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167292168211%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd167293168214%_))
                            (let ((_%e167295168219%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167293168214%_))))
                              (let ((_%tl167297168224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167295168219%_)))
                                    (_%hd167296168222%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167295168219%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167296168222%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd167296168222%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167297168224%_))
                                            (let ((_%e167298168227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167297168224%_))))
                                              (let ((_%tl167300168232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167298168227%_)))
                                                    (_%hd167299168230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167298168227%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl167300168232%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl167294168216%_))
                                                        (let ((_%__splice173276173277%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl167294168216%_ '0))))
                  (let ((_%tl167303168237%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice173276173277%_ '1)))
                        (_%target167301168235%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice173276173277%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl167303168237%_))
                        (_%__match173377173378%_
                         _%e167271168155%_
                         _%hd167272168158%_
                         _%tl167273168160%_
                         _%e167274168163%_
                         _%hd167275168166%_
                         _%tl167276168168%_
                         _%e167277168171%_
                         _%hd167278168174%_
                         _%tl167279168176%_
                         _%e167280168179%_
                         _%hd167281168182%_
                         _%tl167282168184%_
                         _%e167283168187%_
                         _%hd167284168190%_
                         _%tl167285168192%_
                         _%e167286168195%_
                         _%hd167287168198%_
                         _%tl167288168200%_
                         _%e167289168203%_
                         _%hd167290168206%_
                         _%tl167291168208%_
                         _%e167292168211%_
                         _%hd167293168214%_
                         _%tl167294168216%_
                         _%e167295168219%_
                         _%hd167296168222%_
                         _%tl167297168224%_
                         _%e167298168227%_
                         _%hd167299168230%_
                         _%tl167300168232%_
                         _%__splice173276173277%_
                         _%target167301168235%_
                         _%tl167303168237%_)
                        (_%__match173565173566%_
                         _%e167271168155%_
                         _%hd167272168158%_
                         _%tl167273168160%_
                         _%e167274168163%_
                         _%hd167275168166%_
                         _%tl167276168168%_
                         _%e167277168171%_
                         _%hd167278168174%_
                         _%tl167279168176%_
                         _%e167280168179%_
                         _%hd167281168182%_
                         _%tl167282168184%_
                         _%e167283168187%_
                         _%hd167284168190%_
                         _%tl167285168192%_
                         _%e167286168195%_
                         _%hd167287168198%_
                         _%tl167288168200%_
                         _%e167289168203%_
                         _%hd167290168206%_
                         _%tl167291168208%_
                         _%e167292168211%_
                         _%hd167293168214%_
                         _%tl167294168216%_
                         _%e167295168219%_
                         _%hd167296168222%_
                         _%tl167297168224%_
                         _%e167298168227%_
                         _%hd167299168230%_
                         _%tl167300168232%_))))
                (_%__match173565173566%_
                 _%e167271168155%_
                 _%hd167272168158%_
                 _%tl167273168160%_
                 _%e167274168163%_
                 _%hd167275168166%_
                 _%tl167276168168%_
                 _%e167277168171%_
                 _%hd167278168174%_
                 _%tl167279168176%_
                 _%e167280168179%_
                 _%hd167281168182%_
                 _%tl167282168184%_
                 _%e167283168187%_
                 _%hd167284168190%_
                 _%tl167285168192%_
                 _%e167286168195%_
                 _%hd167287168198%_
                 _%tl167288168200%_
                 _%e167289168203%_
                 _%hd167290168206%_
                 _%tl167291168208%_
                 _%e167292168211%_
                 _%hd167293168214%_
                 _%tl167294168216%_
                 _%e167295168219%_
                 _%hd167296168222%_
                 _%tl167297168224%_
                 _%e167298168227%_
                 _%hd167299168230%_
                 _%tl167300168232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match173769173770%_
                                                     _%e167271168155%_
                                                     _%hd167272168158%_
                                                     _%tl167273168160%_
                                                     _%e167274168163%_
                                                     _%hd167275168166%_
                                                     _%tl167276168168%_
                                                     _%e167277168171%_
                                                     _%hd167278168174%_
                                                     _%tl167279168176%_
                                                     _%e167280168179%_
                                                     _%hd167281168182%_
                                                     _%tl167282168184%_
                                                     _%e167283168187%_
                                                     _%hd167284168190%_
                                                     _%tl167285168192%_
                                                     _%e167286168195%_
                                                     _%hd167287168198%_
                                                     _%tl167288168200%_
                                                     _%e167289168203%_
                                                     _%hd167290168206%_
                                                     _%tl167291168208%_
                                                     _%e167292168211%_
                                                     _%hd167293168214%_
                                                     _%tl167294168216%_))))
                                            (_%__match173769173770%_
                                             _%e167271168155%_
                                             _%hd167272168158%_
                                             _%tl167273168160%_
                                             _%e167274168163%_
                                             _%hd167275168166%_
                                             _%tl167276168168%_
                                             _%e167277168171%_
                                             _%hd167278168174%_
                                             _%tl167279168176%_
                                             _%e167280168179%_
                                             _%hd167281168182%_
                                             _%tl167282168184%_
                                             _%e167283168187%_
                                             _%hd167284168190%_
                                             _%tl167285168192%_
                                             _%e167286168195%_
                                             _%hd167287168198%_
                                             _%tl167288168200%_
                                             _%e167289168203%_
                                             _%hd167290168206%_
                                             _%tl167291168208%_
                                             _%e167292168211%_
                                             _%hd167293168214%_
                                             _%tl167294168216%_))
                                        (_%__match173445173446%_
                                         _%e167271168155%_
                                         _%hd167272168158%_
                                         _%tl167273168160%_
                                         _%e167274168163%_
                                         _%hd167275168166%_
                                         _%tl167276168168%_
                                         _%e167277168171%_
                                         _%hd167278168174%_
                                         _%tl167279168176%_
                                         _%e167280168179%_
                                         _%hd167281168182%_
                                         _%tl167282168184%_
                                         _%e167283168187%_
                                         _%hd167284168190%_
                                         _%tl167285168192%_
                                         _%e167286168195%_
                                         _%hd167287168198%_
                                         _%tl167288168200%_
                                         _%e167289168203%_
                                         _%hd167290168206%_
                                         _%tl167291168208%_
                                         _%e167292168211%_
                                         _%hd167293168214%_
                                         _%tl167294168216%_
                                         _%e167295168219%_
                                         _%hd167296168222%_
                                         _%tl167297168224%_))
                                    (_%__match173769173770%_
                                     _%e167271168155%_
                                     _%hd167272168158%_
                                     _%tl167273168160%_
                                     _%e167274168163%_
                                     _%hd167275168166%_
                                     _%tl167276168168%_
                                     _%e167277168171%_
                                     _%hd167278168174%_
                                     _%tl167279168176%_
                                     _%e167280168179%_
                                     _%hd167281168182%_
                                     _%tl167282168184%_
                                     _%e167283168187%_
                                     _%hd167284168190%_
                                     _%tl167285168192%_
                                     _%e167286168195%_
                                     _%hd167287168198%_
                                     _%tl167288168200%_
                                     _%e167289168203%_
                                     _%hd167290168206%_
                                     _%tl167291168208%_
                                     _%e167292168211%_
                                     _%hd167293168214%_
                                     _%tl167294168216%_))))
                            (_%__match173769173770%_
                             _%e167271168155%_
                             _%hd167272168158%_
                             _%tl167273168160%_
                             _%e167274168163%_
                             _%hd167275168166%_
                             _%tl167276168168%_
                             _%e167277168171%_
                             _%hd167278168174%_
                             _%tl167279168176%_
                             _%e167280168179%_
                             _%hd167281168182%_
                             _%tl167282168184%_
                             _%e167283168187%_
                             _%hd167284168190%_
                             _%tl167285168192%_
                             _%e167286168195%_
                             _%hd167287168198%_
                             _%tl167288168200%_
                             _%e167289168203%_
                             _%hd167290168206%_
                             _%tl167291168208%_
                             _%e167292168211%_
                             _%hd167293168214%_
                             _%tl167294168216%_))))
                    (_%__match173707173708%_
                     _%e167271168155%_
                     _%hd167272168158%_
                     _%tl167273168160%_
                     _%e167274168163%_
                     _%hd167275168166%_
                     _%tl167276168168%_
                     _%e167277168171%_
                     _%hd167278168174%_
                     _%tl167279168176%_
                     _%e167280168179%_
                     _%hd167281168182%_
                     _%tl167282168184%_
                     _%e167283168187%_
                     _%hd167284168190%_
                     _%tl167285168192%_
                     _%e167286168195%_
                     _%hd167287168198%_
                     _%tl167288168200%_
                     _%e167289168203%_
                     _%hd167290168206%_
                     _%tl167291168208%_))
                (_%__kont173290173291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont173290173291%_))
                                            (_%__kont173290173291%_))
                                        (_%__kont173290173291%_))))
                                (_%__kont173290173291%_))))
                        (_%__kont173290173291%_))
                    (_%__kont173290173291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173290173291%_))
                                                (_%__kont173290173291%_))
                                            (_%__kont173290173291%_))))
                                    (_%__kont173290173291%_))))
                            (_%__kont173290173291%_))))
                    (_%__kont173290173291%_))))))))))
