(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712696216)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp172794 (list gxc#::identity::t))
            (__tmp172793 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp172794
         '()
         __tmp172793
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args171659%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args171659%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp172795
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
        (__make-promise __tmp172795)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx171651%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self171654%_
                (let ((__obj172788
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj172788))
               (__tmp172796
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171654%_ _%stx171651%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp172796
           gxc#current-compile-method
           _%self171654%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp172798 (list gxc#::void::t))
            (__tmp172797 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp172798
         '(receiver methods slots)
         __tmp172797
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args171648%_
        (apply make-instance gxc#::collect-object-refs::t _%$args171648%_)))
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
      (let ((__tmp172799
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
        (__make-promise __tmp172799)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords171614%_
               _%receiver171609171615%_
               _%methods171610171617%_
               _%slots171611171619%_
               _%stx171621%_)
        (let* ((_%receiver171624%_
                (if (eq? _%receiver171609171615%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171609171615%_))
               (_%methods171626%_
                (if (eq? _%methods171610171617%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171610171617%_))
               (_%slots171628%_
                (if (eq? _%slots171611171619%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171611171619%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self171630%_
                  (let ((__obj172790
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
                       __obj172790
                       _%receiver171624%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172790
                       _%methods171626%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172790
                       _%slots171628%_
                       '3
                       '#f
                       '#f))
                    __obj172790))
                 (__tmp172800
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171630%_ _%stx171621%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172800
             gxc#current-compile-method
             _%self171630%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords171637%_ . _%args171638%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords171637%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171637%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171637%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171637%_
                  'slots:
                  absent-value))
               _%args171638%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args171612171644%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args171612171644%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp172802 (list gxc#::basic-xform-expression::t))
            (__tmp172801 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp172802
         '(receiver klass methods slots)
         __tmp172801
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args171605%_
        (apply make-instance gxc#::subst-object-refs::t _%$args171605%_)))
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
      (let ((__tmp172803
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
        (__make-promise __tmp172803)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords171567%_
               _%receiver171561171568%_
               _%klass171562171570%_
               _%methods171563171572%_
               _%slots171564171574%_
               _%stx171576%_)
        (let* ((_%receiver171579%_
                (if (eq? _%receiver171561171568%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver171561171568%_))
               (_%klass171581%_
                (if (eq? _%klass171562171570%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass171562171570%_))
               (_%methods171583%_
                (if (eq? _%methods171563171572%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods171563171572%_))
               (_%slots171585%_
                (if (eq? _%slots171564171574%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots171564171574%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self171587%_
                  (let ((__obj172792
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
                       __obj172792
                       _%receiver171579%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172792
                       _%klass171581%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172792
                       _%methods171583%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172792
                       _%slots171585%_
                       '4
                       '#f
                       '#f))
                    __obj172792))
                 (__tmp172804
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171587%_ _%stx171576%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp172804
             gxc#current-compile-method
             _%self171587%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords171594%_ . _%args171595%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords171594%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171594%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171594%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171594%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171594%_
                  'slots:
                  absent-value))
               _%args171595%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args171565171601%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args171565171601%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self168742%_ _%stx168743%_)
        (letrec ((_%generate-method-bind168745%_
                  (lambda (_%$klass171553%_
                           _%$method-table171554%_
                           _%id171555%_
                           _%$id171556%_)
                    (let ((_%$tmp171558%_
                           (let ((__tmp172805
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172805))))
                      (cons (cons _%$id171556%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp171558%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table171554%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id171555%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp171558%_ '()))
                    (cons (cons '%#ref (cons _%$tmp171558%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id171555%_
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
                 (_%generate-slot-bind168746%_
                  (lambda (_%$klass171547%_ _%id171548%_ _%$id171549%_)
                    (let ((_%$tmp171551%_
                           (let ((__tmp172806
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp172806))))
                      (cons (cons _%$id171549%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp171551%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass171547%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id171548%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp171551%_ '()))
                        (cons (cons '%#ref (cons _%$tmp171551%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id171548%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl168747%_
                  (lambda (_%$klass171541%_
                           _%$method-table171542%_
                           _%methods-bind171543%_
                           _%slots-bind171544%_
                           _%specializer-impl171545%_)
                    (let ((__tmp172807
                           (cons '%#lambda
                                 (cons (cons _%$klass171541%_
                                             (cons _%$method-table171542%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind171544%_
                                                            _%methods-bind171543%_))
                                                         (cons _%specializer-impl171545%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172807 _%stx168743%_))))
                 (_%generate-specializer-def168748%_
                  (lambda (_%id171537%_
                           _%specializer-id171538%_
                           _%specializer-impl171539%_)
                    (let ((__tmp172808
                           (cons '%#begin
                                 (cons _%stx168743%_
                                       (cons (let ((__tmp172809
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id171538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl171539%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp172809
                                                _%stx168743%_))
                                             (cons (let ((__tmp172810
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id171537%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id171538%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172810
                                                      _%stx168743%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172808 _%stx168743%_)))))
          (let* ((_%__stx171748171749%_ _%stx168743%_)
                 (_%g168751168771%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171748171749%_)))))
            (let ((_%__kont171750171751%_
                   (lambda (_%L168815%_ _%L168816%_)
                     (let ((_%method-calls168835%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs168836%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty168837%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?168839%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls168835%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs168836%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L168815%_))
                             (let ()
                               (let* ((_%__stx171662171663%_ _%L168815%_)
                                      (_%g169227169245%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx171662171663%_)))))
                                 (let ((_%__kont171664171665%_
                                        (lambda (_%L169281%_
                                                 _%L169282%_
                                                 _%L169283%_)
                                          (for-each
                                           (lambda (_%g169299169301%_)
                                             (let ()
                                               (declare (not safe))
                                               (gxc#apply-collect-object-refs__%
                                                '#f
                                                _%L169283%_
                                                _%method-calls168835%_
                                                _%slot-refs168836%_
                                                _%g169299169301%_)))
                                           _%L169281%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (_%no-specializer?168839%_))
                                              _%stx168743%_
                                              (let* ((_%specializer-id169310%_
                                                      (let* ((_%id169304%_
                                                              (let ((__tmp172811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L168816%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp172811 '"::specialize")))
                     (_%specializer-id169307%_
                      (let ((__tmp172812
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx168743%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id169304%_ __tmp172812))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id169307%_))
                _%specializer-id169307%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass169312%_
                                                      (let ((__tmp172813
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp172813)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table169314%_
                                                      (let ((__tmp172814
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp172814)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods169316%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls168835%_)))
                                                     (_%$methods169320%_
                                                      (map (lambda (_%id169318%_)
                                                             (let ((__tmp172815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169318%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172815)))
                   _%methods169316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169329%_
                                                      (for-each
                                                       (lambda (_%g169321169324%_
                                                                _%g169322169326%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls168835%_
                                                            _%g169321169324%_
                                                            _%g169322169326%_)))
                                                       _%methods169316%_
                                                       _%$methods169320%_))
                                                     (_%methods-bind169339%_
                                                      (map (lambda (_%g169331169334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169332169336%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-method-bind168745%_
                        _%$klass169312%_
                        _%$method-table169314%_
                        _%g169331169334%_
                        _%g169332169336%_)))
                   _%methods169316%_
                   _%$methods169320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots169341%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs168836%_)))
                                                     (_%$slots169345%_
                                                      (map (lambda (_%id169343%_)
                                                             (let ((__tmp172816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id169343%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp172816)))
                   _%slots169341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_169354%_
                                                      (for-each
                                                       (lambda (_%g169346169349%_
                                                                _%g169347169351%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs168836%_
                                                            _%g169346169349%_
                                                            _%g169347169351%_)))
                                                       _%slots169341%_
                                                       _%$slots169345%_))
                                                     (_%slots-bind169363%_
                                                      (map (lambda (_%g169355169358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g169356169360%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-slot-bind168746%_
                        _%$klass169312%_
                        _%g169355169358%_
                        _%g169356169360%_)))
                   _%slots169341%_
                   _%$slots169345%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body169369%_
                                                      (map (lambda (_%g169364169366%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs__%
                        '#f
                        _%L169283%_
                        _%$klass169312%_
                        _%method-calls168835%_
                        _%slot-refs168836%_
                        _%g169364169366%_)))
                   _%L169281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169371%_
                                                      (let ((__tmp172817
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L169283%_ _%L169282%_)
                                 _%specializer-body169369%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp172817 _%stx168743%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169373%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%generate-specializer-impl168747%_
                                                         _%$klass169312%_
                                                         _%$method-table169314%_
                                                         _%methods-bind169339%_
                                                         _%slots-bind169363%_
                                                         _%specializer-impl169371%_))))
                                                (let ((__tmp172819
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L168816%_)))
                                                      (__tmp172818
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id169310%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp172819
                                                   '" => "
                                                   __tmp172818))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%generate-specializer-def168748%_
                                                   _%L168816%_
                                                   _%specializer-id169310%_
                                                   _%specializer-impl169373%_))))))
                                       (_%__kont171666171667%_
                                        (lambda () _%stx168743%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%__stx171662171663%_))
                                       (let ((_%e169234169257%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%__stx171662171663%_))))
                                         (let ((_%tl169232169262%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169234169257%_)))
                                               (_%hd169233169260%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169234169257%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169232169262%_))
                                               (let ((_%e169237169265%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169232169262%_))))
                                                 (let ((_%tl169235169270%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169237169265%_)))
                                                       (_%hd169236169268%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169237169265%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169236169268%_))
                                                       (let ((_%e169240169273%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169236169268%_))))
                 (let ((_%tl169238169278%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169240169273%_)))
                       (_%hd169239169276%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169240169273%_))))
                   (_%__kont171664171665%_
                    _%tl169235169270%_
                    _%tl169238169278%_
                    _%hd169239169276%_)))
               (_%__kont171666171667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont171666171667%_))))
                                       (_%__kont171666171667%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L168815%_))
                                 (let ()
                                   (let* ((_%g169380169399%_
                                           (lambda (_%g169381169396%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g169381169396%_))))
                                          (_%g169379169686%_
                                           (lambda (_%g169381169402%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%g169381169402%_))
                                                 (let ((_%e169385169404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g169381169402%_))))
                                                   (let ((_%hd169384169407%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e169385169404%_)))
                                                         (_%tl169383169409%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e169385169404%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl169383169409%_))
                                                         (let ((_g172820_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl169383169409%_ '0))))
                   (begin
                     (let ((_g172821_
                            (let ()
                              (declare (not safe))
                              (if (##values? _g172820_)
                                  (##vector-length _g172820_)
                                  1))))
                       (if (not (let ()
                                  (declare (not safe))
                                  (##fx= _g172821_ 2)))
                           (error "Context expects 2 values" _g172821_)))
                     (let ((_%target169386169412%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172820_ 0)))
                           (_%tl169388169414%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _g172820_ 1))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169388169414%_))
                           (letrec ((_%loop169389169417%_
                                     (lambda (_%hd169387169420%_
                                              _%clause169393169422%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169387169420%_))
                                           (let ((_%e169390169425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169387169420%_))))
                                             (let ((_%lp-hd169391169428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169390169425%_)))
                                                   (_%lp-tl169392169430%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169390169425%_))))
                                               (let ((__tmp172822
                                                      (cons _%lp-hd169391169428%_
                                                            _%clause169393169422%_)))
                                                 (declare (not safe))
                                                 (_%loop169389169417%_
                                                  _%lp-tl169392169430%_
                                                  __tmp172822))))
                                           (let ((_%clause169394169433%_
                                                  (reverse _%clause169393169422%_)))
                                             ((lambda (_%L169436%_)
                                                (for-each
                                                 (lambda (_%clause169450%_)
                                                   (let* ((_%__stx171688171689%_
                                                           _%clause169450%_)
                                                          (_%g169453169468%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%__stx171688171689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%__kont171690171691%_
                                                            (lambda (_%L169496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%L169497%_
                             _%L169498%_)
                      (for-each
                       (lambda (_%g169513169515%_)
                         (let ()
                           (declare (not safe))
                           (gxc#apply-collect-object-refs__%
                            '#f
                            _%L169498%_
                            _%method-calls168835%_
                            _%slot-refs168836%_
                            _%g169513169515%_)))
                       _%L169496%_)))
                   (_%__kont171692171693%_ (lambda () '#!void)))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? _%__stx171688171689%_))
                   (let ((_%e169460169480%_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%__stx171688171689%_))))
                     (let ((_%tl169458169485%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169460169480%_)))
                           (_%hd169459169483%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169460169480%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169459169483%_))
                           (let ((_%e169463169488%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169459169483%_))))
                             (let ((_%tl169461169493%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169463169488%_)))
                                   (_%hd169462169491%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169463169488%_))))
                               (_%__kont171690171691%_
                                _%tl169458169485%_
                                _%tl169461169493%_
                                _%hd169462169491%_)))
                           (_%__kont171692171693%_))))
                   (_%__kont171692171693%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp172823
                                                        (lambda (_%g169520169523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g169521169525%_)
                  (cons _%g169520169523%_ _%g169521169525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172823
                                                    '()
                                                    _%L169436%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (_%no-specializer?168839%_))
                                                    _%stx168743%_
                                                    (let* ((_%specializer-id169534%_
                                                            (let* ((_%id169528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp172824
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168816%_))))
                              (declare (not safe))
                              (make-symbol__1 __tmp172824 '"::specialize")))
                           (_%specializer-id169531%_
                            (let ((__tmp172825
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-source _%stx168743%_))))
                              (declare (not safe))
                              (gx#core-quote-syntax__1
                               _%id169528%_
                               __tmp172825))))
                      (let ()
                        (declare (not safe))
                        (gx#core-bind-runtime!__0 _%specializer-id169531%_))
                      _%specializer-id169531%_))
                   (_%$klass169536%_
                    (let ((__tmp172826
                           (let () (declare (not safe)) (##gensym '__klass))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172826)))
                   (_%$method-table169538%_
                    (let ((__tmp172827
                           (let ()
                             (declare (not safe))
                             (##gensym '__method-table))))
                      (declare (not safe))
                      (make-symbol__0 __tmp172827)))
                   (_%methods169540%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%method-calls168835%_)))
                   (_%$methods169544%_
                    (map (lambda (_%id169542%_)
                           (let ((__tmp172828 (gensym _%id169542%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172828)))
                         _%methods169540%_))
                   (_%_169553%_
                    (for-each
                     (lambda (_%g169545169548%_ _%g169546169550%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%method-calls168835%_
                          _%g169545169548%_
                          _%g169546169550%_)))
                     _%methods169540%_
                     _%$methods169544%_))
                   (_%methods-bind169563%_
                    (map (lambda (_%g169555169558%_ _%g169556169560%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-method-bind168745%_
                              _%$klass169536%_
                              _%$method-table169538%_
                              _%g169555169558%_
                              _%g169556169560%_)))
                         _%methods169540%_
                         _%$methods169544%_))
                   (_%slots169565%_
                    (let ()
                      (declare (not safe))
                      (hash-keys _%slot-refs168836%_)))
                   (_%$slots169569%_
                    (map (lambda (_%id169567%_)
                           (let ((__tmp172829 (gensym _%id169567%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp172829)))
                         _%slots169565%_))
                   (_%_169578%_
                    (for-each
                     (lambda (_%g169570169573%_ _%g169571169575%_)
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _%slot-refs168836%_
                          _%g169570169573%_
                          _%g169571169575%_)))
                     _%slots169565%_
                     _%$slots169569%_))
                   (_%slots-bind169587%_
                    (map (lambda (_%g169579169582%_ _%g169580169584%_)
                           (let ()
                             (declare (not safe))
                             (_%generate-slot-bind168746%_
                              _%$klass169536%_
                              _%g169579169582%_
                              _%g169580169584%_)))
                         _%slots169565%_
                         _%$slots169569%_))
                   (_%specializer-clauses169679%_
                    (map (lambda (_%clause169589%_)
                           (let* ((_%__stx171708171709%_ _%clause169589%_)
                                  (_%g169592169607%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%__stx171708171709%_)))))
                             (let ((_%__kont171710171711%_
                                    (lambda (_%L169635%_
                                             _%L169636%_
                                             _%L169637%_)
                                      (let ((_%body169667%_
                                             (map (lambda (_%g169662169664%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-subst-object-refs__%
                                                       '#f
                                                       _%L169637%_
                                                       _%$klass169536%_
                                                       _%method-calls168835%_
                                                       _%slot-refs168836%_
                                                       _%g169662169664%_)))
                                                  _%L169635%_)))
                                        (cons (cons _%L169637%_ _%L169636%_)
                                              _%body169667%_))))
                                   (_%__kont171712171713%_
                                    (lambda () _%clause169589%_)))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%__stx171708171709%_))
                                   (let ((_%e169599169619%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%__stx171708171709%_))))
                                     (let ((_%tl169597169624%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169599169619%_)))
                                           (_%hd169598169622%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169599169619%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd169598169622%_))
                                           (let ((_%e169602169627%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd169598169622%_))))
                                             (let ((_%tl169600169632%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169602169627%_)))
                                                   (_%hd169601169630%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169602169627%_))))
                                               (_%__kont171710171711%_
                                                _%tl169597169624%_
                                                _%tl169600169632%_
                                                _%hd169601169630%_)))
                                           (_%__kont171712171713%_))))
                                   (_%__kont171712171713%_)))))
                         (let ((__tmp172830
                                (lambda (_%g169671169674%_ _%g169672169676%_)
                                  (cons _%g169671169674%_ _%g169672169676%_))))
                           (declare (not safe))
                           (__foldr1 __tmp172830 '() _%L169436%_))))
                   (_%specializer-impl169681%_
                    (let ((__tmp172831
                           (cons '%#case-lambda
                                 _%specializer-clauses169679%_)))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp172831 _%stx168743%_)))
                   (_%specializer-impl169683%_
                    (let ()
                      (declare (not safe))
                      (_%generate-specializer-impl168747%_
                       _%$klass169536%_
                       _%$method-table169538%_
                       _%methods-bind169563%_
                       _%slots-bind169587%_
                       _%specializer-impl169681%_))))
              (let ((__tmp172833
                     (let () (declare (not safe)) (gx#stx-e _%L168816%_)))
                    (__tmp172832
                     (let ()
                       (declare (not safe))
                       (gx#stx-e _%specializer-id169534%_))))
                (declare (not safe))
                (gxc#verbose
                 '"generate method specializer "
                 __tmp172833
                 '" => "
                 __tmp172832))
              (let ()
                (declare (not safe))
                (_%generate-specializer-def168748%_
                 _%L168816%_
                 _%specializer-id169534%_
                 _%specializer-impl169683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%clause169394169433%_))))))
                             (let ()
                               (declare (not safe))
                               (_%loop169389169417%_
                                _%target169386169412%_
                                '())))
                           (let ()
                             (declare (not safe))
                             (_%g169380169399%_ _%g169381169402%_))))))
                 (let ()
                   (declare (not safe))
                   (_%g169380169399%_ _%g169381169402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g169380169399%_
                                                    _%g169381169402%_))))))
                                     (declare (not safe))
                                     (_%g169379169686%_ _%L168815%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L168815%_))
                                     (let ()
                                       (let* ((_%g169690169720%_
                                               (lambda (_%g169691169717%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g169691169717%_))))
                                              (_%g169689170329%_
                                               (lambda (_%g169691169723%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%g169691169723%_))
                                                     (let ((_%e169697169725%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%g169691169723%_))))
                                                       (let ((_%hd169696169728%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e169697169725%_)))
                     (_%tl169695169730%_
                      (let () (declare (not safe)) (##cdr _%e169697169725%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl169695169730%_))
                     (let ((_%e169700169733%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl169695169730%_))))
                       (let ((_%hd169699169736%_
                              (let ()
                                (declare (not safe))
                                (##car _%e169700169733%_)))
                             (_%tl169698169738%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e169700169733%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd169699169736%_))
                             (let ((_%e169703169741%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd169699169736%_))))
                               (let ((_%hd169702169744%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e169703169741%_)))
                                     (_%tl169701169746%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e169703169741%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd169702169744%_))
                                     (let ((_%e169706169749%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd169702169744%_))))
                                       (let ((_%hd169705169752%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e169706169749%_)))
                                             (_%tl169704169754%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e169706169749%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd169705169752%_))
                                             (let ((_%e169709169757%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd169705169752%_))))
                                               (let ((_%hd169708169760%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e169709169757%_)))
                                                     (_%tl169707169762%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e169709169757%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl169707169762%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl169704169754%_))
                                                         (let ((_%e169712169765%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl169704169754%_))))
                   (let ((_%hd169711169768%_
                          (let ()
                            (declare (not safe))
                            (##car _%e169712169765%_)))
                         (_%tl169710169770%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e169712169765%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl169710169770%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl169701169746%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl169698169738%_))
                                 (let ((_%e169715169773%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl169698169738%_))))
                                   (let ((_%hd169714169776%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e169715169773%_)))
                                         (_%tl169713169778%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e169715169773%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl169713169778%_))
                                         ((lambda (_%L169781%_
                                                   _%L169782%_
                                                   _%L169783%_)
                                            (let* ((_%g169807169825%_
                                                    (lambda (_%g169808169822%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169808169822%_))))
                                                   (_%g169806169876%_
                                                    (lambda (_%g169808169828%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169808169828%_))
                                                          (let ((_%e169814169830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169808169828%_))))
                    (let ((_%hd169813169833%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169814169830%_)))
                          (_%tl169812169835%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169814169830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169812169835%_))
                          (let ((_%e169817169838%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169812169835%_))))
                            (let ((_%hd169816169841%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169817169838%_)))
                                  (_%tl169815169843%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169817169838%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169816169841%_))
                                  (let ((_%e169820169846%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169816169841%_))))
                                    (let ((_%hd169819169849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169820169846%_)))
                                          (_%tl169818169851%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169820169846%_))))
                                      ((lambda (_%L169854%_
                                                _%L169855%_
                                                _%L169856%_)
                                         (for-each
                                          (lambda (_%g169871169873%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%L169856%_
                                               _%method-calls168835%_
                                               _%slot-refs168836%_
                                               _%g169871169873%_)))
                                          _%L169854%_))
                                       _%tl169815169843%_
                                       _%tl169818169851%_
                                       _%hd169819169849%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169807169825%_ _%g169808169828%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g169807169825%_ _%g169808169828%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169807169825%_ _%g169808169828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169806169876%_ _%L169782%_))
                                            (let* ((_%g169879169898%_
                                                    (lambda (_%g169880169895%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g169880169895%_))))
                                                   (_%g169878170017%_
                                                    (lambda (_%g169880169901%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%g169880169901%_))
                                                          (let ((_%e169884169903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%g169880169901%_))))
                    (let ((_%hd169883169906%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169884169903%_)))
                          (_%tl169882169908%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169884169903%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl169882169908%_))
                          (let ((_g172834_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl169882169908%_
                                    '0))))
                            (begin
                              (let ((_g172835_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g172834_)
                                           (##vector-length _g172834_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g172835_ 2)))
                                    (error "Context expects 2 values"
                                           _g172835_)))
                              (let ((_%target169885169911%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172834_ 0)))
                                    (_%tl169887169913%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g172834_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169887169913%_))
                                    (letrec ((_%loop169888169916%_
                                              (lambda (_%hd169886169919%_
                                                       _%clause169892169921%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169886169919%_))
                                                    (let ((_%e169889169924%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169886169919%_))))
                                                      (let ((_%lp-hd169890169927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169889169924%_)))
                    (_%lp-tl169891169929%_
                     (let () (declare (not safe)) (##cdr _%e169889169924%_))))
                (let ((__tmp172836
                       (cons _%lp-hd169890169927%_ _%clause169892169921%_)))
                  (declare (not safe))
                  (_%loop169888169916%_ _%lp-tl169891169929%_ __tmp172836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%clause169893169932%_
                                                           (reverse _%clause169892169921%_)))
                                                      ((lambda (_%L169935%_)
                                                         (for-each
                                                          (lambda (_%clause169948%_)
                                                            (let* ((_%g169950169965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g169951169962%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g169951169962%_))))
                           (_%g169949170007%_
                            (lambda (_%g169951169968%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%g169951169968%_))
                                  (let ((_%e169957169970%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g169951169968%_))))
                                    (let ((_%hd169956169973%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169957169970%_)))
                                          (_%tl169955169975%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169957169970%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd169956169973%_))
                                          (let ((_%e169960169978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd169956169973%_))))
                                            (let ((_%hd169959169981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169960169978%_)))
                                                  (_%tl169958169983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169960169978%_))))
                                              ((lambda (_%L169986%_
                                                        _%L169987%_
                                                        _%L169988%_)
                                                 (for-each
                                                  (lambda (_%g170002170004%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%L169988%_
                                                       _%method-calls168835%_
                                                       _%slot-refs168836%_
                                                       _%g170002170004%_)))
                                                  _%L169986%_))
                                               _%tl169955169975%_
                                               _%tl169958169983%_
                                               _%hd169959169981%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g169950169965%_
                                             _%g169951169968%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g169950169965%_ _%g169951169968%_))))))
                      (declare (not safe))
                      (_%g169949170007%_ _%clause169948%_)))
                  (let ((__tmp172837
                         (lambda (_%g170009170012%_ _%g170010170014%_)
                           (cons _%g170009170012%_ _%g170010170014%_))))
                    (declare (not safe))
                    (__foldr1 __tmp172837 '() _%L169935%_))))
               _%clause169893169932%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_%loop169888169916%_
                                         _%target169885169911%_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169879169898%_
                                       _%g169880169901%_))))))
                          (let ()
                            (declare (not safe))
                            (_%g169879169898%_ _%g169880169901%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g169879169898%_ _%g169880169901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_%g169878170017%_ _%L169781%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (_%no-specializer?168839%_))
                                                _%stx168743%_
                                                (let* ((_%specializer-id170026%_
                                                        (let* ((_%id170020%_
                                                                (let ((__tmp172838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%L168816%_))))
                          (declare (not safe))
                          (make-symbol__1 __tmp172838 '"::specialize")))
                       (_%specializer-id170023%_
                        (let ((__tmp172839
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _%stx168743%_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _%id170020%_ __tmp172839))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _%specializer-id170023%_))
                  _%specializer-id170023%_))
               (_%$klass170028%_
                (let ((__tmp172840
                       (let () (declare (not safe)) (##gensym '__klass))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172840)))
               (_%$method-table170030%_
                (let ((__tmp172841
                       (let ()
                         (declare (not safe))
                         (##gensym '__method-table))))
                  (declare (not safe))
                  (make-symbol__0 __tmp172841)))
               (_%methods170032%_
                (let ()
                  (declare (not safe))
                  (hash-keys _%method-calls168835%_)))
               (_%$methods170036%_
                (map (lambda (_%id170034%_)
                       (let ((__tmp172842 (gensym _%id170034%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172842)))
                     _%methods170032%_))
               (_%_170045%_
                (for-each
                 (lambda (_%g170037170040%_ _%g170038170042%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%method-calls168835%_
                      _%g170037170040%_
                      _%g170038170042%_)))
                 _%methods170032%_
                 _%$methods170036%_))
               (_%methods-bind170055%_
                (map (lambda (_%g170047170050%_ _%g170048170052%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-method-bind168745%_
                          _%$klass170028%_
                          _%$method-table170030%_
                          _%g170047170050%_
                          _%g170048170052%_)))
                     _%methods170032%_
                     _%$methods170036%_))
               (_%slots170057%_
                (let () (declare (not safe)) (hash-keys _%slot-refs168836%_)))
               (_%$slots170061%_
                (map (lambda (_%id170059%_)
                       (let ((__tmp172843 (gensym _%id170059%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp172843)))
                     _%slots170057%_))
               (_%_170070%_
                (for-each
                 (lambda (_%g170062170065%_ _%g170063170067%_)
                   (let ()
                     (declare (not safe))
                     (hash-put!
                      _%slot-refs168836%_
                      _%g170062170065%_
                      _%g170063170067%_)))
                 _%slots170057%_
                 _%$slots170061%_))
               (_%slots-bind170079%_
                (map (lambda (_%g170071170074%_ _%g170072170076%_)
                       (let ()
                         (declare (not safe))
                         (_%generate-slot-bind168746%_
                          _%$klass170028%_
                          _%g170071170074%_
                          _%g170072170076%_)))
                     _%slots170057%_
                     _%$slots170061%_))
               (_%specializer-lambda-expr170165%_
                (let* ((_%g170081170099%_
                        (lambda (_%g170082170096%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170082170096%_))))
                       (_%g170080170162%_
                        (lambda (_%g170082170102%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170082170102%_))
                              (let ((_%e170088170104%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170082170102%_))))
                                (let ((_%hd170087170107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170088170104%_)))
                                      (_%tl170086170109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170088170104%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170086170109%_))
                                      (let ((_%e170091170112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170086170109%_))))
                                        (let ((_%hd170090170115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170091170112%_)))
                                              (_%tl170089170117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170091170112%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170090170115%_))
                                              (let ((_%e170094170120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170090170115%_))))
                                                (let ((_%hd170093170123%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170094170120%_)))
                                                      (_%tl170092170125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170094170120%_))))
                                                  ((lambda (_%L170128%_
                                                            _%L170129%_
                                                            _%L170130%_)
                                                     (let* ((_%body170160%_
                                                             (map (lambda (_%g170155170157%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs__%
                               '#f
                               _%L170130%_
                               _%$klass170028%_
                               _%method-calls168835%_
                               _%slot-refs168836%_
                               _%g170155170157%_)))
                          _%L170128%_))
                    (__tmp172844
                     (cons '%#lambda
                           (cons (cons _%L170130%_ _%L170129%_)
                                 _%body170160%_))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp172844 _%L169782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl170089170117%_
                                                   _%tl170092170125%_
                                                   _%hd170093170123%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170081170099%_
                                                 _%g170082170102%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170081170099%_
                                         _%g170082170102%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170081170099%_ _%g170082170102%_))))))
                  (declare (not safe))
                  (_%g170080170162%_ _%L169782%_)))
               (_%specializer-case-lambda-expr170322%_
                (let* ((_%g170167170186%_
                        (lambda (_%g170168170183%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170168170183%_))))
                       (_%g170166170319%_
                        (lambda (_%g170168170189%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170168170189%_))
                              (let ((_%e170172170191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170168170189%_))))
                                (let ((_%hd170171170194%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170172170191%_)))
                                      (_%tl170170170196%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170172170191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl170170170196%_))
                                      (let ((_g172845_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl170170170196%_
                                                '0))))
                                        (begin
                                          (let ((_g172846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g172845_)
                                                       (##vector-length
                                                        _g172845_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g172846_ 2)))
                                                (error "Context expects 2 values"
                                                       _g172846_)))
                                          (let ((_%target170173170199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g172845_ 0)))
                                                (_%tl170175170201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g172845_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170175170201%_))
                                                (letrec ((_%loop170176170204%_
                                                          (lambda (_%hd170174170207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause170180170209%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170174170207%_))
                        (let ((_%e170177170212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170174170207%_))))
                          (let ((_%lp-hd170178170215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170177170212%_)))
                                (_%lp-tl170179170217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170177170212%_))))
                            (let ((__tmp172847
                                   (cons _%lp-hd170178170215%_
                                         _%clause170180170209%_)))
                              (declare (not safe))
                              (_%loop170176170204%_
                               _%lp-tl170179170217%_
                               __tmp172847))))
                        (let ((_%clause170181170220%_
                               (reverse _%clause170180170209%_)))
                          ((lambda (_%L170223%_)
                             (let* ((_%clauses170317%_
                                     (map (lambda (_%clause170237%_)
                                            (let* ((_%__stx171728171729%_
                                                    _%clause170237%_)
                                                   (_%g170240170255%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx171728171729%_)))))
                                              (let ((_%__kont171730171731%_
                                                     (lambda (_%L170283%_
                                                              _%L170284%_
                                                              _%L170285%_)
                                                       (let ((_%body170305%_
                                                              (map (lambda (_%g170300170302%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs__%
                                '#f
                                _%L170285%_
                                _%$klass170028%_
                                _%method-calls168835%_
                                _%slot-refs168836%_
                                _%g170300170302%_)))
                           _%L170283%_)))
                 (cons (cons _%L170285%_ _%L170284%_) _%body170305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171732171733%_
                                                     (lambda ()
                                                       _%clause170237%_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%__stx171728171729%_))
                                                    (let ((_%e170247170267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%__stx171728171729%_))))
                                                      (let ((_%tl170245170272%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e170247170267%_)))
                    (_%hd170246170270%_
                     (let () (declare (not safe)) (##car _%e170247170267%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd170246170270%_))
                    (let ((_%e170250170275%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd170246170270%_))))
                      (let ((_%tl170248170280%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170250170275%_)))
                            (_%hd170249170278%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170250170275%_))))
                        (_%__kont171730171731%_
                         _%tl170245170272%_
                         _%tl170248170280%_
                         _%hd170249170278%_)))
                    (_%__kont171732171733%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171732171733%_)))))
                                          (let ((__tmp172848
                                                 (lambda (_%g170309170312%_
                                                          _%g170310170314%_)
                                                   (cons _%g170309170312%_
                                                         _%g170310170314%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp172848
                                             '()
                                             _%L170223%_))))
                                    (__tmp172849
                                     (cons '%#case-lambda _%clauses170317%_)))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp172849
                                _%L169781%_)))
                           _%clause170181170220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170176170204%_
                                                     _%target170173170199%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170167170186%_
                                                   _%g170168170189%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170167170186%_
                                         _%g170168170189%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170167170186%_ _%g170168170189%_))))))
                  (declare (not safe))
                  (_%g170166170319%_ _%L169781%_)))
               (_%specializer-impl170324%_
                (let ((__tmp172850
                       (cons '%#let-values
                             (cons (cons (cons (cons _%L169783%_ '())
                                               (cons _%specializer-lambda-expr170165%_
                                                     '()))
                                         '())
                                   (cons _%specializer-case-lambda-expr170322%_
                                         '())))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp172850 _%stx168743%_)))
               (_%specializer-impl170326%_
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-impl168747%_
                   _%$klass170028%_
                   _%$method-table170030%_
                   _%methods-bind170055%_
                   _%slots-bind170079%_
                   _%specializer-impl170324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp172852
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%L168816%_)))
                                                        (__tmp172851
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%specializer-id170026%_))))
                                                    (declare (not safe))
                                                    (gxc#verbose
                                                     '"generate method specializer "
                                                     __tmp172852
                                                     '" => "
                                                     __tmp172851))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%generate-specializer-def168748%_
                                                     _%L168816%_
                                                     _%specializer-id170026%_
                                                     _%specializer-impl170326%_)))))
                                          _%hd169714169776%_
                                          _%hd169711169768%_
                                          _%hd169708169760%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%g169690169720%_
                                            _%g169691169723%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g169690169720%_ _%g169691169723%_)))
                             (let ()
                               (declare (not safe))
                               (_%g169690169720%_ _%g169691169723%_)))
                         (let ()
                           (declare (not safe))
                           (_%g169690169720%_ _%g169691169723%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g169690169720%_ _%g169691169723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169690169720%_
                                                        _%g169691169723%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g169690169720%_
                                                _%g169691169723%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g169690169720%_
                                        _%g169691169723%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g169690169720%_ _%g169691169723%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g169690169720%_ _%g169691169723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g169690169720%_
                                                        _%g169691169723%_))))))
                                         (declare (not safe))
                                         (_%g169689170329%_ _%L168815%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L168815%_))
                                         (let ()
                                           (let* ((_%g170333170386%_
                                                   (lambda (_%g170334170383%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g170334170383%_))))
                                                  (_%g170332171529%_
                                                   (lambda (_%g170334170389%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%g170334170389%_))
                                                         (let ((_%e170342170391%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%g170334170389%_))))
                   (let ((_%hd170341170394%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170342170391%_)))
                         (_%tl170340170396%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170342170391%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd170341170394%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#let-values _%hd170341170394%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl170340170396%_))
                                 (let ((_%e170345170399%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%tl170340170396%_))))
                                   (let ((_%hd170344170402%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170345170399%_)))
                                         (_%tl170343170404%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170345170399%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170344170402%_))
                                         (let ((_%e170348170407%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170344170402%_))))
                                           (let ((_%hd170347170410%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170348170407%_)))
                                                 (_%tl170346170412%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170348170407%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd170347170410%_))
                                                 (let ((_%e170351170415%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd170347170410%_))))
                                                   (let ((_%hd170350170418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170351170415%_)))
                                                         (_%tl170349170420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170351170415%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd170350170418%_))
                                                         (let ((_%e170354170423%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd170350170418%_))))
                   (let ((_%hd170353170426%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170354170423%_)))
                         (_%tl170352170428%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170354170423%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170352170428%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl170349170420%_))
                             (let ((_%e170357170431%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl170349170420%_))))
                               (let ((_%hd170356170434%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170357170431%_)))
                                     (_%tl170355170436%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170357170431%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170356170434%_))
                                     (let ((_%e170360170439%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170356170434%_))))
                                       (let ((_%hd170359170442%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170360170439%_)))
                                             (_%tl170358170444%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170360170439%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%hd170359170442%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#let-values
                                                    _%hd170359170442%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl170358170444%_))
                                                     (let ((_%e170363170447%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl170358170444%_))))
                                                       (let ((_%hd170362170450%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e170363170447%_)))
                     (_%tl170361170452%_
                      (let () (declare (not safe)) (##cdr _%e170363170447%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd170362170450%_))
                     (let ((_%e170366170455%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%hd170362170450%_))))
                       (let ((_%hd170365170458%_
                              (let ()
                                (declare (not safe))
                                (##car _%e170366170455%_)))
                             (_%tl170364170460%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e170366170455%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%hd170365170458%_))
                             (let ((_%e170369170463%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%hd170365170458%_))))
                               (let ((_%hd170368170466%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e170369170463%_)))
                                     (_%tl170367170468%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e170369170463%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd170368170466%_))
                                     (let ((_%e170372170471%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd170368170466%_))))
                                       (let ((_%hd170371170474%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170372170471%_)))
                                             (_%tl170370170476%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170372170471%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl170370170476%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl170367170468%_))
                                                 (let ((_%e170375170479%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl170367170468%_))))
                                                   (let ((_%hd170374170482%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e170375170479%_)))
                                                         (_%tl170373170484%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e170375170479%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl170373170484%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl170364170460%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl170361170452%_))
                         (let ((_%e170378170487%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl170361170452%_))))
                           (let ((_%hd170377170490%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170378170487%_)))
                                 (_%tl170376170492%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170378170487%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl170376170492%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl170355170436%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl170346170412%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170343170404%_))
                                             (let ((_%e170381170495%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170343170404%_))))
                                               (let ((_%hd170380170498%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170381170495%_)))
                                                     (_%tl170379170500%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170381170495%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl170379170500%_))
                                                     ((lambda (_%L170503%_
                                                               _%L170504%_
                                                               _%L170505%_
                                                               _%L170506%_
                                                               _%L170507%_)
                                                        (let* ((_%g170547170609%_
                                                                (lambda (_%g170548170606%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g170548170606%_))))
                       (_%g170546171526%_
                        (lambda (_%g170548170612%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%g170548170612%_))
                              (let ((_%e170556170614%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g170548170612%_))))
                                (let ((_%hd170555170617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170556170614%_)))
                                      (_%tl170554170619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170556170614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd170555170617%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#lambda
                                             _%hd170555170617%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl170554170619%_))
                                              (let ((_%e170559170622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl170554170619%_))))
                                                (let ((_%hd170558170625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170559170622%_)))
                                                      (_%tl170557170627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170559170622%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170557170627%_))
                                                      (let ((_%e170562170630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170557170627%_))))
                (let ((_%hd170561170633%_
                       (let () (declare (not safe)) (##car _%e170562170630%_)))
                      (_%tl170560170635%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170562170630%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd170561170633%_))
                      (let ((_%e170565170638%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd170561170633%_))))
                        (let ((_%hd170564170641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170565170638%_)))
                              (_%tl170563170643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170565170638%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd170564170641%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#call _%hd170564170641%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170563170643%_))
                                      (let ((_%e170568170646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170563170643%_))))
                                        (let ((_%hd170567170649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170568170646%_)))
                                              (_%tl170566170651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170568170646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170567170649%_))
                                              (let ((_%e170571170654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170567170649%_))))
                                                (let ((_%hd170570170657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170571170654%_)))
                                                      (_%tl170569170659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170571170654%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd170570170657%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd170570170657%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl170569170659%_))
                      (let ((_%e170574170662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl170569170659%_))))
                        (let ((_%hd170573170665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170574170662%_)))
                              (_%tl170572170667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170574170662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170572170667%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170566170651%_))
                                  (let ((_%e170577170670%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170566170651%_))))
                                    (let ((_%hd170576170673%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170577170670%_)))
                                          (_%tl170575170675%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170577170670%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd170576170673%_))
                                          (let ((_%e170580170678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%hd170576170673%_))))
                                            (let ((_%hd170579170681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e170580170678%_)))
                                                  (_%tl170578170683%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e170580170678%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd170579170681%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#ref
                                                         _%hd170579170681%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl170578170683%_))
                                                          (let ((_%e170583170686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl170578170683%_))))
                    (let ((_%hd170582170689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170583170686%_)))
                          (_%tl170581170691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170583170686%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl170581170691%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170575170675%_))
                              (let ((_%e170586170694%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170575170675%_))))
                                (let ((_%hd170585170697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170586170694%_)))
                                      (_%tl170584170699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170586170694%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170585170697%_))
                                      (let ((_%e170589170702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170585170697%_))))
                                        (let ((_%hd170588170705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170589170702%_)))
                                              (_%tl170587170707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170589170702%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _%hd170588170705%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#ref
                                                     _%hd170588170705%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl170587170707%_))
                                                      (let ((_%e170592170710%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl170587170707%_))))
                (let ((_%hd170591170713%_
                       (let () (declare (not safe)) (##car _%e170592170710%_)))
                      (_%tl170590170715%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170592170710%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170590170715%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl170584170699%_))
                          (if (let ((__tmp172853
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-length _%tl170584170699%_))))
                                (declare (not safe))
                                (##fx>= __tmp172853 '1))
                              (let ((_g172854_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl170584170699%_
                                        '1))))
                                (begin
                                  (let ((_g172855_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g172854_)
                                               (##vector-length _g172854_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g172855_ 2)))
                                        (error "Context expects 2 values"
                                               _g172855_)))
                                  (let ((_%target170593170718%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172854_ 0)))
                                        (_%tl170595170720%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g172854_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170595170720%_))
                                        (let ((_%e170604170723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170595170720%_))))
                                          (let ((_%hd170603170726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170604170723%_)))
                                                (_%tl170602170728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170604170723%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170602170728%_))
                                                (letrec ((_%loop170596170731%_
                                                          (lambda (_%hd170594170734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%kw-ref170600170736%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd170594170734%_))
                        (let ((_%e170597170739%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd170594170734%_))))
                          (let ((_%lp-hd170598170742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170597170739%_)))
                                (_%lp-tl170599170744%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170597170739%_))))
                            (let ((__tmp172856
                                   (cons _%lp-hd170598170742%_
                                         _%kw-ref170600170736%_)))
                              (declare (not safe))
                              (_%loop170596170731%_
                               _%lp-tl170599170744%_
                               __tmp172856))))
                        (let ((_%kw-ref170601170747%_
                               (reverse _%kw-ref170600170736%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl170560170635%_))
                              ((lambda (_%L170750%_
                                        _%L170751%_
                                        _%L170752%_
                                        _%L170753%_
                                        _%L170754%_)
                                 (let* ((_%kw-count170805%_
                                         (length (let ((__tmp172857
                                                        (lambda (_%g170797170800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170798170802%_)
                  (cons _%g170797170800%_ _%g170798170802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp172857
                                                    '()
                                                    _%L170751%_))))
                                        (_%self-index170807%_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _%kw-count170805%_ '1))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gxc#lambda-expr? _%L170505%_))
                                       (let ()
                                         (let* ((_%g170811170825%_
                                                 (lambda (_%g170812170822%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g170812170822%_))))
                                                (_%g170810170942%_
                                                 (lambda (_%g170812170828%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g170812170828%_))
                                                       (let ((_%e170817170830%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g170812170828%_))))
                 (let ((_%hd170816170833%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170817170830%_)))
                       (_%tl170815170835%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170817170830%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl170815170835%_))
                       (let ((_%e170820170838%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170815170835%_))))
                         (let ((_%hd170819170841%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170820170838%_)))
                               (_%tl170818170843%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170820170838%_))))
                           ((lambda (_%L170846%_ _%L170847%_)
                              (let ((_%self170864%_
                                     (list-ref
                                      _%L170847%_
                                      _%self-index170807%_)))
                                (for-each
                                 (lambda (_%g170865170867%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#apply-collect-object-refs__%
                                      '#f
                                      _%self170864%_
                                      _%method-calls168835%_
                                      _%slot-refs168836%_
                                      _%g170865170867%_)))
                                 _%L170846%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%no-specializer?168839%_))
                                    _%stx168743%_
                                    (let* ((_%specializer-id170876%_
                                            (let* ((_%id170870%_
                                                    (let ((__tmp172858
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L168816%_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp172858
                                                       '"::specialize")))
                                                   (_%specializer-id170873%_
                                                    (let ((__tmp172859
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _%stx168743%_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _%id170870%_
                                                       __tmp172859))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _%specializer-id170873%_))
                                              _%specializer-id170873%_))
                                           (_%$klass170878%_
                                            (let ((__tmp172860
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym '__klass))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172860)))
                                           (_%$method-table170880%_
                                            (let ((__tmp172861
                                                   (let ()
                                                     (declare (not safe))
                                                     (##gensym
                                                      '__method-table))))
                                              (declare (not safe))
                                              (make-symbol__0 __tmp172861)))
                                           (_%methods170882%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys
                                               _%method-calls168835%_)))
                                           (_%$methods170886%_
                                            (map (lambda (_%id170884%_)
                                                   (let ((__tmp172862
                                                          (gensym _%id170884%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172862)))
                                                 _%methods170882%_))
                                           (_%_170895%_
                                            (for-each
                                             (lambda (_%g170887170890%_
                                                      _%g170888170892%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%method-calls168835%_
                                                  _%g170887170890%_
                                                  _%g170888170892%_)))
                                             _%methods170882%_
                                             _%$methods170886%_))
                                           (_%methods-bind170905%_
                                            (map (lambda (_%g170897170900%_
                                                          _%g170898170902%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-method-bind168745%_
                                                      _%$klass170878%_
                                                      _%$method-table170880%_
                                                      _%g170897170900%_
                                                      _%g170898170902%_)))
                                                 _%methods170882%_
                                                 _%$methods170886%_))
                                           (_%slots170907%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-keys _%slot-refs168836%_)))
                                           (_%$slots170911%_
                                            (map (lambda (_%id170909%_)
                                                   (let ((__tmp172863
                                                          (gensym _%id170909%_)))
                                                     (declare (not safe))
                                                     (make-symbol__1
                                                      '"__"
                                                      __tmp172863)))
                                                 _%slots170907%_))
                                           (_%_170920%_
                                            (for-each
                                             (lambda (_%g170912170915%_
                                                      _%g170913170917%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (hash-put!
                                                  _%slot-refs168836%_
                                                  _%g170912170915%_
                                                  _%g170913170917%_)))
                                             _%slots170907%_
                                             _%$slots170911%_))
                                           (_%slots-bind170929%_
                                            (map (lambda (_%g170921170924%_
                                                          _%g170922170926%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%generate-slot-bind168746%_
                                                      _%$klass170878%_
                                                      _%g170921170924%_
                                                      _%g170922170926%_)))
                                                 _%slots170907%_
                                                 _%$slots170911%_))
                                           (_%specializer-impl170937%_
                                            (let* ((_%specializer-body170935%_
                                                    (map (lambda (_%g170930170932%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%self170864%_
                                                              _%$klass170878%_
                                                              _%method-calls168835%_
                                                              _%slot-refs168836%_
                                                              _%g170930170932%_)))
                                                         _%L170846%_))
                                                   (__tmp172864
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L170507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons (cons '%#let-values
                                                (cons (cons (cons (cons _%L170506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ((__tmp172865
                                       (cons '%#lambda
                                             (cons _%L170847%_
                                                   _%specializer-body170935%_))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp172865
                                   _%L170505%_))
                                '()))
                    '())
              (cons _%L170504%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '())
                        (cons _%L170503%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp172864
                                               _%stx168743%_)))
                                           (_%specializer-impl170939%_
                                            (let ()
                                              (declare (not safe))
                                              (_%generate-specializer-impl168747%_
                                               _%$klass170878%_
                                               _%$method-table170880%_
                                               _%methods-bind170905%_
                                               _%slots-bind170929%_
                                               _%specializer-impl170937%_))))
                                      (let ((__tmp172867
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%L168816%_)))
                                            (__tmp172866
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%specializer-id170876%_))))
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"generate method specializer "
                                         __tmp172867
                                         '" => "
                                         __tmp172866))
                                      (let ()
                                        (declare (not safe))
                                        (_%generate-specializer-def168748%_
                                         _%L168816%_
                                         _%specializer-id170876%_
                                         _%specializer-impl170939%_))))))
                            _%tl170818170843%_
                            _%hd170819170841%_)))
                       (let ()
                         (declare (not safe))
                         (_%g170811170825%_ _%g170812170828%_)))))
               (let ()
                 (declare (not safe))
                 (_%g170811170825%_ _%g170812170828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%g170810170942%_ _%L170505%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#opt-lambda-expr?
                                              _%L170505%_))
                                           (let ()
                                             (let* ((_%g170946170976%_
                                                     (lambda (_%g170947170973%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g170947170973%_))))
                                                    (_%g170945171522%_
                                                     (lambda (_%g170947170979%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%g170947170979%_))
                                                           (let ((_%e170953170981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g170947170979%_))))
                     (let ((_%hd170952170984%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170953170981%_)))
                           (_%tl170951170986%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170953170981%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl170951170986%_))
                           (let ((_%e170956170989%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl170951170986%_))))
                             (let ((_%hd170955170992%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170956170989%_)))
                                   (_%tl170954170994%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170956170989%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170955170992%_))
                                   (let ((_%e170959170997%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170955170992%_))))
                                     (let ((_%hd170958171000%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170959170997%_)))
                                           (_%tl170957171002%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170959170997%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170958171000%_))
                                           (let ((_%e170962171005%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170958171000%_))))
                                             (let ((_%hd170961171008%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170962171005%_)))
                                                   (_%tl170960171010%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170962171005%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd170961171008%_))
                                                   (let ((_%e170965171013%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd170961171008%_))))
                                                     (let ((_%hd170964171016%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170965171013%_)))
                                                           (_%tl170963171018%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170965171013%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl170963171018%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl170960171010%_))
                       (let ((_%e170968171021%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl170960171010%_))))
                         (let ((_%hd170967171024%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e170968171021%_)))
                               (_%tl170966171026%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e170968171021%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl170966171026%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170957171002%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl170954170994%_))
                                       (let ((_%e170971171029%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%tl170954170994%_))))
                                         (let ((_%hd170970171032%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e170971171029%_)))
                                               (_%tl170969171034%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e170971171029%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl170969171034%_))
                                               ((lambda (_%L171037%_
                                                         _%L171038%_
                                                         _%L171039%_)
                                                  (let* ((_%g171063171077%_
                                                          (lambda (_%g171064171074%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171064171074%_))))
                                                         (_%g171062171118%_
                                                          (lambda (_%g171064171080%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171064171080%_))
                        (let ((_%e171069171082%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171064171080%_))))
                          (let ((_%hd171068171085%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171069171082%_)))
                                (_%tl171067171087%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171069171082%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171067171087%_))
                                (let ((_%e171072171090%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171067171087%_))))
                                  (let ((_%hd171071171093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171072171090%_)))
                                        (_%tl171070171095%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171072171090%_))))
                                    ((lambda (_%L171098%_ _%L171099%_)
                                       (let ((_%self171112%_
                                              (list-ref
                                               _%L171099%_
                                               _%self-index170807%_)))
                                         (for-each
                                          (lambda (_%g171113171115%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-collect-object-refs__%
                                               '#f
                                               _%self171112%_
                                               _%method-calls168835%_
                                               _%slot-refs168836%_
                                               _%g171113171115%_)))
                                          _%L171098%_)))
                                     _%tl171070171095%_
                                     _%hd171071171093%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g171063171077%_ _%g171064171080%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g171063171077%_ _%g171064171080%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171062171118%_
                                                     _%L171038%_))
                                                  (let* ((_%g171121171140%_
                                                          (lambda (_%g171122171137%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171122171137%_))))
                                                         (_%g171120171245%_
                                                          (lambda (_%g171122171143%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171122171143%_))
                        (let ((_%e171126171145%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171122171143%_))))
                          (let ((_%hd171125171148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171126171145%_)))
                                (_%tl171124171150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171126171145%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl171124171150%_))
                                (let ((_g172868_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl171124171150%_
                                          '0))))
                                  (begin
                                    (let ((_g172869_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g172868_)
                                                 (##vector-length _g172868_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g172869_ 2)))
                                          (error "Context expects 2 values"
                                                 _g172869_)))
                                    (let ((_%target171127171153%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172868_ 0)))
                                          (_%tl171129171155%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g172868_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl171129171155%_))
                                          (letrec ((_%loop171130171158%_
                                                    (lambda (_%hd171128171161%_
                                                             _%clause171134171163%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd171128171161%_))
                                                          (let ((_%e171131171166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd171128171161%_))))
                    (let ((_%lp-hd171132171169%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171131171166%_)))
                          (_%lp-tl171133171171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171131171166%_))))
                      (let ((__tmp172870
                             (cons _%lp-hd171132171169%_
                                   _%clause171134171163%_)))
                        (declare (not safe))
                        (_%loop171130171158%_
                         _%lp-tl171133171171%_
                         __tmp172870))))
                  (let ((_%clause171135171174%_
                         (reverse _%clause171134171163%_)))
                    ((lambda (_%L171177%_)
                       (for-each
                        (lambda (_%clause171190%_)
                          (let* ((_%g171192171203%_
                                  (lambda (_%g171193171200%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g171193171200%_))))
                                 (_%g171191171235%_
                                  (lambda (_%g171193171206%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%g171193171206%_))
                                        (let ((_%e171198171208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g171193171206%_))))
                                          (let ((_%hd171197171211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171198171208%_)))
                                                (_%tl171196171213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171198171208%_))))
                                            ((lambda (_%L171216%_ _%L171217%_)
                                               (let ((_%self171229%_
                                                      (list-ref
                                                       _%L171217%_
                                                       _%self-index170807%_)))
                                                 (for-each
                                                  (lambda (_%g171230171232%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#apply-collect-object-refs__%
                                                       '#f
                                                       _%self171229%_
                                                       _%method-calls168835%_
                                                       _%slot-refs168836%_
                                                       _%g171230171232%_)))
                                                  _%L171216%_)))
                                             _%tl171196171213%_
                                             _%hd171197171211%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g171192171203%_
                                           _%g171193171206%_))))))
                            (declare (not safe))
                            (_%g171191171235%_ _%clause171190%_)))
                        (let ((__tmp172871
                               (lambda (_%g171237171240%_ _%g171238171242%_)
                                 (cons _%g171237171240%_ _%g171238171242%_))))
                          (declare (not safe))
                          (__foldr1 __tmp172871 '() _%L171177%_))))
                     _%clause171135171174%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop171130171158%_
                                               _%target171127171153%_
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g171121171140%_
                                             _%g171122171143%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g171121171140%_ _%g171122171143%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g171121171140%_ _%g171122171143%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171120171245%_
                                                     _%L171037%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (_%no-specializer?168839%_))
                                                      _%stx168743%_
                                                      (let* ((_%specializer-id171254%_
                                                              (let* ((_%id171248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp172872
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L168816%_))))
                                (declare (not safe))
                                (make-symbol__1 __tmp172872 '"::specialize")))
                             (_%specializer-id171251%_
                              (let ((__tmp172873
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _%stx168743%_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _%id171248%_
                                 __tmp172873))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0 _%specializer-id171251%_))
                        _%specializer-id171251%_))
                     (_%$klass171256%_
                      (let ((__tmp172874
                             (let ()
                               (declare (not safe))
                               (##gensym '__klass))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172874)))
                     (_%$method-table171258%_
                      (let ((__tmp172875
                             (let ()
                               (declare (not safe))
                               (##gensym '__method-table))))
                        (declare (not safe))
                        (make-symbol__0 __tmp172875)))
                     (_%methods171260%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%method-calls168835%_)))
                     (_%$methods171264%_
                      (map (lambda (_%id171262%_)
                             (let ((__tmp172876 (gensym _%id171262%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172876)))
                           _%methods171260%_))
                     (_%_171273%_
                      (for-each
                       (lambda (_%g171265171268%_ _%g171266171270%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%method-calls168835%_
                            _%g171265171268%_
                            _%g171266171270%_)))
                       _%methods171260%_
                       _%$methods171264%_))
                     (_%methods-bind171283%_
                      (map (lambda (_%g171275171278%_ _%g171276171280%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-method-bind168745%_
                                _%$klass171256%_
                                _%$method-table171258%_
                                _%g171275171278%_
                                _%g171276171280%_)))
                           _%methods171260%_
                           _%$methods171264%_))
                     (_%slots171285%_
                      (let ()
                        (declare (not safe))
                        (hash-keys _%slot-refs168836%_)))
                     (_%$slots171289%_
                      (map (lambda (_%id171287%_)
                             (let ((__tmp172877 (gensym _%id171287%_)))
                               (declare (not safe))
                               (make-symbol__1 '"__" __tmp172877)))
                           _%slots171285%_))
                     (_%_171298%_
                      (for-each
                       (lambda (_%g171290171293%_ _%g171291171295%_)
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _%slot-refs168836%_
                            _%g171290171293%_
                            _%g171291171295%_)))
                       _%slots171285%_
                       _%$slots171289%_))
                     (_%slots-bind171307%_
                      (map (lambda (_%g171299171302%_ _%g171300171304%_)
                             (let ()
                               (declare (not safe))
                               (_%generate-slot-bind168746%_
                                _%$klass171256%_
                                _%g171299171302%_
                                _%g171300171304%_)))
                           _%slots171285%_
                           _%$slots171289%_))
                     (_%specializer-lambda-expr171380%_
                      (let* ((_%g171309171323%_
                              (lambda (_%g171310171320%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171310171320%_))))
                             (_%g171308171377%_
                              (lambda (_%g171310171326%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171310171326%_))
                                    (let ((_%e171315171328%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171310171326%_))))
                                      (let ((_%hd171314171331%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171315171328%_)))
                                            (_%tl171313171333%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171315171328%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171313171333%_))
                                            (let ((_%e171318171336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171313171333%_))))
                                              (let ((_%hd171317171339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171318171336%_)))
                                                    (_%tl171316171341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171318171336%_))))
                                                ((lambda (_%L171344%_
                                                          _%L171345%_)
                                                   (let* ((_%self171368%_
                                                           (list-ref
                                                            _%L171345%_
                                                            _%self-index170807%_))
                                                          (_%body171374%_
                                                           (map (lambda (_%g171369171371%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%self171368%_
                             _%$klass171256%_
                             _%method-calls168835%_
                             _%slot-refs168836%_
                             _%g171369171371%_)))
                        _%L171344%_))
                  (__tmp172878
                   (cons '%#lambda (cons _%L171345%_ _%body171374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp172878
                                                      _%L171038%_)))
                                                 _%tl171316171341%_
                                                 _%hd171317171339%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g171309171323%_
                                               _%g171310171326%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171309171323%_
                                       _%g171310171326%_))))))
                        (declare (not safe))
                        (_%g171308171377%_ _%L171038%_)))
                     (_%specializer-case-lambda-expr171515%_
                      (let* ((_%g171382171401%_
                              (lambda (_%g171383171398%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g171383171398%_))))
                             (_%g171381171512%_
                              (lambda (_%g171383171404%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g171383171404%_))
                                    (let ((_%e171387171406%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g171383171404%_))))
                                      (let ((_%hd171386171409%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171387171406%_)))
                                            (_%tl171385171411%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171387171406%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl171385171411%_))
                                            (let ((_g172879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%tl171385171411%_
                                                      '0))))
                                              (begin
                                                (let ((_g172880_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g172879_)
                                                             (##vector-length
                                                              _g172879_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g172880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g172880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target171388171414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172879_
                                                          0)))
                                                      (_%tl171390171416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g172879_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl171390171416%_))
                                                      (letrec ((_%loop171391171419%_
                                                                (lambda (_%hd171389171422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%clause171395171424%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd171389171422%_))
                              (let ((_%e171392171427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd171389171422%_))))
                                (let ((_%lp-hd171393171430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171392171427%_)))
                                      (_%lp-tl171394171432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171392171427%_))))
                                  (let ((__tmp172881
                                         (cons _%lp-hd171393171430%_
                                               _%clause171395171424%_)))
                                    (declare (not safe))
                                    (_%loop171391171419%_
                                     _%lp-tl171394171432%_
                                     __tmp172881))))
                              (let ((_%clause171396171435%_
                                     (reverse _%clause171395171424%_)))
                                ((lambda (_%L171438%_)
                                   (let* ((_%clauses171510%_
                                           (map (lambda (_%clause171452%_)
                                                  (let* ((_%g171454171465%_
                                                          (lambda (_%g171455171462%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g171455171462%_))))
                                                         (_%g171453171500%_
                                                          (lambda (_%g171455171468%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g171455171468%_))
                        (let ((_%e171460171470%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g171455171468%_))))
                          (let ((_%hd171459171473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e171460171470%_)))
                                (_%tl171458171475%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e171460171470%_))))
                            ((lambda (_%L171478%_ _%L171479%_)
                               (let* ((_%self171491%_
                                       (list-ref
                                        _%L171479%_
                                        _%self-index170807%_))
                                      (_%body171497%_
                                       (map (lambda (_%g171492171494%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%self171491%_
                                                 _%$klass171256%_
                                                 _%method-calls168835%_
                                                 _%slot-refs168836%_
                                                 _%g171492171494%_)))
                                            _%L171478%_)))
                                 (cons _%L171479%_ _%body171497%_)))
                             _%tl171458171475%_
                             _%hd171459171473%_)))
                        (let ()
                          (declare (not safe))
                          (_%g171454171465%_ _%g171455171468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%g171453171500%_
                                                     _%clause171452%_)))
                                                (let ((__tmp172882
                                                       (lambda (_%g171502171505%_
                                                                _%g171503171507%_)
                                                         (cons _%g171502171505%_
                                                               _%g171503171507%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172882
                                                   '()
                                                   _%L171438%_))))
                                          (__tmp172883
                                           (cons '%#case-lambda
                                                 _%clauses171510%_)))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp172883
                                      _%L171037%_)))
                                 _%clause171396171435%_))))))
                (let ()
                  (declare (not safe))
                  (_%loop171391171419%_ _%target171388171414%_ '())))
              (let ()
                (declare (not safe))
                (_%g171382171401%_ _%g171383171404%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%g171382171401%_
                                               _%g171383171404%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g171382171401%_
                                       _%g171383171404%_))))))
                        (declare (not safe))
                        (_%g171381171512%_ _%L171037%_)))
                     (_%specializer-impl171517%_
                      (let ((__tmp172884
                             (cons '%#let-values
                                   (cons (cons (cons (cons _%L170507%_ '())
                                                     (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (cons _%L170506%_ '())
                                           (cons (let ((__tmp172885
                                                        (cons '%#let-values
                                                              (cons (cons (cons (cons _%L171039%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%specializer-lambda-expr171380%_
                                              '()))
                                  '())
                            (cons _%specializer-case-lambda-expr171515%_
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp172885
                                                    _%stx168743%_))
                                                 '()))
                                     '())
                               (cons _%L170504%_ '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%L170503%_ '())))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp172884 _%stx168743%_)))
                     (_%specializer-impl171519%_
                      (let ()
                        (declare (not safe))
                        (_%generate-specializer-impl168747%_
                         _%$klass171256%_
                         _%$method-table171258%_
                         _%methods-bind171283%_
                         _%slots-bind171307%_
                         _%specializer-impl171517%_))))
                (let ((__tmp172887
                       (let () (declare (not safe)) (gx#stx-e _%L168816%_)))
                      (__tmp172886
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%specializer-id171254%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"generate method specializer "
                   __tmp172887
                   '" => "
                   __tmp172886))
                (let ()
                  (declare (not safe))
                  (_%generate-specializer-def168748%_
                   _%L168816%_
                   _%specializer-id171254%_
                   _%specializer-impl171519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%hd170970171032%_
                                                _%hd170967171024%_
                                                _%hd170964171016%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g170946170976%_
                                                  _%g170947170979%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g170946170976%_
                                          _%g170947170979%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170946170976%_ _%g170947170979%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%g170946170976%_ _%g170947170979%_)))))
                       (let ()
                         (declare (not safe))
                         (_%g170946170976%_ _%g170947170979%_)))
                   (let ()
                     (declare (not safe))
                     (_%g170946170976%_ _%g170947170979%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g170946170976%_
                                                      _%g170947170979%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g170946170976%_
                                              _%g170947170979%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g170946170976%_ _%g170947170979%_)))))
                           (let ()
                             (declare (not safe))
                             (_%g170946170976%_ _%g170947170979%_)))))
                   (let ()
                     (declare (not safe))
                     (_%g170946170976%_ _%g170947170979%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%g170945171522%_
                                                _%L170505%_)))
                                           (let () _%stx168743%_)))))
                               _%hd170603170726%_
                               _%kw-ref170601170747%_
                               _%hd170591170713%_
                               _%hd170582170689%_
                               _%hd170573170665%_)
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop170596170731%_
                                                     _%target170593170718%_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g170547170609%_
                                                   _%g170548170612%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170547170609%_
                                           _%g170548170612%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170547170609%_ _%g170548170612%_)))
                      (let ()
                        (declare (not safe))
                        (_%g170547170609%_ _%g170548170612%_)))))
              (let ()
                (declare (not safe))
                (_%g170547170609%_ _%g170548170612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170547170609%_
                                                     _%g170548170612%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170547170609%_
                                                 _%g170548170612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170547170609%_
                                         _%g170548170612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_)))
                          (let ()
                            (declare (not safe))
                            (_%g170547170609%_ _%g170548170612%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g170547170609%_ _%g170548170612%_)))
              (let ()
                (declare (not safe))
                (_%g170547170609%_ _%g170548170612%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g170547170609%_
                                                     _%g170548170612%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170547170609%_
                                             _%g170548170612%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170547170609%_ _%g170548170612%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170547170609%_ _%g170548170612%_)))
                  (let ()
                    (declare (not safe))
                    (_%g170547170609%_ _%g170548170612%_)))
              (let ()
                (declare (not safe))
                (_%g170547170609%_ _%g170548170612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170547170609%_
                                                 _%g170548170612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170547170609%_ _%g170548170612%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%g170547170609%_ _%g170548170612%_)))
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g170547170609%_ _%g170548170612%_)))))
              (let ()
                (declare (not safe))
                (_%g170547170609%_ _%g170548170612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170547170609%_
                                                 _%g170548170612%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g170547170609%_
                                             _%g170548170612%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170547170609%_
                                         _%g170548170612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g170547170609%_ _%g170548170612%_))))))
                  (declare (not safe))
                  (_%g170546171526%_ _%L170504%_)))
              _%hd170380170498%_
              _%hd170377170490%_
              _%hd170374170482%_
              _%hd170371170474%_
              _%hd170353170426%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170333170386%_
                                                        _%g170334170389%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170333170386%_
                                                _%g170334170389%_)))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170333170386%_
                                            _%g170334170389%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170333170386%_ _%g170334170389%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170333170386%_ _%g170334170389%_)))))
                         (let ()
                           (declare (not safe))
                           (_%g170333170386%_ _%g170334170389%_)))
                     (let ()
                       (declare (not safe))
                       (_%g170333170386%_ _%g170334170389%_)))
                 (let ()
                   (declare (not safe))
                   (_%g170333170386%_ _%g170334170389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170333170386%_
                                                    _%g170334170389%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170333170386%_
                                                _%g170334170389%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170333170386%_
                                        _%g170334170389%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170333170386%_ _%g170334170389%_)))))
                     (let ()
                       (declare (not safe))
                       (_%g170333170386%_ _%g170334170389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g170333170386%_
                                                        _%g170334170389%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170333170386%_
                                                    _%g170334170389%_)))
                                             (let ()
                                               (declare (not safe))
                                               (_%g170333170386%_
                                                _%g170334170389%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%g170333170386%_
                                        _%g170334170389%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g170333170386%_ _%g170334170389%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170333170386%_ _%g170334170389%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170333170386%_ _%g170334170389%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%g170333170386%_
                                                    _%g170334170389%_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g170333170386%_
                                            _%g170334170389%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%g170333170386%_ _%g170334170389%_)))
                             (let ()
                               (declare (not safe))
                               (_%g170333170386%_ _%g170334170389%_)))
                         (let ()
                           (declare (not safe))
                           (_%g170333170386%_ _%g170334170389%_)))))
                 (let ()
                   (declare (not safe))
                   (_%g170333170386%_ _%g170334170389%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%g170332171529%_ _%L168815%_)))
                                         (let () _%stx168743%_)))))))))
                  (_%__kont171752171753%_ (lambda () _%stx168743%_)))
              (let ((_%__match171781171782%_
                     (lambda (_%e168757168783%_
                              _%hd168756168786%_
                              _%tl168755168788%_
                              _%e168760168791%_
                              _%hd168759168794%_
                              _%tl168758168796%_
                              _%e168763168799%_
                              _%hd168762168802%_
                              _%tl168761168804%_
                              _%e168766168807%_
                              _%hd168765168810%_
                              _%tl168764168812%_)
                       (let ((_%L168815%_ _%hd168765168810%_)
                             (_%L168816%_ _%hd168762168802%_))
                         (if (let ((__tmp172888
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L168816%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp172888))
                             (_%__kont171750171751%_ _%L168815%_ _%L168816%_)
                             (_%__kont171752171753%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171748171749%_))
                    (let ((_%e168757168783%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171748171749%_))))
                      (let ((_%tl168755168788%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168757168783%_)))
                            (_%hd168756168786%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168757168783%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl168755168788%_))
                            (let ((_%e168760168791%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl168755168788%_))))
                              (let ((_%tl168758168796%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168760168791%_)))
                                    (_%hd168759168794%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168760168791%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd168759168794%_))
                                    (let ((_%e168763168799%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd168759168794%_))))
                                      (let ((_%tl168761168804%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168763168799%_)))
                                            (_%hd168762168802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168763168799%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168761168804%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl168758168796%_))
                                                (let ((_%e168766168807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl168758168796%_))))
                                                  (let ((_%tl168764168812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168766168807%_)))
                                                        (_%hd168765168810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168766168807%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl168764168812%_))
                                                        (_%__match171781171782%_
                                                         _%e168757168783%_
                                                         _%hd168756168786%_
                                                         _%tl168755168788%_
                                                         _%e168760168791%_
                                                         _%hd168759168794%_
                                                         _%tl168758168796%_
                                                         _%e168763168799%_
                                                         _%hd168762168802%_
                                                         _%tl168761168804%_
                                                         _%e168766168807%_
                                                         _%hd168765168810%_
                                                         _%tl168764168812%_)
                                                        (_%__kont171752171753%_))))
                                                (_%__kont171752171753%_))
                                            (_%__kont171752171753%_))))
                                    (_%__kont171752171753%_))))
                            (_%__kont171752171753%_))))
                    (_%__kont171752171753%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self167703%_ _%stx167704%_)
        (let* ((_%__stx171784171785%_ _%stx167704%_)
               (_%g167712167934%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171784171785%_)))))
          (let ((_%__kont171786171787%_
                 (lambda (_%L168691%_ _%L168692%_ _%L168693%_ _%L168694%_)
                   (let ((__tmp172890
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167703%_ 'methods)))
                         (__tmp172889
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168692%_))))
                     (declare (not safe))
                     (hash-put! __tmp172890 __tmp172889 '#t))
                   (for-each
                    (lambda (_%g168727168729%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167703%_ _%g168727168729%_)))
                    (let ((__tmp172891
                           (lambda (_%g168731168734%_ _%g168732168736%_)
                             (cons _%g168731168734%_ _%g168732168736%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172891 '() _%L168691%_)))))
                (_%__kont171790171791%_
                 (lambda (_%L168526%_
                          _%L168527%_
                          _%L168528%_
                          _%L168529%_
                          _%L168530%_)
                   (let ((__tmp172893
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167703%_ 'methods)))
                         (__tmp172892
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168527%_))))
                     (declare (not safe))
                     (hash-put! __tmp172893 __tmp172892 '#t))
                   (for-each
                    (lambda (_%g168570168572%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167703%_ _%g168570168572%_)))
                    (let ((__tmp172894
                           (lambda (_%g168574168577%_ _%g168575168579%_)
                             (cons _%g168574168577%_ _%g168575168579%_))))
                      (declare (not safe))
                      (__foldr1 __tmp172894 '() _%L168526%_)))))
                (_%__kont171794171795%_
                 (lambda (_%L168359%_ _%L168360%_ _%L168361%_)
                   (let ((__tmp172896
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167703%_ 'slots)))
                         (__tmp172895
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168359%_))))
                     (declare (not safe))
                     (hash-put! __tmp172896 __tmp172895 '#t))))
                (_%__kont171796171797%_
                 (lambda (_%L168236%_ _%L168237%_ _%L168238%_ _%L168239%_)
                   (let ((__tmp172898
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self167703%_ 'slots)))
                         (__tmp172897
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168237%_))))
                     (declare (not safe))
                     (hash-put! __tmp172898 __tmp172897 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self167703%_ _%L168236%_))))
                (_%__kont171798171799%_
                 (lambda (_%L168110%_ _%L168111%_)
                   (let* ((_%accessor168133%_
                           (let ((__tmp172899
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168111%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172899)))
                          (_%klass168135%_
                           (let ((__tmp172900
                                  (##structure-ref
                                   _%accessor168133%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167704%_
                              __tmp172900)))
                          (_%slot168137%_
                           (##structure-ref
                            _%accessor168133%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp172901
                                     (##structure-ref
                                      _%accessor168133%_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172901))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168135%_
                                     _%slot168137%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168135%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172903
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167703%_ 'slots)))
                               (__tmp172902
                                (##structure-ref
                                 _%accessor168133%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp172903 __tmp172902 '#t))))))
                (_%__kont171800171801%_
                 (lambda (_%L168010%_ _%L168011%_ _%L168012%_)
                   (let* ((_%mutator168039%_
                           (let ((__tmp172904
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168012%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp172904)))
                          (_%klass168041%_
                           (let ((__tmp172905
                                  (##structure-ref
                                   _%mutator168039%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx167704%_
                              __tmp172905)))
                          (_%slot168043%_
                           (##structure-ref
                            _%mutator168039%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp172906
                                     (##structure-ref
                                      _%mutator168039%_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp172906))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168041%_
                                     _%slot168043%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168041%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp172907
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self167703%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp172907 _%slot168043%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self167703%_ _%L168010%_)))))
                (_%__kont171802171803%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self167703%_ _%stx167704%_)))))
            (let* ((_%__match172283172284%_
                    (lambda (_%e167908167946%_
                             _%hd167907167949%_
                             _%tl167906167951%_
                             _%e167911167954%_
                             _%hd167910167957%_
                             _%tl167909167959%_
                             _%e167914167962%_
                             _%hd167913167965%_
                             _%tl167912167967%_
                             _%e167917167970%_
                             _%hd167916167973%_
                             _%tl167915167975%_
                             _%e167920167978%_
                             _%hd167919167981%_
                             _%tl167918167983%_
                             _%e167923167986%_
                             _%hd167922167989%_
                             _%tl167921167991%_
                             _%e167926167994%_
                             _%hd167925167997%_
                             _%tl167924167999%_
                             _%e167929168002%_
                             _%hd167928168005%_
                             _%tl167927168007%_)
                      (let ((_%L168010%_ _%hd167928168005%_)
                            (_%L168011%_ _%hd167925167997%_)
                            (_%L168012%_ _%hd167916167973%_))
                        (if (and (let ((__tmp172908
                                        (let ((__tmp172909
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168012%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172909))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172908
                                    'gxc#!mutator::t))
                                 (let ((__tmp172910
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167703%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168011%_
                                    __tmp172910)))
                            (_%__kont171800171801%_
                             _%L168010%_
                             _%L168011%_
                             _%L168012%_)
                            (_%__kont171802171803%_)))))
                   (_%__match172281172282%_
                    (lambda (_%e167908167946%_
                             _%hd167907167949%_
                             _%tl167906167951%_
                             _%e167911167954%_
                             _%hd167910167957%_
                             _%tl167909167959%_
                             _%e167914167962%_
                             _%hd167913167965%_
                             _%tl167912167967%_
                             _%e167917167970%_
                             _%hd167916167973%_
                             _%tl167915167975%_
                             _%e167920167978%_
                             _%hd167919167981%_
                             _%tl167918167983%_
                             _%e167923167986%_
                             _%hd167922167989%_
                             _%tl167921167991%_
                             _%e167926167994%_
                             _%hd167925167997%_
                             _%tl167924167999%_
                             _%e167929168002%_
                             _%hd167928168005%_
                             _%tl167927168007%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167927168007%_))
                          (_%__match172283172284%_
                           _%e167908167946%_
                           _%hd167907167949%_
                           _%tl167906167951%_
                           _%e167911167954%_
                           _%hd167910167957%_
                           _%tl167909167959%_
                           _%e167914167962%_
                           _%hd167913167965%_
                           _%tl167912167967%_
                           _%e167917167970%_
                           _%hd167916167973%_
                           _%tl167915167975%_
                           _%e167920167978%_
                           _%hd167919167981%_
                           _%tl167918167983%_
                           _%e167923167986%_
                           _%hd167922167989%_
                           _%tl167921167991%_
                           _%e167926167994%_
                           _%hd167925167997%_
                           _%tl167924167999%_
                           _%e167929168002%_
                           _%hd167928168005%_
                           _%tl167927168007%_)
                          (_%__kont171802171803%_))))
                   (_%__match172275172276%_
                    (lambda (_%e167908167946%_
                             _%hd167907167949%_
                             _%tl167906167951%_
                             _%e167911167954%_
                             _%hd167910167957%_
                             _%tl167909167959%_
                             _%e167914167962%_
                             _%hd167913167965%_
                             _%tl167912167967%_
                             _%e167917167970%_
                             _%hd167916167973%_
                             _%tl167915167975%_
                             _%e167920167978%_
                             _%hd167919167981%_
                             _%tl167918167983%_
                             _%e167923167986%_
                             _%hd167922167989%_
                             _%tl167921167991%_
                             _%e167926167994%_
                             _%hd167925167997%_
                             _%tl167924167999%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167918167983%_))
                          (let ((_%e167929168002%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167918167983%_))))
                            (let ((_%tl167927168007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167929168002%_)))
                                  (_%hd167928168005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167929168002%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167927168007%_))
                                  (_%__match172283172284%_
                                   _%e167908167946%_
                                   _%hd167907167949%_
                                   _%tl167906167951%_
                                   _%e167911167954%_
                                   _%hd167910167957%_
                                   _%tl167909167959%_
                                   _%e167914167962%_
                                   _%hd167913167965%_
                                   _%tl167912167967%_
                                   _%e167917167970%_
                                   _%hd167916167973%_
                                   _%tl167915167975%_
                                   _%e167920167978%_
                                   _%hd167919167981%_
                                   _%tl167918167983%_
                                   _%e167923167986%_
                                   _%hd167922167989%_
                                   _%tl167921167991%_
                                   _%e167926167994%_
                                   _%hd167925167997%_
                                   _%tl167924167999%_
                                   _%e167929168002%_
                                   _%hd167928168005%_
                                   _%tl167927168007%_)
                                  (_%__kont171802171803%_))))
                          (_%__kont171802171803%_))))
                   (_%__match172221172222%_
                    (lambda (_%e167884168054%_
                             _%hd167883168057%_
                             _%tl167882168059%_
                             _%e167887168062%_
                             _%hd167886168065%_
                             _%tl167885168067%_
                             _%e167890168070%_
                             _%hd167889168073%_
                             _%tl167888168075%_
                             _%e167893168078%_
                             _%hd167892168081%_
                             _%tl167891168083%_
                             _%e167896168086%_
                             _%hd167895168089%_
                             _%tl167894168091%_
                             _%e167899168094%_
                             _%hd167898168097%_
                             _%tl167897168099%_
                             _%e167902168102%_
                             _%hd167901168105%_
                             _%tl167900168107%_)
                      (let ((_%L168110%_ _%hd167901168105%_)
                            (_%L168111%_ _%hd167892168081%_))
                        (if (and (let ((__tmp172911
                                        (let ((__tmp172912
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168111%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp172912))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp172911
                                    'gxc#!accessor::t))
                                 (let ((__tmp172913
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167703%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168110%_
                                    __tmp172913)))
                            (_%__kont171798171799%_ _%L168110%_ _%L168111%_)
                            (_%__kont171802171803%_)))))
                   (_%__match172219172220%_
                    (lambda (_%e167884168054%_
                             _%hd167883168057%_
                             _%tl167882168059%_
                             _%e167887168062%_
                             _%hd167886168065%_
                             _%tl167885168067%_
                             _%e167890168070%_
                             _%hd167889168073%_
                             _%tl167888168075%_
                             _%e167893168078%_
                             _%hd167892168081%_
                             _%tl167891168083%_
                             _%e167896168086%_
                             _%hd167895168089%_
                             _%tl167894168091%_
                             _%e167899168094%_
                             _%hd167898168097%_
                             _%tl167897168099%_
                             _%e167902168102%_
                             _%hd167901168105%_
                             _%tl167900168107%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167894168091%_))
                          (_%__match172221172222%_
                           _%e167884168054%_
                           _%hd167883168057%_
                           _%tl167882168059%_
                           _%e167887168062%_
                           _%hd167886168065%_
                           _%tl167885168067%_
                           _%e167890168070%_
                           _%hd167889168073%_
                           _%tl167888168075%_
                           _%e167893168078%_
                           _%hd167892168081%_
                           _%tl167891168083%_
                           _%e167896168086%_
                           _%hd167895168089%_
                           _%tl167894168091%_
                           _%e167899168094%_
                           _%hd167898168097%_
                           _%tl167897168099%_
                           _%e167902168102%_
                           _%hd167901168105%_
                           _%tl167900168107%_)
                          (_%__match172275172276%_
                           _%e167884168054%_
                           _%hd167883168057%_
                           _%tl167882168059%_
                           _%e167887168062%_
                           _%hd167886168065%_
                           _%tl167885168067%_
                           _%e167890168070%_
                           _%hd167889168073%_
                           _%tl167888168075%_
                           _%e167893168078%_
                           _%hd167892168081%_
                           _%tl167891168083%_
                           _%e167896168086%_
                           _%hd167895168089%_
                           _%tl167894168091%_
                           _%e167899168094%_
                           _%hd167898168097%_
                           _%tl167897168099%_
                           _%e167902168102%_
                           _%hd167901168105%_
                           _%tl167900168107%_))))
                   (_%__match172165172166%_
                    (lambda (_%e167849168148%_
                             _%hd167848168151%_
                             _%tl167847168153%_
                             _%e167852168156%_
                             _%hd167851168159%_
                             _%tl167850168161%_
                             _%e167855168164%_
                             _%hd167854168167%_
                             _%tl167853168169%_
                             _%e167858168172%_
                             _%hd167857168175%_
                             _%tl167856168177%_
                             _%e167861168180%_
                             _%hd167860168183%_
                             _%tl167859168185%_
                             _%e167864168188%_
                             _%hd167863168191%_
                             _%tl167862168193%_
                             _%e167867168196%_
                             _%hd167866168199%_
                             _%tl167865168201%_
                             _%e167870168204%_
                             _%hd167869168207%_
                             _%tl167868168209%_
                             _%e167873168212%_
                             _%hd167872168215%_
                             _%tl167871168217%_
                             _%e167876168220%_
                             _%hd167875168223%_
                             _%tl167874168225%_
                             _%e167879168228%_
                             _%hd167878168231%_
                             _%tl167877168233%_)
                      (let ((_%L168236%_ _%hd167878168231%_)
                            (_%L168237%_ _%hd167875168223%_)
                            (_%L168238%_ _%hd167866168199%_)
                            (_%L168239%_ _%hd167857168175%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168239%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168239%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp172914
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167703%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168238%_
                                    __tmp172914)))
                            (_%__kont171796171797%_
                             _%L168236%_
                             _%L168237%_
                             _%L168238%_
                             _%L168239%_)
                            (_%__kont171802171803%_)))))
                   (_%__match172157172158%_
                    (lambda (_%e167849168148%_
                             _%hd167848168151%_
                             _%tl167847168153%_
                             _%e167852168156%_
                             _%hd167851168159%_
                             _%tl167850168161%_
                             _%e167855168164%_
                             _%hd167854168167%_
                             _%tl167853168169%_
                             _%e167858168172%_
                             _%hd167857168175%_
                             _%tl167856168177%_
                             _%e167861168180%_
                             _%hd167860168183%_
                             _%tl167859168185%_
                             _%e167864168188%_
                             _%hd167863168191%_
                             _%tl167862168193%_
                             _%e167867168196%_
                             _%hd167866168199%_
                             _%tl167865168201%_
                             _%e167870168204%_
                             _%hd167869168207%_
                             _%tl167868168209%_
                             _%e167873168212%_
                             _%hd167872168215%_
                             _%tl167871168217%_
                             _%e167876168220%_
                             _%hd167875168223%_
                             _%tl167874168225%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167868168209%_))
                          (let ((_%e167879168228%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167868168209%_))))
                            (let ((_%tl167877168233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167879168228%_)))
                                  (_%hd167878168231%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167879168228%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167877168233%_))
                                  (_%__match172165172166%_
                                   _%e167849168148%_
                                   _%hd167848168151%_
                                   _%tl167847168153%_
                                   _%e167852168156%_
                                   _%hd167851168159%_
                                   _%tl167850168161%_
                                   _%e167855168164%_
                                   _%hd167854168167%_
                                   _%tl167853168169%_
                                   _%e167858168172%_
                                   _%hd167857168175%_
                                   _%tl167856168177%_
                                   _%e167861168180%_
                                   _%hd167860168183%_
                                   _%tl167859168185%_
                                   _%e167864168188%_
                                   _%hd167863168191%_
                                   _%tl167862168193%_
                                   _%e167867168196%_
                                   _%hd167866168199%_
                                   _%tl167865168201%_
                                   _%e167870168204%_
                                   _%hd167869168207%_
                                   _%tl167868168209%_
                                   _%e167873168212%_
                                   _%hd167872168215%_
                                   _%tl167871168217%_
                                   _%e167876168220%_
                                   _%hd167875168223%_
                                   _%tl167874168225%_
                                   _%e167879168228%_
                                   _%hd167878168231%_
                                   _%tl167877168233%_)
                                  (_%__kont171802171803%_))))
                          (_%__match172281172282%_
                           _%e167849168148%_
                           _%hd167848168151%_
                           _%tl167847168153%_
                           _%e167852168156%_
                           _%hd167851168159%_
                           _%tl167850168161%_
                           _%e167855168164%_
                           _%hd167854168167%_
                           _%tl167853168169%_
                           _%e167858168172%_
                           _%hd167857168175%_
                           _%tl167856168177%_
                           _%e167861168180%_
                           _%hd167860168183%_
                           _%tl167859168185%_
                           _%e167864168188%_
                           _%hd167863168191%_
                           _%tl167862168193%_
                           _%e167867168196%_
                           _%hd167866168199%_
                           _%tl167865168201%_
                           _%e167870168204%_
                           _%hd167869168207%_
                           _%tl167868168209%_))))
                   (_%__match172079172080%_
                    (lambda (_%e167815168279%_
                             _%hd167814168282%_
                             _%tl167813168284%_
                             _%e167818168287%_
                             _%hd167817168290%_
                             _%tl167816168292%_
                             _%e167821168295%_
                             _%hd167820168298%_
                             _%tl167819168300%_
                             _%e167824168303%_
                             _%hd167823168306%_
                             _%tl167822168308%_
                             _%e167827168311%_
                             _%hd167826168314%_
                             _%tl167825168316%_
                             _%e167830168319%_
                             _%hd167829168322%_
                             _%tl167828168324%_
                             _%e167833168327%_
                             _%hd167832168330%_
                             _%tl167831168332%_
                             _%e167836168335%_
                             _%hd167835168338%_
                             _%tl167834168340%_
                             _%e167839168343%_
                             _%hd167838168346%_
                             _%tl167837168348%_
                             _%e167842168351%_
                             _%hd167841168354%_
                             _%tl167840168356%_)
                      (let ((_%L168359%_ _%hd167841168354%_)
                            (_%L168360%_ _%hd167832168330%_)
                            (_%L168361%_ _%hd167823168306%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168361%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168361%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp172915
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self167703%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168360%_
                                    __tmp172915)))
                            (_%__kont171794171795%_
                             _%L168359%_
                             _%L168360%_
                             _%L168361%_)
                            (_%__match172283172284%_
                             _%e167815168279%_
                             _%hd167814168282%_
                             _%tl167813168284%_
                             _%e167818168287%_
                             _%hd167817168290%_
                             _%tl167816168292%_
                             _%e167821168295%_
                             _%hd167820168298%_
                             _%tl167819168300%_
                             _%e167824168303%_
                             _%hd167823168306%_
                             _%tl167822168308%_
                             _%e167827168311%_
                             _%hd167826168314%_
                             _%tl167825168316%_
                             _%e167830168319%_
                             _%hd167829168322%_
                             _%tl167828168324%_
                             _%e167833168327%_
                             _%hd167832168330%_
                             _%tl167831168332%_
                             _%e167836168335%_
                             _%hd167835168338%_
                             _%tl167834168340%_)))))
                   (_%__match172077172078%_
                    (lambda (_%e167815168279%_
                             _%hd167814168282%_
                             _%tl167813168284%_
                             _%e167818168287%_
                             _%hd167817168290%_
                             _%tl167816168292%_
                             _%e167821168295%_
                             _%hd167820168298%_
                             _%tl167819168300%_
                             _%e167824168303%_
                             _%hd167823168306%_
                             _%tl167822168308%_
                             _%e167827168311%_
                             _%hd167826168314%_
                             _%tl167825168316%_
                             _%e167830168319%_
                             _%hd167829168322%_
                             _%tl167828168324%_
                             _%e167833168327%_
                             _%hd167832168330%_
                             _%tl167831168332%_
                             _%e167836168335%_
                             _%hd167835168338%_
                             _%tl167834168340%_
                             _%e167839168343%_
                             _%hd167838168346%_
                             _%tl167837168348%_
                             _%e167842168351%_
                             _%hd167841168354%_
                             _%tl167840168356%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl167834168340%_))
                          (_%__match172079172080%_
                           _%e167815168279%_
                           _%hd167814168282%_
                           _%tl167813168284%_
                           _%e167818168287%_
                           _%hd167817168290%_
                           _%tl167816168292%_
                           _%e167821168295%_
                           _%hd167820168298%_
                           _%tl167819168300%_
                           _%e167824168303%_
                           _%hd167823168306%_
                           _%tl167822168308%_
                           _%e167827168311%_
                           _%hd167826168314%_
                           _%tl167825168316%_
                           _%e167830168319%_
                           _%hd167829168322%_
                           _%tl167828168324%_
                           _%e167833168327%_
                           _%hd167832168330%_
                           _%tl167831168332%_
                           _%e167836168335%_
                           _%hd167835168338%_
                           _%tl167834168340%_
                           _%e167839168343%_
                           _%hd167838168346%_
                           _%tl167837168348%_
                           _%e167842168351%_
                           _%hd167841168354%_
                           _%tl167840168356%_)
                          (_%__match172157172158%_
                           _%e167815168279%_
                           _%hd167814168282%_
                           _%tl167813168284%_
                           _%e167818168287%_
                           _%hd167817168290%_
                           _%tl167816168292%_
                           _%e167821168295%_
                           _%hd167820168298%_
                           _%tl167819168300%_
                           _%e167824168303%_
                           _%hd167823168306%_
                           _%tl167822168308%_
                           _%e167827168311%_
                           _%hd167826168314%_
                           _%tl167825168316%_
                           _%e167830168319%_
                           _%hd167829168322%_
                           _%tl167828168324%_
                           _%e167833168327%_
                           _%hd167832168330%_
                           _%tl167831168332%_
                           _%e167836168335%_
                           _%hd167835168338%_
                           _%tl167834168340%_
                           _%e167839168343%_
                           _%hd167838168346%_
                           _%tl167837168348%_
                           _%e167842168351%_
                           _%hd167841168354%_
                           _%tl167840168356%_))))
                   (_%__match172067172068%_
                    (lambda (_%e167815168279%_
                             _%hd167814168282%_
                             _%tl167813168284%_
                             _%e167818168287%_
                             _%hd167817168290%_
                             _%tl167816168292%_
                             _%e167821168295%_
                             _%hd167820168298%_
                             _%tl167819168300%_
                             _%e167824168303%_
                             _%hd167823168306%_
                             _%tl167822168308%_
                             _%e167827168311%_
                             _%hd167826168314%_
                             _%tl167825168316%_
                             _%e167830168319%_
                             _%hd167829168322%_
                             _%tl167828168324%_
                             _%e167833168327%_
                             _%hd167832168330%_
                             _%tl167831168332%_
                             _%e167836168335%_
                             _%hd167835168338%_
                             _%tl167834168340%_
                             _%e167839168343%_
                             _%hd167838168346%_
                             _%tl167837168348%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd167838168346%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167837168348%_))
                              (let ((_%e167842168351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167837168348%_))))
                                (let ((_%tl167840168356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167842168351%_)))
                                      (_%hd167841168354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167842168351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167840168356%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl167834168340%_))
                                          (_%__match172079172080%_
                                           _%e167815168279%_
                                           _%hd167814168282%_
                                           _%tl167813168284%_
                                           _%e167818168287%_
                                           _%hd167817168290%_
                                           _%tl167816168292%_
                                           _%e167821168295%_
                                           _%hd167820168298%_
                                           _%tl167819168300%_
                                           _%e167824168303%_
                                           _%hd167823168306%_
                                           _%tl167822168308%_
                                           _%e167827168311%_
                                           _%hd167826168314%_
                                           _%tl167825168316%_
                                           _%e167830168319%_
                                           _%hd167829168322%_
                                           _%tl167828168324%_
                                           _%e167833168327%_
                                           _%hd167832168330%_
                                           _%tl167831168332%_
                                           _%e167836168335%_
                                           _%hd167835168338%_
                                           _%tl167834168340%_
                                           _%e167839168343%_
                                           _%hd167838168346%_
                                           _%tl167837168348%_
                                           _%e167842168351%_
                                           _%hd167841168354%_
                                           _%tl167840168356%_)
                                          (_%__match172157172158%_
                                           _%e167815168279%_
                                           _%hd167814168282%_
                                           _%tl167813168284%_
                                           _%e167818168287%_
                                           _%hd167817168290%_
                                           _%tl167816168292%_
                                           _%e167821168295%_
                                           _%hd167820168298%_
                                           _%tl167819168300%_
                                           _%e167824168303%_
                                           _%hd167823168306%_
                                           _%tl167822168308%_
                                           _%e167827168311%_
                                           _%hd167826168314%_
                                           _%tl167825168316%_
                                           _%e167830168319%_
                                           _%hd167829168322%_
                                           _%tl167828168324%_
                                           _%e167833168327%_
                                           _%hd167832168330%_
                                           _%tl167831168332%_
                                           _%e167836168335%_
                                           _%hd167835168338%_
                                           _%tl167834168340%_
                                           _%e167839168343%_
                                           _%hd167838168346%_
                                           _%tl167837168348%_
                                           _%e167842168351%_
                                           _%hd167841168354%_
                                           _%tl167840168356%_))
                                      (_%__match172281172282%_
                                       _%e167815168279%_
                                       _%hd167814168282%_
                                       _%tl167813168284%_
                                       _%e167818168287%_
                                       _%hd167817168290%_
                                       _%tl167816168292%_
                                       _%e167821168295%_
                                       _%hd167820168298%_
                                       _%tl167819168300%_
                                       _%e167824168303%_
                                       _%hd167823168306%_
                                       _%tl167822168308%_
                                       _%e167827168311%_
                                       _%hd167826168314%_
                                       _%tl167825168316%_
                                       _%e167830168319%_
                                       _%hd167829168322%_
                                       _%tl167828168324%_
                                       _%e167833168327%_
                                       _%hd167832168330%_
                                       _%tl167831168332%_
                                       _%e167836168335%_
                                       _%hd167835168338%_
                                       _%tl167834168340%_))))
                              (_%__match172281172282%_
                               _%e167815168279%_
                               _%hd167814168282%_
                               _%tl167813168284%_
                               _%e167818168287%_
                               _%hd167817168290%_
                               _%tl167816168292%_
                               _%e167821168295%_
                               _%hd167820168298%_
                               _%tl167819168300%_
                               _%e167824168303%_
                               _%hd167823168306%_
                               _%tl167822168308%_
                               _%e167827168311%_
                               _%hd167826168314%_
                               _%tl167825168316%_
                               _%e167830168319%_
                               _%hd167829168322%_
                               _%tl167828168324%_
                               _%e167833168327%_
                               _%hd167832168330%_
                               _%tl167831168332%_
                               _%e167836168335%_
                               _%hd167835168338%_
                               _%tl167834168340%_))
                          (_%__match172281172282%_
                           _%e167815168279%_
                           _%hd167814168282%_
                           _%tl167813168284%_
                           _%e167818168287%_
                           _%hd167817168290%_
                           _%tl167816168292%_
                           _%e167821168295%_
                           _%hd167820168298%_
                           _%tl167819168300%_
                           _%e167824168303%_
                           _%hd167823168306%_
                           _%tl167822168308%_
                           _%e167827168311%_
                           _%hd167826168314%_
                           _%tl167825168316%_
                           _%e167830168319%_
                           _%hd167829168322%_
                           _%tl167828168324%_
                           _%e167833168327%_
                           _%hd167832168330%_
                           _%tl167831168332%_
                           _%e167836168335%_
                           _%hd167835168338%_
                           _%tl167834168340%_))))
                   (_%__match171999172000%_
                    (lambda (_%e167764168398%_
                             _%hd167763168401%_
                             _%tl167762168403%_
                             _%e167767168406%_
                             _%hd167766168409%_
                             _%tl167765168411%_
                             _%e167770168414%_
                             _%hd167769168417%_
                             _%tl167768168419%_
                             _%e167773168422%_
                             _%hd167772168425%_
                             _%tl167771168427%_
                             _%e167776168430%_
                             _%hd167775168433%_
                             _%tl167774168435%_
                             _%e167779168438%_
                             _%hd167778168441%_
                             _%tl167777168443%_
                             _%e167782168446%_
                             _%hd167781168449%_
                             _%tl167780168451%_
                             _%e167785168454%_
                             _%hd167784168457%_
                             _%tl167783168459%_
                             _%e167788168462%_
                             _%hd167787168465%_
                             _%tl167786168467%_
                             _%e167791168470%_
                             _%hd167790168473%_
                             _%tl167789168475%_
                             _%e167794168478%_
                             _%hd167793168481%_
                             _%tl167792168483%_
                             _%e167797168486%_
                             _%hd167796168489%_
                             _%tl167795168491%_
                             _%e167800168494%_
                             _%hd167799168497%_
                             _%tl167798168499%_
                             _%__splice171792171793%_
                             _%target167801168502%_
                             _%tl167803168504%_)
                      (letrec ((_%loop167804168507%_
                                (lambda (_%hd167802168510%_
                                         _%args167808168512%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167802168510%_))
                                      (let ((_%e167805168515%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167802168510%_))))
                                        (let ((_%lp-tl167807168520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167805168515%_)))
                                              (_%lp-hd167806168518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167805168515%_))))
                                          (let ((__tmp172916
                                                 (cons _%lp-hd167806168518%_
                                                       _%args167808168512%_)))
                                            (declare (not safe))
                                            (_%loop167804168507%_
                                             _%lp-tl167807168520%_
                                             __tmp172916))))
                                      (let ((_%args167809168523%_
                                             (reverse _%args167808168512%_)))
                                        (let ((_%L168526%_
                                               _%args167809168523%_)
                                              (_%L168527%_ _%hd167799168497%_)
                                              (_%L168528%_ _%hd167790168473%_)
                                              (_%L168529%_ _%hd167781168449%_)
                                              (_%L168530%_ _%hd167772168425%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168530%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168529%_
                                                      'call-method))
                                                   (let ((__tmp172917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167703%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168528%_
                                                      __tmp172917)))
                                              (_%__kont171790171791%_
                                               _%L168526%_
                                               _%L168527%_
                                               _%L168528%_
                                               _%L168529%_
                                               _%L168530%_)
                                              (_%__kont171802171803%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167804168507%_ _%target167801168502%_ '())))))
                   (_%__match171957171958%_
                    (lambda (_%e167764168398%_
                             _%hd167763168401%_
                             _%tl167762168403%_
                             _%e167767168406%_
                             _%hd167766168409%_
                             _%tl167765168411%_
                             _%e167770168414%_
                             _%hd167769168417%_
                             _%tl167768168419%_
                             _%e167773168422%_
                             _%hd167772168425%_
                             _%tl167771168427%_
                             _%e167776168430%_
                             _%hd167775168433%_
                             _%tl167774168435%_
                             _%e167779168438%_
                             _%hd167778168441%_
                             _%tl167777168443%_
                             _%e167782168446%_
                             _%hd167781168449%_
                             _%tl167780168451%_
                             _%e167785168454%_
                             _%hd167784168457%_
                             _%tl167783168459%_
                             _%e167788168462%_
                             _%hd167787168465%_
                             _%tl167786168467%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd167787168465%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl167786168467%_))
                              (let ((_%e167791168470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl167786168467%_))))
                                (let ((_%tl167789168475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167791168470%_)))
                                      (_%hd167790168473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167791168470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl167789168475%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167783168459%_))
                                          (let ((_%e167794168478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167783168459%_))))
                                            (let ((_%tl167792168483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167794168478%_)))
                                                  (_%hd167793168481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167794168478%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd167793168481%_))
                                                  (let ((_%e167797168486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd167793168481%_))))
                                                    (let ((_%tl167795168491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167797168486%_)))
                                                          (_%hd167796168489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167797168486%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd167796168489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd167796168489%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167795168491%_))
                          (let ((_%e167800168494%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167795168491%_))))
                            (let ((_%tl167798168499%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167800168494%_)))
                                  (_%hd167799168497%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167800168494%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167798168499%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl167792168483%_))
                                      (let ((_%__splice171792171793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl167792168483%_
                                                '0))))
                                        (let ((_%tl167803168504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171792171793%_
                                                  '1)))
                                              (_%target167801168502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171792171793%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl167803168504%_))
                                              (_%__match171999172000%_
                                               _%e167764168398%_
                                               _%hd167763168401%_
                                               _%tl167762168403%_
                                               _%e167767168406%_
                                               _%hd167766168409%_
                                               _%tl167765168411%_
                                               _%e167770168414%_
                                               _%hd167769168417%_
                                               _%tl167768168419%_
                                               _%e167773168422%_
                                               _%hd167772168425%_
                                               _%tl167771168427%_
                                               _%e167776168430%_
                                               _%hd167775168433%_
                                               _%tl167774168435%_
                                               _%e167779168438%_
                                               _%hd167778168441%_
                                               _%tl167777168443%_
                                               _%e167782168446%_
                                               _%hd167781168449%_
                                               _%tl167780168451%_
                                               _%e167785168454%_
                                               _%hd167784168457%_
                                               _%tl167783168459%_
                                               _%e167788168462%_
                                               _%hd167787168465%_
                                               _%tl167786168467%_
                                               _%e167791168470%_
                                               _%hd167790168473%_
                                               _%tl167789168475%_
                                               _%e167794168478%_
                                               _%hd167793168481%_
                                               _%tl167792168483%_
                                               _%e167797168486%_
                                               _%hd167796168489%_
                                               _%tl167795168491%_
                                               _%e167800168494%_
                                               _%hd167799168497%_
                                               _%tl167798168499%_
                                               _%__splice171792171793%_
                                               _%target167801168502%_
                                               _%tl167803168504%_)
                                              (_%__kont171802171803%_))))
                                      (_%__kont171802171803%_))
                                  (_%__kont171802171803%_))))
                          (_%__kont171802171803%_))
                      (_%__kont171802171803%_))
                  (_%__kont171802171803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171802171803%_))))
                                          (_%__match172281172282%_
                                           _%e167764168398%_
                                           _%hd167763168401%_
                                           _%tl167762168403%_
                                           _%e167767168406%_
                                           _%hd167766168409%_
                                           _%tl167765168411%_
                                           _%e167770168414%_
                                           _%hd167769168417%_
                                           _%tl167768168419%_
                                           _%e167773168422%_
                                           _%hd167772168425%_
                                           _%tl167771168427%_
                                           _%e167776168430%_
                                           _%hd167775168433%_
                                           _%tl167774168435%_
                                           _%e167779168438%_
                                           _%hd167778168441%_
                                           _%tl167777168443%_
                                           _%e167782168446%_
                                           _%hd167781168449%_
                                           _%tl167780168451%_
                                           _%e167785168454%_
                                           _%hd167784168457%_
                                           _%tl167783168459%_))
                                      (_%__match172281172282%_
                                       _%e167764168398%_
                                       _%hd167763168401%_
                                       _%tl167762168403%_
                                       _%e167767168406%_
                                       _%hd167766168409%_
                                       _%tl167765168411%_
                                       _%e167770168414%_
                                       _%hd167769168417%_
                                       _%tl167768168419%_
                                       _%e167773168422%_
                                       _%hd167772168425%_
                                       _%tl167771168427%_
                                       _%e167776168430%_
                                       _%hd167775168433%_
                                       _%tl167774168435%_
                                       _%e167779168438%_
                                       _%hd167778168441%_
                                       _%tl167777168443%_
                                       _%e167782168446%_
                                       _%hd167781168449%_
                                       _%tl167780168451%_
                                       _%e167785168454%_
                                       _%hd167784168457%_
                                       _%tl167783168459%_))))
                              (_%__match172281172282%_
                               _%e167764168398%_
                               _%hd167763168401%_
                               _%tl167762168403%_
                               _%e167767168406%_
                               _%hd167766168409%_
                               _%tl167765168411%_
                               _%e167770168414%_
                               _%hd167769168417%_
                               _%tl167768168419%_
                               _%e167773168422%_
                               _%hd167772168425%_
                               _%tl167771168427%_
                               _%e167776168430%_
                               _%hd167775168433%_
                               _%tl167774168435%_
                               _%e167779168438%_
                               _%hd167778168441%_
                               _%tl167777168443%_
                               _%e167782168446%_
                               _%hd167781168449%_
                               _%tl167780168451%_
                               _%e167785168454%_
                               _%hd167784168457%_
                               _%tl167783168459%_))
                          (_%__match172067172068%_
                           _%e167764168398%_
                           _%hd167763168401%_
                           _%tl167762168403%_
                           _%e167767168406%_
                           _%hd167766168409%_
                           _%tl167765168411%_
                           _%e167770168414%_
                           _%hd167769168417%_
                           _%tl167768168419%_
                           _%e167773168422%_
                           _%hd167772168425%_
                           _%tl167771168427%_
                           _%e167776168430%_
                           _%hd167775168433%_
                           _%tl167774168435%_
                           _%e167779168438%_
                           _%hd167778168441%_
                           _%tl167777168443%_
                           _%e167782168446%_
                           _%hd167781168449%_
                           _%tl167780168451%_
                           _%e167785168454%_
                           _%hd167784168457%_
                           _%tl167783168459%_
                           _%e167788168462%_
                           _%hd167787168465%_
                           _%tl167786168467%_))))
                   (_%__match171889171890%_
                    (lambda (_%e167720168587%_
                             _%hd167719168590%_
                             _%tl167718168592%_
                             _%e167723168595%_
                             _%hd167722168598%_
                             _%tl167721168600%_
                             _%e167726168603%_
                             _%hd167725168606%_
                             _%tl167724168608%_
                             _%e167729168611%_
                             _%hd167728168614%_
                             _%tl167727168616%_
                             _%e167732168619%_
                             _%hd167731168622%_
                             _%tl167730168624%_
                             _%e167735168627%_
                             _%hd167734168630%_
                             _%tl167733168632%_
                             _%e167738168635%_
                             _%hd167737168638%_
                             _%tl167736168640%_
                             _%e167741168643%_
                             _%hd167740168646%_
                             _%tl167739168648%_
                             _%e167744168651%_
                             _%hd167743168654%_
                             _%tl167742168656%_
                             _%e167747168659%_
                             _%hd167746168662%_
                             _%tl167745168664%_
                             _%__splice171788171789%_
                             _%target167748168667%_
                             _%tl167750168669%_)
                      (letrec ((_%loop167751168672%_
                                (lambda (_%hd167749168675%_
                                         _%args167755168677%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd167749168675%_))
                                      (let ((_%e167752168680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd167749168675%_))))
                                        (let ((_%lp-tl167754168685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e167752168680%_)))
                                              (_%lp-hd167753168683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e167752168680%_))))
                                          (let ((__tmp172918
                                                 (cons _%lp-hd167753168683%_
                                                       _%args167755168677%_)))
                                            (declare (not safe))
                                            (_%loop167751168672%_
                                             _%lp-tl167754168685%_
                                             __tmp172918))))
                                      (let ((_%args167756168688%_
                                             (reverse _%args167755168677%_)))
                                        (let ((_%L168691%_
                                               _%args167756168688%_)
                                              (_%L168692%_ _%hd167746168662%_)
                                              (_%L168693%_ _%hd167737168638%_)
                                              (_%L168694%_ _%hd167728168614%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L168694%_
                                                      'call-method))
                                                   (let ((__tmp172919
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self167703%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L168693%_
                                                      __tmp172919)))
                                              (_%__kont171786171787%_
                                               _%L168691%_
                                               _%L168692%_
                                               _%L168693%_
                                               _%L168694%_)
                                              (_%__match172077172078%_
                                               _%e167720168587%_
                                               _%hd167719168590%_
                                               _%tl167718168592%_
                                               _%e167723168595%_
                                               _%hd167722168598%_
                                               _%tl167721168600%_
                                               _%e167726168603%_
                                               _%hd167725168606%_
                                               _%tl167724168608%_
                                               _%e167729168611%_
                                               _%hd167728168614%_
                                               _%tl167727168616%_
                                               _%e167732168619%_
                                               _%hd167731168622%_
                                               _%tl167730168624%_
                                               _%e167735168627%_
                                               _%hd167734168630%_
                                               _%tl167733168632%_
                                               _%e167738168635%_
                                               _%hd167737168638%_
                                               _%tl167736168640%_
                                               _%e167741168643%_
                                               _%hd167740168646%_
                                               _%tl167739168648%_
                                               _%e167744168651%_
                                               _%hd167743168654%_
                                               _%tl167742168656%_
                                               _%e167747168659%_
                                               _%hd167746168662%_
                                               _%tl167745168664%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop167751168672%_
                           _%target167748168667%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171784171785%_))
                  (let ((_%e167720168587%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171784171785%_))))
                    (let ((_%tl167718168592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167720168587%_)))
                          (_%hd167719168590%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167720168587%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167718168592%_))
                          (let ((_%e167723168595%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167718168592%_))))
                            (let ((_%tl167721168600%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167723168595%_)))
                                  (_%hd167722168598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167723168595%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd167722168598%_))
                                  (let ((_%e167726168603%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd167722168598%_))))
                                    (let ((_%tl167724168608%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e167726168603%_)))
                                          (_%hd167725168606%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e167726168603%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd167725168606%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd167725168606%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl167724168608%_))
                                                  (let ((_%e167729168611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl167724168608%_))))
                                                    (let ((_%tl167727168616%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e167729168611%_)))
                                                          (_%hd167728168614%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e167729168611%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl167727168616%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl167721168600%_))
                      (let ((_%e167732168619%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl167721168600%_))))
                        (let ((_%tl167730168624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e167732168619%_)))
                              (_%hd167731168622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e167732168619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd167731168622%_))
                              (let ((_%e167735168627%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd167731168622%_))))
                                (let ((_%tl167733168632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167735168627%_)))
                                      (_%hd167734168630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167735168627%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd167734168630%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd167734168630%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl167733168632%_))
                                              (let ((_%e167738168635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl167733168632%_))))
                                                (let ((_%tl167736168640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167738168635%_)))
                                                      (_%hd167737168638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167738168635%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl167736168640%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl167730168624%_))
                                                          (let ((_%e167741168643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl167730168624%_))))
                    (let ((_%tl167739168648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e167741168643%_)))
                          (_%hd167740168646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e167741168643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd167740168646%_))
                          (let ((_%e167744168651%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd167740168646%_))))
                            (let ((_%tl167742168656%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167744168651%_)))
                                  (_%hd167743168654%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167744168651%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd167743168654%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd167743168654%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl167742168656%_))
                                          (let ((_%e167747168659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl167742168656%_))))
                                            (let ((_%tl167745168664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e167747168659%_)))
                                                  (_%hd167746168662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e167747168659%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl167745168664%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl167739168648%_))
                                                      (let ((_%__splice171788171789%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl167739168648%_ '0))))
                (let ((_%tl167750168669%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171788171789%_ '1)))
                      (_%target167748168667%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171788171789%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167750168669%_))
                      (_%__match171889171890%_
                       _%e167720168587%_
                       _%hd167719168590%_
                       _%tl167718168592%_
                       _%e167723168595%_
                       _%hd167722168598%_
                       _%tl167721168600%_
                       _%e167726168603%_
                       _%hd167725168606%_
                       _%tl167724168608%_
                       _%e167729168611%_
                       _%hd167728168614%_
                       _%tl167727168616%_
                       _%e167732168619%_
                       _%hd167731168622%_
                       _%tl167730168624%_
                       _%e167735168627%_
                       _%hd167734168630%_
                       _%tl167733168632%_
                       _%e167738168635%_
                       _%hd167737168638%_
                       _%tl167736168640%_
                       _%e167741168643%_
                       _%hd167740168646%_
                       _%tl167739168648%_
                       _%e167744168651%_
                       _%hd167743168654%_
                       _%tl167742168656%_
                       _%e167747168659%_
                       _%hd167746168662%_
                       _%tl167745168664%_
                       _%__splice171788171789%_
                       _%target167748168667%_
                       _%tl167750168669%_)
                      (_%__match172077172078%_
                       _%e167720168587%_
                       _%hd167719168590%_
                       _%tl167718168592%_
                       _%e167723168595%_
                       _%hd167722168598%_
                       _%tl167721168600%_
                       _%e167726168603%_
                       _%hd167725168606%_
                       _%tl167724168608%_
                       _%e167729168611%_
                       _%hd167728168614%_
                       _%tl167727168616%_
                       _%e167732168619%_
                       _%hd167731168622%_
                       _%tl167730168624%_
                       _%e167735168627%_
                       _%hd167734168630%_
                       _%tl167733168632%_
                       _%e167738168635%_
                       _%hd167737168638%_
                       _%tl167736168640%_
                       _%e167741168643%_
                       _%hd167740168646%_
                       _%tl167739168648%_
                       _%e167744168651%_
                       _%hd167743168654%_
                       _%tl167742168656%_
                       _%e167747168659%_
                       _%hd167746168662%_
                       _%tl167745168664%_))))
              (_%__match172077172078%_
               _%e167720168587%_
               _%hd167719168590%_
               _%tl167718168592%_
               _%e167723168595%_
               _%hd167722168598%_
               _%tl167721168600%_
               _%e167726168603%_
               _%hd167725168606%_
               _%tl167724168608%_
               _%e167729168611%_
               _%hd167728168614%_
               _%tl167727168616%_
               _%e167732168619%_
               _%hd167731168622%_
               _%tl167730168624%_
               _%e167735168627%_
               _%hd167734168630%_
               _%tl167733168632%_
               _%e167738168635%_
               _%hd167737168638%_
               _%tl167736168640%_
               _%e167741168643%_
               _%hd167740168646%_
               _%tl167739168648%_
               _%e167744168651%_
               _%hd167743168654%_
               _%tl167742168656%_
               _%e167747168659%_
               _%hd167746168662%_
               _%tl167745168664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match172281172282%_
                                                   _%e167720168587%_
                                                   _%hd167719168590%_
                                                   _%tl167718168592%_
                                                   _%e167723168595%_
                                                   _%hd167722168598%_
                                                   _%tl167721168600%_
                                                   _%e167726168603%_
                                                   _%hd167725168606%_
                                                   _%tl167724168608%_
                                                   _%e167729168611%_
                                                   _%hd167728168614%_
                                                   _%tl167727168616%_
                                                   _%e167732168619%_
                                                   _%hd167731168622%_
                                                   _%tl167730168624%_
                                                   _%e167735168627%_
                                                   _%hd167734168630%_
                                                   _%tl167733168632%_
                                                   _%e167738168635%_
                                                   _%hd167737168638%_
                                                   _%tl167736168640%_
                                                   _%e167741168643%_
                                                   _%hd167740168646%_
                                                   _%tl167739168648%_))))
                                          (_%__match172281172282%_
                                           _%e167720168587%_
                                           _%hd167719168590%_
                                           _%tl167718168592%_
                                           _%e167723168595%_
                                           _%hd167722168598%_
                                           _%tl167721168600%_
                                           _%e167726168603%_
                                           _%hd167725168606%_
                                           _%tl167724168608%_
                                           _%e167729168611%_
                                           _%hd167728168614%_
                                           _%tl167727168616%_
                                           _%e167732168619%_
                                           _%hd167731168622%_
                                           _%tl167730168624%_
                                           _%e167735168627%_
                                           _%hd167734168630%_
                                           _%tl167733168632%_
                                           _%e167738168635%_
                                           _%hd167737168638%_
                                           _%tl167736168640%_
                                           _%e167741168643%_
                                           _%hd167740168646%_
                                           _%tl167739168648%_))
                                      (_%__match171957171958%_
                                       _%e167720168587%_
                                       _%hd167719168590%_
                                       _%tl167718168592%_
                                       _%e167723168595%_
                                       _%hd167722168598%_
                                       _%tl167721168600%_
                                       _%e167726168603%_
                                       _%hd167725168606%_
                                       _%tl167724168608%_
                                       _%e167729168611%_
                                       _%hd167728168614%_
                                       _%tl167727168616%_
                                       _%e167732168619%_
                                       _%hd167731168622%_
                                       _%tl167730168624%_
                                       _%e167735168627%_
                                       _%hd167734168630%_
                                       _%tl167733168632%_
                                       _%e167738168635%_
                                       _%hd167737168638%_
                                       _%tl167736168640%_
                                       _%e167741168643%_
                                       _%hd167740168646%_
                                       _%tl167739168648%_
                                       _%e167744168651%_
                                       _%hd167743168654%_
                                       _%tl167742168656%_))
                                  (_%__match172281172282%_
                                   _%e167720168587%_
                                   _%hd167719168590%_
                                   _%tl167718168592%_
                                   _%e167723168595%_
                                   _%hd167722168598%_
                                   _%tl167721168600%_
                                   _%e167726168603%_
                                   _%hd167725168606%_
                                   _%tl167724168608%_
                                   _%e167729168611%_
                                   _%hd167728168614%_
                                   _%tl167727168616%_
                                   _%e167732168619%_
                                   _%hd167731168622%_
                                   _%tl167730168624%_
                                   _%e167735168627%_
                                   _%hd167734168630%_
                                   _%tl167733168632%_
                                   _%e167738168635%_
                                   _%hd167737168638%_
                                   _%tl167736168640%_
                                   _%e167741168643%_
                                   _%hd167740168646%_
                                   _%tl167739168648%_))))
                          (_%__match172281172282%_
                           _%e167720168587%_
                           _%hd167719168590%_
                           _%tl167718168592%_
                           _%e167723168595%_
                           _%hd167722168598%_
                           _%tl167721168600%_
                           _%e167726168603%_
                           _%hd167725168606%_
                           _%tl167724168608%_
                           _%e167729168611%_
                           _%hd167728168614%_
                           _%tl167727168616%_
                           _%e167732168619%_
                           _%hd167731168622%_
                           _%tl167730168624%_
                           _%e167735168627%_
                           _%hd167734168630%_
                           _%tl167733168632%_
                           _%e167738168635%_
                           _%hd167737168638%_
                           _%tl167736168640%_
                           _%e167741168643%_
                           _%hd167740168646%_
                           _%tl167739168648%_))))
                  (_%__match172219172220%_
                   _%e167720168587%_
                   _%hd167719168590%_
                   _%tl167718168592%_
                   _%e167723168595%_
                   _%hd167722168598%_
                   _%tl167721168600%_
                   _%e167726168603%_
                   _%hd167725168606%_
                   _%tl167724168608%_
                   _%e167729168611%_
                   _%hd167728168614%_
                   _%tl167727168616%_
                   _%e167732168619%_
                   _%hd167731168622%_
                   _%tl167730168624%_
                   _%e167735168627%_
                   _%hd167734168630%_
                   _%tl167733168632%_
                   _%e167738168635%_
                   _%hd167737168638%_
                   _%tl167736168640%_))
              (_%__kont171802171803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171802171803%_))
                                          (_%__kont171802171803%_))
                                      (_%__kont171802171803%_))))
                              (_%__kont171802171803%_))))
                      (_%__kont171802171803%_))
                  (_%__kont171802171803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171802171803%_))
                                              (_%__kont171802171803%_))
                                          (_%__kont171802171803%_))))
                                  (_%__kont171802171803%_))))
                          (_%__kont171802171803%_))))
                  (_%__kont171802171803%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self166642%_ _%stx166643%_)
        (letrec ((_%force-e166645%_
                  (lambda (_%target167701%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target167701%_ '()))
                                      '()))))))
          (let* ((_%__stx172286172287%_ _%stx166643%_)
                 (_%g166653166875%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172286172287%_)))))
            (let ((_%__kont172288172289%_
                   (lambda (_%L167647%_ _%L167648%_ _%L167649%_ _%L167650%_)
                     (let ((_%$method167695%_
                            (let ((__tmp172921
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166642%_ 'methods)))
                                  (__tmp172920
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167648%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172921 __tmp172920)))
                           (_%args167696%_
                            (map (lambda (_%g167683167685%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166642%_
                                      _%g167683167685%_)))
                                 (let ((__tmp172922
                                        (lambda (_%g167687167690%_
                                                 _%g167688167692%_)
                                          (cons _%g167687167690%_
                                                _%g167688167692%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172922 '() _%L167647%_)))))
                       (let ((__tmp172923
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%force-e166645%_
                                             _%$method167695%_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166642%_
                                                               'receiver))
                                                            '()))
                                                _%args167696%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172923 _%stx166643%_)))))
                  (_%__kont172292172293%_
                   (lambda (_%L167479%_
                            _%L167480%_
                            _%L167481%_
                            _%L167482%_
                            _%L167483%_)
                     (let ((_%$method167535%_
                            (let ((__tmp172925
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166642%_ 'methods)))
                                  (__tmp172924
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167480%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172925 __tmp172924)))
                           (_%args167536%_
                            (map (lambda (_%g167523167525%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self166642%_
                                      _%g167523167525%_)))
                                 (let ((__tmp172926
                                        (lambda (_%g167527167530%_
                                                 _%g167528167532%_)
                                          (cons _%g167527167530%_
                                                _%g167528167532%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp172926 '() _%L167479%_)))))
                       (let ((__tmp172927
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_%force-e166645%_
                                                   _%$method167535%_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166642%_ 'receiver))
                          '()))
              _%args167536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172927 _%stx166643%_)))))
                  (_%__kont172296172297%_
                   (lambda (_%L167310%_ _%L167311%_ _%L167312%_)
                     (let* ((_%$field167344%_
                             (let ((__tmp172929
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self166642%_ 'slots)))
                                   (__tmp172928
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167310%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp172929 __tmp172928)))
                            (__tmp172930
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self166642%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167344%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self166642%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp172930 _%stx166643%_))))
                  (_%__kont172298172299%_
                   (lambda (_%L167184%_ _%L167185%_ _%L167186%_ _%L167187%_)
                     (let ((_%$field167222%_
                            (let ((__tmp172932
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self166642%_ 'slots)))
                                  (__tmp172931
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167185%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp172932 __tmp172931)))
                           (_%expr167223%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self166642%_ _%L167184%_))))
                       (let ((__tmp172933
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self166642%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167222%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self166642%_ 'receiver))
                          '()))
              (cons _%expr167223%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp172933 _%stx166643%_)))))
                  (_%__kont172300172301%_
                   (lambda (_%L167056%_ _%L167057%_)
                     (let* ((_%accessor167079%_
                             (let ((__tmp172934
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167057%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172934)))
                            (_%klass167081%_
                             (let ((__tmp172935
                                    (##structure-ref
                                     _%accessor167079%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166643%_
                                __tmp172935)))
                            (_%slot167083%_
                             (##structure-ref
                              _%accessor167079%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp172936
                                       (##structure-ref
                                        _%accessor167079%_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172936))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass167081%_
                                       _%slot167083%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass167081%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx166643%_
                           (let* ((_%$field167089%_
                                   (let ((__tmp172937
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172937 _%slot167083%_)))
                                  (__tmp172938
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166642%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field167089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166642%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172938
                              _%stx166643%_))))))
                  (_%__kont172302172303%_
                   (lambda (_%L166951%_ _%L166952%_ _%L166953%_)
                     (let* ((_%mutator166981%_
                             (let ((__tmp172939
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L166953%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp172939)))
                            (_%klass166983%_
                             (let ((__tmp172940
                                    (##structure-ref
                                     _%mutator166981%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx166643%_
                                __tmp172940)))
                            (_%slot166985%_
                             (##structure-ref
                              _%mutator166981%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr166987%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self166642%_ _%L166951%_))))
                       (if (and (let ((__tmp172941
                                       (##structure-ref
                                        _%mutator166981%_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp172941))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass166983%_
                                       _%slot166985%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass166983%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp172942
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L166953%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L166952%_
                                                                '()))
                                                    (cons _%expr166987%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp172942 _%stx166643%_))
                           (let* ((_%$field166993%_
                                   (let ((__tmp172943
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp172943 _%slot166985%_)))
                                  (__tmp172944
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self166642%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field166993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self166642%_ 'receiver))
                               '()))
                   (cons _%expr166987%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp172944
                              _%stx166643%_))))))
                  (_%__kont172304172305%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self166642%_ _%stx166643%_)))))
              (let* ((_%__match172785172786%_
                      (lambda (_%e166849166887%_
                               _%hd166848166890%_
                               _%tl166847166892%_
                               _%e166852166895%_
                               _%hd166851166898%_
                               _%tl166850166900%_
                               _%e166855166903%_
                               _%hd166854166906%_
                               _%tl166853166908%_
                               _%e166858166911%_
                               _%hd166857166914%_
                               _%tl166856166916%_
                               _%e166861166919%_
                               _%hd166860166922%_
                               _%tl166859166924%_
                               _%e166864166927%_
                               _%hd166863166930%_
                               _%tl166862166932%_
                               _%e166867166935%_
                               _%hd166866166938%_
                               _%tl166865166940%_
                               _%e166870166943%_
                               _%hd166869166946%_
                               _%tl166868166948%_)
                        (let ((_%L166951%_ _%hd166869166946%_)
                              (_%L166952%_ _%hd166866166938%_)
                              (_%L166953%_ _%hd166857166914%_))
                          (if (and (let ((__tmp172945
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166952%_
                                      __tmp172945))
                                   (let ((__tmp172946
                                          (let ((__tmp172947
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L166953%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172947))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172946
                                      'gxc#!mutator::t)))
                              (_%__kont172302172303%_
                               _%L166951%_
                               _%L166952%_
                               _%L166953%_)
                              (_%__kont172304172305%_)))))
                     (_%__match172783172784%_
                      (lambda (_%e166849166887%_
                               _%hd166848166890%_
                               _%tl166847166892%_
                               _%e166852166895%_
                               _%hd166851166898%_
                               _%tl166850166900%_
                               _%e166855166903%_
                               _%hd166854166906%_
                               _%tl166853166908%_
                               _%e166858166911%_
                               _%hd166857166914%_
                               _%tl166856166916%_
                               _%e166861166919%_
                               _%hd166860166922%_
                               _%tl166859166924%_
                               _%e166864166927%_
                               _%hd166863166930%_
                               _%tl166862166932%_
                               _%e166867166935%_
                               _%hd166866166938%_
                               _%tl166865166940%_
                               _%e166870166943%_
                               _%hd166869166946%_
                               _%tl166868166948%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166868166948%_))
                            (_%__match172785172786%_
                             _%e166849166887%_
                             _%hd166848166890%_
                             _%tl166847166892%_
                             _%e166852166895%_
                             _%hd166851166898%_
                             _%tl166850166900%_
                             _%e166855166903%_
                             _%hd166854166906%_
                             _%tl166853166908%_
                             _%e166858166911%_
                             _%hd166857166914%_
                             _%tl166856166916%_
                             _%e166861166919%_
                             _%hd166860166922%_
                             _%tl166859166924%_
                             _%e166864166927%_
                             _%hd166863166930%_
                             _%tl166862166932%_
                             _%e166867166935%_
                             _%hd166866166938%_
                             _%tl166865166940%_
                             _%e166870166943%_
                             _%hd166869166946%_
                             _%tl166868166948%_)
                            (_%__kont172304172305%_))))
                     (_%__match172777172778%_
                      (lambda (_%e166849166887%_
                               _%hd166848166890%_
                               _%tl166847166892%_
                               _%e166852166895%_
                               _%hd166851166898%_
                               _%tl166850166900%_
                               _%e166855166903%_
                               _%hd166854166906%_
                               _%tl166853166908%_
                               _%e166858166911%_
                               _%hd166857166914%_
                               _%tl166856166916%_
                               _%e166861166919%_
                               _%hd166860166922%_
                               _%tl166859166924%_
                               _%e166864166927%_
                               _%hd166863166930%_
                               _%tl166862166932%_
                               _%e166867166935%_
                               _%hd166866166938%_
                               _%tl166865166940%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166859166924%_))
                            (let ((_%e166870166943%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166859166924%_))))
                              (let ((_%tl166868166948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166870166943%_)))
                                    (_%hd166869166946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166870166943%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166868166948%_))
                                    (_%__match172785172786%_
                                     _%e166849166887%_
                                     _%hd166848166890%_
                                     _%tl166847166892%_
                                     _%e166852166895%_
                                     _%hd166851166898%_
                                     _%tl166850166900%_
                                     _%e166855166903%_
                                     _%hd166854166906%_
                                     _%tl166853166908%_
                                     _%e166858166911%_
                                     _%hd166857166914%_
                                     _%tl166856166916%_
                                     _%e166861166919%_
                                     _%hd166860166922%_
                                     _%tl166859166924%_
                                     _%e166864166927%_
                                     _%hd166863166930%_
                                     _%tl166862166932%_
                                     _%e166867166935%_
                                     _%hd166866166938%_
                                     _%tl166865166940%_
                                     _%e166870166943%_
                                     _%hd166869166946%_
                                     _%tl166868166948%_)
                                    (_%__kont172304172305%_))))
                            (_%__kont172304172305%_))))
                     (_%__match172723172724%_
                      (lambda (_%e166825167000%_
                               _%hd166824167003%_
                               _%tl166823167005%_
                               _%e166828167008%_
                               _%hd166827167011%_
                               _%tl166826167013%_
                               _%e166831167016%_
                               _%hd166830167019%_
                               _%tl166829167021%_
                               _%e166834167024%_
                               _%hd166833167027%_
                               _%tl166832167029%_
                               _%e166837167032%_
                               _%hd166836167035%_
                               _%tl166835167037%_
                               _%e166840167040%_
                               _%hd166839167043%_
                               _%tl166838167045%_
                               _%e166843167048%_
                               _%hd166842167051%_
                               _%tl166841167053%_)
                        (let ((_%L167056%_ _%hd166842167051%_)
                              (_%L167057%_ _%hd166833167027%_))
                          (if (and (let ((__tmp172948
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167056%_
                                      __tmp172948))
                                   (let ((__tmp172949
                                          (let ((__tmp172950
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L167057%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp172950))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp172949
                                      'gxc#!accessor::t)))
                              (_%__kont172300172301%_ _%L167056%_ _%L167057%_)
                              (_%__kont172304172305%_)))))
                     (_%__match172721172722%_
                      (lambda (_%e166825167000%_
                               _%hd166824167003%_
                               _%tl166823167005%_
                               _%e166828167008%_
                               _%hd166827167011%_
                               _%tl166826167013%_
                               _%e166831167016%_
                               _%hd166830167019%_
                               _%tl166829167021%_
                               _%e166834167024%_
                               _%hd166833167027%_
                               _%tl166832167029%_
                               _%e166837167032%_
                               _%hd166836167035%_
                               _%tl166835167037%_
                               _%e166840167040%_
                               _%hd166839167043%_
                               _%tl166838167045%_
                               _%e166843167048%_
                               _%hd166842167051%_
                               _%tl166841167053%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166835167037%_))
                            (_%__match172723172724%_
                             _%e166825167000%_
                             _%hd166824167003%_
                             _%tl166823167005%_
                             _%e166828167008%_
                             _%hd166827167011%_
                             _%tl166826167013%_
                             _%e166831167016%_
                             _%hd166830167019%_
                             _%tl166829167021%_
                             _%e166834167024%_
                             _%hd166833167027%_
                             _%tl166832167029%_
                             _%e166837167032%_
                             _%hd166836167035%_
                             _%tl166835167037%_
                             _%e166840167040%_
                             _%hd166839167043%_
                             _%tl166838167045%_
                             _%e166843167048%_
                             _%hd166842167051%_
                             _%tl166841167053%_)
                            (_%__match172777172778%_
                             _%e166825167000%_
                             _%hd166824167003%_
                             _%tl166823167005%_
                             _%e166828167008%_
                             _%hd166827167011%_
                             _%tl166826167013%_
                             _%e166831167016%_
                             _%hd166830167019%_
                             _%tl166829167021%_
                             _%e166834167024%_
                             _%hd166833167027%_
                             _%tl166832167029%_
                             _%e166837167032%_
                             _%hd166836167035%_
                             _%tl166835167037%_
                             _%e166840167040%_
                             _%hd166839167043%_
                             _%tl166838167045%_
                             _%e166843167048%_
                             _%hd166842167051%_
                             _%tl166841167053%_))))
                     (_%__match172667172668%_
                      (lambda (_%e166790167096%_
                               _%hd166789167099%_
                               _%tl166788167101%_
                               _%e166793167104%_
                               _%hd166792167107%_
                               _%tl166791167109%_
                               _%e166796167112%_
                               _%hd166795167115%_
                               _%tl166794167117%_
                               _%e166799167120%_
                               _%hd166798167123%_
                               _%tl166797167125%_
                               _%e166802167128%_
                               _%hd166801167131%_
                               _%tl166800167133%_
                               _%e166805167136%_
                               _%hd166804167139%_
                               _%tl166803167141%_
                               _%e166808167144%_
                               _%hd166807167147%_
                               _%tl166806167149%_
                               _%e166811167152%_
                               _%hd166810167155%_
                               _%tl166809167157%_
                               _%e166814167160%_
                               _%hd166813167163%_
                               _%tl166812167165%_
                               _%e166817167168%_
                               _%hd166816167171%_
                               _%tl166815167173%_
                               _%e166820167176%_
                               _%hd166819167179%_
                               _%tl166818167181%_)
                        (let ((_%L167184%_ _%hd166819167179%_)
                              (_%L167185%_ _%hd166816167171%_)
                              (_%L167186%_ _%hd166807167147%_)
                              (_%L167187%_ _%hd166798167123%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167187%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167187%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp172951
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167186%_
                                      __tmp172951)))
                              (_%__kont172298172299%_
                               _%L167184%_
                               _%L167185%_
                               _%L167186%_
                               _%L167187%_)
                              (_%__kont172304172305%_)))))
                     (_%__match172659172660%_
                      (lambda (_%e166790167096%_
                               _%hd166789167099%_
                               _%tl166788167101%_
                               _%e166793167104%_
                               _%hd166792167107%_
                               _%tl166791167109%_
                               _%e166796167112%_
                               _%hd166795167115%_
                               _%tl166794167117%_
                               _%e166799167120%_
                               _%hd166798167123%_
                               _%tl166797167125%_
                               _%e166802167128%_
                               _%hd166801167131%_
                               _%tl166800167133%_
                               _%e166805167136%_
                               _%hd166804167139%_
                               _%tl166803167141%_
                               _%e166808167144%_
                               _%hd166807167147%_
                               _%tl166806167149%_
                               _%e166811167152%_
                               _%hd166810167155%_
                               _%tl166809167157%_
                               _%e166814167160%_
                               _%hd166813167163%_
                               _%tl166812167165%_
                               _%e166817167168%_
                               _%hd166816167171%_
                               _%tl166815167173%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166809167157%_))
                            (let ((_%e166820167176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166809167157%_))))
                              (let ((_%tl166818167181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166820167176%_)))
                                    (_%hd166819167179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166820167176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166818167181%_))
                                    (_%__match172667172668%_
                                     _%e166790167096%_
                                     _%hd166789167099%_
                                     _%tl166788167101%_
                                     _%e166793167104%_
                                     _%hd166792167107%_
                                     _%tl166791167109%_
                                     _%e166796167112%_
                                     _%hd166795167115%_
                                     _%tl166794167117%_
                                     _%e166799167120%_
                                     _%hd166798167123%_
                                     _%tl166797167125%_
                                     _%e166802167128%_
                                     _%hd166801167131%_
                                     _%tl166800167133%_
                                     _%e166805167136%_
                                     _%hd166804167139%_
                                     _%tl166803167141%_
                                     _%e166808167144%_
                                     _%hd166807167147%_
                                     _%tl166806167149%_
                                     _%e166811167152%_
                                     _%hd166810167155%_
                                     _%tl166809167157%_
                                     _%e166814167160%_
                                     _%hd166813167163%_
                                     _%tl166812167165%_
                                     _%e166817167168%_
                                     _%hd166816167171%_
                                     _%tl166815167173%_
                                     _%e166820167176%_
                                     _%hd166819167179%_
                                     _%tl166818167181%_)
                                    (_%__kont172304172305%_))))
                            (_%__match172783172784%_
                             _%e166790167096%_
                             _%hd166789167099%_
                             _%tl166788167101%_
                             _%e166793167104%_
                             _%hd166792167107%_
                             _%tl166791167109%_
                             _%e166796167112%_
                             _%hd166795167115%_
                             _%tl166794167117%_
                             _%e166799167120%_
                             _%hd166798167123%_
                             _%tl166797167125%_
                             _%e166802167128%_
                             _%hd166801167131%_
                             _%tl166800167133%_
                             _%e166805167136%_
                             _%hd166804167139%_
                             _%tl166803167141%_
                             _%e166808167144%_
                             _%hd166807167147%_
                             _%tl166806167149%_
                             _%e166811167152%_
                             _%hd166810167155%_
                             _%tl166809167157%_))))
                     (_%__match172581172582%_
                      (lambda (_%e166756167230%_
                               _%hd166755167233%_
                               _%tl166754167235%_
                               _%e166759167238%_
                               _%hd166758167241%_
                               _%tl166757167243%_
                               _%e166762167246%_
                               _%hd166761167249%_
                               _%tl166760167251%_
                               _%e166765167254%_
                               _%hd166764167257%_
                               _%tl166763167259%_
                               _%e166768167262%_
                               _%hd166767167265%_
                               _%tl166766167267%_
                               _%e166771167270%_
                               _%hd166770167273%_
                               _%tl166769167275%_
                               _%e166774167278%_
                               _%hd166773167281%_
                               _%tl166772167283%_
                               _%e166777167286%_
                               _%hd166776167289%_
                               _%tl166775167291%_
                               _%e166780167294%_
                               _%hd166779167297%_
                               _%tl166778167299%_
                               _%e166783167302%_
                               _%hd166782167305%_
                               _%tl166781167307%_)
                        (let ((_%L167310%_ _%hd166782167305%_)
                              (_%L167311%_ _%hd166773167281%_)
                              (_%L167312%_ _%hd166764167257%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167312%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167312%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp172952
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self166642%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167311%_
                                      __tmp172952)))
                              (_%__kont172296172297%_
                               _%L167310%_
                               _%L167311%_
                               _%L167312%_)
                              (_%__match172785172786%_
                               _%e166756167230%_
                               _%hd166755167233%_
                               _%tl166754167235%_
                               _%e166759167238%_
                               _%hd166758167241%_
                               _%tl166757167243%_
                               _%e166762167246%_
                               _%hd166761167249%_
                               _%tl166760167251%_
                               _%e166765167254%_
                               _%hd166764167257%_
                               _%tl166763167259%_
                               _%e166768167262%_
                               _%hd166767167265%_
                               _%tl166766167267%_
                               _%e166771167270%_
                               _%hd166770167273%_
                               _%tl166769167275%_
                               _%e166774167278%_
                               _%hd166773167281%_
                               _%tl166772167283%_
                               _%e166777167286%_
                               _%hd166776167289%_
                               _%tl166775167291%_)))))
                     (_%__match172579172580%_
                      (lambda (_%e166756167230%_
                               _%hd166755167233%_
                               _%tl166754167235%_
                               _%e166759167238%_
                               _%hd166758167241%_
                               _%tl166757167243%_
                               _%e166762167246%_
                               _%hd166761167249%_
                               _%tl166760167251%_
                               _%e166765167254%_
                               _%hd166764167257%_
                               _%tl166763167259%_
                               _%e166768167262%_
                               _%hd166767167265%_
                               _%tl166766167267%_
                               _%e166771167270%_
                               _%hd166770167273%_
                               _%tl166769167275%_
                               _%e166774167278%_
                               _%hd166773167281%_
                               _%tl166772167283%_
                               _%e166777167286%_
                               _%hd166776167289%_
                               _%tl166775167291%_
                               _%e166780167294%_
                               _%hd166779167297%_
                               _%tl166778167299%_
                               _%e166783167302%_
                               _%hd166782167305%_
                               _%tl166781167307%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl166775167291%_))
                            (_%__match172581172582%_
                             _%e166756167230%_
                             _%hd166755167233%_
                             _%tl166754167235%_
                             _%e166759167238%_
                             _%hd166758167241%_
                             _%tl166757167243%_
                             _%e166762167246%_
                             _%hd166761167249%_
                             _%tl166760167251%_
                             _%e166765167254%_
                             _%hd166764167257%_
                             _%tl166763167259%_
                             _%e166768167262%_
                             _%hd166767167265%_
                             _%tl166766167267%_
                             _%e166771167270%_
                             _%hd166770167273%_
                             _%tl166769167275%_
                             _%e166774167278%_
                             _%hd166773167281%_
                             _%tl166772167283%_
                             _%e166777167286%_
                             _%hd166776167289%_
                             _%tl166775167291%_
                             _%e166780167294%_
                             _%hd166779167297%_
                             _%tl166778167299%_
                             _%e166783167302%_
                             _%hd166782167305%_
                             _%tl166781167307%_)
                            (_%__match172659172660%_
                             _%e166756167230%_
                             _%hd166755167233%_
                             _%tl166754167235%_
                             _%e166759167238%_
                             _%hd166758167241%_
                             _%tl166757167243%_
                             _%e166762167246%_
                             _%hd166761167249%_
                             _%tl166760167251%_
                             _%e166765167254%_
                             _%hd166764167257%_
                             _%tl166763167259%_
                             _%e166768167262%_
                             _%hd166767167265%_
                             _%tl166766167267%_
                             _%e166771167270%_
                             _%hd166770167273%_
                             _%tl166769167275%_
                             _%e166774167278%_
                             _%hd166773167281%_
                             _%tl166772167283%_
                             _%e166777167286%_
                             _%hd166776167289%_
                             _%tl166775167291%_
                             _%e166780167294%_
                             _%hd166779167297%_
                             _%tl166778167299%_
                             _%e166783167302%_
                             _%hd166782167305%_
                             _%tl166781167307%_))))
                     (_%__match172569172570%_
                      (lambda (_%e166756167230%_
                               _%hd166755167233%_
                               _%tl166754167235%_
                               _%e166759167238%_
                               _%hd166758167241%_
                               _%tl166757167243%_
                               _%e166762167246%_
                               _%hd166761167249%_
                               _%tl166760167251%_
                               _%e166765167254%_
                               _%hd166764167257%_
                               _%tl166763167259%_
                               _%e166768167262%_
                               _%hd166767167265%_
                               _%tl166766167267%_
                               _%e166771167270%_
                               _%hd166770167273%_
                               _%tl166769167275%_
                               _%e166774167278%_
                               _%hd166773167281%_
                               _%tl166772167283%_
                               _%e166777167286%_
                               _%hd166776167289%_
                               _%tl166775167291%_
                               _%e166780167294%_
                               _%hd166779167297%_
                               _%tl166778167299%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd166779167297%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166778167299%_))
                                (let ((_%e166783167302%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166778167299%_))))
                                  (let ((_%tl166781167307%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166783167302%_)))
                                        (_%hd166782167305%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166783167302%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166781167307%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl166775167291%_))
                                            (_%__match172581172582%_
                                             _%e166756167230%_
                                             _%hd166755167233%_
                                             _%tl166754167235%_
                                             _%e166759167238%_
                                             _%hd166758167241%_
                                             _%tl166757167243%_
                                             _%e166762167246%_
                                             _%hd166761167249%_
                                             _%tl166760167251%_
                                             _%e166765167254%_
                                             _%hd166764167257%_
                                             _%tl166763167259%_
                                             _%e166768167262%_
                                             _%hd166767167265%_
                                             _%tl166766167267%_
                                             _%e166771167270%_
                                             _%hd166770167273%_
                                             _%tl166769167275%_
                                             _%e166774167278%_
                                             _%hd166773167281%_
                                             _%tl166772167283%_
                                             _%e166777167286%_
                                             _%hd166776167289%_
                                             _%tl166775167291%_
                                             _%e166780167294%_
                                             _%hd166779167297%_
                                             _%tl166778167299%_
                                             _%e166783167302%_
                                             _%hd166782167305%_
                                             _%tl166781167307%_)
                                            (_%__match172659172660%_
                                             _%e166756167230%_
                                             _%hd166755167233%_
                                             _%tl166754167235%_
                                             _%e166759167238%_
                                             _%hd166758167241%_
                                             _%tl166757167243%_
                                             _%e166762167246%_
                                             _%hd166761167249%_
                                             _%tl166760167251%_
                                             _%e166765167254%_
                                             _%hd166764167257%_
                                             _%tl166763167259%_
                                             _%e166768167262%_
                                             _%hd166767167265%_
                                             _%tl166766167267%_
                                             _%e166771167270%_
                                             _%hd166770167273%_
                                             _%tl166769167275%_
                                             _%e166774167278%_
                                             _%hd166773167281%_
                                             _%tl166772167283%_
                                             _%e166777167286%_
                                             _%hd166776167289%_
                                             _%tl166775167291%_
                                             _%e166780167294%_
                                             _%hd166779167297%_
                                             _%tl166778167299%_
                                             _%e166783167302%_
                                             _%hd166782167305%_
                                             _%tl166781167307%_))
                                        (_%__match172783172784%_
                                         _%e166756167230%_
                                         _%hd166755167233%_
                                         _%tl166754167235%_
                                         _%e166759167238%_
                                         _%hd166758167241%_
                                         _%tl166757167243%_
                                         _%e166762167246%_
                                         _%hd166761167249%_
                                         _%tl166760167251%_
                                         _%e166765167254%_
                                         _%hd166764167257%_
                                         _%tl166763167259%_
                                         _%e166768167262%_
                                         _%hd166767167265%_
                                         _%tl166766167267%_
                                         _%e166771167270%_
                                         _%hd166770167273%_
                                         _%tl166769167275%_
                                         _%e166774167278%_
                                         _%hd166773167281%_
                                         _%tl166772167283%_
                                         _%e166777167286%_
                                         _%hd166776167289%_
                                         _%tl166775167291%_))))
                                (_%__match172783172784%_
                                 _%e166756167230%_
                                 _%hd166755167233%_
                                 _%tl166754167235%_
                                 _%e166759167238%_
                                 _%hd166758167241%_
                                 _%tl166757167243%_
                                 _%e166762167246%_
                                 _%hd166761167249%_
                                 _%tl166760167251%_
                                 _%e166765167254%_
                                 _%hd166764167257%_
                                 _%tl166763167259%_
                                 _%e166768167262%_
                                 _%hd166767167265%_
                                 _%tl166766167267%_
                                 _%e166771167270%_
                                 _%hd166770167273%_
                                 _%tl166769167275%_
                                 _%e166774167278%_
                                 _%hd166773167281%_
                                 _%tl166772167283%_
                                 _%e166777167286%_
                                 _%hd166776167289%_
                                 _%tl166775167291%_))
                            (_%__match172783172784%_
                             _%e166756167230%_
                             _%hd166755167233%_
                             _%tl166754167235%_
                             _%e166759167238%_
                             _%hd166758167241%_
                             _%tl166757167243%_
                             _%e166762167246%_
                             _%hd166761167249%_
                             _%tl166760167251%_
                             _%e166765167254%_
                             _%hd166764167257%_
                             _%tl166763167259%_
                             _%e166768167262%_
                             _%hd166767167265%_
                             _%tl166766167267%_
                             _%e166771167270%_
                             _%hd166770167273%_
                             _%tl166769167275%_
                             _%e166774167278%_
                             _%hd166773167281%_
                             _%tl166772167283%_
                             _%e166777167286%_
                             _%hd166776167289%_
                             _%tl166775167291%_))))
                     (_%__match172501172502%_
                      (lambda (_%e166705167351%_
                               _%hd166704167354%_
                               _%tl166703167356%_
                               _%e166708167359%_
                               _%hd166707167362%_
                               _%tl166706167364%_
                               _%e166711167367%_
                               _%hd166710167370%_
                               _%tl166709167372%_
                               _%e166714167375%_
                               _%hd166713167378%_
                               _%tl166712167380%_
                               _%e166717167383%_
                               _%hd166716167386%_
                               _%tl166715167388%_
                               _%e166720167391%_
                               _%hd166719167394%_
                               _%tl166718167396%_
                               _%e166723167399%_
                               _%hd166722167402%_
                               _%tl166721167404%_
                               _%e166726167407%_
                               _%hd166725167410%_
                               _%tl166724167412%_
                               _%e166729167415%_
                               _%hd166728167418%_
                               _%tl166727167420%_
                               _%e166732167423%_
                               _%hd166731167426%_
                               _%tl166730167428%_
                               _%e166735167431%_
                               _%hd166734167434%_
                               _%tl166733167436%_
                               _%e166738167439%_
                               _%hd166737167442%_
                               _%tl166736167444%_
                               _%e166741167447%_
                               _%hd166740167450%_
                               _%tl166739167452%_
                               _%__splice172294172295%_
                               _%target166742167455%_
                               _%tl166744167457%_)
                        (letrec ((_%loop166745167460%_
                                  (lambda (_%hd166743167463%_
                                           _%args166749167465%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166743167463%_))
                                        (let ((_%e166746167468%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166743167463%_))))
                                          (let ((_%lp-tl166748167473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166746167468%_)))
                                                (_%lp-hd166747167471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166746167468%_))))
                                            (let ((__tmp172953
                                                   (cons _%lp-hd166747167471%_
                                                         _%args166749167465%_)))
                                              (declare (not safe))
                                              (_%loop166745167460%_
                                               _%lp-tl166748167473%_
                                               __tmp172953))))
                                        (let ((_%args166750167476%_
                                               (reverse _%args166749167465%_)))
                                          (let ((_%L167479%_
                                                 _%args166750167476%_)
                                                (_%L167480%_
                                                 _%hd166740167450%_)
                                                (_%L167481%_
                                                 _%hd166731167426%_)
                                                (_%L167482%_
                                                 _%hd166722167402%_)
                                                (_%L167483%_
                                                 _%hd166713167378%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167483%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167482%_
                                                        'call-method))
                                                     (let ((__tmp172954
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166642%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167481%_
                                                        __tmp172954)))
                                                (_%__kont172292172293%_
                                                 _%L167479%_
                                                 _%L167480%_
                                                 _%L167481%_
                                                 _%L167482%_
                                                 _%L167483%_)
                                                (_%__kont172304172305%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166745167460%_
                             _%target166742167455%_
                             '())))))
                     (_%__match172459172460%_
                      (lambda (_%e166705167351%_
                               _%hd166704167354%_
                               _%tl166703167356%_
                               _%e166708167359%_
                               _%hd166707167362%_
                               _%tl166706167364%_
                               _%e166711167367%_
                               _%hd166710167370%_
                               _%tl166709167372%_
                               _%e166714167375%_
                               _%hd166713167378%_
                               _%tl166712167380%_
                               _%e166717167383%_
                               _%hd166716167386%_
                               _%tl166715167388%_
                               _%e166720167391%_
                               _%hd166719167394%_
                               _%tl166718167396%_
                               _%e166723167399%_
                               _%hd166722167402%_
                               _%tl166721167404%_
                               _%e166726167407%_
                               _%hd166725167410%_
                               _%tl166724167412%_
                               _%e166729167415%_
                               _%hd166728167418%_
                               _%tl166727167420%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd166728167418%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166727167420%_))
                                (let ((_%e166732167423%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166727167420%_))))
                                  (let ((_%tl166730167428%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166732167423%_)))
                                        (_%hd166731167426%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166732167423%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166730167428%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166724167412%_))
                                            (let ((_%e166735167431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166724167412%_))))
                                              (let ((_%tl166733167436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166735167431%_)))
                                                    (_%hd166734167434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166735167431%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd166734167434%_))
                                                    (let ((_%e166738167439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd166734167434%_))))
                                                      (let ((_%tl166736167444%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166738167439%_)))
                    (_%hd166737167442%_
                     (let () (declare (not safe)) (##car _%e166738167439%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd166737167442%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd166737167442%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166736167444%_))
                            (let ((_%e166741167447%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166736167444%_))))
                              (let ((_%tl166739167452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166741167447%_)))
                                    (_%hd166740167450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166741167447%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl166739167452%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166733167436%_))
                                        (let ((_%__splice172294172295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166733167436%_
                                                  '0))))
                                          (let ((_%tl166744167457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172294172295%_
                                                    '1)))
                                                (_%target166742167455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice172294172295%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl166744167457%_))
                                                (_%__match172501172502%_
                                                 _%e166705167351%_
                                                 _%hd166704167354%_
                                                 _%tl166703167356%_
                                                 _%e166708167359%_
                                                 _%hd166707167362%_
                                                 _%tl166706167364%_
                                                 _%e166711167367%_
                                                 _%hd166710167370%_
                                                 _%tl166709167372%_
                                                 _%e166714167375%_
                                                 _%hd166713167378%_
                                                 _%tl166712167380%_
                                                 _%e166717167383%_
                                                 _%hd166716167386%_
                                                 _%tl166715167388%_
                                                 _%e166720167391%_
                                                 _%hd166719167394%_
                                                 _%tl166718167396%_
                                                 _%e166723167399%_
                                                 _%hd166722167402%_
                                                 _%tl166721167404%_
                                                 _%e166726167407%_
                                                 _%hd166725167410%_
                                                 _%tl166724167412%_
                                                 _%e166729167415%_
                                                 _%hd166728167418%_
                                                 _%tl166727167420%_
                                                 _%e166732167423%_
                                                 _%hd166731167426%_
                                                 _%tl166730167428%_
                                                 _%e166735167431%_
                                                 _%hd166734167434%_
                                                 _%tl166733167436%_
                                                 _%e166738167439%_
                                                 _%hd166737167442%_
                                                 _%tl166736167444%_
                                                 _%e166741167447%_
                                                 _%hd166740167450%_
                                                 _%tl166739167452%_
                                                 _%__splice172294172295%_
                                                 _%target166742167455%_
                                                 _%tl166744167457%_)
                                                (_%__kont172304172305%_))))
                                        (_%__kont172304172305%_))
                                    (_%__kont172304172305%_))))
                            (_%__kont172304172305%_))
                        (_%__kont172304172305%_))
                    (_%__kont172304172305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172304172305%_))))
                                            (_%__match172783172784%_
                                             _%e166705167351%_
                                             _%hd166704167354%_
                                             _%tl166703167356%_
                                             _%e166708167359%_
                                             _%hd166707167362%_
                                             _%tl166706167364%_
                                             _%e166711167367%_
                                             _%hd166710167370%_
                                             _%tl166709167372%_
                                             _%e166714167375%_
                                             _%hd166713167378%_
                                             _%tl166712167380%_
                                             _%e166717167383%_
                                             _%hd166716167386%_
                                             _%tl166715167388%_
                                             _%e166720167391%_
                                             _%hd166719167394%_
                                             _%tl166718167396%_
                                             _%e166723167399%_
                                             _%hd166722167402%_
                                             _%tl166721167404%_
                                             _%e166726167407%_
                                             _%hd166725167410%_
                                             _%tl166724167412%_))
                                        (_%__match172783172784%_
                                         _%e166705167351%_
                                         _%hd166704167354%_
                                         _%tl166703167356%_
                                         _%e166708167359%_
                                         _%hd166707167362%_
                                         _%tl166706167364%_
                                         _%e166711167367%_
                                         _%hd166710167370%_
                                         _%tl166709167372%_
                                         _%e166714167375%_
                                         _%hd166713167378%_
                                         _%tl166712167380%_
                                         _%e166717167383%_
                                         _%hd166716167386%_
                                         _%tl166715167388%_
                                         _%e166720167391%_
                                         _%hd166719167394%_
                                         _%tl166718167396%_
                                         _%e166723167399%_
                                         _%hd166722167402%_
                                         _%tl166721167404%_
                                         _%e166726167407%_
                                         _%hd166725167410%_
                                         _%tl166724167412%_))))
                                (_%__match172783172784%_
                                 _%e166705167351%_
                                 _%hd166704167354%_
                                 _%tl166703167356%_
                                 _%e166708167359%_
                                 _%hd166707167362%_
                                 _%tl166706167364%_
                                 _%e166711167367%_
                                 _%hd166710167370%_
                                 _%tl166709167372%_
                                 _%e166714167375%_
                                 _%hd166713167378%_
                                 _%tl166712167380%_
                                 _%e166717167383%_
                                 _%hd166716167386%_
                                 _%tl166715167388%_
                                 _%e166720167391%_
                                 _%hd166719167394%_
                                 _%tl166718167396%_
                                 _%e166723167399%_
                                 _%hd166722167402%_
                                 _%tl166721167404%_
                                 _%e166726167407%_
                                 _%hd166725167410%_
                                 _%tl166724167412%_))
                            (_%__match172569172570%_
                             _%e166705167351%_
                             _%hd166704167354%_
                             _%tl166703167356%_
                             _%e166708167359%_
                             _%hd166707167362%_
                             _%tl166706167364%_
                             _%e166711167367%_
                             _%hd166710167370%_
                             _%tl166709167372%_
                             _%e166714167375%_
                             _%hd166713167378%_
                             _%tl166712167380%_
                             _%e166717167383%_
                             _%hd166716167386%_
                             _%tl166715167388%_
                             _%e166720167391%_
                             _%hd166719167394%_
                             _%tl166718167396%_
                             _%e166723167399%_
                             _%hd166722167402%_
                             _%tl166721167404%_
                             _%e166726167407%_
                             _%hd166725167410%_
                             _%tl166724167412%_
                             _%e166729167415%_
                             _%hd166728167418%_
                             _%tl166727167420%_))))
                     (_%__match172391172392%_
                      (lambda (_%e166661167543%_
                               _%hd166660167546%_
                               _%tl166659167548%_
                               _%e166664167551%_
                               _%hd166663167554%_
                               _%tl166662167556%_
                               _%e166667167559%_
                               _%hd166666167562%_
                               _%tl166665167564%_
                               _%e166670167567%_
                               _%hd166669167570%_
                               _%tl166668167572%_
                               _%e166673167575%_
                               _%hd166672167578%_
                               _%tl166671167580%_
                               _%e166676167583%_
                               _%hd166675167586%_
                               _%tl166674167588%_
                               _%e166679167591%_
                               _%hd166678167594%_
                               _%tl166677167596%_
                               _%e166682167599%_
                               _%hd166681167602%_
                               _%tl166680167604%_
                               _%e166685167607%_
                               _%hd166684167610%_
                               _%tl166683167612%_
                               _%e166688167615%_
                               _%hd166687167618%_
                               _%tl166686167620%_
                               _%__splice172290172291%_
                               _%target166689167623%_
                               _%tl166691167625%_)
                        (letrec ((_%loop166692167628%_
                                  (lambda (_%hd166690167631%_
                                           _%args166696167633%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166690167631%_))
                                        (let ((_%e166693167636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166690167631%_))))
                                          (let ((_%lp-tl166695167641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166693167636%_)))
                                                (_%lp-hd166694167639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166693167636%_))))
                                            (let ((__tmp172955
                                                   (cons _%lp-hd166694167639%_
                                                         _%args166696167633%_)))
                                              (declare (not safe))
                                              (_%loop166692167628%_
                                               _%lp-tl166695167641%_
                                               __tmp172955))))
                                        (let ((_%args166697167644%_
                                               (reverse _%args166696167633%_)))
                                          (let ((_%L167647%_
                                                 _%args166697167644%_)
                                                (_%L167648%_
                                                 _%hd166687167618%_)
                                                (_%L167649%_
                                                 _%hd166678167594%_)
                                                (_%L167650%_
                                                 _%hd166669167570%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L167650%_
                                                        'call-method))
                                                     (let ((__tmp172956
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self166642%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L167649%_
                                                        __tmp172956)))
                                                (_%__kont172288172289%_
                                                 _%L167647%_
                                                 _%L167648%_
                                                 _%L167649%_
                                                 _%L167650%_)
                                                (_%__match172579172580%_
                                                 _%e166661167543%_
                                                 _%hd166660167546%_
                                                 _%tl166659167548%_
                                                 _%e166664167551%_
                                                 _%hd166663167554%_
                                                 _%tl166662167556%_
                                                 _%e166667167559%_
                                                 _%hd166666167562%_
                                                 _%tl166665167564%_
                                                 _%e166670167567%_
                                                 _%hd166669167570%_
                                                 _%tl166668167572%_
                                                 _%e166673167575%_
                                                 _%hd166672167578%_
                                                 _%tl166671167580%_
                                                 _%e166676167583%_
                                                 _%hd166675167586%_
                                                 _%tl166674167588%_
                                                 _%e166679167591%_
                                                 _%hd166678167594%_
                                                 _%tl166677167596%_
                                                 _%e166682167599%_
                                                 _%hd166681167602%_
                                                 _%tl166680167604%_
                                                 _%e166685167607%_
                                                 _%hd166684167610%_
                                                 _%tl166683167612%_
                                                 _%e166688167615%_
                                                 _%hd166687167618%_
                                                 _%tl166686167620%_))))))))
                          (let ()
                            (declare (not safe))
                            (_%loop166692167628%_
                             _%target166689167623%_
                             '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172286172287%_))
                    (let ((_%e166661167543%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172286172287%_))))
                      (let ((_%tl166659167548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166661167543%_)))
                            (_%hd166660167546%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166661167543%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl166659167548%_))
                            (let ((_%e166664167551%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl166659167548%_))))
                              (let ((_%tl166662167556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166664167551%_)))
                                    (_%hd166663167554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166664167551%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd166663167554%_))
                                    (let ((_%e166667167559%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd166663167554%_))))
                                      (let ((_%tl166665167564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e166667167559%_)))
                                            (_%hd166666167562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e166667167559%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd166666167562%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd166666167562%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166665167564%_))
                                                    (let ((_%e166670167567%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166665167564%_))))
                                                      (let ((_%tl166668167572%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166670167567%_)))
                    (_%hd166669167570%_
                     (let () (declare (not safe)) (##car _%e166670167567%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166668167572%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl166662167556%_))
                        (let ((_%e166673167575%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl166662167556%_))))
                          (let ((_%tl166671167580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166673167575%_)))
                                (_%hd166672167578%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166673167575%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd166672167578%_))
                                (let ((_%e166676167583%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd166672167578%_))))
                                  (let ((_%tl166674167588%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166676167583%_)))
                                        (_%hd166675167586%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166676167583%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166675167586%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166675167586%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166674167588%_))
                                                (let ((_%e166679167591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166674167588%_))))
                                                  (let ((_%tl166677167596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166679167591%_)))
                                                        (_%hd166678167594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166679167591%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166677167596%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl166671167580%_))
                                                            (let ((_%e166682167599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl166671167580%_))))
                      (let ((_%tl166680167604%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e166682167599%_)))
                            (_%hd166681167602%_
                             (let ()
                               (declare (not safe))
                               (##car _%e166682167599%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd166681167602%_))
                            (let ((_%e166685167607%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd166681167602%_))))
                              (let ((_%tl166683167612%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e166685167607%_)))
                                    (_%hd166684167610%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e166685167607%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd166684167610%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd166684167610%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl166683167612%_))
                                            (let ((_%e166688167615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl166683167612%_))))
                                              (let ((_%tl166686167620%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e166688167615%_)))
                                                    (_%hd166687167618%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e166688167615%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl166686167620%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl166680167604%_))
                                                        (let ((_%__splice172290172291%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl166680167604%_ '0))))
                  (let ((_%tl166691167625%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172290172291%_ '1)))
                        (_%target166689167623%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice172290172291%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl166691167625%_))
                        (_%__match172391172392%_
                         _%e166661167543%_
                         _%hd166660167546%_
                         _%tl166659167548%_
                         _%e166664167551%_
                         _%hd166663167554%_
                         _%tl166662167556%_
                         _%e166667167559%_
                         _%hd166666167562%_
                         _%tl166665167564%_
                         _%e166670167567%_
                         _%hd166669167570%_
                         _%tl166668167572%_
                         _%e166673167575%_
                         _%hd166672167578%_
                         _%tl166671167580%_
                         _%e166676167583%_
                         _%hd166675167586%_
                         _%tl166674167588%_
                         _%e166679167591%_
                         _%hd166678167594%_
                         _%tl166677167596%_
                         _%e166682167599%_
                         _%hd166681167602%_
                         _%tl166680167604%_
                         _%e166685167607%_
                         _%hd166684167610%_
                         _%tl166683167612%_
                         _%e166688167615%_
                         _%hd166687167618%_
                         _%tl166686167620%_
                         _%__splice172290172291%_
                         _%target166689167623%_
                         _%tl166691167625%_)
                        (_%__match172579172580%_
                         _%e166661167543%_
                         _%hd166660167546%_
                         _%tl166659167548%_
                         _%e166664167551%_
                         _%hd166663167554%_
                         _%tl166662167556%_
                         _%e166667167559%_
                         _%hd166666167562%_
                         _%tl166665167564%_
                         _%e166670167567%_
                         _%hd166669167570%_
                         _%tl166668167572%_
                         _%e166673167575%_
                         _%hd166672167578%_
                         _%tl166671167580%_
                         _%e166676167583%_
                         _%hd166675167586%_
                         _%tl166674167588%_
                         _%e166679167591%_
                         _%hd166678167594%_
                         _%tl166677167596%_
                         _%e166682167599%_
                         _%hd166681167602%_
                         _%tl166680167604%_
                         _%e166685167607%_
                         _%hd166684167610%_
                         _%tl166683167612%_
                         _%e166688167615%_
                         _%hd166687167618%_
                         _%tl166686167620%_))))
                (_%__match172579172580%_
                 _%e166661167543%_
                 _%hd166660167546%_
                 _%tl166659167548%_
                 _%e166664167551%_
                 _%hd166663167554%_
                 _%tl166662167556%_
                 _%e166667167559%_
                 _%hd166666167562%_
                 _%tl166665167564%_
                 _%e166670167567%_
                 _%hd166669167570%_
                 _%tl166668167572%_
                 _%e166673167575%_
                 _%hd166672167578%_
                 _%tl166671167580%_
                 _%e166676167583%_
                 _%hd166675167586%_
                 _%tl166674167588%_
                 _%e166679167591%_
                 _%hd166678167594%_
                 _%tl166677167596%_
                 _%e166682167599%_
                 _%hd166681167602%_
                 _%tl166680167604%_
                 _%e166685167607%_
                 _%hd166684167610%_
                 _%tl166683167612%_
                 _%e166688167615%_
                 _%hd166687167618%_
                 _%tl166686167620%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match172783172784%_
                                                     _%e166661167543%_
                                                     _%hd166660167546%_
                                                     _%tl166659167548%_
                                                     _%e166664167551%_
                                                     _%hd166663167554%_
                                                     _%tl166662167556%_
                                                     _%e166667167559%_
                                                     _%hd166666167562%_
                                                     _%tl166665167564%_
                                                     _%e166670167567%_
                                                     _%hd166669167570%_
                                                     _%tl166668167572%_
                                                     _%e166673167575%_
                                                     _%hd166672167578%_
                                                     _%tl166671167580%_
                                                     _%e166676167583%_
                                                     _%hd166675167586%_
                                                     _%tl166674167588%_
                                                     _%e166679167591%_
                                                     _%hd166678167594%_
                                                     _%tl166677167596%_
                                                     _%e166682167599%_
                                                     _%hd166681167602%_
                                                     _%tl166680167604%_))))
                                            (_%__match172783172784%_
                                             _%e166661167543%_
                                             _%hd166660167546%_
                                             _%tl166659167548%_
                                             _%e166664167551%_
                                             _%hd166663167554%_
                                             _%tl166662167556%_
                                             _%e166667167559%_
                                             _%hd166666167562%_
                                             _%tl166665167564%_
                                             _%e166670167567%_
                                             _%hd166669167570%_
                                             _%tl166668167572%_
                                             _%e166673167575%_
                                             _%hd166672167578%_
                                             _%tl166671167580%_
                                             _%e166676167583%_
                                             _%hd166675167586%_
                                             _%tl166674167588%_
                                             _%e166679167591%_
                                             _%hd166678167594%_
                                             _%tl166677167596%_
                                             _%e166682167599%_
                                             _%hd166681167602%_
                                             _%tl166680167604%_))
                                        (_%__match172459172460%_
                                         _%e166661167543%_
                                         _%hd166660167546%_
                                         _%tl166659167548%_
                                         _%e166664167551%_
                                         _%hd166663167554%_
                                         _%tl166662167556%_
                                         _%e166667167559%_
                                         _%hd166666167562%_
                                         _%tl166665167564%_
                                         _%e166670167567%_
                                         _%hd166669167570%_
                                         _%tl166668167572%_
                                         _%e166673167575%_
                                         _%hd166672167578%_
                                         _%tl166671167580%_
                                         _%e166676167583%_
                                         _%hd166675167586%_
                                         _%tl166674167588%_
                                         _%e166679167591%_
                                         _%hd166678167594%_
                                         _%tl166677167596%_
                                         _%e166682167599%_
                                         _%hd166681167602%_
                                         _%tl166680167604%_
                                         _%e166685167607%_
                                         _%hd166684167610%_
                                         _%tl166683167612%_))
                                    (_%__match172783172784%_
                                     _%e166661167543%_
                                     _%hd166660167546%_
                                     _%tl166659167548%_
                                     _%e166664167551%_
                                     _%hd166663167554%_
                                     _%tl166662167556%_
                                     _%e166667167559%_
                                     _%hd166666167562%_
                                     _%tl166665167564%_
                                     _%e166670167567%_
                                     _%hd166669167570%_
                                     _%tl166668167572%_
                                     _%e166673167575%_
                                     _%hd166672167578%_
                                     _%tl166671167580%_
                                     _%e166676167583%_
                                     _%hd166675167586%_
                                     _%tl166674167588%_
                                     _%e166679167591%_
                                     _%hd166678167594%_
                                     _%tl166677167596%_
                                     _%e166682167599%_
                                     _%hd166681167602%_
                                     _%tl166680167604%_))))
                            (_%__match172783172784%_
                             _%e166661167543%_
                             _%hd166660167546%_
                             _%tl166659167548%_
                             _%e166664167551%_
                             _%hd166663167554%_
                             _%tl166662167556%_
                             _%e166667167559%_
                             _%hd166666167562%_
                             _%tl166665167564%_
                             _%e166670167567%_
                             _%hd166669167570%_
                             _%tl166668167572%_
                             _%e166673167575%_
                             _%hd166672167578%_
                             _%tl166671167580%_
                             _%e166676167583%_
                             _%hd166675167586%_
                             _%tl166674167588%_
                             _%e166679167591%_
                             _%hd166678167594%_
                             _%tl166677167596%_
                             _%e166682167599%_
                             _%hd166681167602%_
                             _%tl166680167604%_))))
                    (_%__match172721172722%_
                     _%e166661167543%_
                     _%hd166660167546%_
                     _%tl166659167548%_
                     _%e166664167551%_
                     _%hd166663167554%_
                     _%tl166662167556%_
                     _%e166667167559%_
                     _%hd166666167562%_
                     _%tl166665167564%_
                     _%e166670167567%_
                     _%hd166669167570%_
                     _%tl166668167572%_
                     _%e166673167575%_
                     _%hd166672167578%_
                     _%tl166671167580%_
                     _%e166676167583%_
                     _%hd166675167586%_
                     _%tl166674167588%_
                     _%e166679167591%_
                     _%hd166678167594%_
                     _%tl166677167596%_))
                (_%__kont172304172305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172304172305%_))
                                            (_%__kont172304172305%_))
                                        (_%__kont172304172305%_))))
                                (_%__kont172304172305%_))))
                        (_%__kont172304172305%_))
                    (_%__kont172304172305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172304172305%_))
                                                (_%__kont172304172305%_))
                                            (_%__kont172304172305%_))))
                                    (_%__kont172304172305%_))))
                            (_%__kont172304172305%_))))
                    (_%__kont172304172305%_))))))))))
