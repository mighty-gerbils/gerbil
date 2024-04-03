(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712124238)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171089 (list gxc#::identity::t))
            (__tmp171088 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171089
         '()
         __tmp171088
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args169954%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args169954%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171090
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
        (__make-promise __tmp171090)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx169946%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self169949%_
                (let ((__obj171083
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171083))
               (__tmp171091
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self169949%_ _%stx169946%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171091
           gxc#current-compile-method
           _%self169949%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171093 (list gxc#::void::t))
            (__tmp171092 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171093
         '(receiver methods slots)
         __tmp171092
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args169943%_
        (apply make-instance gxc#::collect-object-refs::t _%$args169943%_)))
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
      (let ((__tmp171094
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
        (__make-promise __tmp171094)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%_169908%_
               _%receiver169903169910%_
               _%methods169904169912%_
               _%slots169905169914%_
               _%stx169916%_)
        (let* ((_%receiver169919%_
                (if (eq? _%receiver169903169910%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169903169910%_))
               (_%methods169921%_
                (if (eq? _%methods169904169912%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169904169912%_))
               (_%slots169923%_
                (if (eq? _%slots169905169914%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169905169914%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self169925%_
                  (let ((__obj171085
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
                       __obj171085
                       _%receiver169919%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171085
                       _%methods169921%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171085
                       _%slots169923%_
                       '3
                       '#f
                       '#f))
                    __obj171085))
                 (__tmp171095
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169925%_ _%stx169916%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171095
             gxc#current-compile-method
             _%self169925%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords169932%_ . _%args169933%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords169932%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169932%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169932%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169932%_
                  'slots:
                  absent-value))
               _%args169933%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args169906169939%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args169906169939%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171097 (list gxc#::basic-xform-expression::t))
            (__tmp171096 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171097
         '(receiver klass methods slots)
         __tmp171096
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args169899%_
        (apply make-instance gxc#::subst-object-refs::t _%$args169899%_)))
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
      (let ((__tmp171098
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
        (__make-promise __tmp171098)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%_169860%_
               _%receiver169854169862%_
               _%klass169855169864%_
               _%methods169856169866%_
               _%slots169857169868%_
               _%stx169870%_)
        (let* ((_%receiver169873%_
                (if (eq? _%receiver169854169862%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver169854169862%_))
               (_%klass169875%_
                (if (eq? _%klass169855169864%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass169855169864%_))
               (_%methods169877%_
                (if (eq? _%methods169856169866%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods169856169866%_))
               (_%slots169879%_
                (if (eq? _%slots169857169868%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots169857169868%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self169881%_
                  (let ((__obj171087
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
                       __obj171087
                       _%receiver169873%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171087
                       _%klass169875%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171087
                       _%methods169877%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171087
                       _%slots169879%_
                       '4
                       '#f
                       '#f))
                    __obj171087))
                 (__tmp171099
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self169881%_ _%stx169870%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171099
             gxc#current-compile-method
             _%self169881%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords169888%_ . _%args169889%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords169888%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169888%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169888%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169888%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords169888%_
                  'slots:
                  absent-value))
               _%args169889%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args169858169895%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args169858169895%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167035%_ _%stx167036%_)
        (letrec ((_%generate-method-bind167038%_
                  (lambda (_%$klass169846%_
                           _%$method-table169847%_
                           _%id169848%_
                           _%$id169849%_)
                    (let ((_%$tmp169851%_
                           (let ((__tmp171100
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171100))))
                      (cons (cons _%$id169849%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp169851%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table169847%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id169848%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp169851%_ '()))
                    (cons (cons '%#ref (cons _%$tmp169851%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id169848%_
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
                 (_%generate-slot-bind167039%_
                  (lambda (_%$klass169840%_ _%id169841%_ _%$id169842%_)
                    (let ((_%$tmp169844%_
                           (let ((__tmp171101
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171101))))
                      (cons (cons _%$id169842%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp169844%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass169840%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id169841%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp169844%_ '()))
                        (cons (cons '%#ref (cons _%$tmp169844%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id169841%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167040%_
                  (lambda (_%$klass169834%_
                           _%$method-table169835%_
                           _%methods-bind169836%_
                           _%slots-bind169837%_
                           _%specializer-impl169838%_)
                    (let ((__tmp171102
                           (cons '%#lambda
                                 (cons (cons _%$klass169834%_
                                             (cons _%$method-table169835%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind169837%_
                                                            _%methods-bind169836%_))
                                                         (cons _%specializer-impl169838%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171102 _%stx167036%_))))
                 (_%generate-specializer-def167041%_
                  (lambda (_%id169830%_
                           _%specializer-id169831%_
                           _%specializer-impl169832%_)
                    (let ((__tmp171103
                           (cons '%#begin
                                 (cons _%stx167036%_
                                       (cons (let ((__tmp171104
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id169831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl169832%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171104
                                                _%stx167036%_))
                                             (cons (let ((__tmp171105
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id169830%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id169831%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171105
                                                      _%stx167036%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171103 _%stx167036%_)))))
          (let* ((_%__stx170043170044%_ _%stx167036%_)
                 (_%g167044167064%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170043170044%_)))))
            (let ((_%__kont170045170046%_
                   (lambda (_%L167108%_ _%L167109%_)
                     (let ((_%method-calls167128%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167129%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167130%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167132%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167128%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167129%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167108%_))
                             (let ()
                               (let* ((_%__stx169957169958%_ _%L167108%_)
                                      (_%g167520167538%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx169957169958%_)))))
                                 (let ((_%__kont169959169960%_
                                        (lambda (_%L167574%_
                                                 _%L167575%_
                                                 _%L167576%_)
                                          (for-each
                                           (lambda (_%g167592167594%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs
                                                _%g167592167594%_
                                                'receiver:
                                                _%L167576%_
                                                'methods:
                                                _%method-calls167128%_
                                                'slots:
                                                _%slot-refs167129%_)))
                                           _%L167574%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?167132%_))
                                              _%stx167036%_
                                              (let* ((_%specializer-id167603%_
                                                      (let* ((_%id167597%_
                                                              (let ((__tmp171106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167109%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171106 '"::specialize")))
                     (_%specializer-id167600%_
                      (let ((__tmp171107
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167036%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id167597%_ __tmp171107))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id167600%_))
                _%specializer-id167600%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass167605%_
                                                      (let ((__tmp171108
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171108)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table167607%_
                                                      (let ((__tmp171109
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171109)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods167609%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167128%_)))
                                                     (_%$methods167613%_
                                                      (map (lambda (_%id167611%_)
                                                             (let ((__tmp171110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167611%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171110)))
                   _%methods167609%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167622%_
                                                      (for-each
                                                       (lambda (_%g167614167617%_
                                                                _%g167615167619%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167128%_
                                                            _%g167614167617%_
                                                            _%g167615167619%_)))
                                                       _%methods167609%_
                                                       _%$methods167613%_))
                                                     (_%methods-bind167632%_
                                                      (map (lambda (_%g167624167627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167625167629%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind167038%_
                        _%$klass167605%_
                        _%$method-table167607%_
                        _%g167624167627%_
                        _%g167625167629%_)))
                   _%methods167609%_
                   _%$methods167613%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots167634%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167129%_)))
                                                     (_%$slots167638%_
                                                      (map (lambda (_%id167636%_)
                                                             (let ((__tmp171111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id167636%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171111)))
                   _%slots167634%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_167647%_
                                                      (for-each
                                                       (lambda (_%g167639167642%_
                                                                _%g167640167644%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167129%_
                                                            _%g167639167642%_
                                                            _%g167640167644%_)))
                                                       _%slots167634%_
                                                       _%$slots167638%_))
                                                     (_%slots-bind167656%_
                                                      (map (lambda (_%g167648167651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g167649167653%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind167039%_
                        _%$klass167605%_
                        _%g167648167651%_
                        _%g167649167653%_)))
                   _%slots167634%_
                   _%$slots167638%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body167662%_
                                                      (map (lambda (_%g167657167659%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _%g167657167659%_
                        'receiver:
                        _%L167576%_
                        'klass:
                        _%$klass167605%_
                        'methods:
                        _%method-calls167128%_
                        'slots:
                        _%slot-refs167129%_)))
                   _%L167574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167664%_
                                                      (let ((__tmp171112
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L167576%_ _%L167575%_)
                                 _%specializer-body167662%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171112 _%stx167036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl167666%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl167040%_
                                                         _%$klass167605%_
                                                         _%$method-table167607%_
                                                         _%methods-bind167632%_
                                                         _%slots-bind167656%_
                                                         _%specializer-impl167664%_))))
                                                (let ((__tmp171114
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167109%_)))
                                                      (__tmp171113
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id167603%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171114
                                                   '" => "
                                                   __tmp171113))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def167041%_
                                                   _%L167109%_
                                                   _%specializer-id167603%_
                                                   _%specializer-impl167666%_))))))
                                       (_%__kont169961169962%_
                                        (lambda () _%stx167036%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx169957169958%_))
                                       (let ((_%e167527167550%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx169957169958%_))))
                                         (let ((_%tl167525167555%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e167527167550%_)))
                                               (_%hd167526167553%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e167527167550%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl167525167555%_))
                                               (let ((_%e167530167558%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl167525167555%_))))
                                                 (let ((_%tl167528167563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e167530167558%_)))
                                                       (_%hd167529167561%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e167530167558%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd167529167561%_))
                                                       (let ((_%e167533167566%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd167529167561%_))))
                 (let ((_%tl167531167571%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e167533167566%_)))
                       (_%hd167532167569%_
                        (let ()
                          (declare (not safe))
                          (##car _%e167533167566%_))))
                   (_%__kont169959169960%_
                    _%tl167528167563%_
                    _%tl167531167571%_
                    _%hd167532167569%_)))
               (_%__kont169961169962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont169961169962%_))))
                                       (_%__kont169961169962%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167108%_))
                                 (let ()
                                   (let* ((_%g167673167692%_
                                           (lambda (_%g167674167689%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g167674167689%_))))
                                          (_%g167672167979%_
                                           (lambda (_%g167674167695%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g167674167695%_))
                                                 (let ((_%e167678167697%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g167674167695%_))))
                                                   (let ((_%hd167677167700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167678167697%_)))
                                                         (_%tl167676167702%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167678167697%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl167676167702%_))
                                                         (let ((_g171115_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl167676167702%_ '0))))
                   (begin
                     (let ((_g171116_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g171115_)
                                  (##vector-length _g171115_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g171116_ 2)))
                           (error "Context expects 2 values" _g171116_)))
                     (let ((_%target167679167705%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171115_ 0)))
                           (_%tl167681167707%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g171115_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl167681167707%_))
                           (letrec ((_%loop167682167710%_
                                     (lambda (_%hd167680167713%_
                                              _%clause167686167715%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167680167713%_))
                                           (let ((_%e167683167718%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167680167713%_))))
                                             (let ((_%lp-hd167684167721%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167683167718%_)))
                                                   (_%lp-tl167685167723%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167683167718%_))))
                                               (let ((__tmp171117
                                                      (cons _%lp-hd167684167721%_
                                                            _%clause167686167715%_)))
                                                 (declare (not safe))
                                                 (_%loop167682167710%_
                                                  _%lp-tl167685167723%_
                                                  __tmp171117))))
                                           (let ((_%clause167687167726%_
                                                  (reverse _%clause167686167715%_)))
                                             ((lambda (_%L167729%_)
                                                (for-each
                                                 (lambda (_%clause167743%_)
                                                   (let* ((_%__stx169983169984%_
                                                           _%clause167743%_)
                                                          (_%g167746167761%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx169983169984%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont169985169986%_
                                                            (lambda (_%L167789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L167790%_
                             _%L167791%_)
                      (for-each
                       (lambda (_%g167806167808%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs
                            _%g167806167808%_
                            'receiver:
                            _%L167791%_
                            'methods:
                            _%method-calls167128%_
                            'slots:
                            _%slot-refs167129%_)))
                       _%L167789%_)))
                   (_%__kont169987169988%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx169983169984%_))
                   (let ((_%e167753167773%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx169983169984%_))))
                     (let ((_%tl167751167778%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e167753167773%_)))
                           (_%hd167752167776%_
                            (let ()
                              (declare (not safe))
                              (##car _%e167753167773%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd167752167776%_))
                           (let ((_%e167756167781%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd167752167776%_))))
                             (let ((_%tl167754167786%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e167756167781%_)))
                                   (_%hd167755167784%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e167756167781%_))))
                               (_%__kont169985169986%_
                                _%tl167751167778%_
                                _%tl167754167786%_
                                _%hd167755167784%_)))
                           (_%__kont169987169988%_))))
                   (_%__kont169987169988%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp171118
                                                        (lambda (_%g167813167816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g167814167818%_)
                  (cons _%g167813167816%_ _%g167814167818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171118
                                                    '()
                                                    _%L167729%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?167132%_))
                                                    _%stx167036%_
                                                    (let* ((_%specializer-id167827%_
                                                            (let* ((_%id167821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp171119
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167109%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp171119 '"::specialize")))
                           (_%specializer-id167824%_
                            (let ((__tmp171120
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx167036%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id167821%_
                               __tmp171120))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id167824%_))
                      _%specializer-id167824%_))
                   (_%$klass167829%_
                    (let ((__tmp171121
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171121)))
                   (_%$method-table167831%_
                    (let ((__tmp171122
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp171122)))
                   (_%methods167833%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls167128%_)))
                   (_%$methods167837%_
                    (map (lambda (_%id167835%_)
                           (let ((__tmp171123 (gensym _%id167835%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171123)))
                         _%methods167833%_))
                   (_%_167846%_
                    (for-each
                     (lambda (_%g167838167841%_ _%g167839167843%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls167128%_
                          _%g167838167841%_
                          _%g167839167843%_)))
                     _%methods167833%_
                     _%$methods167837%_))
                   (_%methods-bind167856%_
                    (map (lambda (_%g167848167851%_ _%g167849167853%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind167038%_
                              _%$klass167829%_
                              _%$method-table167831%_
                              _%g167848167851%_
                              _%g167849167853%_)))
                         _%methods167833%_
                         _%$methods167837%_))
                   (_%slots167858%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs167129%_)))
                   (_%$slots167862%_
                    (map (lambda (_%id167860%_)
                           (let ((__tmp171124 (gensym _%id167860%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp171124)))
                         _%slots167858%_))
                   (_%_167871%_
                    (for-each
                     (lambda (_%g167863167866%_ _%g167864167868%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs167129%_
                          _%g167863167866%_
                          _%g167864167868%_)))
                     _%slots167858%_
                     _%$slots167862%_))
                   (_%slots-bind167880%_
                    (map (lambda (_%g167872167875%_ _%g167873167877%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind167039%_
                              _%$klass167829%_
                              _%g167872167875%_
                              _%g167873167877%_)))
                         _%slots167858%_
                         _%$slots167862%_))
                   (_%specializer-clauses167972%_
                    (map (lambda (_%clause167882%_)
                           (let* ((_%__stx170003170004%_ _%clause167882%_)
                                  (_%g167885167900%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx170003170004%_)))))
                             (let ((_%__kont170005170006%_
                                    (lambda (_%L167928%_
                                             _%L167929%_
                                             _%L167930%_)
                                      (let ((_%body167960%_
                                             (map (lambda (_%g167955167957%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs
                                                       _%g167955167957%_
                                                       'receiver:
                                                       _%L167930%_
                                                       'klass:
                                                       _%$klass167829%_
                                                       'methods:
                                                       _%method-calls167128%_
                                                       'slots:
                                                       _%slot-refs167129%_)))
                                                  _%L167928%_)))
                                        (cons (cons _%L167930%_ _%L167929%_)
                                              _%body167960%_))))
                                   (_%__kont170007170008%_
                                    (lambda () _%clause167882%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx170003170004%_))
                                   (let ((_%e167892167912%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx170003170004%_))))
                                     (let ((_%tl167890167917%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e167892167912%_)))
                                           (_%hd167891167915%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e167892167912%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd167891167915%_))
                                           (let ((_%e167895167920%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd167891167915%_))))
                                             (let ((_%tl167893167925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e167895167920%_)))
                                                   (_%hd167894167923%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e167895167920%_))))
                                               (_%__kont170005170006%_
                                                _%tl167890167917%_
                                                _%tl167893167925%_
                                                _%hd167894167923%_)))
                                           (_%__kont170007170008%_))))
                                   (_%__kont170007170008%_)))))
                         (let ((__tmp171125
                                (lambda (_%g167964167967%_ _%g167965167969%_)
                                  (cons _%g167964167967%_ _%g167965167969%_))))
                           (declare (not safe))
                           (__foldr1 __tmp171125 '() _%L167729%_))))
                   (_%specializer-impl167974%_
                    (let ((__tmp171126
                           (cons '%#case-lambda
                                 _%specializer-clauses167972%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171126 _%stx167036%_)))
                   (_%specializer-impl167976%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl167040%_
                       _%$klass167829%_
                       _%$method-table167831%_
                       _%methods-bind167856%_
                       _%slots-bind167880%_
                       _%specializer-impl167974%_))))
              (let ((__tmp171128
                     (let () (declare (not safe)) (gx#stx-e _%L167109%_)))
                    (__tmp171127
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id167827%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp171128
                 '" => "
                 __tmp171127))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def167041%_
                 _%L167109%_
                 _%specializer-id167827%_
                 _%specializer-impl167976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause167687167726%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop167682167710%_
                                _%target167679167705%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g167673167692%_ _%g167674167695%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g167673167692%_ _%g167674167695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g167673167692%_
                                                    _%g167674167695%_))))))
                                     (declare (not safe))
                                     (_%g167672167979%_ _%L167108%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167108%_))
                                     (let ()
                                       (let* ((_%g167983168013%_
                                               (lambda (_%g167984168010%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g167984168010%_))))
                                              (_%g167982168622%_
                                               (lambda (_%g167984168016%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g167984168016%_))
                                                     (let ((_%e167990168018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g167984168016%_))))
                                                       (let ((_%hd167989168021%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e167990168018%_)))
                     (_%tl167988168023%_
                      (let () (declare (not safe)) (##cdr _%e167990168018%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167988168023%_))
                     (let ((_%e167993168026%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167988168023%_))))
                       (let ((_%hd167992168029%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167993168026%_)))
                             (_%tl167991168031%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167993168026%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd167992168029%_))
                             (let ((_%e167996168034%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd167992168029%_))))
                               (let ((_%hd167995168037%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e167996168034%_)))
                                     (_%tl167994168039%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e167996168034%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd167995168037%_))
                                     (let ((_%e167999168042%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd167995168037%_))))
                                       (let ((_%hd167998168045%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e167999168042%_)))
                                             (_%tl167997168047%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e167999168042%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd167998168045%_))
                                             (let ((_%e168002168050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd167998168045%_))))
                                               (let ((_%hd168001168053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168002168050%_)))
                                                     (_%tl168000168055%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168002168050%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168000168055%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl167997168047%_))
                                                         (let ((_%e168005168058%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl167997168047%_))))
                   (let ((_%hd168004168061%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168005168058%_)))
                         (_%tl168003168063%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168005168058%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168003168063%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167994168039%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl167991168031%_))
                                 (let ((_%e168008168066%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl167991168031%_))))
                                   (let ((_%hd168007168069%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168008168066%_)))
                                         (_%tl168006168071%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168008168066%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168006168071%_))
                                         ((lambda (_%L168074%_
                                                   _%L168075%_
                                                   _%L168076%_)
                                            (let* ((_%g168100168118%_
                                                    (lambda (_%g168101168115%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168101168115%_))))
                                                   (_%g168099168169%_
                                                    (lambda (_%g168101168121%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168101168121%_))
                                                          (let ((_%e168107168123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168101168121%_))))
                    (let ((_%hd168106168126%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168107168123%_)))
                          (_%tl168105168128%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168107168123%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168105168128%_))
                          (let ((_%e168110168131%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168105168128%_))))
                            (let ((_%hd168109168134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168110168131%_)))
                                  (_%tl168108168136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168110168131%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168109168134%_))
                                  (let ((_%e168113168139%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168109168134%_))))
                                    (let ((_%hd168112168142%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168113168139%_)))
                                          (_%tl168111168144%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168113168139%_))))
                                      ((lambda (_%L168147%_
                                                _%L168148%_
                                                _%L168149%_)
                                         (for-each
                                          (lambda (_%g168164168166%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g168164168166%_
                                               'receiver:
                                               _%L168149%_
                                               'methods:
                                               _%method-calls167128%_
                                               'slots:
                                               _%slot-refs167129%_)))
                                          _%L168147%_))
                                       _%tl168108168136%_
                                       _%tl168111168144%_
                                       _%hd168112168142%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168100168118%_ _%g168101168121%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g168100168118%_ _%g168101168121%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168100168118%_ _%g168101168121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168099168169%_ _%L168075%_))
                                            (let* ((_%g168172168191%_
                                                    (lambda (_%g168173168188%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g168173168188%_))))
                                                   (_%g168171168310%_
                                                    (lambda (_%g168173168194%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g168173168194%_))
                                                          (let ((_%e168177168196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g168173168194%_))))
                    (let ((_%hd168176168199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168177168196%_)))
                          (_%tl168175168201%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168177168196%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168175168201%_))
                          (let ((_g171129_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl168175168201%_
                                    '0))))
                            (begin
                              (let ((_g171130_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g171129_)
                                           (##vector-length _g171129_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g171130_ 2)))
                                    (error "Context expects 2 values"
                                           _g171130_)))
                              (let ((_%target168178168204%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171129_ 0)))
                                    (_%tl168180168206%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g171129_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl168180168206%_))
                                    (letrec ((_%loop168181168209%_
                                              (lambda (_%hd168179168212%_
                                                       _%clause168185168214%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd168179168212%_))
                                                    (let ((_%e168182168217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd168179168212%_))))
                                                      (let ((_%lp-hd168183168220%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e168182168217%_)))
                    (_%lp-tl168184168222%_
                     (let () (declare (not safe)) (##cdr _%e168182168217%_))))
                (let ((__tmp171131
                       (cons _%lp-hd168183168220%_ _%clause168185168214%_)))
                  (declare (not safe))
                  (_%loop168181168209%_ _%lp-tl168184168222%_ __tmp171131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause168186168225%_
                                                           (reverse _%clause168185168214%_)))
                                                      ((lambda (_%L168228%_)
                                                         (for-each
                                                          (lambda (_%clause168241%_)
                                                            (let* ((_%g168243168258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g168244168255%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g168244168255%_))))
                           (_%g168242168300%_
                            (lambda (_%g168244168261%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g168244168261%_))
                                  (let ((_%e168250168263%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g168244168261%_))))
                                    (let ((_%hd168249168266%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168250168263%_)))
                                          (_%tl168248168268%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168250168263%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168249168266%_))
                                          (let ((_%e168253168271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168249168266%_))))
                                            (let ((_%hd168252168274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168253168271%_)))
                                                  (_%tl168251168276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168253168271%_))))
                                              ((lambda (_%L168279%_
                                                        _%L168280%_
                                                        _%L168281%_)
                                                 (for-each
                                                  (lambda (_%g168295168297%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g168295168297%_
                                                       'receiver:
                                                       _%L168281%_
                                                       'methods:
                                                       _%method-calls167128%_
                                                       'slots:
                                                       _%slot-refs167129%_)))
                                                  _%L168279%_))
                                               _%tl168248168268%_
                                               _%tl168251168276%_
                                               _%hd168252168274%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168243168258%_
                                             _%g168244168261%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168243168258%_ _%g168244168261%_))))))
                      (declare (not safe))
                      (_%g168242168300%_ _%clause168241%_)))
                  (let ((__tmp171132
                         (lambda (_%g168302168305%_ _%g168303168307%_)
                           (cons _%g168302168305%_ _%g168303168307%_))))
                    (declare (not safe))
                    (__foldr1 __tmp171132 '() _%L168228%_))))
               _%clause168186168225%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop168181168209%_
                                         _%target168178168204%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168172168191%_
                                       _%g168173168194%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g168172168191%_ _%g168173168194%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168172168191%_ _%g168173168194%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g168171168310%_ _%L168074%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?167132%_))
                                                _%stx167036%_
                                                (let* ((_%specializer-id168319%_
                                                        (let* ((_%id168313%_
                                                                (let ((__tmp171133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L167109%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp171133 '"::specialize")))
                       (_%specializer-id168316%_
                        (let ((__tmp171134
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx167036%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id168313%_ __tmp171134))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id168316%_))
                  _%specializer-id168316%_))
               (_%$klass168321%_
                (let ((__tmp171135
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171135)))
               (_%$method-table168323%_
                (let ((__tmp171136
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp171136)))
               (_%methods168325%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls167128%_)))
               (_%$methods168329%_
                (map (lambda (_%id168327%_)
                       (let ((__tmp171137 (gensym _%id168327%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171137)))
                     _%methods168325%_))
               (_%_168338%_
                (for-each
                 (lambda (_%g168330168333%_ _%g168331168335%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls167128%_
                      _%g168330168333%_
                      _%g168331168335%_)))
                 _%methods168325%_
                 _%$methods168329%_))
               (_%methods-bind168348%_
                (map (lambda (_%g168340168343%_ _%g168341168345%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind167038%_
                          _%$klass168321%_
                          _%$method-table168323%_
                          _%g168340168343%_
                          _%g168341168345%_)))
                     _%methods168325%_
                     _%$methods168329%_))
               (_%slots168350%_
                (let () (declare (not safe)) (hash-keys _%slot-refs167129%_)))
               (_%$slots168354%_
                (map (lambda (_%id168352%_)
                       (let ((__tmp171138 (gensym _%id168352%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp171138)))
                     _%slots168350%_))
               (_%_168363%_
                (for-each
                 (lambda (_%g168355168358%_ _%g168356168360%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs167129%_
                      _%g168355168358%_
                      _%g168356168360%_)))
                 _%slots168350%_
                 _%$slots168354%_))
               (_%slots-bind168372%_
                (map (lambda (_%g168364168367%_ _%g168365168369%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind167039%_
                          _%$klass168321%_
                          _%g168364168367%_
                          _%g168365168369%_)))
                     _%slots168350%_
                     _%$slots168354%_))
               (_%specializer-lambda-expr168458%_
                (let* ((_%g168374168392%_
                        (lambda (_%g168375168389%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168375168389%_))))
                       (_%g168373168455%_
                        (lambda (_%g168375168395%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168375168395%_))
                              (let ((_%e168381168397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168375168395%_))))
                                (let ((_%hd168380168400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168381168397%_)))
                                      (_%tl168379168402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168381168397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168379168402%_))
                                      (let ((_%e168384168405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168379168402%_))))
                                        (let ((_%hd168383168408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168384168405%_)))
                                              (_%tl168382168410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168384168405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168383168408%_))
                                              (let ((_%e168387168413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168383168408%_))))
                                                (let ((_%hd168386168416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168387168413%_)))
                                                      (_%tl168385168418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168387168413%_))))
                                                  ((lambda (_%L168421%_
                                                            _%L168422%_
                                                            _%L168423%_)
                                                     (let* ((_%body168453%_
                                                             (map (lambda (_%g168448168450%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _%g168448168450%_
                               'receiver:
                               _%L168423%_
                               'klass:
                               _%$klass168321%_
                               'methods:
                               _%method-calls167128%_
                               'slots:
                               _%slot-refs167129%_)))
                          _%L168421%_))
                    (__tmp171139
                     (cons '%#lambda
                           (cons (cons _%L168423%_ _%L168422%_)
                                 _%body168453%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171139 _%L168075%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl168382168410%_
                                                   _%tl168385168418%_
                                                   _%hd168386168416%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168374168392%_
                                                 _%g168375168395%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168374168392%_
                                         _%g168375168395%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168374168392%_ _%g168375168395%_))))))
                  (declare (not safe))
                  (_%g168373168455%_ _%L168075%_)))
               (_%specializer-case-lambda-expr168615%_
                (let* ((_%g168460168479%_
                        (lambda (_%g168461168476%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168461168476%_))))
                       (_%g168459168612%_
                        (lambda (_%g168461168482%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168461168482%_))
                              (let ((_%e168465168484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168461168482%_))))
                                (let ((_%hd168464168487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168465168484%_)))
                                      (_%tl168463168489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168465168484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168463168489%_))
                                      (let ((_g171140_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168463168489%_
                                                '0))))
                                        (begin
                                          (let ((_g171141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g171140_)
                                                       (##vector-length
                                                        _g171140_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g171141_ 2)))
                                                (error "Context expects 2 values"
                                                       _g171141_)))
                                          (let ((_%target168466168492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g171140_ 0)))
                                                (_%tl168468168494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g171140_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168468168494%_))
                                                (letrec ((_%loop168469168497%_
                                                          (lambda (_%hd168467168500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause168473168502%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168467168500%_))
                        (let ((_%e168470168505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168467168500%_))))
                          (let ((_%lp-hd168471168508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168470168505%_)))
                                (_%lp-tl168472168510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168470168505%_))))
                            (let ((__tmp171142
                                   (cons _%lp-hd168471168508%_
                                         _%clause168473168502%_)))
                              (declare (not safe))
                              (_%loop168469168497%_
                               _%lp-tl168472168510%_
                               __tmp171142))))
                        (let ((_%clause168474168513%_
                               (reverse _%clause168473168502%_)))
                          ((lambda (_%L168516%_)
                             (let* ((_%clauses168610%_
                                     (map (lambda (_%clause168530%_)
                                            (let* ((_%__stx170023170024%_
                                                    _%clause168530%_)
                                                   (_%g168533168548%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx170023170024%_)))))
                                              (let ((_%__kont170025170026%_
                                                     (lambda (_%L168576%_
                                                              _%L168577%_
                                                              _%L168578%_)
                                                       (let ((_%body168598%_
                                                              (map (lambda (_%g168593168595%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _%g168593168595%_
                                'receiver:
                                _%L168578%_
                                'klass:
                                _%$klass168321%_
                                'methods:
                                _%method-calls167128%_
                                'slots:
                                _%slot-refs167129%_)))
                           _%L168576%_)))
                 (cons (cons _%L168578%_ _%L168577%_) _%body168598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170027170028%_
                                                     (lambda ()
                                                       _%clause168530%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx170023170024%_))
                                                    (let ((_%e168540168560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx170023170024%_))))
                                                      (let ((_%tl168538168565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e168540168560%_)))
                    (_%hd168539168563%_
                     (let () (declare (not safe)) (##car _%e168540168560%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd168539168563%_))
                    (let ((_%e168543168568%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168539168563%_))))
                      (let ((_%tl168541168573%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168543168568%_)))
                            (_%hd168542168571%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168543168568%_))))
                        (_%__kont170025170026%_
                         _%tl168538168565%_
                         _%tl168541168573%_
                         _%hd168542168571%_)))
                    (_%__kont170027170028%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170027170028%_)))))
                                          (let ((__tmp171143
                                                 (lambda (_%g168602168605%_
                                                          _%g168603168607%_)
                                                   (cons _%g168602168605%_
                                                         _%g168603168607%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp171143
                                             '()
                                             _%L168516%_))))
                                    (__tmp171144
                                     (cons '%#case-lambda _%clauses168610%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp171144
                                _%L168074%_)))
                           _%clause168474168513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168469168497%_
                                                     _%target168466168492%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168460168479%_
                                                   _%g168461168482%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168460168479%_
                                         _%g168461168482%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168460168479%_ _%g168461168482%_))))))
                  (declare (not safe))
                  (_%g168459168612%_ _%L168074%_)))
               (_%specializer-impl168617%_
                (let ((__tmp171145
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L168076%_ '())
                                               (cons _%specializer-lambda-expr168458%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr168615%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp171145 _%stx167036%_)))
               (_%specializer-impl168619%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl167040%_
                   _%$klass168321%_
                   _%$method-table168323%_
                   _%methods-bind168348%_
                   _%slots-bind168372%_
                   _%specializer-impl168617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp171147
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L167109%_)))
                                                        (__tmp171146
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id168319%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp171147
                                                     '" => "
                                                     __tmp171146))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def167041%_
                                                     _%L167109%_
                                                     _%specializer-id168319%_
                                                     _%specializer-impl168619%_)))))
                                          _%hd168007168069%_
                                          _%hd168004168061%_
                                          _%hd168001168053%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g167983168013%_
                                            _%g167984168016%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g167983168013%_ _%g167984168016%_)))
                             (let ()
                               (declare (not safe))
                               (_%g167983168013%_ _%g167984168016%_)))
                         (let ()
                           (declare (not safe))
                           (_%g167983168013%_ _%g167984168016%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g167983168013%_ _%g167984168016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167983168013%_
                                                        _%g167984168016%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g167983168013%_
                                                _%g167984168016%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g167983168013%_
                                        _%g167984168016%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g167983168013%_ _%g167984168016%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g167983168013%_ _%g167984168016%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167983168013%_
                                                        _%g167984168016%_))))))
                                         (declare (not safe))
                                         (_%g167982168622%_ _%L167108%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167108%_))
                                         (let ()
                                           (let* ((_%g168626168679%_
                                                   (lambda (_%g168627168676%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g168627168676%_))))
                                                  (_%g168625169822%_
                                                   (lambda (_%g168627168682%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g168627168682%_))
                                                         (let ((_%e168635168684%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g168627168682%_))))
                   (let ((_%hd168634168687%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168635168684%_)))
                         (_%tl168633168689%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168635168684%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd168634168687%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd168634168687%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl168633168689%_))
                                 (let ((_%e168638168692%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl168633168689%_))))
                                   (let ((_%hd168637168695%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168638168692%_)))
                                         (_%tl168636168697%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168638168692%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168637168695%_))
                                         (let ((_%e168641168700%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168637168695%_))))
                                           (let ((_%hd168640168703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168641168700%_)))
                                                 (_%tl168639168705%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168641168700%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168640168703%_))
                                                 (let ((_%e168644168708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168640168703%_))))
                                                   (let ((_%hd168643168711%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168644168708%_)))
                                                         (_%tl168642168713%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168644168708%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd168643168711%_))
                                                         (let ((_%e168647168716%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd168643168711%_))))
                   (let ((_%hd168646168719%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168647168716%_)))
                         (_%tl168645168721%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168647168716%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168645168721%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl168642168713%_))
                             (let ((_%e168650168724%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl168642168713%_))))
                               (let ((_%hd168649168727%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168650168724%_)))
                                     (_%tl168648168729%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168650168724%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168649168727%_))
                                     (let ((_%e168653168732%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168649168727%_))))
                                       (let ((_%hd168652168735%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168653168732%_)))
                                             (_%tl168651168737%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168653168732%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd168652168735%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd168652168735%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168651168737%_))
                                                     (let ((_%e168656168740%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168651168737%_))))
                                                       (let ((_%hd168655168743%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e168656168740%_)))
                     (_%tl168654168745%_
                      (let () (declare (not safe)) (##cdr _%e168656168740%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd168655168743%_))
                     (let ((_%e168659168748%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd168655168743%_))))
                       (let ((_%hd168658168751%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168659168748%_)))
                             (_%tl168657168753%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168659168748%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd168658168751%_))
                             (let ((_%e168662168756%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd168658168751%_))))
                               (let ((_%hd168661168759%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e168662168756%_)))
                                     (_%tl168660168761%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e168662168756%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd168661168759%_))
                                     (let ((_%e168665168764%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd168661168759%_))))
                                       (let ((_%hd168664168767%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168665168764%_)))
                                             (_%tl168663168769%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168665168764%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl168663168769%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl168660168761%_))
                                                 (let ((_%e168668168772%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl168660168761%_))))
                                                   (let ((_%hd168667168775%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168668168772%_)))
                                                         (_%tl168666168777%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168668168772%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168666168777%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl168657168753%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl168654168745%_))
                         (let ((_%e168671168780%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl168654168745%_))))
                           (let ((_%hd168670168783%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168671168780%_)))
                                 (_%tl168669168785%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168671168780%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl168669168785%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl168648168729%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl168639168705%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168636168697%_))
                                             (let ((_%e168674168788%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168636168697%_))))
                                               (let ((_%hd168673168791%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168674168788%_)))
                                                     (_%tl168672168793%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168674168788%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl168672168793%_))
                                                     ((lambda (_%L168796%_
                                                               _%L168797%_
                                                               _%L168798%_
                                                               _%L168799%_
                                                               _%L168800%_)
                                                        (let* ((_%g168840168902%_
                                                                (lambda (_%g168841168899%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g168841168899%_))))
                       (_%g168839169819%_
                        (lambda (_%g168841168905%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g168841168905%_))
                              (let ((_%e168849168907%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g168841168905%_))))
                                (let ((_%hd168848168910%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168849168907%_)))
                                      (_%tl168847168912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168849168907%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168848168910%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd168848168910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168847168912%_))
                                              (let ((_%e168852168915%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168847168912%_))))
                                                (let ((_%hd168851168918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168852168915%_)))
                                                      (_%tl168850168920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168852168915%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168850168920%_))
                                                      (let ((_%e168855168923%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168850168920%_))))
                (let ((_%hd168854168926%_
                       (let () (declare (not safe)) (##car _%e168855168923%_)))
                      (_%tl168853168928%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168855168923%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd168854168926%_))
                      (let ((_%e168858168931%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd168854168926%_))))
                        (let ((_%hd168857168934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168858168931%_)))
                              (_%tl168856168936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168858168931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd168857168934%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd168857168934%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl168856168936%_))
                                      (let ((_%e168861168939%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl168856168936%_))))
                                        (let ((_%hd168860168942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168861168939%_)))
                                              (_%tl168859168944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168861168939%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd168860168942%_))
                                              (let ((_%e168864168947%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd168860168942%_))))
                                                (let ((_%hd168863168950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168864168947%_)))
                                                      (_%tl168862168952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168864168947%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd168863168950%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd168863168950%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168862168952%_))
                      (let ((_%e168867168955%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168862168952%_))))
                        (let ((_%hd168866168958%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168867168955%_)))
                              (_%tl168865168960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168867168955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168865168960%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168859168944%_))
                                  (let ((_%e168870168963%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168859168944%_))))
                                    (let ((_%hd168869168966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168870168963%_)))
                                          (_%tl168868168968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168870168963%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd168869168966%_))
                                          (let ((_%e168873168971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd168869168966%_))))
                                            (let ((_%hd168872168974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168873168971%_)))
                                                  (_%tl168871168976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168873168971%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd168872168974%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd168872168974%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168871168976%_))
                                                          (let ((_%e168876168979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168871168976%_))))
                    (let ((_%hd168875168982%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168876168979%_)))
                          (_%tl168874168984%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168876168979%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168874168984%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168868168968%_))
                              (let ((_%e168879168987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168868168968%_))))
                                (let ((_%hd168878168990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168879168987%_)))
                                      (_%tl168877168992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168879168987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168878168990%_))
                                      (let ((_%e168882168995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168878168990%_))))
                                        (let ((_%hd168881168998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168882168995%_)))
                                              (_%tl168880169000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168882168995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd168881168998%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd168881168998%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl168880169000%_))
                                                      (let ((_%e168885169003%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl168880169000%_))))
                (let ((_%hd168884169006%_
                       (let () (declare (not safe)) (##car _%e168885169003%_)))
                      (_%tl168883169008%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e168885169003%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168883169008%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl168877168992%_))
                          (if (let ((__tmp171148
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl168877168992%_))))
                                (declare (not safe))
                                (##fx>= __tmp171148 '1))
                              (let ((_g171149_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl168877168992%_
                                        '1))))
                                (begin
                                  (let ((_g171150_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g171149_)
                                               (##vector-length _g171149_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g171150_ 2)))
                                        (error "Context expects 2 values"
                                               _g171150_)))
                                  (let ((_%target168886169011%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171149_ 0)))
                                        (_%tl168888169013%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g171149_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168888169013%_))
                                        (let ((_%e168897169016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168888169013%_))))
                                          (let ((_%hd168896169019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168897169016%_)))
                                                (_%tl168895169021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168897169016%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168895169021%_))
                                                (letrec ((_%loop168889169024%_
                                                          (lambda (_%hd168887169027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref168893169029%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168887169027%_))
                        (let ((_%e168890169032%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168887169027%_))))
                          (let ((_%lp-hd168891169035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168890169032%_)))
                                (_%lp-tl168892169037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168890169032%_))))
                            (let ((__tmp171151
                                   (cons _%lp-hd168891169035%_
                                         _%kw-ref168893169029%_)))
                              (declare (not safe))
                              (_%loop168889169024%_
                               _%lp-tl168892169037%_
                               __tmp171151))))
                        (let ((_%kw-ref168894169040%_
                               (reverse _%kw-ref168893169029%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168853168928%_))
                              ((lambda (_%L169043%_
                                        _%L169044%_
                                        _%L169045%_
                                        _%L169046%_
                                        _%L169047%_)
                                 (let* ((_%kw-count169098%_
                                         (length (let ((__tmp171152
                                                        (lambda (_%g169090169093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169091169095%_)
                  (cons _%g169090169093%_ _%g169091169095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp171152
                                                    '()
                                                    _%L169044%_))))
                                        (_%self-index169100%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count169098%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L168798%_))
                                       (let ()
                                         (let* ((_%g169104169118%_
                                                 (lambda (_%g169105169115%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169105169115%_))))
                                                (_%g169103169235%_
                                                 (lambda (_%g169105169121%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169105169121%_))
                                                       (let ((_%e169110169123%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169105169121%_))))
                 (let ((_%hd169109169126%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169110169123%_)))
                       (_%tl169108169128%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169110169123%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169108169128%_))
                       (let ((_%e169113169131%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169108169128%_))))
                         (let ((_%hd169112169134%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169113169131%_)))
                               (_%tl169111169136%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169113169131%_))))
                           ((lambda (_%L169139%_ _%L169140%_)
                              (let ((_%self169157%_
                                     (list-ref
                                      _%L169140%_
                                      _%self-index169100%_)))
                                (for-each
                                 (lambda (_%g169158169160%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs
                                      _%g169158169160%_
                                      'receiver:
                                      _%self169157%_
                                      'methods:
                                      _%method-calls167128%_
                                      'slots:
                                      _%slot-refs167129%_)))
                                 _%L169139%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?167132%_))
                                    _%stx167036%_
                                    (let* ((_%specializer-id169169%_
                                            (let* ((_%id169163%_
                                                    (let ((__tmp171153
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167109%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp171153
                                                       '"::specialize")))
                                                   (_%specializer-id169166%_
                                                    (let ((__tmp171154
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx167036%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id169163%_
                                                       __tmp171154))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id169166%_))
                                              _%specializer-id169166%_))
                                           (_%$klass169171%_
                                            (let ((__tmp171155
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171155)))
                                           (_%$method-table169173%_
                                            (let ((__tmp171156
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp171156)))
                                           (_%methods169175%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls167128%_)))
                                           (_%$methods169179%_
                                            (map (lambda (_%id169177%_)
                                                   (let ((__tmp171157
                                                          (gensym _%id169177%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171157)))
                                                 _%methods169175%_))
                                           (_%_169188%_
                                            (for-each
                                             (lambda (_%g169180169183%_
                                                      _%g169181169185%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls167128%_
                                                  _%g169180169183%_
                                                  _%g169181169185%_)))
                                             _%methods169175%_
                                             _%$methods169179%_))
                                           (_%methods-bind169198%_
                                            (map (lambda (_%g169190169193%_
                                                          _%g169191169195%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind167038%_
                                                      _%$klass169171%_
                                                      _%$method-table169173%_
                                                      _%g169190169193%_
                                                      _%g169191169195%_)))
                                                 _%methods169175%_
                                                 _%$methods169179%_))
                                           (_%slots169200%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs167129%_)))
                                           (_%$slots169204%_
                                            (map (lambda (_%id169202%_)
                                                   (let ((__tmp171158
                                                          (gensym _%id169202%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp171158)))
                                                 _%slots169200%_))
                                           (_%_169213%_
                                            (for-each
                                             (lambda (_%g169205169208%_
                                                      _%g169206169210%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs167129%_
                                                  _%g169205169208%_
                                                  _%g169206169210%_)))
                                             _%slots169200%_
                                             _%$slots169204%_))
                                           (_%slots-bind169222%_
                                            (map (lambda (_%g169214169217%_
                                                          _%g169215169219%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind167039%_
                                                      _%$klass169171%_
                                                      _%g169214169217%_
                                                      _%g169215169219%_)))
                                                 _%slots169200%_
                                                 _%$slots169204%_))
                                           (_%specializer-impl169230%_
                                            (let* ((_%specializer-body169228%_
                                                    (map (lambda (_%g169223169225%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _%g169223169225%_
                                                              'receiver:
                                                              _%self169157%_
                                                              'klass:
                                                              _%$klass169171%_
                                                              'methods:
                                                              _%method-calls167128%_
                                                              'slots:
                                                              _%slot-refs167129%_)))
                                                         _%L169139%_))
                                                   (__tmp171159
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L168800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L168799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp171160
                                       (cons '%#lambda
                                             (cons _%L169140%_
                                                   _%specializer-body169228%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp171160
                                   _%L168798%_))
                                '()))
                    '())
              (cons _%L168797%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L168796%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp171159
                                               _%stx167036%_)))
                                           (_%specializer-impl169232%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl167040%_
                                               _%$klass169171%_
                                               _%$method-table169173%_
                                               _%methods-bind169198%_
                                               _%slots-bind169222%_
                                               _%specializer-impl169230%_))))
                                      (let ((__tmp171162
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L167109%_)))
                                            (__tmp171161
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id169169%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp171162
                                         '" => "
                                         __tmp171161))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def167041%_
                                         _%L167109%_
                                         _%specializer-id169169%_
                                         _%specializer-impl169232%_))))))
                            _%tl169111169136%_
                            _%hd169112169134%_)))
                       (let ()
                         (declare (not safe))
                         (_%g169104169118%_ _%g169105169121%_)))))
               (let ()
                 (declare (not safe))
                 (_%g169104169118%_ _%g169105169121%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g169103169235%_ _%L168798%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L168798%_))
                                           (let ()
                                             (let* ((_%g169239169269%_
                                                     (lambda (_%g169240169266%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g169240169266%_))))
                                                    (_%g169238169815%_
                                                     (lambda (_%g169240169272%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g169240169272%_))
                                                           (let ((_%e169246169274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g169240169272%_))))
                     (let ((_%hd169245169277%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169246169274%_)))
                           (_%tl169244169279%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169246169274%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169244169279%_))
                           (let ((_%e169249169282%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169244169279%_))))
                             (let ((_%hd169248169285%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169249169282%_)))
                                   (_%tl169247169287%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169249169282%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169248169285%_))
                                   (let ((_%e169252169290%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169248169285%_))))
                                     (let ((_%hd169251169293%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169252169290%_)))
                                           (_%tl169250169295%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169252169290%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169251169293%_))
                                           (let ((_%e169255169298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169251169293%_))))
                                             (let ((_%hd169254169301%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169255169298%_)))
                                                   (_%tl169253169303%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169255169298%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd169254169301%_))
                                                   (let ((_%e169258169306%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd169254169301%_))))
                                                     (let ((_%hd169257169309%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169258169306%_)))
                                                           (_%tl169256169311%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169258169306%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169256169311%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169253169303%_))
                       (let ((_%e169261169314%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169253169303%_))))
                         (let ((_%hd169260169317%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169261169314%_)))
                               (_%tl169259169319%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169261169314%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169259169319%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169250169295%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl169247169287%_))
                                       (let ((_%e169264169322%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl169247169287%_))))
                                         (let ((_%hd169263169325%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169264169322%_)))
                                               (_%tl169262169327%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169264169322%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl169262169327%_))
                                               ((lambda (_%L169330%_
                                                         _%L169331%_
                                                         _%L169332%_)
                                                  (let* ((_%g169356169370%_
                                                          (lambda (_%g169357169367%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169357169367%_))))
                                                         (_%g169355169411%_
                                                          (lambda (_%g169357169373%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169357169373%_))
                        (let ((_%e169362169375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169357169373%_))))
                          (let ((_%hd169361169378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169362169375%_)))
                                (_%tl169360169380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169362169375%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169360169380%_))
                                (let ((_%e169365169383%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169360169380%_))))
                                  (let ((_%hd169364169386%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169365169383%_)))
                                        (_%tl169363169388%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169365169383%_))))
                                    ((lambda (_%L169391%_ _%L169392%_)
                                       (let ((_%self169405%_
                                              (list-ref
                                               _%L169392%_
                                               _%self-index169100%_)))
                                         (for-each
                                          (lambda (_%g169406169408%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs
                                               _%g169406169408%_
                                               'receiver:
                                               _%self169405%_
                                               'methods:
                                               _%method-calls167128%_
                                               'slots:
                                               _%slot-refs167129%_)))
                                          _%L169391%_)))
                                     _%tl169363169388%_
                                     _%hd169364169386%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g169356169370%_ _%g169357169373%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169356169370%_ _%g169357169373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169355169411%_
                                                     _%L169331%_))
                                                  (let* ((_%g169414169433%_
                                                          (lambda (_%g169415169430%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169415169430%_))))
                                                         (_%g169413169538%_
                                                          (lambda (_%g169415169436%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169415169436%_))
                        (let ((_%e169419169438%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169415169436%_))))
                          (let ((_%hd169418169441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169419169438%_)))
                                (_%tl169417169443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169419169438%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169417169443%_))
                                (let ((_g171163_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl169417169443%_
                                          '0))))
                                  (begin
                                    (let ((_g171164_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g171163_)
                                                 (##vector-length _g171163_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g171164_ 2)))
                                          (error "Context expects 2 values"
                                                 _g171164_)))
                                    (let ((_%target169420169446%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171163_ 0)))
                                          (_%tl169422169448%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g171163_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl169422169448%_))
                                          (letrec ((_%loop169423169451%_
                                                    (lambda (_%hd169421169454%_
                                                             _%clause169427169456%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169421169454%_))
                                                          (let ((_%e169424169459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169421169454%_))))
                    (let ((_%lp-hd169425169462%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169424169459%_)))
                          (_%lp-tl169426169464%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169424169459%_))))
                      (let ((__tmp171165
                             (cons _%lp-hd169425169462%_
                                   _%clause169427169456%_)))
                        (declare (not safe))
                        (_%loop169423169451%_
                         _%lp-tl169426169464%_
                         __tmp171165))))
                  (let ((_%clause169428169467%_
                         (reverse _%clause169427169456%_)))
                    ((lambda (_%L169470%_)
                       (for-each
                        (lambda (_%clause169483%_)
                          (let* ((_%g169485169496%_
                                  (lambda (_%g169486169493%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g169486169493%_))))
                                 (_%g169484169528%_
                                  (lambda (_%g169486169499%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g169486169499%_))
                                        (let ((_%e169491169501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g169486169499%_))))
                                          (let ((_%hd169490169504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169491169501%_)))
                                                (_%tl169489169506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169491169501%_))))
                                            ((lambda (_%L169509%_ _%L169510%_)
                                               (let ((_%self169522%_
                                                      (list-ref
                                                       _%L169510%_
                                                       _%self-index169100%_)))
                                                 (for-each
                                                  (lambda (_%g169523169525%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs
                                                       _%g169523169525%_
                                                       'receiver:
                                                       _%self169522%_
                                                       'methods:
                                                       _%method-calls167128%_
                                                       'slots:
                                                       _%slot-refs167129%_)))
                                                  _%L169509%_)))
                                             _%tl169489169506%_
                                             _%hd169490169504%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g169485169496%_
                                           _%g169486169499%_))))))
                            (declare (not safe))
                            (_%g169484169528%_ _%clause169483%_)))
                        (let ((__tmp171166
                               (lambda (_%g169530169533%_ _%g169531169535%_)
                                 (cons _%g169530169533%_ _%g169531169535%_))))
                          (declare (not safe))
                          (__foldr1 __tmp171166 '() _%L169470%_))))
                     _%clause169428169467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop169423169451%_
                                               _%target169420169446%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169414169433%_
                                             _%g169415169436%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g169414169433%_ _%g169415169436%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g169414169433%_ _%g169415169436%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169413169538%_
                                                     _%L169330%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?167132%_))
                                                      _%stx167036%_
                                                      (let* ((_%specializer-id169547%_
                                                              (let* ((_%id169541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp171167
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L167109%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp171167 '"::specialize")))
                             (_%specializer-id169544%_
                              (let ((__tmp171168
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx167036%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id169541%_
                                 __tmp171168))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id169544%_))
                        _%specializer-id169544%_))
                     (_%$klass169549%_
                      (let ((__tmp171169
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171169)))
                     (_%$method-table169551%_
                      (let ((__tmp171170
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp171170)))
                     (_%methods169553%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls167128%_)))
                     (_%$methods169557%_
                      (map (lambda (_%id169555%_)
                             (let ((__tmp171171 (gensym _%id169555%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171171)))
                           _%methods169553%_))
                     (_%_169566%_
                      (for-each
                       (lambda (_%g169558169561%_ _%g169559169563%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls167128%_
                            _%g169558169561%_
                            _%g169559169563%_)))
                       _%methods169553%_
                       _%$methods169557%_))
                     (_%methods-bind169576%_
                      (map (lambda (_%g169568169571%_ _%g169569169573%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind167038%_
                                _%$klass169549%_
                                _%$method-table169551%_
                                _%g169568169571%_
                                _%g169569169573%_)))
                           _%methods169553%_
                           _%$methods169557%_))
                     (_%slots169578%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs167129%_)))
                     (_%$slots169582%_
                      (map (lambda (_%id169580%_)
                             (let ((__tmp171172 (gensym _%id169580%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp171172)))
                           _%slots169578%_))
                     (_%_169591%_
                      (for-each
                       (lambda (_%g169583169586%_ _%g169584169588%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs167129%_
                            _%g169583169586%_
                            _%g169584169588%_)))
                       _%slots169578%_
                       _%$slots169582%_))
                     (_%slots-bind169600%_
                      (map (lambda (_%g169592169595%_ _%g169593169597%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind167039%_
                                _%$klass169549%_
                                _%g169592169595%_
                                _%g169593169597%_)))
                           _%slots169578%_
                           _%$slots169582%_))
                     (_%specializer-lambda-expr169673%_
                      (let* ((_%g169602169616%_
                              (lambda (_%g169603169613%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169603169613%_))))
                             (_%g169601169670%_
                              (lambda (_%g169603169619%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169603169619%_))
                                    (let ((_%e169608169621%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169603169619%_))))
                                      (let ((_%hd169607169624%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169608169621%_)))
                                            (_%tl169606169626%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169608169621%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169606169626%_))
                                            (let ((_%e169611169629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169606169626%_))))
                                              (let ((_%hd169610169632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169611169629%_)))
                                                    (_%tl169609169634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169611169629%_))))
                                                ((lambda (_%L169637%_
                                                          _%L169638%_)
                                                   (let* ((_%self169661%_
                                                           (list-ref
                                                            _%L169638%_
                                                            _%self-index169100%_))
                                                          (_%body169667%_
                                                           (map (lambda (_%g169662169664%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _%g169662169664%_
                             'receiver:
                             _%self169661%_
                             'klass:
                             _%$klass169549%_
                             'methods:
                             _%method-calls167128%_
                             'slots:
                             _%slot-refs167129%_)))
                        _%L169637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp171173
                                                            (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L169638%_ _%body169667%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp171173 _%L169331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%tl169609169634%_
                                                 _%hd169610169632%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169602169616%_
                                               _%g169603169619%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169602169616%_
                                       _%g169603169619%_))))))
                        (declare (not safe))
                        (_%g169601169670%_ _%L169331%_)))
                     (_%specializer-case-lambda-expr169808%_
                      (let* ((_%g169675169694%_
                              (lambda (_%g169676169691%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g169676169691%_))))
                             (_%g169674169805%_
                              (lambda (_%g169676169697%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g169676169697%_))
                                    (let ((_%e169680169699%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g169676169697%_))))
                                      (let ((_%hd169679169702%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169680169699%_)))
                                            (_%tl169678169704%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169680169699%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl169678169704%_))
                                            (let ((_g171174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl169678169704%_
                                                      '0))))
                                              (begin
                                                (let ((_g171175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g171174_)
                                                             (##vector-length
                                                              _g171174_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g171175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g171175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target169681169707%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171174_
                                                          0)))
                                                      (_%tl169683169709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g171174_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169683169709%_))
                                                      (letrec ((_%loop169684169712%_
                                                                (lambda (_%hd169682169715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause169688169717%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169682169715%_))
                              (let ((_%e169685169720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169682169715%_))))
                                (let ((_%lp-hd169686169723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169685169720%_)))
                                      (_%lp-tl169687169725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169685169720%_))))
                                  (let ((__tmp171176
                                         (cons _%lp-hd169686169723%_
                                               _%clause169688169717%_)))
                                    (declare (not safe))
                                    (_%loop169684169712%_
                                     _%lp-tl169687169725%_
                                     __tmp171176))))
                              (let ((_%clause169689169728%_
                                     (reverse _%clause169688169717%_)))
                                ((lambda (_%L169731%_)
                                   (let* ((_%clauses169803%_
                                           (map (lambda (_%clause169745%_)
                                                  (let* ((_%g169747169758%_
                                                          (lambda (_%g169748169755%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g169748169755%_))))
                                                         (_%g169746169793%_
                                                          (lambda (_%g169748169761%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g169748169761%_))
                        (let ((_%e169753169763%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g169748169761%_))))
                          (let ((_%hd169752169766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169753169763%_)))
                                (_%tl169751169768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169753169763%_))))
                            ((lambda (_%L169771%_ _%L169772%_)
                               (let* ((_%self169784%_
                                       (list-ref
                                        _%L169772%_
                                        _%self-index169100%_))
                                      (_%body169790%_
                                       (map (lambda (_%g169785169787%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs
                                                 _%g169785169787%_
                                                 'receiver:
                                                 _%self169784%_
                                                 'klass:
                                                 _%$klass169549%_
                                                 'methods:
                                                 _%method-calls167128%_
                                                 'slots:
                                                 _%slot-refs167129%_)))
                                            _%L169771%_)))
                                 (cons _%L169772%_ _%body169790%_)))
                             _%tl169751169768%_
                             _%hd169752169766%_)))
                        (let ()
                          (declare (not safe))
                          (_%g169747169758%_ _%g169748169761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g169746169793%_
                                                     _%clause169745%_)))
                                                (let ((__tmp171177
                                                       (lambda (_%g169795169798%_
                                                                _%g169796169800%_)
                                                         (cons _%g169795169798%_
                                                               _%g169796169800%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp171177
                                                   '()
                                                   _%L169731%_))))
                                          (__tmp171178
                                           (cons '%#case-lambda
                                                 _%clauses169803%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp171178
                                      _%L169330%_)))
                                 _%clause169689169728%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop169684169712%_ _%target169681169707%_ '())))
              (let ()
                (declare (not safe))
                (_%g169675169694%_ _%g169676169697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g169675169694%_
                                               _%g169676169697%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169675169694%_
                                       _%g169676169697%_))))))
                        (declare (not safe))
                        (_%g169674169805%_ _%L169330%_)))
                     (_%specializer-impl169810%_
                      (let ((__tmp171179
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L168800%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L168799%_ '())
                                           (cons (let ((__tmp171180
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L169332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr169673%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr169808%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp171180
                                                    _%stx167036%_))
                                                 '()))
                                     '())
                               (cons _%L168797%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L168796%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp171179 _%stx167036%_)))
                     (_%specializer-impl169812%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl167040%_
                         _%$klass169549%_
                         _%$method-table169551%_
                         _%methods-bind169576%_
                         _%slots-bind169600%_
                         _%specializer-impl169810%_))))
                (let ((__tmp171182
                       (let () (declare (not safe)) (gx#stx-e _%L167109%_)))
                      (__tmp171181
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id169547%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp171182
                   '" => "
                   __tmp171181))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def167041%_
                   _%L167109%_
                   _%specializer-id169547%_
                   _%specializer-impl169812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd169263169325%_
                                                _%hd169260169317%_
                                                _%hd169257169309%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g169239169269%_
                                                  _%g169240169272%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g169239169269%_
                                          _%g169240169272%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169239169269%_ _%g169240169272%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g169239169269%_ _%g169240169272%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g169239169269%_ _%g169240169272%_)))
                   (let ()
                     (declare (not safe))
                     (_%g169239169269%_ _%g169240169272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g169239169269%_
                                                      _%g169240169272%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g169239169269%_
                                              _%g169240169272%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g169239169269%_ _%g169240169272%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g169239169269%_ _%g169240169272%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g169239169269%_ _%g169240169272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g169238169815%_
                                                _%L168798%_)))
                                           (let () _%stx167036%_)))))
                               _%hd168896169019%_
                               _%kw-ref168894169040%_
                               _%hd168884169006%_
                               _%hd168875168982%_
                               _%hd168866168958%_)
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop168889169024%_
                                                     _%target168886169011%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168840168902%_
                                                   _%g168841168905%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168840168902%_
                                           _%g168841168905%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168840168902%_ _%g168841168905%_)))
                      (let ()
                        (declare (not safe))
                        (_%g168840168902%_ _%g168841168905%_)))))
              (let ()
                (declare (not safe))
                (_%g168840168902%_ _%g168841168905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168840168902%_
                                                     _%g168841168905%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168840168902%_
                                                 _%g168841168905%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168840168902%_
                                         _%g168841168905%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_)))
                          (let ()
                            (declare (not safe))
                            (_%g168840168902%_ _%g168841168905%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g168840168902%_ _%g168841168905%_)))
              (let ()
                (declare (not safe))
                (_%g168840168902%_ _%g168841168905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168840168902%_
                                                     _%g168841168905%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168840168902%_
                                             _%g168841168905%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168840168902%_ _%g168841168905%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168840168902%_ _%g168841168905%_)))
                  (let ()
                    (declare (not safe))
                    (_%g168840168902%_ _%g168841168905%_)))
              (let ()
                (declare (not safe))
                (_%g168840168902%_ _%g168841168905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168840168902%_
                                                 _%g168841168905%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168840168902%_ _%g168841168905%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168840168902%_ _%g168841168905%_)))
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g168840168902%_ _%g168841168905%_)))))
              (let ()
                (declare (not safe))
                (_%g168840168902%_ _%g168841168905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168840168902%_
                                                 _%g168841168905%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168840168902%_
                                             _%g168841168905%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168840168902%_
                                         _%g168841168905%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168840168902%_ _%g168841168905%_))))))
                  (declare (not safe))
                  (_%g168839169819%_ _%L168797%_)))
              _%hd168673168791%_
              _%hd168670168783%_
              _%hd168667168775%_
              _%hd168664168767%_
              _%hd168646168719%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168626168679%_
                                                        _%g168627168682%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168626168679%_
                                                _%g168627168682%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168626168679%_
                                            _%g168627168682%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168626168679%_ _%g168627168682%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168626168679%_ _%g168627168682%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g168626168679%_ _%g168627168682%_)))
                     (let ()
                       (declare (not safe))
                       (_%g168626168679%_ _%g168627168682%_)))
                 (let ()
                   (declare (not safe))
                   (_%g168626168679%_ _%g168627168682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168626168679%_
                                                    _%g168627168682%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168626168679%_
                                                _%g168627168682%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168626168679%_
                                        _%g168627168682%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168626168679%_ _%g168627168682%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g168626168679%_ _%g168627168682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168626168679%_
                                                        _%g168627168682%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168626168679%_
                                                    _%g168627168682%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g168626168679%_
                                                _%g168627168682%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g168626168679%_
                                        _%g168627168682%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g168626168679%_ _%g168627168682%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168626168679%_ _%g168627168682%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168626168679%_ _%g168627168682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g168626168679%_
                                                    _%g168627168682%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168626168679%_
                                            _%g168627168682%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g168626168679%_ _%g168627168682%_)))
                             (let ()
                               (declare (not safe))
                               (_%g168626168679%_ _%g168627168682%_)))
                         (let ()
                           (declare (not safe))
                           (_%g168626168679%_ _%g168627168682%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g168626168679%_ _%g168627168682%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g168625169822%_ _%L167108%_)))
                                         (let () _%stx167036%_)))))))))
                  (_%__kont170047170048%_ (lambda () _%stx167036%_)))
              (let ((_%__match170076170077%_
                     (lambda (_%e167050167076%_
                              _%hd167049167079%_
                              _%tl167048167081%_
                              _%e167053167084%_
                              _%hd167052167087%_
                              _%tl167051167089%_
                              _%e167056167092%_
                              _%hd167055167095%_
                              _%tl167054167097%_
                              _%e167059167100%_
                              _%hd167058167103%_
                              _%tl167057167105%_)
                       (let ((_%L167108%_ _%hd167058167103%_)
                             (_%L167109%_ _%hd167055167095%_))
                         (if (let ((__tmp171183
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167109%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171183))
                             (_%__kont170045170046%_ _%L167108%_ _%L167109%_)
                             (_%__kont170047170048%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170043170044%_))
                    (let ((_%e167050167076%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170043170044%_))))
                      (let ((_%tl167048167081%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167050167076%_)))
                            (_%hd167049167079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167050167076%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167048167081%_))
                            (let ((_%e167053167084%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167048167081%_))))
                              (let ((_%tl167051167089%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167053167084%_)))
                                    (_%hd167052167087%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167053167084%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167052167087%_))
                                    (let ((_%e167056167092%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167052167087%_))))
                                      (let ((_%tl167054167097%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167056167092%_)))
                                            (_%hd167055167095%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167056167092%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167054167097%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167051167089%_))
                                                (let ((_%e167059167100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167051167089%_))))
                                                  (let ((_%tl167057167105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167059167100%_)))
                                                        (_%hd167058167103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167059167100%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167057167105%_))
                                                        (_%__match170076170077%_
                                                         _%e167050167076%_
                                                         _%hd167049167079%_
                                                         _%tl167048167081%_
                                                         _%e167053167084%_
                                                         _%hd167052167087%_
                                                         _%tl167051167089%_
                                                         _%e167056167092%_
                                                         _%hd167055167095%_
                                                         _%tl167054167097%_
                                                         _%e167059167100%_
                                                         _%hd167058167103%_
                                                         _%tl167057167105%_)
                                                        (_%__kont170047170048%_))))
                                                (_%__kont170047170048%_))
                                            (_%__kont170047170048%_))))
                                    (_%__kont170047170048%_))))
                            (_%__kont170047170048%_))))
                    (_%__kont170047170048%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self165996%_ _%stx165997%_)
        (let* ((_%__stx170079170080%_ _%stx165997%_)
               (_%g166005166227%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170079170080%_)))))
          (let ((_%__kont170081170082%_
                 (lambda (_%L166984%_ _%L166985%_ _%L166986%_ _%L166987%_)
                   (let ((__tmp171185
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165996%_ 'methods)))
                         (__tmp171184
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166985%_))))
                     (declare (not safe))
                     (hash-put! __tmp171185 __tmp171184 '#t))
                   (for-each
                    (lambda (_%g167020167022%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165996%_ _%g167020167022%_)))
                    (let ((__tmp171186
                           (lambda (_%g167024167027%_ _%g167025167029%_)
                             (cons _%g167024167027%_ _%g167025167029%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171186 '() _%L166984%_)))))
                (_%__kont170085170086%_
                 (lambda (_%L166819%_
                          _%L166820%_
                          _%L166821%_
                          _%L166822%_
                          _%L166823%_)
                   (let ((__tmp171188
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165996%_ 'methods)))
                         (__tmp171187
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166820%_))))
                     (declare (not safe))
                     (hash-put! __tmp171188 __tmp171187 '#t))
                   (for-each
                    (lambda (_%g166863166865%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self165996%_ _%g166863166865%_)))
                    (let ((__tmp171189
                           (lambda (_%g166867166870%_ _%g166868166872%_)
                             (cons _%g166867166870%_ _%g166868166872%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171189 '() _%L166819%_)))))
                (_%__kont170089170090%_
                 (lambda (_%L166652%_ _%L166653%_ _%L166654%_)
                   (let ((__tmp171191
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165996%_ 'slots)))
                         (__tmp171190
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166652%_))))
                     (declare (not safe))
                     (hash-put! __tmp171191 __tmp171190 '#t))))
                (_%__kont170091170092%_
                 (lambda (_%L166529%_ _%L166530%_ _%L166531%_ _%L166532%_)
                   (let ((__tmp171193
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self165996%_ 'slots)))
                         (__tmp171192
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L166530%_))))
                     (declare (not safe))
                     (hash-put! __tmp171193 __tmp171192 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self165996%_ _%L166529%_))))
                (_%__kont170093170094%_
                 (lambda (_%L166403%_ _%L166404%_)
                   (let* ((_%accessor166426%_
                           (let ((__tmp171194
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166404%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171194)))
                          (_%klass166428%_
                           (let ((__tmp171195
                                  (##structure-ref
                                   _%accessor166426%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165997%_
                              __tmp171195)))
                          (_%slot166430%_
                           (##structure-ref
                            _%accessor166426%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp171196
                                     (##structure-ref
                                      _%accessor166426%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171196))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166428%_
                                     _%slot166430%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166428%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171198
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165996%_ 'slots)))
                               (__tmp171197
                                (##structure-ref
                                 _%accessor166426%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171198 __tmp171197 '#t))))))
                (_%__kont170095170096%_
                 (lambda (_%L166303%_ _%L166304%_ _%L166305%_)
                   (let* ((_%mutator166332%_
                           (let ((__tmp171199
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166305%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171199)))
                          (_%klass166334%_
                           (let ((__tmp171200
                                  (##structure-ref
                                   _%mutator166332%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx165997%_
                              __tmp171200)))
                          (_%slot166336%_
                           (##structure-ref
                            _%mutator166332%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp171201
                                     (##structure-ref
                                      _%mutator166332%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp171201))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166334%_
                                     _%slot166336%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166334%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171202
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self165996%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171202 _%slot166336%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self165996%_ _%L166303%_)))))
                (_%__kont170097170098%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self165996%_ _%stx165997%_)))))
            (let* ((_%__match170578170579%_
                    (lambda (_%e166201166239%_
                             _%hd166200166242%_
                             _%tl166199166244%_
                             _%e166204166247%_
                             _%hd166203166250%_
                             _%tl166202166252%_
                             _%e166207166255%_
                             _%hd166206166258%_
                             _%tl166205166260%_
                             _%e166210166263%_
                             _%hd166209166266%_
                             _%tl166208166268%_
                             _%e166213166271%_
                             _%hd166212166274%_
                             _%tl166211166276%_
                             _%e166216166279%_
                             _%hd166215166282%_
                             _%tl166214166284%_
                             _%e166219166287%_
                             _%hd166218166290%_
                             _%tl166217166292%_
                             _%e166222166295%_
                             _%hd166221166298%_
                             _%tl166220166300%_)
                      (let ((_%L166303%_ _%hd166221166298%_)
                            (_%L166304%_ _%hd166218166290%_)
                            (_%L166305%_ _%hd166209166266%_))
                        (if (and (let ((__tmp171203
                                        (let ((__tmp171204
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166305%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171204))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171203
                                    'gxc#!mutator::t))
                                 (let ((__tmp171205
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165996%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166304%_
                                    __tmp171205)))
                            (_%__kont170095170096%_
                             _%L166303%_
                             _%L166304%_
                             _%L166305%_)
                            (_%__kont170097170098%_)))))
                   (_%__match170576170577%_
                    (lambda (_%e166201166239%_
                             _%hd166200166242%_
                             _%tl166199166244%_
                             _%e166204166247%_
                             _%hd166203166250%_
                             _%tl166202166252%_
                             _%e166207166255%_
                             _%hd166206166258%_
                             _%tl166205166260%_
                             _%e166210166263%_
                             _%hd166209166266%_
                             _%tl166208166268%_
                             _%e166213166271%_
                             _%hd166212166274%_
                             _%tl166211166276%_
                             _%e166216166279%_
                             _%hd166215166282%_
                             _%tl166214166284%_
                             _%e166219166287%_
                             _%hd166218166290%_
                             _%tl166217166292%_
                             _%e166222166295%_
                             _%hd166221166298%_
                             _%tl166220166300%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166220166300%_))
                          (_%__match170578170579%_
                           _%e166201166239%_
                           _%hd166200166242%_
                           _%tl166199166244%_
                           _%e166204166247%_
                           _%hd166203166250%_
                           _%tl166202166252%_
                           _%e166207166255%_
                           _%hd166206166258%_
                           _%tl166205166260%_
                           _%e166210166263%_
                           _%hd166209166266%_
                           _%tl166208166268%_
                           _%e166213166271%_
                           _%hd166212166274%_
                           _%tl166211166276%_
                           _%e166216166279%_
                           _%hd166215166282%_
                           _%tl166214166284%_
                           _%e166219166287%_
                           _%hd166218166290%_
                           _%tl166217166292%_
                           _%e166222166295%_
                           _%hd166221166298%_
                           _%tl166220166300%_)
                          (_%__kont170097170098%_))))
                   (_%__match170570170571%_
                    (lambda (_%e166201166239%_
                             _%hd166200166242%_
                             _%tl166199166244%_
                             _%e166204166247%_
                             _%hd166203166250%_
                             _%tl166202166252%_
                             _%e166207166255%_
                             _%hd166206166258%_
                             _%tl166205166260%_
                             _%e166210166263%_
                             _%hd166209166266%_
                             _%tl166208166268%_
                             _%e166213166271%_
                             _%hd166212166274%_
                             _%tl166211166276%_
                             _%e166216166279%_
                             _%hd166215166282%_
                             _%tl166214166284%_
                             _%e166219166287%_
                             _%hd166218166290%_
                             _%tl166217166292%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166211166276%_))
                          (let ((_%e166222166295%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166211166276%_))))
                            (let ((_%tl166220166300%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166222166295%_)))
                                  (_%hd166221166298%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166222166295%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166220166300%_))
                                  (_%__match170578170579%_
                                   _%e166201166239%_
                                   _%hd166200166242%_
                                   _%tl166199166244%_
                                   _%e166204166247%_
                                   _%hd166203166250%_
                                   _%tl166202166252%_
                                   _%e166207166255%_
                                   _%hd166206166258%_
                                   _%tl166205166260%_
                                   _%e166210166263%_
                                   _%hd166209166266%_
                                   _%tl166208166268%_
                                   _%e166213166271%_
                                   _%hd166212166274%_
                                   _%tl166211166276%_
                                   _%e166216166279%_
                                   _%hd166215166282%_
                                   _%tl166214166284%_
                                   _%e166219166287%_
                                   _%hd166218166290%_
                                   _%tl166217166292%_
                                   _%e166222166295%_
                                   _%hd166221166298%_
                                   _%tl166220166300%_)
                                  (_%__kont170097170098%_))))
                          (_%__kont170097170098%_))))
                   (_%__match170516170517%_
                    (lambda (_%e166177166347%_
                             _%hd166176166350%_
                             _%tl166175166352%_
                             _%e166180166355%_
                             _%hd166179166358%_
                             _%tl166178166360%_
                             _%e166183166363%_
                             _%hd166182166366%_
                             _%tl166181166368%_
                             _%e166186166371%_
                             _%hd166185166374%_
                             _%tl166184166376%_
                             _%e166189166379%_
                             _%hd166188166382%_
                             _%tl166187166384%_
                             _%e166192166387%_
                             _%hd166191166390%_
                             _%tl166190166392%_
                             _%e166195166395%_
                             _%hd166194166398%_
                             _%tl166193166400%_)
                      (let ((_%L166403%_ _%hd166194166398%_)
                            (_%L166404%_ _%hd166185166374%_))
                        (if (and (let ((__tmp171206
                                        (let ((__tmp171207
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166404%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171207))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171206
                                    'gxc#!accessor::t))
                                 (let ((__tmp171208
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165996%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166403%_
                                    __tmp171208)))
                            (_%__kont170093170094%_ _%L166403%_ _%L166404%_)
                            (_%__kont170097170098%_)))))
                   (_%__match170514170515%_
                    (lambda (_%e166177166347%_
                             _%hd166176166350%_
                             _%tl166175166352%_
                             _%e166180166355%_
                             _%hd166179166358%_
                             _%tl166178166360%_
                             _%e166183166363%_
                             _%hd166182166366%_
                             _%tl166181166368%_
                             _%e166186166371%_
                             _%hd166185166374%_
                             _%tl166184166376%_
                             _%e166189166379%_
                             _%hd166188166382%_
                             _%tl166187166384%_
                             _%e166192166387%_
                             _%hd166191166390%_
                             _%tl166190166392%_
                             _%e166195166395%_
                             _%hd166194166398%_
                             _%tl166193166400%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166187166384%_))
                          (_%__match170516170517%_
                           _%e166177166347%_
                           _%hd166176166350%_
                           _%tl166175166352%_
                           _%e166180166355%_
                           _%hd166179166358%_
                           _%tl166178166360%_
                           _%e166183166363%_
                           _%hd166182166366%_
                           _%tl166181166368%_
                           _%e166186166371%_
                           _%hd166185166374%_
                           _%tl166184166376%_
                           _%e166189166379%_
                           _%hd166188166382%_
                           _%tl166187166384%_
                           _%e166192166387%_
                           _%hd166191166390%_
                           _%tl166190166392%_
                           _%e166195166395%_
                           _%hd166194166398%_
                           _%tl166193166400%_)
                          (_%__match170570170571%_
                           _%e166177166347%_
                           _%hd166176166350%_
                           _%tl166175166352%_
                           _%e166180166355%_
                           _%hd166179166358%_
                           _%tl166178166360%_
                           _%e166183166363%_
                           _%hd166182166366%_
                           _%tl166181166368%_
                           _%e166186166371%_
                           _%hd166185166374%_
                           _%tl166184166376%_
                           _%e166189166379%_
                           _%hd166188166382%_
                           _%tl166187166384%_
                           _%e166192166387%_
                           _%hd166191166390%_
                           _%tl166190166392%_
                           _%e166195166395%_
                           _%hd166194166398%_
                           _%tl166193166400%_))))
                   (_%__match170460170461%_
                    (lambda (_%e166142166441%_
                             _%hd166141166444%_
                             _%tl166140166446%_
                             _%e166145166449%_
                             _%hd166144166452%_
                             _%tl166143166454%_
                             _%e166148166457%_
                             _%hd166147166460%_
                             _%tl166146166462%_
                             _%e166151166465%_
                             _%hd166150166468%_
                             _%tl166149166470%_
                             _%e166154166473%_
                             _%hd166153166476%_
                             _%tl166152166478%_
                             _%e166157166481%_
                             _%hd166156166484%_
                             _%tl166155166486%_
                             _%e166160166489%_
                             _%hd166159166492%_
                             _%tl166158166494%_
                             _%e166163166497%_
                             _%hd166162166500%_
                             _%tl166161166502%_
                             _%e166166166505%_
                             _%hd166165166508%_
                             _%tl166164166510%_
                             _%e166169166513%_
                             _%hd166168166516%_
                             _%tl166167166518%_
                             _%e166172166521%_
                             _%hd166171166524%_
                             _%tl166170166526%_)
                      (let ((_%L166529%_ _%hd166171166524%_)
                            (_%L166530%_ _%hd166168166516%_)
                            (_%L166531%_ _%hd166159166492%_)
                            (_%L166532%_ _%hd166150166468%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166532%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166532%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171209
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165996%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166531%_
                                    __tmp171209)))
                            (_%__kont170091170092%_
                             _%L166529%_
                             _%L166530%_
                             _%L166531%_
                             _%L166532%_)
                            (_%__kont170097170098%_)))))
                   (_%__match170452170453%_
                    (lambda (_%e166142166441%_
                             _%hd166141166444%_
                             _%tl166140166446%_
                             _%e166145166449%_
                             _%hd166144166452%_
                             _%tl166143166454%_
                             _%e166148166457%_
                             _%hd166147166460%_
                             _%tl166146166462%_
                             _%e166151166465%_
                             _%hd166150166468%_
                             _%tl166149166470%_
                             _%e166154166473%_
                             _%hd166153166476%_
                             _%tl166152166478%_
                             _%e166157166481%_
                             _%hd166156166484%_
                             _%tl166155166486%_
                             _%e166160166489%_
                             _%hd166159166492%_
                             _%tl166158166494%_
                             _%e166163166497%_
                             _%hd166162166500%_
                             _%tl166161166502%_
                             _%e166166166505%_
                             _%hd166165166508%_
                             _%tl166164166510%_
                             _%e166169166513%_
                             _%hd166168166516%_
                             _%tl166167166518%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166161166502%_))
                          (let ((_%e166172166521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166161166502%_))))
                            (let ((_%tl166170166526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166172166521%_)))
                                  (_%hd166171166524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166172166521%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166170166526%_))
                                  (_%__match170460170461%_
                                   _%e166142166441%_
                                   _%hd166141166444%_
                                   _%tl166140166446%_
                                   _%e166145166449%_
                                   _%hd166144166452%_
                                   _%tl166143166454%_
                                   _%e166148166457%_
                                   _%hd166147166460%_
                                   _%tl166146166462%_
                                   _%e166151166465%_
                                   _%hd166150166468%_
                                   _%tl166149166470%_
                                   _%e166154166473%_
                                   _%hd166153166476%_
                                   _%tl166152166478%_
                                   _%e166157166481%_
                                   _%hd166156166484%_
                                   _%tl166155166486%_
                                   _%e166160166489%_
                                   _%hd166159166492%_
                                   _%tl166158166494%_
                                   _%e166163166497%_
                                   _%hd166162166500%_
                                   _%tl166161166502%_
                                   _%e166166166505%_
                                   _%hd166165166508%_
                                   _%tl166164166510%_
                                   _%e166169166513%_
                                   _%hd166168166516%_
                                   _%tl166167166518%_
                                   _%e166172166521%_
                                   _%hd166171166524%_
                                   _%tl166170166526%_)
                                  (_%__kont170097170098%_))))
                          (_%__match170576170577%_
                           _%e166142166441%_
                           _%hd166141166444%_
                           _%tl166140166446%_
                           _%e166145166449%_
                           _%hd166144166452%_
                           _%tl166143166454%_
                           _%e166148166457%_
                           _%hd166147166460%_
                           _%tl166146166462%_
                           _%e166151166465%_
                           _%hd166150166468%_
                           _%tl166149166470%_
                           _%e166154166473%_
                           _%hd166153166476%_
                           _%tl166152166478%_
                           _%e166157166481%_
                           _%hd166156166484%_
                           _%tl166155166486%_
                           _%e166160166489%_
                           _%hd166159166492%_
                           _%tl166158166494%_
                           _%e166163166497%_
                           _%hd166162166500%_
                           _%tl166161166502%_))))
                   (_%__match170374170375%_
                    (lambda (_%e166108166572%_
                             _%hd166107166575%_
                             _%tl166106166577%_
                             _%e166111166580%_
                             _%hd166110166583%_
                             _%tl166109166585%_
                             _%e166114166588%_
                             _%hd166113166591%_
                             _%tl166112166593%_
                             _%e166117166596%_
                             _%hd166116166599%_
                             _%tl166115166601%_
                             _%e166120166604%_
                             _%hd166119166607%_
                             _%tl166118166609%_
                             _%e166123166612%_
                             _%hd166122166615%_
                             _%tl166121166617%_
                             _%e166126166620%_
                             _%hd166125166623%_
                             _%tl166124166625%_
                             _%e166129166628%_
                             _%hd166128166631%_
                             _%tl166127166633%_
                             _%e166132166636%_
                             _%hd166131166639%_
                             _%tl166130166641%_
                             _%e166135166644%_
                             _%hd166134166647%_
                             _%tl166133166649%_)
                      (let ((_%L166652%_ _%hd166134166647%_)
                            (_%L166653%_ _%hd166125166623%_)
                            (_%L166654%_ _%hd166116166599%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166654%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L166654%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171210
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self165996%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166653%_
                                    __tmp171210)))
                            (_%__kont170089170090%_
                             _%L166652%_
                             _%L166653%_
                             _%L166654%_)
                            (_%__match170578170579%_
                             _%e166108166572%_
                             _%hd166107166575%_
                             _%tl166106166577%_
                             _%e166111166580%_
                             _%hd166110166583%_
                             _%tl166109166585%_
                             _%e166114166588%_
                             _%hd166113166591%_
                             _%tl166112166593%_
                             _%e166117166596%_
                             _%hd166116166599%_
                             _%tl166115166601%_
                             _%e166120166604%_
                             _%hd166119166607%_
                             _%tl166118166609%_
                             _%e166123166612%_
                             _%hd166122166615%_
                             _%tl166121166617%_
                             _%e166126166620%_
                             _%hd166125166623%_
                             _%tl166124166625%_
                             _%e166129166628%_
                             _%hd166128166631%_
                             _%tl166127166633%_)))))
                   (_%__match170372170373%_
                    (lambda (_%e166108166572%_
                             _%hd166107166575%_
                             _%tl166106166577%_
                             _%e166111166580%_
                             _%hd166110166583%_
                             _%tl166109166585%_
                             _%e166114166588%_
                             _%hd166113166591%_
                             _%tl166112166593%_
                             _%e166117166596%_
                             _%hd166116166599%_
                             _%tl166115166601%_
                             _%e166120166604%_
                             _%hd166119166607%_
                             _%tl166118166609%_
                             _%e166123166612%_
                             _%hd166122166615%_
                             _%tl166121166617%_
                             _%e166126166620%_
                             _%hd166125166623%_
                             _%tl166124166625%_
                             _%e166129166628%_
                             _%hd166128166631%_
                             _%tl166127166633%_
                             _%e166132166636%_
                             _%hd166131166639%_
                             _%tl166130166641%_
                             _%e166135166644%_
                             _%hd166134166647%_
                             _%tl166133166649%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166127166633%_))
                          (_%__match170374170375%_
                           _%e166108166572%_
                           _%hd166107166575%_
                           _%tl166106166577%_
                           _%e166111166580%_
                           _%hd166110166583%_
                           _%tl166109166585%_
                           _%e166114166588%_
                           _%hd166113166591%_
                           _%tl166112166593%_
                           _%e166117166596%_
                           _%hd166116166599%_
                           _%tl166115166601%_
                           _%e166120166604%_
                           _%hd166119166607%_
                           _%tl166118166609%_
                           _%e166123166612%_
                           _%hd166122166615%_
                           _%tl166121166617%_
                           _%e166126166620%_
                           _%hd166125166623%_
                           _%tl166124166625%_
                           _%e166129166628%_
                           _%hd166128166631%_
                           _%tl166127166633%_
                           _%e166132166636%_
                           _%hd166131166639%_
                           _%tl166130166641%_
                           _%e166135166644%_
                           _%hd166134166647%_
                           _%tl166133166649%_)
                          (_%__match170452170453%_
                           _%e166108166572%_
                           _%hd166107166575%_
                           _%tl166106166577%_
                           _%e166111166580%_
                           _%hd166110166583%_
                           _%tl166109166585%_
                           _%e166114166588%_
                           _%hd166113166591%_
                           _%tl166112166593%_
                           _%e166117166596%_
                           _%hd166116166599%_
                           _%tl166115166601%_
                           _%e166120166604%_
                           _%hd166119166607%_
                           _%tl166118166609%_
                           _%e166123166612%_
                           _%hd166122166615%_
                           _%tl166121166617%_
                           _%e166126166620%_
                           _%hd166125166623%_
                           _%tl166124166625%_
                           _%e166129166628%_
                           _%hd166128166631%_
                           _%tl166127166633%_
                           _%e166132166636%_
                           _%hd166131166639%_
                           _%tl166130166641%_
                           _%e166135166644%_
                           _%hd166134166647%_
                           _%tl166133166649%_))))
                   (_%__match170362170363%_
                    (lambda (_%e166108166572%_
                             _%hd166107166575%_
                             _%tl166106166577%_
                             _%e166111166580%_
                             _%hd166110166583%_
                             _%tl166109166585%_
                             _%e166114166588%_
                             _%hd166113166591%_
                             _%tl166112166593%_
                             _%e166117166596%_
                             _%hd166116166599%_
                             _%tl166115166601%_
                             _%e166120166604%_
                             _%hd166119166607%_
                             _%tl166118166609%_
                             _%e166123166612%_
                             _%hd166122166615%_
                             _%tl166121166617%_
                             _%e166126166620%_
                             _%hd166125166623%_
                             _%tl166124166625%_
                             _%e166129166628%_
                             _%hd166128166631%_
                             _%tl166127166633%_
                             _%e166132166636%_
                             _%hd166131166639%_
                             _%tl166130166641%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166131166639%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166130166641%_))
                              (let ((_%e166135166644%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166130166641%_))))
                                (let ((_%tl166133166649%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166135166644%_)))
                                      (_%hd166134166647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166135166644%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166133166649%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166127166633%_))
                                          (_%__match170374170375%_
                                           _%e166108166572%_
                                           _%hd166107166575%_
                                           _%tl166106166577%_
                                           _%e166111166580%_
                                           _%hd166110166583%_
                                           _%tl166109166585%_
                                           _%e166114166588%_
                                           _%hd166113166591%_
                                           _%tl166112166593%_
                                           _%e166117166596%_
                                           _%hd166116166599%_
                                           _%tl166115166601%_
                                           _%e166120166604%_
                                           _%hd166119166607%_
                                           _%tl166118166609%_
                                           _%e166123166612%_
                                           _%hd166122166615%_
                                           _%tl166121166617%_
                                           _%e166126166620%_
                                           _%hd166125166623%_
                                           _%tl166124166625%_
                                           _%e166129166628%_
                                           _%hd166128166631%_
                                           _%tl166127166633%_
                                           _%e166132166636%_
                                           _%hd166131166639%_
                                           _%tl166130166641%_
                                           _%e166135166644%_
                                           _%hd166134166647%_
                                           _%tl166133166649%_)
                                          (_%__match170452170453%_
                                           _%e166108166572%_
                                           _%hd166107166575%_
                                           _%tl166106166577%_
                                           _%e166111166580%_
                                           _%hd166110166583%_
                                           _%tl166109166585%_
                                           _%e166114166588%_
                                           _%hd166113166591%_
                                           _%tl166112166593%_
                                           _%e166117166596%_
                                           _%hd166116166599%_
                                           _%tl166115166601%_
                                           _%e166120166604%_
                                           _%hd166119166607%_
                                           _%tl166118166609%_
                                           _%e166123166612%_
                                           _%hd166122166615%_
                                           _%tl166121166617%_
                                           _%e166126166620%_
                                           _%hd166125166623%_
                                           _%tl166124166625%_
                                           _%e166129166628%_
                                           _%hd166128166631%_
                                           _%tl166127166633%_
                                           _%e166132166636%_
                                           _%hd166131166639%_
                                           _%tl166130166641%_
                                           _%e166135166644%_
                                           _%hd166134166647%_
                                           _%tl166133166649%_))
                                      (_%__match170576170577%_
                                       _%e166108166572%_
                                       _%hd166107166575%_
                                       _%tl166106166577%_
                                       _%e166111166580%_
                                       _%hd166110166583%_
                                       _%tl166109166585%_
                                       _%e166114166588%_
                                       _%hd166113166591%_
                                       _%tl166112166593%_
                                       _%e166117166596%_
                                       _%hd166116166599%_
                                       _%tl166115166601%_
                                       _%e166120166604%_
                                       _%hd166119166607%_
                                       _%tl166118166609%_
                                       _%e166123166612%_
                                       _%hd166122166615%_
                                       _%tl166121166617%_
                                       _%e166126166620%_
                                       _%hd166125166623%_
                                       _%tl166124166625%_
                                       _%e166129166628%_
                                       _%hd166128166631%_
                                       _%tl166127166633%_))))
                              (_%__match170576170577%_
                               _%e166108166572%_
                               _%hd166107166575%_
                               _%tl166106166577%_
                               _%e166111166580%_
                               _%hd166110166583%_
                               _%tl166109166585%_
                               _%e166114166588%_
                               _%hd166113166591%_
                               _%tl166112166593%_
                               _%e166117166596%_
                               _%hd166116166599%_
                               _%tl166115166601%_
                               _%e166120166604%_
                               _%hd166119166607%_
                               _%tl166118166609%_
                               _%e166123166612%_
                               _%hd166122166615%_
                               _%tl166121166617%_
                               _%e166126166620%_
                               _%hd166125166623%_
                               _%tl166124166625%_
                               _%e166129166628%_
                               _%hd166128166631%_
                               _%tl166127166633%_))
                          (_%__match170576170577%_
                           _%e166108166572%_
                           _%hd166107166575%_
                           _%tl166106166577%_
                           _%e166111166580%_
                           _%hd166110166583%_
                           _%tl166109166585%_
                           _%e166114166588%_
                           _%hd166113166591%_
                           _%tl166112166593%_
                           _%e166117166596%_
                           _%hd166116166599%_
                           _%tl166115166601%_
                           _%e166120166604%_
                           _%hd166119166607%_
                           _%tl166118166609%_
                           _%e166123166612%_
                           _%hd166122166615%_
                           _%tl166121166617%_
                           _%e166126166620%_
                           _%hd166125166623%_
                           _%tl166124166625%_
                           _%e166129166628%_
                           _%hd166128166631%_
                           _%tl166127166633%_))))
                   (_%__match170294170295%_
                    (lambda (_%e166057166691%_
                             _%hd166056166694%_
                             _%tl166055166696%_
                             _%e166060166699%_
                             _%hd166059166702%_
                             _%tl166058166704%_
                             _%e166063166707%_
                             _%hd166062166710%_
                             _%tl166061166712%_
                             _%e166066166715%_
                             _%hd166065166718%_
                             _%tl166064166720%_
                             _%e166069166723%_
                             _%hd166068166726%_
                             _%tl166067166728%_
                             _%e166072166731%_
                             _%hd166071166734%_
                             _%tl166070166736%_
                             _%e166075166739%_
                             _%hd166074166742%_
                             _%tl166073166744%_
                             _%e166078166747%_
                             _%hd166077166750%_
                             _%tl166076166752%_
                             _%e166081166755%_
                             _%hd166080166758%_
                             _%tl166079166760%_
                             _%e166084166763%_
                             _%hd166083166766%_
                             _%tl166082166768%_
                             _%e166087166771%_
                             _%hd166086166774%_
                             _%tl166085166776%_
                             _%e166090166779%_
                             _%hd166089166782%_
                             _%tl166088166784%_
                             _%e166093166787%_
                             _%hd166092166790%_
                             _%tl166091166792%_
                             _%__splice170087170088%_
                             _%target166094166795%_
                             _%tl166096166797%_)
                      (letrec ((_%loop166097166800%_
                                (lambda (_%hd166095166803%_
                                         _%args166101166805%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166095166803%_))
                                      (let ((_%e166098166808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166095166803%_))))
                                        (let ((_%lp-tl166100166813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166098166808%_)))
                                              (_%lp-hd166099166811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166098166808%_))))
                                          (let ((__tmp171211
                                                 (cons _%lp-hd166099166811%_
                                                       _%args166101166805%_)))
                                            (declare (not safe))
                                            (_%loop166097166800%_
                                             _%lp-tl166100166813%_
                                             __tmp171211))))
                                      (let ((_%args166102166816%_
                                             (reverse _%args166101166805%_)))
                                        (let ((_%L166819%_
                                               _%args166102166816%_)
                                              (_%L166820%_ _%hd166092166790%_)
                                              (_%L166821%_ _%hd166083166766%_)
                                              (_%L166822%_ _%hd166074166742%_)
                                              (_%L166823%_ _%hd166065166718%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166823%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166822%_
                                                      'call-method))
                                                   (let ((__tmp171212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165996%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166821%_
                                                      __tmp171212)))
                                              (_%__kont170085170086%_
                                               _%L166819%_
                                               _%L166820%_
                                               _%L166821%_
                                               _%L166822%_
                                               _%L166823%_)
                                              (_%__kont170097170098%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166097166800%_ _%target166094166795%_ '())))))
                   (_%__match170252170253%_
                    (lambda (_%e166057166691%_
                             _%hd166056166694%_
                             _%tl166055166696%_
                             _%e166060166699%_
                             _%hd166059166702%_
                             _%tl166058166704%_
                             _%e166063166707%_
                             _%hd166062166710%_
                             _%tl166061166712%_
                             _%e166066166715%_
                             _%hd166065166718%_
                             _%tl166064166720%_
                             _%e166069166723%_
                             _%hd166068166726%_
                             _%tl166067166728%_
                             _%e166072166731%_
                             _%hd166071166734%_
                             _%tl166070166736%_
                             _%e166075166739%_
                             _%hd166074166742%_
                             _%tl166073166744%_
                             _%e166078166747%_
                             _%hd166077166750%_
                             _%tl166076166752%_
                             _%e166081166755%_
                             _%hd166080166758%_
                             _%tl166079166760%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166080166758%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166079166760%_))
                              (let ((_%e166084166763%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166079166760%_))))
                                (let ((_%tl166082166768%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166084166763%_)))
                                      (_%hd166083166766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166084166763%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166082166768%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166076166752%_))
                                          (let ((_%e166087166771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166076166752%_))))
                                            (let ((_%tl166085166776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166087166771%_)))
                                                  (_%hd166086166774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166087166771%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166086166774%_))
                                                  (let ((_%e166090166779%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166086166774%_))))
                                                    (let ((_%tl166088166784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166090166779%_)))
                                                          (_%hd166089166782%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166090166779%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166089166782%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166089166782%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166088166784%_))
                          (let ((_%e166093166787%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166088166784%_))))
                            (let ((_%tl166091166792%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166093166787%_)))
                                  (_%hd166092166790%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166093166787%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166091166792%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166085166776%_))
                                      (let ((_%__splice170087170088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166085166776%_
                                                '0))))
                                        (let ((_%tl166096166797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170087170088%_
                                                  '1)))
                                              (_%target166094166795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170087170088%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166096166797%_))
                                              (_%__match170294170295%_
                                               _%e166057166691%_
                                               _%hd166056166694%_
                                               _%tl166055166696%_
                                               _%e166060166699%_
                                               _%hd166059166702%_
                                               _%tl166058166704%_
                                               _%e166063166707%_
                                               _%hd166062166710%_
                                               _%tl166061166712%_
                                               _%e166066166715%_
                                               _%hd166065166718%_
                                               _%tl166064166720%_
                                               _%e166069166723%_
                                               _%hd166068166726%_
                                               _%tl166067166728%_
                                               _%e166072166731%_
                                               _%hd166071166734%_
                                               _%tl166070166736%_
                                               _%e166075166739%_
                                               _%hd166074166742%_
                                               _%tl166073166744%_
                                               _%e166078166747%_
                                               _%hd166077166750%_
                                               _%tl166076166752%_
                                               _%e166081166755%_
                                               _%hd166080166758%_
                                               _%tl166079166760%_
                                               _%e166084166763%_
                                               _%hd166083166766%_
                                               _%tl166082166768%_
                                               _%e166087166771%_
                                               _%hd166086166774%_
                                               _%tl166085166776%_
                                               _%e166090166779%_
                                               _%hd166089166782%_
                                               _%tl166088166784%_
                                               _%e166093166787%_
                                               _%hd166092166790%_
                                               _%tl166091166792%_
                                               _%__splice170087170088%_
                                               _%target166094166795%_
                                               _%tl166096166797%_)
                                              (_%__kont170097170098%_))))
                                      (_%__kont170097170098%_))
                                  (_%__kont170097170098%_))))
                          (_%__kont170097170098%_))
                      (_%__kont170097170098%_))
                  (_%__kont170097170098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170097170098%_))))
                                          (_%__match170576170577%_
                                           _%e166057166691%_
                                           _%hd166056166694%_
                                           _%tl166055166696%_
                                           _%e166060166699%_
                                           _%hd166059166702%_
                                           _%tl166058166704%_
                                           _%e166063166707%_
                                           _%hd166062166710%_
                                           _%tl166061166712%_
                                           _%e166066166715%_
                                           _%hd166065166718%_
                                           _%tl166064166720%_
                                           _%e166069166723%_
                                           _%hd166068166726%_
                                           _%tl166067166728%_
                                           _%e166072166731%_
                                           _%hd166071166734%_
                                           _%tl166070166736%_
                                           _%e166075166739%_
                                           _%hd166074166742%_
                                           _%tl166073166744%_
                                           _%e166078166747%_
                                           _%hd166077166750%_
                                           _%tl166076166752%_))
                                      (_%__match170576170577%_
                                       _%e166057166691%_
                                       _%hd166056166694%_
                                       _%tl166055166696%_
                                       _%e166060166699%_
                                       _%hd166059166702%_
                                       _%tl166058166704%_
                                       _%e166063166707%_
                                       _%hd166062166710%_
                                       _%tl166061166712%_
                                       _%e166066166715%_
                                       _%hd166065166718%_
                                       _%tl166064166720%_
                                       _%e166069166723%_
                                       _%hd166068166726%_
                                       _%tl166067166728%_
                                       _%e166072166731%_
                                       _%hd166071166734%_
                                       _%tl166070166736%_
                                       _%e166075166739%_
                                       _%hd166074166742%_
                                       _%tl166073166744%_
                                       _%e166078166747%_
                                       _%hd166077166750%_
                                       _%tl166076166752%_))))
                              (_%__match170576170577%_
                               _%e166057166691%_
                               _%hd166056166694%_
                               _%tl166055166696%_
                               _%e166060166699%_
                               _%hd166059166702%_
                               _%tl166058166704%_
                               _%e166063166707%_
                               _%hd166062166710%_
                               _%tl166061166712%_
                               _%e166066166715%_
                               _%hd166065166718%_
                               _%tl166064166720%_
                               _%e166069166723%_
                               _%hd166068166726%_
                               _%tl166067166728%_
                               _%e166072166731%_
                               _%hd166071166734%_
                               _%tl166070166736%_
                               _%e166075166739%_
                               _%hd166074166742%_
                               _%tl166073166744%_
                               _%e166078166747%_
                               _%hd166077166750%_
                               _%tl166076166752%_))
                          (_%__match170362170363%_
                           _%e166057166691%_
                           _%hd166056166694%_
                           _%tl166055166696%_
                           _%e166060166699%_
                           _%hd166059166702%_
                           _%tl166058166704%_
                           _%e166063166707%_
                           _%hd166062166710%_
                           _%tl166061166712%_
                           _%e166066166715%_
                           _%hd166065166718%_
                           _%tl166064166720%_
                           _%e166069166723%_
                           _%hd166068166726%_
                           _%tl166067166728%_
                           _%e166072166731%_
                           _%hd166071166734%_
                           _%tl166070166736%_
                           _%e166075166739%_
                           _%hd166074166742%_
                           _%tl166073166744%_
                           _%e166078166747%_
                           _%hd166077166750%_
                           _%tl166076166752%_
                           _%e166081166755%_
                           _%hd166080166758%_
                           _%tl166079166760%_))))
                   (_%__match170184170185%_
                    (lambda (_%e166013166880%_
                             _%hd166012166883%_
                             _%tl166011166885%_
                             _%e166016166888%_
                             _%hd166015166891%_
                             _%tl166014166893%_
                             _%e166019166896%_
                             _%hd166018166899%_
                             _%tl166017166901%_
                             _%e166022166904%_
                             _%hd166021166907%_
                             _%tl166020166909%_
                             _%e166025166912%_
                             _%hd166024166915%_
                             _%tl166023166917%_
                             _%e166028166920%_
                             _%hd166027166923%_
                             _%tl166026166925%_
                             _%e166031166928%_
                             _%hd166030166931%_
                             _%tl166029166933%_
                             _%e166034166936%_
                             _%hd166033166939%_
                             _%tl166032166941%_
                             _%e166037166944%_
                             _%hd166036166947%_
                             _%tl166035166949%_
                             _%e166040166952%_
                             _%hd166039166955%_
                             _%tl166038166957%_
                             _%__splice170083170084%_
                             _%target166041166960%_
                             _%tl166043166962%_)
                      (letrec ((_%loop166044166965%_
                                (lambda (_%hd166042166968%_
                                         _%args166048166970%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166042166968%_))
                                      (let ((_%e166045166973%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166042166968%_))))
                                        (let ((_%lp-tl166047166978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166045166973%_)))
                                              (_%lp-hd166046166976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166045166973%_))))
                                          (let ((__tmp171213
                                                 (cons _%lp-hd166046166976%_
                                                       _%args166048166970%_)))
                                            (declare (not safe))
                                            (_%loop166044166965%_
                                             _%lp-tl166047166978%_
                                             __tmp171213))))
                                      (let ((_%args166049166981%_
                                             (reverse _%args166048166970%_)))
                                        (let ((_%L166984%_
                                               _%args166049166981%_)
                                              (_%L166985%_ _%hd166039166955%_)
                                              (_%L166986%_ _%hd166030166931%_)
                                              (_%L166987%_ _%hd166021166907%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L166987%_
                                                      'call-method))
                                                   (let ((__tmp171214
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165996%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L166986%_
                                                      __tmp171214)))
                                              (_%__kont170081170082%_
                                               _%L166984%_
                                               _%L166985%_
                                               _%L166986%_
                                               _%L166987%_)
                                              (_%__match170372170373%_
                                               _%e166013166880%_
                                               _%hd166012166883%_
                                               _%tl166011166885%_
                                               _%e166016166888%_
                                               _%hd166015166891%_
                                               _%tl166014166893%_
                                               _%e166019166896%_
                                               _%hd166018166899%_
                                               _%tl166017166901%_
                                               _%e166022166904%_
                                               _%hd166021166907%_
                                               _%tl166020166909%_
                                               _%e166025166912%_
                                               _%hd166024166915%_
                                               _%tl166023166917%_
                                               _%e166028166920%_
                                               _%hd166027166923%_
                                               _%tl166026166925%_
                                               _%e166031166928%_
                                               _%hd166030166931%_
                                               _%tl166029166933%_
                                               _%e166034166936%_
                                               _%hd166033166939%_
                                               _%tl166032166941%_
                                               _%e166037166944%_
                                               _%hd166036166947%_
                                               _%tl166035166949%_
                                               _%e166040166952%_
                                               _%hd166039166955%_
                                               _%tl166038166957%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop166044166965%_
                           _%target166041166960%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170079170080%_))
                  (let ((_%e166013166880%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170079170080%_))))
                    (let ((_%tl166011166885%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166013166880%_)))
                          (_%hd166012166883%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166013166880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166011166885%_))
                          (let ((_%e166016166888%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166011166885%_))))
                            (let ((_%tl166014166893%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166016166888%_)))
                                  (_%hd166015166891%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166016166888%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166015166891%_))
                                  (let ((_%e166019166896%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166015166891%_))))
                                    (let ((_%tl166017166901%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166019166896%_)))
                                          (_%hd166018166899%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166019166896%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166018166899%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166018166899%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166017166901%_))
                                                  (let ((_%e166022166904%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166017166901%_))))
                                                    (let ((_%tl166020166909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166022166904%_)))
                                                          (_%hd166021166907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166022166904%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166020166909%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166014166893%_))
                      (let ((_%e166025166912%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166014166893%_))))
                        (let ((_%tl166023166917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166025166912%_)))
                              (_%hd166024166915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166025166912%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166024166915%_))
                              (let ((_%e166028166920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166024166915%_))))
                                (let ((_%tl166026166925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166028166920%_)))
                                      (_%hd166027166923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166028166920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166027166923%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166027166923%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166026166925%_))
                                              (let ((_%e166031166928%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166026166925%_))))
                                                (let ((_%tl166029166933%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166031166928%_)))
                                                      (_%hd166030166931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166031166928%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166029166933%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166023166917%_))
                                                          (let ((_%e166034166936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166023166917%_))))
                    (let ((_%tl166032166941%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166034166936%_)))
                          (_%hd166033166939%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166034166936%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166033166939%_))
                          (let ((_%e166037166944%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166033166939%_))))
                            (let ((_%tl166035166949%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166037166944%_)))
                                  (_%hd166036166947%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166037166944%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166036166947%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166036166947%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166035166949%_))
                                          (let ((_%e166040166952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166035166949%_))))
                                            (let ((_%tl166038166957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166040166952%_)))
                                                  (_%hd166039166955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166040166952%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166038166957%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166032166941%_))
                                                      (let ((_%__splice170083170084%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166032166941%_ '0))))
                (let ((_%tl166043166962%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170083170084%_ '1)))
                      (_%target166041166960%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170083170084%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166043166962%_))
                      (_%__match170184170185%_
                       _%e166013166880%_
                       _%hd166012166883%_
                       _%tl166011166885%_
                       _%e166016166888%_
                       _%hd166015166891%_
                       _%tl166014166893%_
                       _%e166019166896%_
                       _%hd166018166899%_
                       _%tl166017166901%_
                       _%e166022166904%_
                       _%hd166021166907%_
                       _%tl166020166909%_
                       _%e166025166912%_
                       _%hd166024166915%_
                       _%tl166023166917%_
                       _%e166028166920%_
                       _%hd166027166923%_
                       _%tl166026166925%_
                       _%e166031166928%_
                       _%hd166030166931%_
                       _%tl166029166933%_
                       _%e166034166936%_
                       _%hd166033166939%_
                       _%tl166032166941%_
                       _%e166037166944%_
                       _%hd166036166947%_
                       _%tl166035166949%_
                       _%e166040166952%_
                       _%hd166039166955%_
                       _%tl166038166957%_
                       _%__splice170083170084%_
                       _%target166041166960%_
                       _%tl166043166962%_)
                      (_%__match170372170373%_
                       _%e166013166880%_
                       _%hd166012166883%_
                       _%tl166011166885%_
                       _%e166016166888%_
                       _%hd166015166891%_
                       _%tl166014166893%_
                       _%e166019166896%_
                       _%hd166018166899%_
                       _%tl166017166901%_
                       _%e166022166904%_
                       _%hd166021166907%_
                       _%tl166020166909%_
                       _%e166025166912%_
                       _%hd166024166915%_
                       _%tl166023166917%_
                       _%e166028166920%_
                       _%hd166027166923%_
                       _%tl166026166925%_
                       _%e166031166928%_
                       _%hd166030166931%_
                       _%tl166029166933%_
                       _%e166034166936%_
                       _%hd166033166939%_
                       _%tl166032166941%_
                       _%e166037166944%_
                       _%hd166036166947%_
                       _%tl166035166949%_
                       _%e166040166952%_
                       _%hd166039166955%_
                       _%tl166038166957%_))))
              (_%__match170372170373%_
               _%e166013166880%_
               _%hd166012166883%_
               _%tl166011166885%_
               _%e166016166888%_
               _%hd166015166891%_
               _%tl166014166893%_
               _%e166019166896%_
               _%hd166018166899%_
               _%tl166017166901%_
               _%e166022166904%_
               _%hd166021166907%_
               _%tl166020166909%_
               _%e166025166912%_
               _%hd166024166915%_
               _%tl166023166917%_
               _%e166028166920%_
               _%hd166027166923%_
               _%tl166026166925%_
               _%e166031166928%_
               _%hd166030166931%_
               _%tl166029166933%_
               _%e166034166936%_
               _%hd166033166939%_
               _%tl166032166941%_
               _%e166037166944%_
               _%hd166036166947%_
               _%tl166035166949%_
               _%e166040166952%_
               _%hd166039166955%_
               _%tl166038166957%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match170576170577%_
                                                   _%e166013166880%_
                                                   _%hd166012166883%_
                                                   _%tl166011166885%_
                                                   _%e166016166888%_
                                                   _%hd166015166891%_
                                                   _%tl166014166893%_
                                                   _%e166019166896%_
                                                   _%hd166018166899%_
                                                   _%tl166017166901%_
                                                   _%e166022166904%_
                                                   _%hd166021166907%_
                                                   _%tl166020166909%_
                                                   _%e166025166912%_
                                                   _%hd166024166915%_
                                                   _%tl166023166917%_
                                                   _%e166028166920%_
                                                   _%hd166027166923%_
                                                   _%tl166026166925%_
                                                   _%e166031166928%_
                                                   _%hd166030166931%_
                                                   _%tl166029166933%_
                                                   _%e166034166936%_
                                                   _%hd166033166939%_
                                                   _%tl166032166941%_))))
                                          (_%__match170576170577%_
                                           _%e166013166880%_
                                           _%hd166012166883%_
                                           _%tl166011166885%_
                                           _%e166016166888%_
                                           _%hd166015166891%_
                                           _%tl166014166893%_
                                           _%e166019166896%_
                                           _%hd166018166899%_
                                           _%tl166017166901%_
                                           _%e166022166904%_
                                           _%hd166021166907%_
                                           _%tl166020166909%_
                                           _%e166025166912%_
                                           _%hd166024166915%_
                                           _%tl166023166917%_
                                           _%e166028166920%_
                                           _%hd166027166923%_
                                           _%tl166026166925%_
                                           _%e166031166928%_
                                           _%hd166030166931%_
                                           _%tl166029166933%_
                                           _%e166034166936%_
                                           _%hd166033166939%_
                                           _%tl166032166941%_))
                                      (_%__match170252170253%_
                                       _%e166013166880%_
                                       _%hd166012166883%_
                                       _%tl166011166885%_
                                       _%e166016166888%_
                                       _%hd166015166891%_
                                       _%tl166014166893%_
                                       _%e166019166896%_
                                       _%hd166018166899%_
                                       _%tl166017166901%_
                                       _%e166022166904%_
                                       _%hd166021166907%_
                                       _%tl166020166909%_
                                       _%e166025166912%_
                                       _%hd166024166915%_
                                       _%tl166023166917%_
                                       _%e166028166920%_
                                       _%hd166027166923%_
                                       _%tl166026166925%_
                                       _%e166031166928%_
                                       _%hd166030166931%_
                                       _%tl166029166933%_
                                       _%e166034166936%_
                                       _%hd166033166939%_
                                       _%tl166032166941%_
                                       _%e166037166944%_
                                       _%hd166036166947%_
                                       _%tl166035166949%_))
                                  (_%__match170576170577%_
                                   _%e166013166880%_
                                   _%hd166012166883%_
                                   _%tl166011166885%_
                                   _%e166016166888%_
                                   _%hd166015166891%_
                                   _%tl166014166893%_
                                   _%e166019166896%_
                                   _%hd166018166899%_
                                   _%tl166017166901%_
                                   _%e166022166904%_
                                   _%hd166021166907%_
                                   _%tl166020166909%_
                                   _%e166025166912%_
                                   _%hd166024166915%_
                                   _%tl166023166917%_
                                   _%e166028166920%_
                                   _%hd166027166923%_
                                   _%tl166026166925%_
                                   _%e166031166928%_
                                   _%hd166030166931%_
                                   _%tl166029166933%_
                                   _%e166034166936%_
                                   _%hd166033166939%_
                                   _%tl166032166941%_))))
                          (_%__match170576170577%_
                           _%e166013166880%_
                           _%hd166012166883%_
                           _%tl166011166885%_
                           _%e166016166888%_
                           _%hd166015166891%_
                           _%tl166014166893%_
                           _%e166019166896%_
                           _%hd166018166899%_
                           _%tl166017166901%_
                           _%e166022166904%_
                           _%hd166021166907%_
                           _%tl166020166909%_
                           _%e166025166912%_
                           _%hd166024166915%_
                           _%tl166023166917%_
                           _%e166028166920%_
                           _%hd166027166923%_
                           _%tl166026166925%_
                           _%e166031166928%_
                           _%hd166030166931%_
                           _%tl166029166933%_
                           _%e166034166936%_
                           _%hd166033166939%_
                           _%tl166032166941%_))))
                  (_%__match170514170515%_
                   _%e166013166880%_
                   _%hd166012166883%_
                   _%tl166011166885%_
                   _%e166016166888%_
                   _%hd166015166891%_
                   _%tl166014166893%_
                   _%e166019166896%_
                   _%hd166018166899%_
                   _%tl166017166901%_
                   _%e166022166904%_
                   _%hd166021166907%_
                   _%tl166020166909%_
                   _%e166025166912%_
                   _%hd166024166915%_
                   _%tl166023166917%_
                   _%e166028166920%_
                   _%hd166027166923%_
                   _%tl166026166925%_
                   _%e166031166928%_
                   _%hd166030166931%_
                   _%tl166029166933%_))
              (_%__kont170097170098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170097170098%_))
                                          (_%__kont170097170098%_))
                                      (_%__kont170097170098%_))))
                              (_%__kont170097170098%_))))
                      (_%__kont170097170098%_))
                  (_%__kont170097170098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170097170098%_))
                                              (_%__kont170097170098%_))
                                          (_%__kont170097170098%_))))
                                  (_%__kont170097170098%_))))
                          (_%__kont170097170098%_))))
                  (_%__kont170097170098%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self164935%_ _%stx164936%_)
        (letrec ((_%force-e164938%_
                  (lambda (_%target165994%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target165994%_ '()))
                                      '()))))))
          (let* ((_%__stx170581170582%_ _%stx164936%_)
                 (_%g164946165168%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170581170582%_)))))
            (let ((_%__kont170583170584%_
                   (lambda (_%L165940%_ _%L165941%_ _%L165942%_ _%L165943%_)
                     (let ((_%$method165988%_
                            (let ((__tmp171216
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164935%_ 'methods)))
                                  (__tmp171215
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165941%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171216 __tmp171215)))
                           (_%args165989%_
                            (map (lambda (_%g165976165978%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164935%_
                                      _%g165976165978%_)))
                                 (let ((__tmp171217
                                        (lambda (_%g165980165983%_
                                                 _%g165981165985%_)
                                          (cons _%g165980165983%_
                                                _%g165981165985%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171217 '() _%L165940%_)))))
                       (let ((__tmp171218
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e164938%_
                                             _%$method165988%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164935%_
                                                               'receiver))
                                                            '()))
                                                _%args165989%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171218 _%stx164936%_)))))
                  (_%__kont170587170588%_
                   (lambda (_%L165772%_
                            _%L165773%_
                            _%L165774%_
                            _%L165775%_
                            _%L165776%_)
                     (let ((_%$method165828%_
                            (let ((__tmp171220
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164935%_ 'methods)))
                                  (__tmp171219
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165773%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171220 __tmp171219)))
                           (_%args165829%_
                            (map (lambda (_%g165816165818%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self164935%_
                                      _%g165816165818%_)))
                                 (let ((__tmp171221
                                        (lambda (_%g165820165823%_
                                                 _%g165821165825%_)
                                          (cons _%g165820165823%_
                                                _%g165821165825%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171221 '() _%L165772%_)))))
                       (let ((__tmp171222
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e164938%_
                                                   _%$method165828%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164935%_ 'receiver))
                          '()))
              _%args165829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171222 _%stx164936%_)))))
                  (_%__kont170591170592%_
                   (lambda (_%L165603%_ _%L165604%_ _%L165605%_)
                     (let* ((_%$field165637%_
                             (let ((__tmp171224
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self164935%_ 'slots)))
                                   (__tmp171223
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L165603%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171224 __tmp171223)))
                            (__tmp171225
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self164935%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field165637%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self164935%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171225 _%stx164936%_))))
                  (_%__kont170593170594%_
                   (lambda (_%L165477%_ _%L165478%_ _%L165479%_ _%L165480%_)
                     (let ((_%$field165515%_
                            (let ((__tmp171227
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self164935%_ 'slots)))
                                  (__tmp171226
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L165478%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171227 __tmp171226)))
                           (_%expr165516%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self164935%_ _%L165477%_))))
                       (let ((__tmp171228
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self164935%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field165515%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self164935%_ 'receiver))
                          '()))
              (cons _%expr165516%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171228 _%stx164936%_)))))
                  (_%__kont170595170596%_
                   (lambda (_%L165349%_ _%L165350%_)
                     (let* ((_%accessor165372%_
                             (let ((__tmp171229
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165350%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171229)))
                            (_%klass165374%_
                             (let ((__tmp171230
                                    (##structure-ref
                                     _%accessor165372%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164936%_
                                __tmp171230)))
                            (_%slot165376%_
                             (##structure-ref
                              _%accessor165372%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp171231
                                       (##structure-ref
                                        _%accessor165372%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171231))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165374%_
                                       _%slot165376%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165374%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx164936%_
                           (let* ((_%$field165382%_
                                   (let ((__tmp171232
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171232 _%slot165376%_)))
                                  (__tmp171233
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164935%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164935%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171233
                              _%stx164936%_))))))
                  (_%__kont170597170598%_
                   (lambda (_%L165244%_ _%L165245%_ _%L165246%_)
                     (let* ((_%mutator165274%_
                             (let ((__tmp171234
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165246%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171234)))
                            (_%klass165276%_
                             (let ((__tmp171235
                                    (##structure-ref
                                     _%mutator165274%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx164936%_
                                __tmp171235)))
                            (_%slot165278%_
                             (##structure-ref
                              _%mutator165274%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165280%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self164935%_ _%L165244%_))))
                       (if (and (let ((__tmp171236
                                       (##structure-ref
                                        _%mutator165274%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp171236))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165276%_
                                       _%slot165278%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165276%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171237
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165246%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165245%_
                                                                '()))
                                                    (cons _%expr165280%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171237 _%stx164936%_))
                           (let* ((_%$field165286%_
                                   (let ((__tmp171238
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171238 _%slot165278%_)))
                                  (__tmp171239
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self164935%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self164935%_ 'receiver))
                               '()))
                   (cons _%expr165280%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171239
                              _%stx164936%_))))))
                  (_%__kont170599170600%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self164935%_ _%stx164936%_)))))
              (let* ((_%__match171080171081%_
                      (lambda (_%e165142165180%_
                               _%hd165141165183%_
                               _%tl165140165185%_
                               _%e165145165188%_
                               _%hd165144165191%_
                               _%tl165143165193%_
                               _%e165148165196%_
                               _%hd165147165199%_
                               _%tl165146165201%_
                               _%e165151165204%_
                               _%hd165150165207%_
                               _%tl165149165209%_
                               _%e165154165212%_
                               _%hd165153165215%_
                               _%tl165152165217%_
                               _%e165157165220%_
                               _%hd165156165223%_
                               _%tl165155165225%_
                               _%e165160165228%_
                               _%hd165159165231%_
                               _%tl165158165233%_
                               _%e165163165236%_
                               _%hd165162165239%_
                               _%tl165161165241%_)
                        (let ((_%L165244%_ _%hd165162165239%_)
                              (_%L165245%_ _%hd165159165231%_)
                              (_%L165246%_ _%hd165150165207%_))
                          (if (and (let ((__tmp171240
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165245%_
                                      __tmp171240))
                                   (let ((__tmp171241
                                          (let ((__tmp171242
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165246%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171242))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171241
                                      'gxc#!mutator::t)))
                              (_%__kont170597170598%_
                               _%L165244%_
                               _%L165245%_
                               _%L165246%_)
                              (_%__kont170599170600%_)))))
                     (_%__match171078171079%_
                      (lambda (_%e165142165180%_
                               _%hd165141165183%_
                               _%tl165140165185%_
                               _%e165145165188%_
                               _%hd165144165191%_
                               _%tl165143165193%_
                               _%e165148165196%_
                               _%hd165147165199%_
                               _%tl165146165201%_
                               _%e165151165204%_
                               _%hd165150165207%_
                               _%tl165149165209%_
                               _%e165154165212%_
                               _%hd165153165215%_
                               _%tl165152165217%_
                               _%e165157165220%_
                               _%hd165156165223%_
                               _%tl165155165225%_
                               _%e165160165228%_
                               _%hd165159165231%_
                               _%tl165158165233%_
                               _%e165163165236%_
                               _%hd165162165239%_
                               _%tl165161165241%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165161165241%_))
                            (_%__match171080171081%_
                             _%e165142165180%_
                             _%hd165141165183%_
                             _%tl165140165185%_
                             _%e165145165188%_
                             _%hd165144165191%_
                             _%tl165143165193%_
                             _%e165148165196%_
                             _%hd165147165199%_
                             _%tl165146165201%_
                             _%e165151165204%_
                             _%hd165150165207%_
                             _%tl165149165209%_
                             _%e165154165212%_
                             _%hd165153165215%_
                             _%tl165152165217%_
                             _%e165157165220%_
                             _%hd165156165223%_
                             _%tl165155165225%_
                             _%e165160165228%_
                             _%hd165159165231%_
                             _%tl165158165233%_
                             _%e165163165236%_
                             _%hd165162165239%_
                             _%tl165161165241%_)
                            (_%__kont170599170600%_))))
                     (_%__match171072171073%_
                      (lambda (_%e165142165180%_
                               _%hd165141165183%_
                               _%tl165140165185%_
                               _%e165145165188%_
                               _%hd165144165191%_
                               _%tl165143165193%_
                               _%e165148165196%_
                               _%hd165147165199%_
                               _%tl165146165201%_
                               _%e165151165204%_
                               _%hd165150165207%_
                               _%tl165149165209%_
                               _%e165154165212%_
                               _%hd165153165215%_
                               _%tl165152165217%_
                               _%e165157165220%_
                               _%hd165156165223%_
                               _%tl165155165225%_
                               _%e165160165228%_
                               _%hd165159165231%_
                               _%tl165158165233%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165152165217%_))
                            (let ((_%e165163165236%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165152165217%_))))
                              (let ((_%tl165161165241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165163165236%_)))
                                    (_%hd165162165239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165163165236%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165161165241%_))
                                    (_%__match171080171081%_
                                     _%e165142165180%_
                                     _%hd165141165183%_
                                     _%tl165140165185%_
                                     _%e165145165188%_
                                     _%hd165144165191%_
                                     _%tl165143165193%_
                                     _%e165148165196%_
                                     _%hd165147165199%_
                                     _%tl165146165201%_
                                     _%e165151165204%_
                                     _%hd165150165207%_
                                     _%tl165149165209%_
                                     _%e165154165212%_
                                     _%hd165153165215%_
                                     _%tl165152165217%_
                                     _%e165157165220%_
                                     _%hd165156165223%_
                                     _%tl165155165225%_
                                     _%e165160165228%_
                                     _%hd165159165231%_
                                     _%tl165158165233%_
                                     _%e165163165236%_
                                     _%hd165162165239%_
                                     _%tl165161165241%_)
                                    (_%__kont170599170600%_))))
                            (_%__kont170599170600%_))))
                     (_%__match171018171019%_
                      (lambda (_%e165118165293%_
                               _%hd165117165296%_
                               _%tl165116165298%_
                               _%e165121165301%_
                               _%hd165120165304%_
                               _%tl165119165306%_
                               _%e165124165309%_
                               _%hd165123165312%_
                               _%tl165122165314%_
                               _%e165127165317%_
                               _%hd165126165320%_
                               _%tl165125165322%_
                               _%e165130165325%_
                               _%hd165129165328%_
                               _%tl165128165330%_
                               _%e165133165333%_
                               _%hd165132165336%_
                               _%tl165131165338%_
                               _%e165136165341%_
                               _%hd165135165344%_
                               _%tl165134165346%_)
                        (let ((_%L165349%_ _%hd165135165344%_)
                              (_%L165350%_ _%hd165126165320%_))
                          (if (and (let ((__tmp171243
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165349%_
                                      __tmp171243))
                                   (let ((__tmp171244
                                          (let ((__tmp171245
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165350%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171245))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171244
                                      'gxc#!accessor::t)))
                              (_%__kont170595170596%_ _%L165349%_ _%L165350%_)
                              (_%__kont170599170600%_)))))
                     (_%__match171016171017%_
                      (lambda (_%e165118165293%_
                               _%hd165117165296%_
                               _%tl165116165298%_
                               _%e165121165301%_
                               _%hd165120165304%_
                               _%tl165119165306%_
                               _%e165124165309%_
                               _%hd165123165312%_
                               _%tl165122165314%_
                               _%e165127165317%_
                               _%hd165126165320%_
                               _%tl165125165322%_
                               _%e165130165325%_
                               _%hd165129165328%_
                               _%tl165128165330%_
                               _%e165133165333%_
                               _%hd165132165336%_
                               _%tl165131165338%_
                               _%e165136165341%_
                               _%hd165135165344%_
                               _%tl165134165346%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165128165330%_))
                            (_%__match171018171019%_
                             _%e165118165293%_
                             _%hd165117165296%_
                             _%tl165116165298%_
                             _%e165121165301%_
                             _%hd165120165304%_
                             _%tl165119165306%_
                             _%e165124165309%_
                             _%hd165123165312%_
                             _%tl165122165314%_
                             _%e165127165317%_
                             _%hd165126165320%_
                             _%tl165125165322%_
                             _%e165130165325%_
                             _%hd165129165328%_
                             _%tl165128165330%_
                             _%e165133165333%_
                             _%hd165132165336%_
                             _%tl165131165338%_
                             _%e165136165341%_
                             _%hd165135165344%_
                             _%tl165134165346%_)
                            (_%__match171072171073%_
                             _%e165118165293%_
                             _%hd165117165296%_
                             _%tl165116165298%_
                             _%e165121165301%_
                             _%hd165120165304%_
                             _%tl165119165306%_
                             _%e165124165309%_
                             _%hd165123165312%_
                             _%tl165122165314%_
                             _%e165127165317%_
                             _%hd165126165320%_
                             _%tl165125165322%_
                             _%e165130165325%_
                             _%hd165129165328%_
                             _%tl165128165330%_
                             _%e165133165333%_
                             _%hd165132165336%_
                             _%tl165131165338%_
                             _%e165136165341%_
                             _%hd165135165344%_
                             _%tl165134165346%_))))
                     (_%__match170962170963%_
                      (lambda (_%e165083165389%_
                               _%hd165082165392%_
                               _%tl165081165394%_
                               _%e165086165397%_
                               _%hd165085165400%_
                               _%tl165084165402%_
                               _%e165089165405%_
                               _%hd165088165408%_
                               _%tl165087165410%_
                               _%e165092165413%_
                               _%hd165091165416%_
                               _%tl165090165418%_
                               _%e165095165421%_
                               _%hd165094165424%_
                               _%tl165093165426%_
                               _%e165098165429%_
                               _%hd165097165432%_
                               _%tl165096165434%_
                               _%e165101165437%_
                               _%hd165100165440%_
                               _%tl165099165442%_
                               _%e165104165445%_
                               _%hd165103165448%_
                               _%tl165102165450%_
                               _%e165107165453%_
                               _%hd165106165456%_
                               _%tl165105165458%_
                               _%e165110165461%_
                               _%hd165109165464%_
                               _%tl165108165466%_
                               _%e165113165469%_
                               _%hd165112165472%_
                               _%tl165111165474%_)
                        (let ((_%L165477%_ _%hd165112165472%_)
                              (_%L165478%_ _%hd165109165464%_)
                              (_%L165479%_ _%hd165100165440%_)
                              (_%L165480%_ _%hd165091165416%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165480%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165480%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171246
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165479%_
                                      __tmp171246)))
                              (_%__kont170593170594%_
                               _%L165477%_
                               _%L165478%_
                               _%L165479%_
                               _%L165480%_)
                              (_%__kont170599170600%_)))))
                     (_%__match170954170955%_
                      (lambda (_%e165083165389%_
                               _%hd165082165392%_
                               _%tl165081165394%_
                               _%e165086165397%_
                               _%hd165085165400%_
                               _%tl165084165402%_
                               _%e165089165405%_
                               _%hd165088165408%_
                               _%tl165087165410%_
                               _%e165092165413%_
                               _%hd165091165416%_
                               _%tl165090165418%_
                               _%e165095165421%_
                               _%hd165094165424%_
                               _%tl165093165426%_
                               _%e165098165429%_
                               _%hd165097165432%_
                               _%tl165096165434%_
                               _%e165101165437%_
                               _%hd165100165440%_
                               _%tl165099165442%_
                               _%e165104165445%_
                               _%hd165103165448%_
                               _%tl165102165450%_
                               _%e165107165453%_
                               _%hd165106165456%_
                               _%tl165105165458%_
                               _%e165110165461%_
                               _%hd165109165464%_
                               _%tl165108165466%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165102165450%_))
                            (let ((_%e165113165469%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165102165450%_))))
                              (let ((_%tl165111165474%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165113165469%_)))
                                    (_%hd165112165472%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165113165469%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165111165474%_))
                                    (_%__match170962170963%_
                                     _%e165083165389%_
                                     _%hd165082165392%_
                                     _%tl165081165394%_
                                     _%e165086165397%_
                                     _%hd165085165400%_
                                     _%tl165084165402%_
                                     _%e165089165405%_
                                     _%hd165088165408%_
                                     _%tl165087165410%_
                                     _%e165092165413%_
                                     _%hd165091165416%_
                                     _%tl165090165418%_
                                     _%e165095165421%_
                                     _%hd165094165424%_
                                     _%tl165093165426%_
                                     _%e165098165429%_
                                     _%hd165097165432%_
                                     _%tl165096165434%_
                                     _%e165101165437%_
                                     _%hd165100165440%_
                                     _%tl165099165442%_
                                     _%e165104165445%_
                                     _%hd165103165448%_
                                     _%tl165102165450%_
                                     _%e165107165453%_
                                     _%hd165106165456%_
                                     _%tl165105165458%_
                                     _%e165110165461%_
                                     _%hd165109165464%_
                                     _%tl165108165466%_
                                     _%e165113165469%_
                                     _%hd165112165472%_
                                     _%tl165111165474%_)
                                    (_%__kont170599170600%_))))
                            (_%__match171078171079%_
                             _%e165083165389%_
                             _%hd165082165392%_
                             _%tl165081165394%_
                             _%e165086165397%_
                             _%hd165085165400%_
                             _%tl165084165402%_
                             _%e165089165405%_
                             _%hd165088165408%_
                             _%tl165087165410%_
                             _%e165092165413%_
                             _%hd165091165416%_
                             _%tl165090165418%_
                             _%e165095165421%_
                             _%hd165094165424%_
                             _%tl165093165426%_
                             _%e165098165429%_
                             _%hd165097165432%_
                             _%tl165096165434%_
                             _%e165101165437%_
                             _%hd165100165440%_
                             _%tl165099165442%_
                             _%e165104165445%_
                             _%hd165103165448%_
                             _%tl165102165450%_))))
                     (_%__match170876170877%_
                      (lambda (_%e165049165523%_
                               _%hd165048165526%_
                               _%tl165047165528%_
                               _%e165052165531%_
                               _%hd165051165534%_
                               _%tl165050165536%_
                               _%e165055165539%_
                               _%hd165054165542%_
                               _%tl165053165544%_
                               _%e165058165547%_
                               _%hd165057165550%_
                               _%tl165056165552%_
                               _%e165061165555%_
                               _%hd165060165558%_
                               _%tl165059165560%_
                               _%e165064165563%_
                               _%hd165063165566%_
                               _%tl165062165568%_
                               _%e165067165571%_
                               _%hd165066165574%_
                               _%tl165065165576%_
                               _%e165070165579%_
                               _%hd165069165582%_
                               _%tl165068165584%_
                               _%e165073165587%_
                               _%hd165072165590%_
                               _%tl165071165592%_
                               _%e165076165595%_
                               _%hd165075165598%_
                               _%tl165074165600%_)
                        (let ((_%L165603%_ _%hd165075165598%_)
                              (_%L165604%_ _%hd165066165574%_)
                              (_%L165605%_ _%hd165057165550%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165605%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L165605%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171247
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self164935%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165604%_
                                      __tmp171247)))
                              (_%__kont170591170592%_
                               _%L165603%_
                               _%L165604%_
                               _%L165605%_)
                              (_%__match171080171081%_
                               _%e165049165523%_
                               _%hd165048165526%_
                               _%tl165047165528%_
                               _%e165052165531%_
                               _%hd165051165534%_
                               _%tl165050165536%_
                               _%e165055165539%_
                               _%hd165054165542%_
                               _%tl165053165544%_
                               _%e165058165547%_
                               _%hd165057165550%_
                               _%tl165056165552%_
                               _%e165061165555%_
                               _%hd165060165558%_
                               _%tl165059165560%_
                               _%e165064165563%_
                               _%hd165063165566%_
                               _%tl165062165568%_
                               _%e165067165571%_
                               _%hd165066165574%_
                               _%tl165065165576%_
                               _%e165070165579%_
                               _%hd165069165582%_
                               _%tl165068165584%_)))))
                     (_%__match170874170875%_
                      (lambda (_%e165049165523%_
                               _%hd165048165526%_
                               _%tl165047165528%_
                               _%e165052165531%_
                               _%hd165051165534%_
                               _%tl165050165536%_
                               _%e165055165539%_
                               _%hd165054165542%_
                               _%tl165053165544%_
                               _%e165058165547%_
                               _%hd165057165550%_
                               _%tl165056165552%_
                               _%e165061165555%_
                               _%hd165060165558%_
                               _%tl165059165560%_
                               _%e165064165563%_
                               _%hd165063165566%_
                               _%tl165062165568%_
                               _%e165067165571%_
                               _%hd165066165574%_
                               _%tl165065165576%_
                               _%e165070165579%_
                               _%hd165069165582%_
                               _%tl165068165584%_
                               _%e165073165587%_
                               _%hd165072165590%_
                               _%tl165071165592%_
                               _%e165076165595%_
                               _%hd165075165598%_
                               _%tl165074165600%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165068165584%_))
                            (_%__match170876170877%_
                             _%e165049165523%_
                             _%hd165048165526%_
                             _%tl165047165528%_
                             _%e165052165531%_
                             _%hd165051165534%_
                             _%tl165050165536%_
                             _%e165055165539%_
                             _%hd165054165542%_
                             _%tl165053165544%_
                             _%e165058165547%_
                             _%hd165057165550%_
                             _%tl165056165552%_
                             _%e165061165555%_
                             _%hd165060165558%_
                             _%tl165059165560%_
                             _%e165064165563%_
                             _%hd165063165566%_
                             _%tl165062165568%_
                             _%e165067165571%_
                             _%hd165066165574%_
                             _%tl165065165576%_
                             _%e165070165579%_
                             _%hd165069165582%_
                             _%tl165068165584%_
                             _%e165073165587%_
                             _%hd165072165590%_
                             _%tl165071165592%_
                             _%e165076165595%_
                             _%hd165075165598%_
                             _%tl165074165600%_)
                            (_%__match170954170955%_
                             _%e165049165523%_
                             _%hd165048165526%_
                             _%tl165047165528%_
                             _%e165052165531%_
                             _%hd165051165534%_
                             _%tl165050165536%_
                             _%e165055165539%_
                             _%hd165054165542%_
                             _%tl165053165544%_
                             _%e165058165547%_
                             _%hd165057165550%_
                             _%tl165056165552%_
                             _%e165061165555%_
                             _%hd165060165558%_
                             _%tl165059165560%_
                             _%e165064165563%_
                             _%hd165063165566%_
                             _%tl165062165568%_
                             _%e165067165571%_
                             _%hd165066165574%_
                             _%tl165065165576%_
                             _%e165070165579%_
                             _%hd165069165582%_
                             _%tl165068165584%_
                             _%e165073165587%_
                             _%hd165072165590%_
                             _%tl165071165592%_
                             _%e165076165595%_
                             _%hd165075165598%_
                             _%tl165074165600%_))))
                     (_%__match170864170865%_
                      (lambda (_%e165049165523%_
                               _%hd165048165526%_
                               _%tl165047165528%_
                               _%e165052165531%_
                               _%hd165051165534%_
                               _%tl165050165536%_
                               _%e165055165539%_
                               _%hd165054165542%_
                               _%tl165053165544%_
                               _%e165058165547%_
                               _%hd165057165550%_
                               _%tl165056165552%_
                               _%e165061165555%_
                               _%hd165060165558%_
                               _%tl165059165560%_
                               _%e165064165563%_
                               _%hd165063165566%_
                               _%tl165062165568%_
                               _%e165067165571%_
                               _%hd165066165574%_
                               _%tl165065165576%_
                               _%e165070165579%_
                               _%hd165069165582%_
                               _%tl165068165584%_
                               _%e165073165587%_
                               _%hd165072165590%_
                               _%tl165071165592%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165072165590%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165071165592%_))
                                (let ((_%e165076165595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165071165592%_))))
                                  (let ((_%tl165074165600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165076165595%_)))
                                        (_%hd165075165598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165076165595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165074165600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165068165584%_))
                                            (_%__match170876170877%_
                                             _%e165049165523%_
                                             _%hd165048165526%_
                                             _%tl165047165528%_
                                             _%e165052165531%_
                                             _%hd165051165534%_
                                             _%tl165050165536%_
                                             _%e165055165539%_
                                             _%hd165054165542%_
                                             _%tl165053165544%_
                                             _%e165058165547%_
                                             _%hd165057165550%_
                                             _%tl165056165552%_
                                             _%e165061165555%_
                                             _%hd165060165558%_
                                             _%tl165059165560%_
                                             _%e165064165563%_
                                             _%hd165063165566%_
                                             _%tl165062165568%_
                                             _%e165067165571%_
                                             _%hd165066165574%_
                                             _%tl165065165576%_
                                             _%e165070165579%_
                                             _%hd165069165582%_
                                             _%tl165068165584%_
                                             _%e165073165587%_
                                             _%hd165072165590%_
                                             _%tl165071165592%_
                                             _%e165076165595%_
                                             _%hd165075165598%_
                                             _%tl165074165600%_)
                                            (_%__match170954170955%_
                                             _%e165049165523%_
                                             _%hd165048165526%_
                                             _%tl165047165528%_
                                             _%e165052165531%_
                                             _%hd165051165534%_
                                             _%tl165050165536%_
                                             _%e165055165539%_
                                             _%hd165054165542%_
                                             _%tl165053165544%_
                                             _%e165058165547%_
                                             _%hd165057165550%_
                                             _%tl165056165552%_
                                             _%e165061165555%_
                                             _%hd165060165558%_
                                             _%tl165059165560%_
                                             _%e165064165563%_
                                             _%hd165063165566%_
                                             _%tl165062165568%_
                                             _%e165067165571%_
                                             _%hd165066165574%_
                                             _%tl165065165576%_
                                             _%e165070165579%_
                                             _%hd165069165582%_
                                             _%tl165068165584%_
                                             _%e165073165587%_
                                             _%hd165072165590%_
                                             _%tl165071165592%_
                                             _%e165076165595%_
                                             _%hd165075165598%_
                                             _%tl165074165600%_))
                                        (_%__match171078171079%_
                                         _%e165049165523%_
                                         _%hd165048165526%_
                                         _%tl165047165528%_
                                         _%e165052165531%_
                                         _%hd165051165534%_
                                         _%tl165050165536%_
                                         _%e165055165539%_
                                         _%hd165054165542%_
                                         _%tl165053165544%_
                                         _%e165058165547%_
                                         _%hd165057165550%_
                                         _%tl165056165552%_
                                         _%e165061165555%_
                                         _%hd165060165558%_
                                         _%tl165059165560%_
                                         _%e165064165563%_
                                         _%hd165063165566%_
                                         _%tl165062165568%_
                                         _%e165067165571%_
                                         _%hd165066165574%_
                                         _%tl165065165576%_
                                         _%e165070165579%_
                                         _%hd165069165582%_
                                         _%tl165068165584%_))))
                                (_%__match171078171079%_
                                 _%e165049165523%_
                                 _%hd165048165526%_
                                 _%tl165047165528%_
                                 _%e165052165531%_
                                 _%hd165051165534%_
                                 _%tl165050165536%_
                                 _%e165055165539%_
                                 _%hd165054165542%_
                                 _%tl165053165544%_
                                 _%e165058165547%_
                                 _%hd165057165550%_
                                 _%tl165056165552%_
                                 _%e165061165555%_
                                 _%hd165060165558%_
                                 _%tl165059165560%_
                                 _%e165064165563%_
                                 _%hd165063165566%_
                                 _%tl165062165568%_
                                 _%e165067165571%_
                                 _%hd165066165574%_
                                 _%tl165065165576%_
                                 _%e165070165579%_
                                 _%hd165069165582%_
                                 _%tl165068165584%_))
                            (_%__match171078171079%_
                             _%e165049165523%_
                             _%hd165048165526%_
                             _%tl165047165528%_
                             _%e165052165531%_
                             _%hd165051165534%_
                             _%tl165050165536%_
                             _%e165055165539%_
                             _%hd165054165542%_
                             _%tl165053165544%_
                             _%e165058165547%_
                             _%hd165057165550%_
                             _%tl165056165552%_
                             _%e165061165555%_
                             _%hd165060165558%_
                             _%tl165059165560%_
                             _%e165064165563%_
                             _%hd165063165566%_
                             _%tl165062165568%_
                             _%e165067165571%_
                             _%hd165066165574%_
                             _%tl165065165576%_
                             _%e165070165579%_
                             _%hd165069165582%_
                             _%tl165068165584%_))))
                     (_%__match170796170797%_
                      (lambda (_%e164998165644%_
                               _%hd164997165647%_
                               _%tl164996165649%_
                               _%e165001165652%_
                               _%hd165000165655%_
                               _%tl164999165657%_
                               _%e165004165660%_
                               _%hd165003165663%_
                               _%tl165002165665%_
                               _%e165007165668%_
                               _%hd165006165671%_
                               _%tl165005165673%_
                               _%e165010165676%_
                               _%hd165009165679%_
                               _%tl165008165681%_
                               _%e165013165684%_
                               _%hd165012165687%_
                               _%tl165011165689%_
                               _%e165016165692%_
                               _%hd165015165695%_
                               _%tl165014165697%_
                               _%e165019165700%_
                               _%hd165018165703%_
                               _%tl165017165705%_
                               _%e165022165708%_
                               _%hd165021165711%_
                               _%tl165020165713%_
                               _%e165025165716%_
                               _%hd165024165719%_
                               _%tl165023165721%_
                               _%e165028165724%_
                               _%hd165027165727%_
                               _%tl165026165729%_
                               _%e165031165732%_
                               _%hd165030165735%_
                               _%tl165029165737%_
                               _%e165034165740%_
                               _%hd165033165743%_
                               _%tl165032165745%_
                               _%__splice170589170590%_
                               _%target165035165748%_
                               _%tl165037165750%_)
                        (letrec ((_%loop165038165753%_
                                  (lambda (_%hd165036165756%_
                                           _%args165042165758%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165036165756%_))
                                        (let ((_%e165039165761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165036165756%_))))
                                          (let ((_%lp-tl165041165766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165039165761%_)))
                                                (_%lp-hd165040165764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165039165761%_))))
                                            (let ((__tmp171248
                                                   (cons _%lp-hd165040165764%_
                                                         _%args165042165758%_)))
                                              (declare (not safe))
                                              (_%loop165038165753%_
                                               _%lp-tl165041165766%_
                                               __tmp171248))))
                                        (let ((_%args165043165769%_
                                               (reverse _%args165042165758%_)))
                                          (let ((_%L165772%_
                                                 _%args165043165769%_)
                                                (_%L165773%_
                                                 _%hd165033165743%_)
                                                (_%L165774%_
                                                 _%hd165024165719%_)
                                                (_%L165775%_
                                                 _%hd165015165695%_)
                                                (_%L165776%_
                                                 _%hd165006165671%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165776%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165775%_
                                                        'call-method))
                                                     (let ((__tmp171249
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164935%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165774%_
                                                        __tmp171249)))
                                                (_%__kont170587170588%_
                                                 _%L165772%_
                                                 _%L165773%_
                                                 _%L165774%_
                                                 _%L165775%_
                                                 _%L165776%_)
                                                (_%__kont170599170600%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop165038165753%_
                             _%target165035165748%_
                             '())))))
                     (_%__match170754170755%_
                      (lambda (_%e164998165644%_
                               _%hd164997165647%_
                               _%tl164996165649%_
                               _%e165001165652%_
                               _%hd165000165655%_
                               _%tl164999165657%_
                               _%e165004165660%_
                               _%hd165003165663%_
                               _%tl165002165665%_
                               _%e165007165668%_
                               _%hd165006165671%_
                               _%tl165005165673%_
                               _%e165010165676%_
                               _%hd165009165679%_
                               _%tl165008165681%_
                               _%e165013165684%_
                               _%hd165012165687%_
                               _%tl165011165689%_
                               _%e165016165692%_
                               _%hd165015165695%_
                               _%tl165014165697%_
                               _%e165019165700%_
                               _%hd165018165703%_
                               _%tl165017165705%_
                               _%e165022165708%_
                               _%hd165021165711%_
                               _%tl165020165713%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165021165711%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165020165713%_))
                                (let ((_%e165025165716%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165020165713%_))))
                                  (let ((_%tl165023165721%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165025165716%_)))
                                        (_%hd165024165719%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165025165716%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165023165721%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165017165705%_))
                                            (let ((_%e165028165724%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165017165705%_))))
                                              (let ((_%tl165026165729%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165028165724%_)))
                                                    (_%hd165027165727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165028165724%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165027165727%_))
                                                    (let ((_%e165031165732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165027165727%_))))
                                                      (let ((_%tl165029165737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165031165732%_)))
                    (_%hd165030165735%_
                     (let () (declare (not safe)) (##car _%e165031165732%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165030165735%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165030165735%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165029165737%_))
                            (let ((_%e165034165740%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165029165737%_))))
                              (let ((_%tl165032165745%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165034165740%_)))
                                    (_%hd165033165743%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165034165740%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165032165745%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165026165729%_))
                                        (let ((_%__splice170589170590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165026165729%_
                                                  '0))))
                                          (let ((_%tl165037165750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170589170590%_
                                                    '1)))
                                                (_%target165035165748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice170589170590%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165037165750%_))
                                                (_%__match170796170797%_
                                                 _%e164998165644%_
                                                 _%hd164997165647%_
                                                 _%tl164996165649%_
                                                 _%e165001165652%_
                                                 _%hd165000165655%_
                                                 _%tl164999165657%_
                                                 _%e165004165660%_
                                                 _%hd165003165663%_
                                                 _%tl165002165665%_
                                                 _%e165007165668%_
                                                 _%hd165006165671%_
                                                 _%tl165005165673%_
                                                 _%e165010165676%_
                                                 _%hd165009165679%_
                                                 _%tl165008165681%_
                                                 _%e165013165684%_
                                                 _%hd165012165687%_
                                                 _%tl165011165689%_
                                                 _%e165016165692%_
                                                 _%hd165015165695%_
                                                 _%tl165014165697%_
                                                 _%e165019165700%_
                                                 _%hd165018165703%_
                                                 _%tl165017165705%_
                                                 _%e165022165708%_
                                                 _%hd165021165711%_
                                                 _%tl165020165713%_
                                                 _%e165025165716%_
                                                 _%hd165024165719%_
                                                 _%tl165023165721%_
                                                 _%e165028165724%_
                                                 _%hd165027165727%_
                                                 _%tl165026165729%_
                                                 _%e165031165732%_
                                                 _%hd165030165735%_
                                                 _%tl165029165737%_
                                                 _%e165034165740%_
                                                 _%hd165033165743%_
                                                 _%tl165032165745%_
                                                 _%__splice170589170590%_
                                                 _%target165035165748%_
                                                 _%tl165037165750%_)
                                                (_%__kont170599170600%_))))
                                        (_%__kont170599170600%_))
                                    (_%__kont170599170600%_))))
                            (_%__kont170599170600%_))
                        (_%__kont170599170600%_))
                    (_%__kont170599170600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170599170600%_))))
                                            (_%__match171078171079%_
                                             _%e164998165644%_
                                             _%hd164997165647%_
                                             _%tl164996165649%_
                                             _%e165001165652%_
                                             _%hd165000165655%_
                                             _%tl164999165657%_
                                             _%e165004165660%_
                                             _%hd165003165663%_
                                             _%tl165002165665%_
                                             _%e165007165668%_
                                             _%hd165006165671%_
                                             _%tl165005165673%_
                                             _%e165010165676%_
                                             _%hd165009165679%_
                                             _%tl165008165681%_
                                             _%e165013165684%_
                                             _%hd165012165687%_
                                             _%tl165011165689%_
                                             _%e165016165692%_
                                             _%hd165015165695%_
                                             _%tl165014165697%_
                                             _%e165019165700%_
                                             _%hd165018165703%_
                                             _%tl165017165705%_))
                                        (_%__match171078171079%_
                                         _%e164998165644%_
                                         _%hd164997165647%_
                                         _%tl164996165649%_
                                         _%e165001165652%_
                                         _%hd165000165655%_
                                         _%tl164999165657%_
                                         _%e165004165660%_
                                         _%hd165003165663%_
                                         _%tl165002165665%_
                                         _%e165007165668%_
                                         _%hd165006165671%_
                                         _%tl165005165673%_
                                         _%e165010165676%_
                                         _%hd165009165679%_
                                         _%tl165008165681%_
                                         _%e165013165684%_
                                         _%hd165012165687%_
                                         _%tl165011165689%_
                                         _%e165016165692%_
                                         _%hd165015165695%_
                                         _%tl165014165697%_
                                         _%e165019165700%_
                                         _%hd165018165703%_
                                         _%tl165017165705%_))))
                                (_%__match171078171079%_
                                 _%e164998165644%_
                                 _%hd164997165647%_
                                 _%tl164996165649%_
                                 _%e165001165652%_
                                 _%hd165000165655%_
                                 _%tl164999165657%_
                                 _%e165004165660%_
                                 _%hd165003165663%_
                                 _%tl165002165665%_
                                 _%e165007165668%_
                                 _%hd165006165671%_
                                 _%tl165005165673%_
                                 _%e165010165676%_
                                 _%hd165009165679%_
                                 _%tl165008165681%_
                                 _%e165013165684%_
                                 _%hd165012165687%_
                                 _%tl165011165689%_
                                 _%e165016165692%_
                                 _%hd165015165695%_
                                 _%tl165014165697%_
                                 _%e165019165700%_
                                 _%hd165018165703%_
                                 _%tl165017165705%_))
                            (_%__match170864170865%_
                             _%e164998165644%_
                             _%hd164997165647%_
                             _%tl164996165649%_
                             _%e165001165652%_
                             _%hd165000165655%_
                             _%tl164999165657%_
                             _%e165004165660%_
                             _%hd165003165663%_
                             _%tl165002165665%_
                             _%e165007165668%_
                             _%hd165006165671%_
                             _%tl165005165673%_
                             _%e165010165676%_
                             _%hd165009165679%_
                             _%tl165008165681%_
                             _%e165013165684%_
                             _%hd165012165687%_
                             _%tl165011165689%_
                             _%e165016165692%_
                             _%hd165015165695%_
                             _%tl165014165697%_
                             _%e165019165700%_
                             _%hd165018165703%_
                             _%tl165017165705%_
                             _%e165022165708%_
                             _%hd165021165711%_
                             _%tl165020165713%_))))
                     (_%__match170686170687%_
                      (lambda (_%e164954165836%_
                               _%hd164953165839%_
                               _%tl164952165841%_
                               _%e164957165844%_
                               _%hd164956165847%_
                               _%tl164955165849%_
                               _%e164960165852%_
                               _%hd164959165855%_
                               _%tl164958165857%_
                               _%e164963165860%_
                               _%hd164962165863%_
                               _%tl164961165865%_
                               _%e164966165868%_
                               _%hd164965165871%_
                               _%tl164964165873%_
                               _%e164969165876%_
                               _%hd164968165879%_
                               _%tl164967165881%_
                               _%e164972165884%_
                               _%hd164971165887%_
                               _%tl164970165889%_
                               _%e164975165892%_
                               _%hd164974165895%_
                               _%tl164973165897%_
                               _%e164978165900%_
                               _%hd164977165903%_
                               _%tl164976165905%_
                               _%e164981165908%_
                               _%hd164980165911%_
                               _%tl164979165913%_
                               _%__splice170585170586%_
                               _%target164982165916%_
                               _%tl164984165918%_)
                        (letrec ((_%loop164985165921%_
                                  (lambda (_%hd164983165924%_
                                           _%args164989165926%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd164983165924%_))
                                        (let ((_%e164986165929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd164983165924%_))))
                                          (let ((_%lp-tl164988165934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e164986165929%_)))
                                                (_%lp-hd164987165932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e164986165929%_))))
                                            (let ((__tmp171250
                                                   (cons _%lp-hd164987165932%_
                                                         _%args164989165926%_)))
                                              (declare (not safe))
                                              (_%loop164985165921%_
                                               _%lp-tl164988165934%_
                                               __tmp171250))))
                                        (let ((_%args164990165937%_
                                               (reverse _%args164989165926%_)))
                                          (let ((_%L165940%_
                                                 _%args164990165937%_)
                                                (_%L165941%_
                                                 _%hd164980165911%_)
                                                (_%L165942%_
                                                 _%hd164971165887%_)
                                                (_%L165943%_
                                                 _%hd164962165863%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L165943%_
                                                        'call-method))
                                                     (let ((__tmp171251
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self164935%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L165942%_
                                                        __tmp171251)))
                                                (_%__kont170583170584%_
                                                 _%L165940%_
                                                 _%L165941%_
                                                 _%L165942%_
                                                 _%L165943%_)
                                                (_%__match170874170875%_
                                                 _%e164954165836%_
                                                 _%hd164953165839%_
                                                 _%tl164952165841%_
                                                 _%e164957165844%_
                                                 _%hd164956165847%_
                                                 _%tl164955165849%_
                                                 _%e164960165852%_
                                                 _%hd164959165855%_
                                                 _%tl164958165857%_
                                                 _%e164963165860%_
                                                 _%hd164962165863%_
                                                 _%tl164961165865%_
                                                 _%e164966165868%_
                                                 _%hd164965165871%_
                                                 _%tl164964165873%_
                                                 _%e164969165876%_
                                                 _%hd164968165879%_
                                                 _%tl164967165881%_
                                                 _%e164972165884%_
                                                 _%hd164971165887%_
                                                 _%tl164970165889%_
                                                 _%e164975165892%_
                                                 _%hd164974165895%_
                                                 _%tl164973165897%_
                                                 _%e164978165900%_
                                                 _%hd164977165903%_
                                                 _%tl164976165905%_
                                                 _%e164981165908%_
                                                 _%hd164980165911%_
                                                 _%tl164979165913%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop164985165921%_
                             _%target164982165916%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170581170582%_))
                    (let ((_%e164954165836%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170581170582%_))))
                      (let ((_%tl164952165841%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164954165836%_)))
                            (_%hd164953165839%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164954165836%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl164952165841%_))
                            (let ((_%e164957165844%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl164952165841%_))))
                              (let ((_%tl164955165849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164957165844%_)))
                                    (_%hd164956165847%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164957165844%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd164956165847%_))
                                    (let ((_%e164960165852%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd164956165847%_))))
                                      (let ((_%tl164958165857%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e164960165852%_)))
                                            (_%hd164959165855%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e164960165852%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd164959165855%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd164959165855%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl164958165857%_))
                                                    (let ((_%e164963165860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl164958165857%_))))
                                                      (let ((_%tl164961165865%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e164963165860%_)))
                    (_%hd164962165863%_
                     (let () (declare (not safe)) (##car _%e164963165860%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl164961165865%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl164955165849%_))
                        (let ((_%e164966165868%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl164955165849%_))))
                          (let ((_%tl164964165873%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164966165868%_)))
                                (_%hd164965165871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164966165868%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd164965165871%_))
                                (let ((_%e164969165876%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd164965165871%_))))
                                  (let ((_%tl164967165881%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164969165876%_)))
                                        (_%hd164968165879%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164969165876%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd164968165879%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd164968165879%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl164967165881%_))
                                                (let ((_%e164972165884%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl164967165881%_))))
                                                  (let ((_%tl164970165889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e164972165884%_)))
                                                        (_%hd164971165887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e164972165884%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl164970165889%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl164964165873%_))
                                                            (let ((_%e164975165892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl164964165873%_))))
                      (let ((_%tl164973165897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e164975165892%_)))
                            (_%hd164974165895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e164975165892%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd164974165895%_))
                            (let ((_%e164978165900%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd164974165895%_))))
                              (let ((_%tl164976165905%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e164978165900%_)))
                                    (_%hd164977165903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e164978165900%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd164977165903%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd164977165903%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl164976165905%_))
                                            (let ((_%e164981165908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl164976165905%_))))
                                              (let ((_%tl164979165913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e164981165908%_)))
                                                    (_%hd164980165911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e164981165908%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl164979165913%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl164973165897%_))
                                                        (let ((_%__splice170585170586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl164973165897%_ '0))))
                  (let ((_%tl164984165918%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170585170586%_ '1)))
                        (_%target164982165916%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice170585170586%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl164984165918%_))
                        (_%__match170686170687%_
                         _%e164954165836%_
                         _%hd164953165839%_
                         _%tl164952165841%_
                         _%e164957165844%_
                         _%hd164956165847%_
                         _%tl164955165849%_
                         _%e164960165852%_
                         _%hd164959165855%_
                         _%tl164958165857%_
                         _%e164963165860%_
                         _%hd164962165863%_
                         _%tl164961165865%_
                         _%e164966165868%_
                         _%hd164965165871%_
                         _%tl164964165873%_
                         _%e164969165876%_
                         _%hd164968165879%_
                         _%tl164967165881%_
                         _%e164972165884%_
                         _%hd164971165887%_
                         _%tl164970165889%_
                         _%e164975165892%_
                         _%hd164974165895%_
                         _%tl164973165897%_
                         _%e164978165900%_
                         _%hd164977165903%_
                         _%tl164976165905%_
                         _%e164981165908%_
                         _%hd164980165911%_
                         _%tl164979165913%_
                         _%__splice170585170586%_
                         _%target164982165916%_
                         _%tl164984165918%_)
                        (_%__match170874170875%_
                         _%e164954165836%_
                         _%hd164953165839%_
                         _%tl164952165841%_
                         _%e164957165844%_
                         _%hd164956165847%_
                         _%tl164955165849%_
                         _%e164960165852%_
                         _%hd164959165855%_
                         _%tl164958165857%_
                         _%e164963165860%_
                         _%hd164962165863%_
                         _%tl164961165865%_
                         _%e164966165868%_
                         _%hd164965165871%_
                         _%tl164964165873%_
                         _%e164969165876%_
                         _%hd164968165879%_
                         _%tl164967165881%_
                         _%e164972165884%_
                         _%hd164971165887%_
                         _%tl164970165889%_
                         _%e164975165892%_
                         _%hd164974165895%_
                         _%tl164973165897%_
                         _%e164978165900%_
                         _%hd164977165903%_
                         _%tl164976165905%_
                         _%e164981165908%_
                         _%hd164980165911%_
                         _%tl164979165913%_))))
                (_%__match170874170875%_
                 _%e164954165836%_
                 _%hd164953165839%_
                 _%tl164952165841%_
                 _%e164957165844%_
                 _%hd164956165847%_
                 _%tl164955165849%_
                 _%e164960165852%_
                 _%hd164959165855%_
                 _%tl164958165857%_
                 _%e164963165860%_
                 _%hd164962165863%_
                 _%tl164961165865%_
                 _%e164966165868%_
                 _%hd164965165871%_
                 _%tl164964165873%_
                 _%e164969165876%_
                 _%hd164968165879%_
                 _%tl164967165881%_
                 _%e164972165884%_
                 _%hd164971165887%_
                 _%tl164970165889%_
                 _%e164975165892%_
                 _%hd164974165895%_
                 _%tl164973165897%_
                 _%e164978165900%_
                 _%hd164977165903%_
                 _%tl164976165905%_
                 _%e164981165908%_
                 _%hd164980165911%_
                 _%tl164979165913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171078171079%_
                                                     _%e164954165836%_
                                                     _%hd164953165839%_
                                                     _%tl164952165841%_
                                                     _%e164957165844%_
                                                     _%hd164956165847%_
                                                     _%tl164955165849%_
                                                     _%e164960165852%_
                                                     _%hd164959165855%_
                                                     _%tl164958165857%_
                                                     _%e164963165860%_
                                                     _%hd164962165863%_
                                                     _%tl164961165865%_
                                                     _%e164966165868%_
                                                     _%hd164965165871%_
                                                     _%tl164964165873%_
                                                     _%e164969165876%_
                                                     _%hd164968165879%_
                                                     _%tl164967165881%_
                                                     _%e164972165884%_
                                                     _%hd164971165887%_
                                                     _%tl164970165889%_
                                                     _%e164975165892%_
                                                     _%hd164974165895%_
                                                     _%tl164973165897%_))))
                                            (_%__match171078171079%_
                                             _%e164954165836%_
                                             _%hd164953165839%_
                                             _%tl164952165841%_
                                             _%e164957165844%_
                                             _%hd164956165847%_
                                             _%tl164955165849%_
                                             _%e164960165852%_
                                             _%hd164959165855%_
                                             _%tl164958165857%_
                                             _%e164963165860%_
                                             _%hd164962165863%_
                                             _%tl164961165865%_
                                             _%e164966165868%_
                                             _%hd164965165871%_
                                             _%tl164964165873%_
                                             _%e164969165876%_
                                             _%hd164968165879%_
                                             _%tl164967165881%_
                                             _%e164972165884%_
                                             _%hd164971165887%_
                                             _%tl164970165889%_
                                             _%e164975165892%_
                                             _%hd164974165895%_
                                             _%tl164973165897%_))
                                        (_%__match170754170755%_
                                         _%e164954165836%_
                                         _%hd164953165839%_
                                         _%tl164952165841%_
                                         _%e164957165844%_
                                         _%hd164956165847%_
                                         _%tl164955165849%_
                                         _%e164960165852%_
                                         _%hd164959165855%_
                                         _%tl164958165857%_
                                         _%e164963165860%_
                                         _%hd164962165863%_
                                         _%tl164961165865%_
                                         _%e164966165868%_
                                         _%hd164965165871%_
                                         _%tl164964165873%_
                                         _%e164969165876%_
                                         _%hd164968165879%_
                                         _%tl164967165881%_
                                         _%e164972165884%_
                                         _%hd164971165887%_
                                         _%tl164970165889%_
                                         _%e164975165892%_
                                         _%hd164974165895%_
                                         _%tl164973165897%_
                                         _%e164978165900%_
                                         _%hd164977165903%_
                                         _%tl164976165905%_))
                                    (_%__match171078171079%_
                                     _%e164954165836%_
                                     _%hd164953165839%_
                                     _%tl164952165841%_
                                     _%e164957165844%_
                                     _%hd164956165847%_
                                     _%tl164955165849%_
                                     _%e164960165852%_
                                     _%hd164959165855%_
                                     _%tl164958165857%_
                                     _%e164963165860%_
                                     _%hd164962165863%_
                                     _%tl164961165865%_
                                     _%e164966165868%_
                                     _%hd164965165871%_
                                     _%tl164964165873%_
                                     _%e164969165876%_
                                     _%hd164968165879%_
                                     _%tl164967165881%_
                                     _%e164972165884%_
                                     _%hd164971165887%_
                                     _%tl164970165889%_
                                     _%e164975165892%_
                                     _%hd164974165895%_
                                     _%tl164973165897%_))))
                            (_%__match171078171079%_
                             _%e164954165836%_
                             _%hd164953165839%_
                             _%tl164952165841%_
                             _%e164957165844%_
                             _%hd164956165847%_
                             _%tl164955165849%_
                             _%e164960165852%_
                             _%hd164959165855%_
                             _%tl164958165857%_
                             _%e164963165860%_
                             _%hd164962165863%_
                             _%tl164961165865%_
                             _%e164966165868%_
                             _%hd164965165871%_
                             _%tl164964165873%_
                             _%e164969165876%_
                             _%hd164968165879%_
                             _%tl164967165881%_
                             _%e164972165884%_
                             _%hd164971165887%_
                             _%tl164970165889%_
                             _%e164975165892%_
                             _%hd164974165895%_
                             _%tl164973165897%_))))
                    (_%__match171016171017%_
                     _%e164954165836%_
                     _%hd164953165839%_
                     _%tl164952165841%_
                     _%e164957165844%_
                     _%hd164956165847%_
                     _%tl164955165849%_
                     _%e164960165852%_
                     _%hd164959165855%_
                     _%tl164958165857%_
                     _%e164963165860%_
                     _%hd164962165863%_
                     _%tl164961165865%_
                     _%e164966165868%_
                     _%hd164965165871%_
                     _%tl164964165873%_
                     _%e164969165876%_
                     _%hd164968165879%_
                     _%tl164967165881%_
                     _%e164972165884%_
                     _%hd164971165887%_
                     _%tl164970165889%_))
                (_%__kont170599170600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont170599170600%_))
                                            (_%__kont170599170600%_))
                                        (_%__kont170599170600%_))))
                                (_%__kont170599170600%_))))
                        (_%__kont170599170600%_))
                    (_%__kont170599170600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont170599170600%_))
                                                (_%__kont170599170600%_))
                                            (_%__kont170599170600%_))))
                                    (_%__kont170599170600%_))))
                            (_%__kont170599170600%_))))
                    (_%__kont170599170600%_))))))))))
