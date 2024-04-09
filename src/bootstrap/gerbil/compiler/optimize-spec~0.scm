(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712643211)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171696 (list gxc#::identity::t))
            (__tmp171695 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171696
         '()
         __tmp171695
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170561%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170561%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171697
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
        (__make-promise __tmp171697)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170553%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170556%_
                (let ((__obj171690
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171690))
               (__tmp171698
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170556%_ _%stx170553%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171698
           gxc#current-compile-method
           _%self170556%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171700 (list gxc#::void::t))
            (__tmp171699 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171700
         '(receiver methods slots)
         __tmp171699
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170550%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170550%_)))
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
      (let ((__tmp171701
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
        (__make-promise __tmp171701)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170516%_
               _%receiver170511170517%_
               _%methods170512170519%_
               _%slots170513170521%_
               _%stx170523%_)
        (let* ((_%receiver170526%_
                (if (eq? _%receiver170511170517%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170511170517%_))
               (_%methods170528%_
                (if (eq? _%methods170512170519%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170512170519%_))
               (_%slots170530%_
                (if (eq? _%slots170513170521%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170513170521%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170532%_
                  (let ((__obj171692
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
                       __obj171692
                       _%receiver170526%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171692
                       _%methods170528%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171692
                       _%slots170530%_
                       '3
                       '#f
                       '#f))
                    __obj171692))
                 (__tmp171702
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170532%_ _%stx170523%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171702
             gxc#current-compile-method
             _%self170532%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170539%_ . _%args170540%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170539%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170539%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170539%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170539%_
                  'slots:
                  absent-value))
               _%args170540%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170514170546%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170514170546%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171704 (list gxc#::basic-xform-expression::t))
            (__tmp171703 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171704
         '(receiver klass methods slots)
         __tmp171703
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170507%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170507%_)))
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
      (let ((__tmp171705
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
        (__make-promise __tmp171705)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170469%_
               _%receiver170463170470%_
               _%klass170464170472%_
               _%methods170465170474%_
               _%slots170466170476%_
               _%stx170478%_)
        (let* ((_%receiver170481%_
                (if (eq? _%receiver170463170470%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170463170470%_))
               (_%klass170483%_
                (if (eq? _%klass170464170472%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170464170472%_))
               (_%methods170485%_
                (if (eq? _%methods170465170474%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170465170474%_))
               (_%slots170487%_
                (if (eq? _%slots170466170476%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170466170476%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170489%_
                  (let ((__obj171694
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
                       __obj171694
                       _%receiver170481%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171694
                       _%klass170483%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171694
                       _%methods170485%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171694
                       _%slots170487%_
                       '4
                       '#f
                       '#f))
                    __obj171694))
                 (__tmp171706
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170489%_ _%stx170478%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171706
             gxc#current-compile-method
             _%self170489%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170496%_ . _%args170497%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170496%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170496%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170496%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170496%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170496%_
                  'slots:
                  absent-value))
               _%args170497%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170467170503%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170467170503%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167644%_ _%stx167645%_)
        (letrec ((_%generate-method-bind167647%_
                  (lambda (_%$klass170455%_
                           _%$method-table170456%_
                           _%id170457%_
                           _%$id170458%_)
                    (let ((_%$tmp170460%_
                           (let ((__tmp171707
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171707))))
                      (cons (cons _%$id170458%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170460%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170456%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170457%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170460%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170460%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170457%_
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
                 (_%generate-slot-bind167648%_
                  (lambda (_%$klass170449%_ _%id170450%_ _%$id170451%_)
                    (let ((_%$tmp170453%_
                           (let ((__tmp171708
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171708))))
                      (cons (cons _%$id170451%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170453%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170449%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170450%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170453%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170453%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170450%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167649%_
                  (lambda (_%$klass170443%_
                           _%$method-table170444%_
                           _%methods-bind170445%_
                           _%slots-bind170446%_
                           _%specializer-impl170447%_)
                    (let ((__tmp171709
                           (cons '%#lambda
                                 (cons (cons _%$klass170443%_
                                             (cons _%$method-table170444%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170446%_
                                                            _%methods-bind170445%_))
                                                         (cons _%specializer-impl170447%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171709 _%stx167645%_))))
                 (_%generate-specializer-def167650%_
                  (lambda (_%id170439%_
                           _%specializer-id170440%_
                           _%specializer-impl170441%_)
                    (let ((__tmp171710
                           (cons '%#begin
                                 (cons _%stx167645%_
                                       (cons (let ((__tmp171711
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170441%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171711
                                                _%stx167645%_))
                                             (cons (let ((__tmp171712
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170439%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170440%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171712
                                                      _%stx167645%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171710 _%stx167645%_)))))
          (let* ((_%__stx170650170651%_ _%stx167645%_)
                 (_%g167653167673%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170650170651%_)))))
            (let ((_%__kont170652170653%_
                   (lambda (_%L167717%_ _%L167718%_)
                     (let ((_%method-calls167737%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167738%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167739%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167741%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167737%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167738%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167717%_))
                             (let* ((_%__stx170564170565%_ _%L167717%_)
                                    (_%g168129168147%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170564170565%_)))))
                               (let ((_%__kont170566170567%_
                                      (lambda (_%L168183%_
                                               _%L168184%_
                                               _%L168185%_)
                                        (for-each
                                         (lambda (_%g168201168203%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168185%_
                                            _%method-calls167737%_
                                            _%slot-refs167738%_
                                            _%g168201168203%_))
                                         _%L168183%_)
                                        (if (_%no-specializer?167741%_)
                                            _%stx167645%_
                                            (let* ((_%specializer-id168212%_
                                                    (let* ((_%id168206%_
                                                            (let ((__tmp171713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167718%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171713 '"::specialize")))
                   (_%specializer-id168209%_
                    (let ((__tmp171714
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167645%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168206%_ __tmp171714))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168209%_))
              _%specializer-id168209%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168214%_
                                                    (let ((__tmp171715
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171715)))
                                                   (_%$method-table168216%_
                                                    (let ((__tmp171716
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171716)))
                                                   (_%methods168218%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167737%_)))
                                                   (_%$methods168222%_
                                                    (map (lambda (_%id168220%_)
                                                           (let ((__tmp171717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168220%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171717)))
                 _%methods168218%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168231%_
                                                    (for-each
                                                     (lambda (_%g168223168226%_
                                                              _%g168224168228%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167737%_
                                                          _%g168223168226%_
                                                          _%g168224168228%_)))
                                                     _%methods168218%_
                                                     _%$methods168222%_))
                                                   (_%methods-bind168241%_
                                                    (map (lambda (_%g168233168236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168234168238%_)
                   (_%generate-method-bind167647%_
                    _%$klass168214%_
                    _%$method-table168216%_
                    _%g168233168236%_
                    _%g168234168238%_))
                 _%methods168218%_
                 _%$methods168222%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168243%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167738%_)))
                                                   (_%$slots168247%_
                                                    (map (lambda (_%id168245%_)
                                                           (let ((__tmp171718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168245%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171718)))
                 _%slots168243%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168256%_
                                                    (for-each
                                                     (lambda (_%g168248168251%_
                                                              _%g168249168253%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167738%_
                                                          _%g168248168251%_
                                                          _%g168249168253%_)))
                                                     _%slots168243%_
                                                     _%$slots168247%_))
                                                   (_%slots-bind168265%_
                                                    (map (lambda (_%g168257168260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168258168262%_)
                   (_%generate-slot-bind167648%_
                    _%$klass168214%_
                    _%g168257168260%_
                    _%g168258168262%_))
                 _%slots168243%_
                 _%$slots168247%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168271%_
                                                    (map (lambda (_%g168266168268%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168185%_
                                                            _%$klass168214%_
                                                            _%method-calls167737%_
                                                            _%slot-refs167738%_
                                                            _%g168266168268%_))
                                                         _%L168183%_))
                                                   (_%specializer-impl168273%_
                                                    (let ((__tmp171719
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168185%_ _%L168184%_)
                               _%specializer-body168271%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171719 _%stx167645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168275%_
                                                    (_%generate-specializer-impl167649%_
                                                     _%$klass168214%_
                                                     _%$method-table168216%_
                                                     _%methods-bind168241%_
                                                     _%slots-bind168265%_
                                                     _%specializer-impl168273%_)))
                                              (let ((__tmp171721
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167718%_)))
                                                    (__tmp171720
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168212%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171721
                                                 '" => "
                                                 __tmp171720))
                                              (_%generate-specializer-def167650%_
                                               _%L167718%_
                                               _%specializer-id168212%_
                                               _%specializer-impl168275%_)))))
                                     (_%__kont170568170569%_
                                      (lambda () _%stx167645%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170564170565%_))
                                     (let ((_%e168134168159%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170564170565%_))))
                                       (let ((_%tl168136168164%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168134168159%_)))
                                             (_%hd168135168162%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168134168159%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168136168164%_))
                                             (let ((_%e168137168167%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168136168164%_))))
                                               (let ((_%tl168139168172%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168137168167%_)))
                                                     (_%hd168138168170%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168137168167%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168138168170%_))
                                                     (let ((_%e168140168175%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168138168170%_))))
                                                       (let ((_%tl168142168180%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168140168175%_)))
                     (_%hd168141168178%_
                      (let () (declare (not safe)) (##car _%e168140168175%_))))
                 (_%__kont170566170567%_
                  _%tl168139168172%_
                  _%tl168142168180%_
                  _%hd168141168178%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170568170569%_))))
                                             (_%__kont170568170569%_))))
                                     (_%__kont170568170569%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167717%_))
                                 (let* ((_%g168282168301%_
                                         (lambda (_%g168283168298%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168283168298%_))))
                                        (_%g168281168588%_
                                         (lambda (_%g168283168304%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168283168304%_))
                                               (let ((_%e168285168306%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168283168304%_))))
                                                 (let ((_%hd168286168309%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168285168306%_)))
                                                       (_%tl168287168311%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168285168306%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168287168311%_))
                                                       (let ((_g171722_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168287168311%_ '0))))
                 (begin
                   (let ((_g171723_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171722_)
                                (##vector-length _g171722_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171723_ 2)))
                         (error "Context expects 2 values" _g171723_)))
                   (let ((_%target168288168314%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171722_ 0)))
                         (_%tl168290168316%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171722_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168290168316%_))
                         (letrec ((_%loop168291168319%_
                                   (lambda (_%hd168289168322%_
                                            _%clause168295168324%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168289168322%_))
                                         (let ((_%e168292168327%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168289168322%_))))
                                           (let ((_%lp-hd168293168330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168292168327%_)))
                                                 (_%lp-tl168294168332%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168292168327%_))))
                                             (_%loop168291168319%_
                                              _%lp-tl168294168332%_
                                              (cons _%lp-hd168293168330%_
                                                    _%clause168295168324%_))))
                                         (let ((_%clause168296168335%_
                                                (reverse _%clause168295168324%_)))
                                           ((lambda (_%L168338%_)
                                              (for-each
                                               (lambda (_%clause168352%_)
                                                 (let* ((_%__stx170590170591%_
                                                         _%clause168352%_)
                                                        (_%g168355168370%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170590170591%_)))))
                                                   (let ((_%__kont170592170593%_
                                                          (lambda (_%L168398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168399%_
                           _%L168400%_)
                    (for-each
                     (lambda (_%g168415168417%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168400%_
                        _%method-calls167737%_
                        _%slot-refs167738%_
                        _%g168415168417%_))
                     _%L168398%_)))
                 (_%__kont170594170595%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170590170591%_))
                                                         (let ((_%e168360168382%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170590170591%_))))
                   (let ((_%tl168362168387%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168360168382%_)))
                         (_%hd168361168385%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168360168382%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168361168385%_))
                         (let ((_%e168363168390%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168361168385%_))))
                           (let ((_%tl168365168395%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168363168390%_)))
                                 (_%hd168364168393%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168363168390%_))))
                             (_%__kont170592170593%_
                              _%tl168362168387%_
                              _%tl168365168395%_
                              _%hd168364168393%_)))
                         (_%__kont170594170595%_))))
                 (_%__kont170594170595%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171724
                                                      (lambda (_%g168422168425%_
                                                               _%g168423168427%_)
                                                        (cons _%g168422168425%_
                                                              _%g168423168427%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171724
                                                  '()
                                                  _%L168338%_)))
                                              (if (_%no-specializer?167741%_)
                                                  _%stx167645%_
                                                  (let* ((_%specializer-id168436%_
                                                          (let* ((_%id168430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171725
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167718%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171725 '"::specialize")))
                         (_%specializer-id168433%_
                          (let ((__tmp171726
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167645%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168430%_
                             __tmp171726))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168433%_))
                    _%specializer-id168433%_))
                 (_%$klass168438%_
                  (let ((__tmp171727
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171727)))
                 (_%$method-table168440%_
                  (let ((__tmp171728
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171728)))
                 (_%methods168442%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167737%_)))
                 (_%$methods168446%_
                  (map (lambda (_%id168444%_)
                         (let ((__tmp171729 (gensym _%id168444%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171729)))
                       _%methods168442%_))
                 (_%_168455%_
                  (for-each
                   (lambda (_%g168447168450%_ _%g168448168452%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167737%_
                        _%g168447168450%_
                        _%g168448168452%_)))
                   _%methods168442%_
                   _%$methods168446%_))
                 (_%methods-bind168465%_
                  (map (lambda (_%g168457168460%_ _%g168458168462%_)
                         (_%generate-method-bind167647%_
                          _%$klass168438%_
                          _%$method-table168440%_
                          _%g168457168460%_
                          _%g168458168462%_))
                       _%methods168442%_
                       _%$methods168446%_))
                 (_%slots168467%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167738%_)))
                 (_%$slots168471%_
                  (map (lambda (_%id168469%_)
                         (let ((__tmp171730 (gensym _%id168469%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171730)))
                       _%slots168467%_))
                 (_%_168480%_
                  (for-each
                   (lambda (_%g168472168475%_ _%g168473168477%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167738%_
                        _%g168472168475%_
                        _%g168473168477%_)))
                   _%slots168467%_
                   _%$slots168471%_))
                 (_%slots-bind168489%_
                  (map (lambda (_%g168481168484%_ _%g168482168486%_)
                         (_%generate-slot-bind167648%_
                          _%$klass168438%_
                          _%g168481168484%_
                          _%g168482168486%_))
                       _%slots168467%_
                       _%$slots168471%_))
                 (_%specializer-clauses168581%_
                  (map (lambda (_%clause168491%_)
                         (let* ((_%__stx170610170611%_ _%clause168491%_)
                                (_%g168494168509%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170610170611%_)))))
                           (let ((_%__kont170612170613%_
                                  (lambda (_%L168537%_ _%L168538%_ _%L168539%_)
                                    (let ((_%body168569%_
                                           (map (lambda (_%g168564168566%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168539%_
                                                   _%$klass168438%_
                                                   _%method-calls167737%_
                                                   _%slot-refs167738%_
                                                   _%g168564168566%_))
                                                _%L168537%_)))
                                      (cons (cons _%L168539%_ _%L168538%_)
                                            _%body168569%_))))
                                 (_%__kont170614170615%_
                                  (lambda () _%clause168491%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170610170611%_))
                                 (let ((_%e168499168521%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170610170611%_))))
                                   (let ((_%tl168501168526%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168499168521%_)))
                                         (_%hd168500168524%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168499168521%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168500168524%_))
                                         (let ((_%e168502168529%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168500168524%_))))
                                           (let ((_%tl168504168534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168502168529%_)))
                                                 (_%hd168503168532%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168502168529%_))))
                                             (_%__kont170612170613%_
                                              _%tl168501168526%_
                                              _%tl168504168534%_
                                              _%hd168503168532%_)))
                                         (_%__kont170614170615%_))))
                                 (_%__kont170614170615%_)))))
                       (let ((__tmp171731
                              (lambda (_%g168573168576%_ _%g168574168578%_)
                                (cons _%g168573168576%_ _%g168574168578%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171731 '() _%L168338%_))))
                 (_%specializer-impl168583%_
                  (let ((__tmp171732
                         (cons '%#case-lambda _%specializer-clauses168581%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171732 _%stx167645%_)))
                 (_%specializer-impl168585%_
                  (_%generate-specializer-impl167649%_
                   _%$klass168438%_
                   _%$method-table168440%_
                   _%methods-bind168465%_
                   _%slots-bind168489%_
                   _%specializer-impl168583%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167718%_)))
                                                          (__tmp171733
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168436%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171734
                                                       '" => "
                                                       __tmp171733))
                                                    (_%generate-specializer-def167650%_
                                                     _%L167718%_
                                                     _%specializer-id168436%_
                                                     _%specializer-impl168585%_))))
                                            _%clause168296168335%_))))))
                           (_%loop168291168319%_ _%target168288168314%_ '()))
                         (_%g168282168301%_ _%g168283168304%_)))))
               (_%g168282168301%_ _%g168283168304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168282168301%_
                                                _%g168283168304%_)))))
                                   (_%g168281168588%_ _%L167717%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167717%_))
                                     (let* ((_%g168592168622%_
                                             (lambda (_%g168593168619%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168593168619%_))))
                                            (_%g168591169231%_
                                             (lambda (_%g168593168625%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168593168625%_))
                                                   (let ((_%e168597168627%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168593168625%_))))
                                                     (let ((_%hd168598168630%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168597168627%_)))
                                                           (_%tl168599168632%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168597168627%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168599168632%_))
                                                           (let ((_%e168600168635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168599168632%_))))
                     (let ((_%hd168601168638%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168600168635%_)))
                           (_%tl168602168640%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168600168635%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168601168638%_))
                           (let ((_%e168603168643%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168601168638%_))))
                             (let ((_%hd168604168646%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168603168643%_)))
                                   (_%tl168605168648%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168603168643%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168604168646%_))
                                   (let ((_%e168606168651%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168604168646%_))))
                                     (let ((_%hd168607168654%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168606168651%_)))
                                           (_%tl168608168656%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168606168651%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168607168654%_))
                                           (let ((_%e168609168659%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168607168654%_))))
                                             (let ((_%hd168610168662%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168609168659%_)))
                                                   (_%tl168611168664%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168609168659%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168611168664%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168608168656%_))
                                                       (let ((_%e168612168667%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168608168656%_))))
                 (let ((_%hd168613168670%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168612168667%_)))
                       (_%tl168614168672%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168612168667%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168614168672%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168605168648%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168602168640%_))
                               (let ((_%e168615168675%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168602168640%_))))
                                 (let ((_%hd168616168678%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168615168675%_)))
                                       (_%tl168617168680%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168615168675%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168617168680%_))
                                       ((lambda (_%L168683%_
                                                 _%L168684%_
                                                 _%L168685%_)
                                          (let* ((_%g168709168727%_
                                                  (lambda (_%g168710168724%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168710168724%_))))
                                                 (_%g168708168778%_
                                                  (lambda (_%g168710168730%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168710168730%_))
                                                        (let ((_%e168714168732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168710168730%_))))
                  (let ((_%hd168715168735%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168714168732%_)))
                        (_%tl168716168737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168714168732%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168716168737%_))
                        (let ((_%e168717168740%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168716168737%_))))
                          (let ((_%hd168718168743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168717168740%_)))
                                (_%tl168719168745%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168717168740%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168718168743%_))
                                (let ((_%e168720168748%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168718168743%_))))
                                  (let ((_%hd168721168751%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168720168748%_)))
                                        (_%tl168722168753%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168720168748%_))))
                                    ((lambda (_%L168756%_
                                              _%L168757%_
                                              _%L168758%_)
                                       (for-each
                                        (lambda (_%g168773168775%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168758%_
                                           _%method-calls167737%_
                                           _%slot-refs167738%_
                                           _%g168773168775%_))
                                        _%L168756%_))
                                     _%tl168719168745%_
                                     _%tl168722168753%_
                                     _%hd168721168751%_)))
                                (_%g168709168727%_ _%g168710168730%_))))
                        (_%g168709168727%_ _%g168710168730%_))))
                (_%g168709168727%_ _%g168710168730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168708168778%_ _%L168684%_))
                                          (let* ((_%g168781168800%_
                                                  (lambda (_%g168782168797%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168782168797%_))))
                                                 (_%g168780168919%_
                                                  (lambda (_%g168782168803%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168782168803%_))
                                                        (let ((_%e168784168805%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168782168803%_))))
                  (let ((_%hd168785168808%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168784168805%_)))
                        (_%tl168786168810%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168784168805%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168786168810%_))
                        (let ((_g171735_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168786168810%_
                                  '0))))
                          (begin
                            (let ((_g171736_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171735_)
                                         (##vector-length _g171735_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171736_ 2)))
                                  (error "Context expects 2 values"
                                         _g171736_)))
                            (let ((_%target168787168813%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171735_ 0)))
                                  (_%tl168789168815%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171735_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168789168815%_))
                                  (letrec ((_%loop168790168818%_
                                            (lambda (_%hd168788168821%_
                                                     _%clause168794168823%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168788168821%_))
                                                  (let ((_%e168791168826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168788168821%_))))
                                                    (let ((_%lp-hd168792168829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168791168826%_)))
                                                          (_%lp-tl168793168831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168791168826%_))))
                                                      (_%loop168790168818%_
                                                       _%lp-tl168793168831%_
                                                       (cons _%lp-hd168792168829%_
                                                             _%clause168794168823%_))))
                                                  (let ((_%clause168795168834%_
                                                         (reverse _%clause168794168823%_)))
                                                    ((lambda (_%L168837%_)
                                                       (for-each
                                                        (lambda (_%clause168850%_)
                                                          (let* ((_%g168852168867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168853168864%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168853168864%_))))
                         (_%g168851168909%_
                          (lambda (_%g168853168870%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168853168870%_))
                                (let ((_%e168857168872%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168853168870%_))))
                                  (let ((_%hd168858168875%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168857168872%_)))
                                        (_%tl168859168877%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168857168872%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168858168875%_))
                                        (let ((_%e168860168880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168858168875%_))))
                                          (let ((_%hd168861168883%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168860168880%_)))
                                                (_%tl168862168885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168860168880%_))))
                                            ((lambda (_%L168888%_
                                                      _%L168889%_
                                                      _%L168890%_)
                                               (for-each
                                                (lambda (_%g168904168906%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168890%_
                                                   _%method-calls167737%_
                                                   _%slot-refs167738%_
                                                   _%g168904168906%_))
                                                _%L168888%_))
                                             _%tl168859168877%_
                                             _%tl168862168885%_
                                             _%hd168861168883%_)))
                                        (_%g168852168867%_
                                         _%g168853168870%_))))
                                (_%g168852168867%_ _%g168853168870%_)))))
                    (_%g168851168909%_ _%clause168850%_)))
                (let ((__tmp171737
                       (lambda (_%g168911168914%_ _%g168912168916%_)
                         (cons _%g168911168914%_ _%g168912168916%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171737 '() _%L168837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168795168834%_))))))
                                    (_%loop168790168818%_
                                     _%target168787168813%_
                                     '()))
                                  (_%g168781168800%_ _%g168782168803%_)))))
                        (_%g168781168800%_ _%g168782168803%_))))
                (_%g168781168800%_ _%g168782168803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168780168919%_ _%L168683%_))
                                          (if (_%no-specializer?167741%_)
                                              _%stx167645%_
                                              (let* ((_%specializer-id168928%_
                                                      (let* ((_%id168922%_
                                                              (let ((__tmp171738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167718%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171738 '"::specialize")))
                     (_%specializer-id168925%_
                      (let ((__tmp171739
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167645%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168922%_ __tmp171739))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168925%_))
                _%specializer-id168925%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168930%_
                                                      (let ((__tmp171740
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171740)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168932%_
                                                      (let ((__tmp171741
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171741)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168934%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167737%_)))
                                                     (_%$methods168938%_
                                                      (map (lambda (_%id168936%_)
                                                             (let ((__tmp171742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168936%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171742)))
                   _%methods168934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168947%_
                                                      (for-each
                                                       (lambda (_%g168939168942%_
                                                                _%g168940168944%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167737%_
                                                            _%g168939168942%_
                                                            _%g168940168944%_)))
                                                       _%methods168934%_
                                                       _%$methods168938%_))
                                                     (_%methods-bind168957%_
                                                      (map (lambda (_%g168949168952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168950168954%_)
                     (_%generate-method-bind167647%_
                      _%$klass168930%_
                      _%$method-table168932%_
                      _%g168949168952%_
                      _%g168950168954%_))
                   _%methods168934%_
                   _%$methods168938%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167738%_)))
                                                     (_%$slots168963%_
                                                      (map (lambda (_%id168961%_)
                                                             (let ((__tmp171743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168961%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171743)))
                   _%slots168959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168972%_
                                                      (for-each
                                                       (lambda (_%g168964168967%_
                                                                _%g168965168969%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167738%_
                                                            _%g168964168967%_
                                                            _%g168965168969%_)))
                                                       _%slots168959%_
                                                       _%$slots168963%_))
                                                     (_%slots-bind168981%_
                                                      (map (lambda (_%g168973168976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168974168978%_)
                     (_%generate-slot-bind167648%_
                      _%$klass168930%_
                      _%g168973168976%_
                      _%g168974168978%_))
                   _%slots168959%_
                   _%$slots168963%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169067%_
                                                      (let* ((_%g168983169001%_
                                                              (lambda (_%g168984168998%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168984168998%_))))
                     (_%g168982169064%_
                      (lambda (_%g168984169004%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g168984169004%_))
                            (let ((_%e168988169006%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g168984169004%_))))
                              (let ((_%hd168989169009%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168988169006%_)))
                                    (_%tl168990169011%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168988169006%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168990169011%_))
                                    (let ((_%e168991169014%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168990169011%_))))
                                      (let ((_%hd168992169017%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168991169014%_)))
                                            (_%tl168993169019%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168991169014%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168992169017%_))
                                            (let ((_%e168994169022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168992169017%_))))
                                              (let ((_%hd168995169025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168994169022%_)))
                                                    (_%tl168996169027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168994169022%_))))
                                                ((lambda (_%L169030%_
                                                          _%L169031%_
                                                          _%L169032%_)
                                                   (let* ((_%body169062%_
                                                           (map (lambda (_%g169057169059%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L169032%_
                           _%$klass168930%_
                           _%method-calls167737%_
                           _%slot-refs167738%_
                           _%g169057169059%_))
                        _%L169030%_))
                  (__tmp171744
                   (cons '%#lambda
                         (cons (cons _%L169032%_ _%L169031%_)
                               _%body169062%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171744
                                                      _%L168684%_)))
                                                 _%tl168993169019%_
                                                 _%tl168996169027%_
                                                 _%hd168995169025%_)))
                                            (_%g168983169001%_
                                             _%g168984169004%_))))
                                    (_%g168983169001%_ _%g168984169004%_))))
                            (_%g168983169001%_ _%g168984169004%_)))))
                (_%g168982169064%_ _%L168684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169224%_
                                                      (let* ((_%g169069169088%_
                                                              (lambda (_%g169070169085%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169070169085%_))))
                     (_%g169068169221%_
                      (lambda (_%g169070169091%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169070169091%_))
                            (let ((_%e169072169093%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169070169091%_))))
                              (let ((_%hd169073169096%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169072169093%_)))
                                    (_%tl169074169098%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169072169093%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169074169098%_))
                                    (let ((_g171745_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169074169098%_
                                              '0))))
                                      (begin
                                        (let ((_g171746_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171745_)
                                                     (##vector-length
                                                      _g171745_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171746_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171746_)))
                                        (let ((_%target169075169101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171745_ 0)))
                                              (_%tl169077169103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171745_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169077169103%_))
                                              (letrec ((_%loop169078169106%_
                                                        (lambda (_%hd169076169109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169082169111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169076169109%_))
                      (let ((_%e169079169114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169076169109%_))))
                        (let ((_%lp-hd169080169117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169079169114%_)))
                              (_%lp-tl169081169119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169079169114%_))))
                          (_%loop169078169106%_
                           _%lp-tl169081169119%_
                           (cons _%lp-hd169080169117%_
                                 _%clause169082169111%_))))
                      (let ((_%clause169083169122%_
                             (reverse _%clause169082169111%_)))
                        ((lambda (_%L169125%_)
                           (let* ((_%clauses169219%_
                                   (map (lambda (_%clause169139%_)
                                          (let* ((_%__stx170630170631%_
                                                  _%clause169139%_)
                                                 (_%g169142169157%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170630170631%_)))))
                                            (let ((_%__kont170632170633%_
                                                   (lambda (_%L169185%_
                                                            _%L169186%_
                                                            _%L169187%_)
                                                     (let ((_%body169207%_
                                                            (map (lambda (_%g169202169204%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169187%_
                            _%$klass168930%_
                            _%method-calls167737%_
                            _%slot-refs167738%_
                            _%g169202169204%_))
                         _%L169185%_)))
               (cons (cons _%L169187%_ _%L169186%_) _%body169207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170634170635%_
                                                   (lambda ()
                                                     _%clause169139%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170630170631%_))
                                                  (let ((_%e169147169169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170630170631%_))))
                                                    (let ((_%tl169149169174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169147169169%_)))
                                                          (_%hd169148169172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169147169169%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169148169172%_))
                                                          (let ((_%e169150169177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169148169172%_))))
                    (let ((_%tl169152169182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169150169177%_)))
                          (_%hd169151169180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169150169177%_))))
                      (_%__kont170632170633%_
                       _%tl169149169174%_
                       _%tl169152169182%_
                       _%hd169151169180%_)))
                  (_%__kont170634170635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170634170635%_)))))
                                        (let ((__tmp171747
                                               (lambda (_%g169211169214%_
                                                        _%g169212169216%_)
                                                 (cons _%g169211169214%_
                                                       _%g169212169216%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171747
                                           '()
                                           _%L169125%_))))
                                  (__tmp171748
                                   (cons '%#case-lambda _%clauses169219%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171748 _%L168683%_)))
                         _%clause169083169122%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169078169106%_
                                                 _%target169075169101%_
                                                 '()))
                                              (_%g169069169088%_
                                               _%g169070169091%_)))))
                                    (_%g169069169088%_ _%g169070169091%_))))
                            (_%g169069169088%_ _%g169070169091%_)))))
                (_%g169068169221%_ _%L168683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169226%_
                                                      (let ((__tmp171749
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168685%_ '())
                                             (cons _%specializer-lambda-expr169067%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169224%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171749 _%stx167645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169228%_
                                                      (_%generate-specializer-impl167649%_
                                                       _%$klass168930%_
                                                       _%$method-table168932%_
                                                       _%methods-bind168957%_
                                                       _%slots-bind168981%_
                                                       _%specializer-impl169226%_)))
                                                (let ((__tmp171751
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167718%_)))
                                                      (__tmp171750
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168928%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171751
                                                   '" => "
                                                   __tmp171750))
                                                (_%generate-specializer-def167650%_
                                                 _%L167718%_
                                                 _%specializer-id168928%_
                                                 _%specializer-impl169228%_))))
                                        _%hd168616168678%_
                                        _%hd168613168670%_
                                        _%hd168610168662%_)
                                       (_%g168592168622%_ _%g168593168625%_))))
                               (_%g168592168622%_ _%g168593168625%_))
                           (_%g168592168622%_ _%g168593168625%_))
                       (_%g168592168622%_ _%g168593168625%_))))
               (_%g168592168622%_ _%g168593168625%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168592168622%_
                                                    _%g168593168625%_))))
                                           (_%g168592168622%_
                                            _%g168593168625%_))))
                                   (_%g168592168622%_ _%g168593168625%_))))
                           (_%g168592168622%_ _%g168593168625%_))))
                   (_%g168592168622%_ _%g168593168625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168592168622%_
                                                    _%g168593168625%_)))))
                                       (_%g168591169231%_ _%L167717%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167717%_))
                                         (let* ((_%g169235169288%_
                                                 (lambda (_%g169236169285%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169236169285%_))))
                                                (_%g169234170431%_
                                                 (lambda (_%g169236169291%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169236169291%_))
                                                       (let ((_%e169242169293%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169236169291%_))))
                 (let ((_%hd169243169296%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169242169293%_)))
                       (_%tl169244169298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169242169293%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169243169296%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169243169296%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169244169298%_))
                               (let ((_%e169245169301%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169244169298%_))))
                                 (let ((_%hd169246169304%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169245169301%_)))
                                       (_%tl169247169306%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169245169301%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169246169304%_))
                                       (let ((_%e169248169309%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169246169304%_))))
                                         (let ((_%hd169249169312%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169248169309%_)))
                                               (_%tl169250169314%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169248169309%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169249169312%_))
                                               (let ((_%e169251169317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169249169312%_))))
                                                 (let ((_%hd169252169320%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169251169317%_)))
                                                       (_%tl169253169322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169251169317%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169252169320%_))
                                                       (let ((_%e169254169325%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169252169320%_))))
                 (let ((_%hd169255169328%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169254169325%_)))
                       (_%tl169256169330%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169254169325%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169256169330%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169253169322%_))
                           (let ((_%e169257169333%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169253169322%_))))
                             (let ((_%hd169258169336%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169257169333%_)))
                                   (_%tl169259169338%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169257169333%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169258169336%_))
                                   (let ((_%e169260169341%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169258169336%_))))
                                     (let ((_%hd169261169344%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169260169341%_)))
                                           (_%tl169262169346%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169260169341%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169261169344%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169261169344%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169262169346%_))
                                                   (let ((_%e169263169349%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169262169346%_))))
                                                     (let ((_%hd169264169352%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169263169349%_)))
                                                           (_%tl169265169354%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169263169349%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169264169352%_))
                                                           (let ((_%e169266169357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169264169352%_))))
                     (let ((_%hd169267169360%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169266169357%_)))
                           (_%tl169268169362%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169266169357%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169267169360%_))
                           (let ((_%e169269169365%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169267169360%_))))
                             (let ((_%hd169270169368%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169269169365%_)))
                                   (_%tl169271169370%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169269169365%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169270169368%_))
                                   (let ((_%e169272169373%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169270169368%_))))
                                     (let ((_%hd169273169376%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169272169373%_)))
                                           (_%tl169274169378%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169272169373%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169274169378%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169271169370%_))
                                               (let ((_%e169275169381%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169271169370%_))))
                                                 (let ((_%hd169276169384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169275169381%_)))
                                                       (_%tl169277169386%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169275169381%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169277169386%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169268169362%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169265169354%_))
                       (let ((_%e169278169389%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169265169354%_))))
                         (let ((_%hd169279169392%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169278169389%_)))
                               (_%tl169280169394%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169278169389%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169280169394%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169259169338%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169250169314%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169247169306%_))
                                           (let ((_%e169281169397%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169247169306%_))))
                                             (let ((_%hd169282169400%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169281169397%_)))
                                                   (_%tl169283169402%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169281169397%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169283169402%_))
                                                   ((lambda (_%L169405%_
                                                             _%L169406%_
                                                             _%L169407%_
                                                             _%L169408%_
                                                             _%L169409%_)
                                                      (let* ((_%g169449169511%_
                                                              (lambda (_%g169450169508%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169450169508%_))))
                     (_%g169448170428%_
                      (lambda (_%g169450169514%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169450169514%_))
                            (let ((_%e169456169516%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169450169514%_))))
                              (let ((_%hd169457169519%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169456169516%_)))
                                    (_%tl169458169521%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169456169516%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169457169519%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169457169519%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169458169521%_))
                                            (let ((_%e169459169524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169458169521%_))))
                                              (let ((_%hd169460169527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169459169524%_)))
                                                    (_%tl169461169529%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169459169524%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169461169529%_))
                                                    (let ((_%e169462169532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169461169529%_))))
                                                      (let ((_%hd169463169535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169462169532%_)))
                    (_%tl169464169537%_
                     (let () (declare (not safe)) (##cdr _%e169462169532%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169463169535%_))
                    (let ((_%e169465169540%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169463169535%_))))
                      (let ((_%hd169466169543%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169465169540%_)))
                            (_%tl169467169545%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169465169540%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169466169543%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169466169543%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169467169545%_))
                                    (let ((_%e169468169548%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169467169545%_))))
                                      (let ((_%hd169469169551%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169468169548%_)))
                                            (_%tl169470169553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169468169548%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169469169551%_))
                                            (let ((_%e169471169556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169469169551%_))))
                                              (let ((_%hd169472169559%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169471169556%_)))
                                                    (_%tl169473169561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169471169556%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169472169559%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169472169559%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169473169561%_))
                                                            (let ((_%e169474169564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169473169561%_))))
                      (let ((_%hd169475169567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169474169564%_)))
                            (_%tl169476169569%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169474169564%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169476169569%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169470169553%_))
                                (let ((_%e169477169572%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169470169553%_))))
                                  (let ((_%hd169478169575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169477169572%_)))
                                        (_%tl169479169577%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169477169572%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169478169575%_))
                                        (let ((_%e169480169580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169478169575%_))))
                                          (let ((_%hd169481169583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169480169580%_)))
                                                (_%tl169482169585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169480169580%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169481169583%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169481169583%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169482169585%_))
                                                        (let ((_%e169483169588%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169482169585%_))))
                  (let ((_%hd169484169591%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169483169588%_)))
                        (_%tl169485169593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169483169588%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169485169593%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169479169577%_))
                            (let ((_%e169486169596%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169479169577%_))))
                              (let ((_%hd169487169599%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169486169596%_)))
                                    (_%tl169488169601%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169486169596%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169487169599%_))
                                    (let ((_%e169489169604%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169487169599%_))))
                                      (let ((_%hd169490169607%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169489169604%_)))
                                            (_%tl169491169609%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169489169604%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169490169607%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169490169607%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169491169609%_))
                                                    (let ((_%e169492169612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169491169609%_))))
                                                      (let ((_%hd169493169615%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169492169612%_)))
                    (_%tl169494169617%_
                     (let () (declare (not safe)) (##cdr _%e169492169612%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169494169617%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169488169601%_))
                        (if (let ((__tmp171752
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169488169601%_))))
                              (declare (not safe))
                              (##fx>= __tmp171752 '1))
                            (let ((_g171753_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169488169601%_
                                      '1))))
                              (begin
                                (let ((_g171754_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171753_)
                                             (##vector-length _g171753_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171754_ 2)))
                                      (error "Context expects 2 values"
                                             _g171754_)))
                                (let ((_%target169495169620%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171753_ 0)))
                                      (_%tl169497169622%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171753_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169497169622%_))
                                      (let ((_%e169504169625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169497169622%_))))
                                        (let ((_%hd169505169628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169504169625%_)))
                                              (_%tl169506169630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169504169625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169506169630%_))
                                              (letrec ((_%loop169498169633%_
                                                        (lambda (_%hd169496169636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169502169638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169496169636%_))
                      (let ((_%e169499169641%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169496169636%_))))
                        (let ((_%lp-hd169500169644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169499169641%_)))
                              (_%lp-tl169501169646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169499169641%_))))
                          (_%loop169498169633%_
                           _%lp-tl169501169646%_
                           (cons _%lp-hd169500169644%_
                                 _%kw-ref169502169638%_))))
                      (let ((_%kw-ref169503169649%_
                             (reverse _%kw-ref169502169638%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169464169537%_))
                            ((lambda (_%L169652%_
                                      _%L169653%_
                                      _%L169654%_
                                      _%L169655%_
                                      _%L169656%_)
                               (let* ((_%kw-count169707%_
                                       (length (let ((__tmp171755
                                                      (lambda (_%g169699169702%_
                                                               _%g169700169704%_)
                                                        (cons _%g169699169702%_
                                                              _%g169700169704%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171755
                                                  '()
                                                  _%L169653%_))))
                                      (_%self-index169709%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169707%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169407%_))
                                     (let* ((_%g169713169727%_
                                             (lambda (_%g169714169724%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169714169724%_))))
                                            (_%g169712169844%_
                                             (lambda (_%g169714169730%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169714169730%_))
                                                   (let ((_%e169717169732%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169714169730%_))))
                                                     (let ((_%hd169718169735%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169717169732%_)))
                                                           (_%tl169719169737%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169717169732%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169719169737%_))
                                                           (let ((_%e169720169740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169719169737%_))))
                     (let ((_%hd169721169743%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169720169740%_)))
                           (_%tl169722169745%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169720169740%_))))
                       ((lambda (_%L169748%_ _%L169749%_)
                          (let ((_%self169766%_
                                 (list-ref _%L169749%_ _%self-index169709%_)))
                            (for-each
                             (lambda (_%g169767169769%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169766%_
                                _%method-calls167737%_
                                _%slot-refs167738%_
                                _%g169767169769%_))
                             _%L169748%_)
                            (if (_%no-specializer?167741%_)
                                _%stx167645%_
                                (let* ((_%specializer-id169778%_
                                        (let* ((_%id169772%_
                                                (let ((__tmp171756
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167718%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171756
                                                   '"::specialize")))
                                               (_%specializer-id169775%_
                                                (let ((__tmp171757
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167645%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169772%_
                                                   __tmp171757))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169775%_))
                                          _%specializer-id169775%_))
                                       (_%$klass169780%_
                                        (let ((__tmp171758
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171758)))
                                       (_%$method-table169782%_
                                        (let ((__tmp171759
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171759)))
                                       (_%methods169784%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167737%_)))
                                       (_%$methods169788%_
                                        (map (lambda (_%id169786%_)
                                               (let ((__tmp171760
                                                      (gensym _%id169786%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171760)))
                                             _%methods169784%_))
                                       (_%_169797%_
                                        (for-each
                                         (lambda (_%g169789169792%_
                                                  _%g169790169794%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167737%_
                                              _%g169789169792%_
                                              _%g169790169794%_)))
                                         _%methods169784%_
                                         _%$methods169788%_))
                                       (_%methods-bind169807%_
                                        (map (lambda (_%g169799169802%_
                                                      _%g169800169804%_)
                                               (_%generate-method-bind167647%_
                                                _%$klass169780%_
                                                _%$method-table169782%_
                                                _%g169799169802%_
                                                _%g169800169804%_))
                                             _%methods169784%_
                                             _%$methods169788%_))
                                       (_%slots169809%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167738%_)))
                                       (_%$slots169813%_
                                        (map (lambda (_%id169811%_)
                                               (let ((__tmp171761
                                                      (gensym _%id169811%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171761)))
                                             _%slots169809%_))
                                       (_%_169822%_
                                        (for-each
                                         (lambda (_%g169814169817%_
                                                  _%g169815169819%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167738%_
                                              _%g169814169817%_
                                              _%g169815169819%_)))
                                         _%slots169809%_
                                         _%$slots169813%_))
                                       (_%slots-bind169831%_
                                        (map (lambda (_%g169823169826%_
                                                      _%g169824169828%_)
                                               (_%generate-slot-bind167648%_
                                                _%$klass169780%_
                                                _%g169823169826%_
                                                _%g169824169828%_))
                                             _%slots169809%_
                                             _%$slots169813%_))
                                       (_%specializer-impl169839%_
                                        (let* ((_%specializer-body169837%_
                                                (map (lambda (_%g169832169834%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169766%_
                                                        _%$klass169780%_
                                                        _%method-calls167737%_
                                                        _%slot-refs167738%_
                                                        _%g169832169834%_))
                                                     _%L169748%_))
                                               (__tmp171762
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171763
                                   (cons '%#lambda
                                         (cons _%L169749%_
                                               _%specializer-body169837%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171763 _%L169407%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169406%_ '())))
                                      '()))
                          '())
                    (cons _%L169405%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171762
                                           _%stx167645%_)))
                                       (_%specializer-impl169841%_
                                        (_%generate-specializer-impl167649%_
                                         _%$klass169780%_
                                         _%$method-table169782%_
                                         _%methods-bind169807%_
                                         _%slots-bind169831%_
                                         _%specializer-impl169839%_)))
                                  (let ((__tmp171765
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167718%_)))
                                        (__tmp171764
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169778%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171765
                                     '" => "
                                     __tmp171764))
                                  (_%generate-specializer-def167650%_
                                   _%L167718%_
                                   _%specializer-id169778%_
                                   _%specializer-impl169841%_)))))
                        _%tl169722169745%_
                        _%hd169721169743%_)))
                   (_%g169713169727%_ _%g169714169730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169713169727%_
                                                    _%g169714169730%_)))))
                                       (_%g169712169844%_ _%L169407%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169407%_))
                                         (let* ((_%g169848169878%_
                                                 (lambda (_%g169849169875%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169849169875%_))))
                                                (_%g169847170424%_
                                                 (lambda (_%g169849169881%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169849169881%_))
                                                       (let ((_%e169853169883%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169849169881%_))))
                 (let ((_%hd169854169886%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169853169883%_)))
                       (_%tl169855169888%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169853169883%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169855169888%_))
                       (let ((_%e169856169891%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169855169888%_))))
                         (let ((_%hd169857169894%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169856169891%_)))
                               (_%tl169858169896%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169856169891%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169857169894%_))
                               (let ((_%e169859169899%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169857169894%_))))
                                 (let ((_%hd169860169902%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169859169899%_)))
                                       (_%tl169861169904%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169859169899%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169860169902%_))
                                       (let ((_%e169862169907%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169860169902%_))))
                                         (let ((_%hd169863169910%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169862169907%_)))
                                               (_%tl169864169912%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169862169907%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169863169910%_))
                                               (let ((_%e169865169915%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169863169910%_))))
                                                 (let ((_%hd169866169918%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169865169915%_)))
                                                       (_%tl169867169920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169865169915%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169867169920%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169864169912%_))
                                                           (let ((_%e169868169923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169864169912%_))))
                     (let ((_%hd169869169926%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169868169923%_)))
                           (_%tl169870169928%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169868169923%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169870169928%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169861169904%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169858169896%_))
                                   (let ((_%e169871169931%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169858169896%_))))
                                     (let ((_%hd169872169934%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169871169931%_)))
                                           (_%tl169873169936%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169871169931%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169873169936%_))
                                           ((lambda (_%L169939%_
                                                     _%L169940%_
                                                     _%L169941%_)
                                              (let* ((_%g169965169979%_
                                                      (lambda (_%g169966169976%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g169966169976%_))))
                                                     (_%g169964170020%_
                                                      (lambda (_%g169966169982%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g169966169982%_))
                                                            (let ((_%e169969169984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g169966169982%_))))
                      (let ((_%hd169970169987%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169969169984%_)))
                            (_%tl169971169989%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169969169984%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169971169989%_))
                            (let ((_%e169972169992%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169971169989%_))))
                              (let ((_%hd169973169995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169972169992%_)))
                                    (_%tl169974169997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169972169992%_))))
                                ((lambda (_%L170000%_ _%L170001%_)
                                   (let ((_%self170014%_
                                          (list-ref
                                           _%L170001%_
                                           _%self-index169709%_)))
                                     (for-each
                                      (lambda (_%g170015170017%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self170014%_
                                         _%method-calls167737%_
                                         _%slot-refs167738%_
                                         _%g170015170017%_))
                                      _%L170000%_)))
                                 _%tl169974169997%_
                                 _%hd169973169995%_)))
                            (_%g169965169979%_ _%g169966169982%_))))
                    (_%g169965169979%_ _%g169966169982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g169964170020%_
                                                 _%L169940%_))
                                              (let* ((_%g170023170042%_
                                                      (lambda (_%g170024170039%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170024170039%_))))
                                                     (_%g170022170147%_
                                                      (lambda (_%g170024170045%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170024170045%_))
                                                            (let ((_%e170026170047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170024170045%_))))
                      (let ((_%hd170027170050%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170026170047%_)))
                            (_%tl170028170052%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170026170047%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170028170052%_))
                            (let ((_g171766_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170028170052%_
                                      '0))))
                              (begin
                                (let ((_g171767_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171766_)
                                             (##vector-length _g171766_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171767_ 2)))
                                      (error "Context expects 2 values"
                                             _g171767_)))
                                (let ((_%target170029170055%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171766_ 0)))
                                      (_%tl170031170057%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171766_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170031170057%_))
                                      (letrec ((_%loop170032170060%_
                                                (lambda (_%hd170030170063%_
                                                         _%clause170036170065%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170030170063%_))
                                                      (let ((_%e170033170068%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170030170063%_))))
                (let ((_%lp-hd170034170071%_
                       (let () (declare (not safe)) (##car _%e170033170068%_)))
                      (_%lp-tl170035170073%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170033170068%_))))
                  (_%loop170032170060%_
                   _%lp-tl170035170073%_
                   (cons _%lp-hd170034170071%_ _%clause170036170065%_))))
              (let ((_%clause170037170076%_ (reverse _%clause170036170065%_)))
                ((lambda (_%L170079%_)
                   (for-each
                    (lambda (_%clause170092%_)
                      (let* ((_%g170094170105%_
                              (lambda (_%g170095170102%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170095170102%_))))
                             (_%g170093170137%_
                              (lambda (_%g170095170108%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170095170108%_))
                                    (let ((_%e170098170110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170095170108%_))))
                                      (let ((_%hd170099170113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170098170110%_)))
                                            (_%tl170100170115%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170098170110%_))))
                                        ((lambda (_%L170118%_ _%L170119%_)
                                           (let ((_%self170131%_
                                                  (list-ref
                                                   _%L170119%_
                                                   _%self-index169709%_)))
                                             (for-each
                                              (lambda (_%g170132170134%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170131%_
                                                 _%method-calls167737%_
                                                 _%slot-refs167738%_
                                                 _%g170132170134%_))
                                              _%L170118%_)))
                                         _%tl170100170115%_
                                         _%hd170099170113%_)))
                                    (_%g170094170105%_ _%g170095170108%_)))))
                        (_%g170093170137%_ _%clause170092%_)))
                    (let ((__tmp171768
                           (lambda (_%g170139170142%_ _%g170140170144%_)
                             (cons _%g170139170142%_ _%g170140170144%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171768 '() _%L170079%_))))
                 _%clause170037170076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170032170060%_
                                         _%target170029170055%_
                                         '()))
                                      (_%g170023170042%_ _%g170024170045%_)))))
                            (_%g170023170042%_ _%g170024170045%_))))
                    (_%g170023170042%_ _%g170024170045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170022170147%_
                                                 _%L169939%_))
                                              (if (_%no-specializer?167741%_)
                                                  _%stx167645%_
                                                  (let* ((_%specializer-id170156%_
                                                          (let* ((_%id170150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171769
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167718%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171769 '"::specialize")))
                         (_%specializer-id170153%_
                          (let ((__tmp171770
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167645%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170150%_
                             __tmp171770))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170153%_))
                    _%specializer-id170153%_))
                 (_%$klass170158%_
                  (let ((__tmp171771
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171771)))
                 (_%$method-table170160%_
                  (let ((__tmp171772
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171772)))
                 (_%methods170162%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167737%_)))
                 (_%$methods170166%_
                  (map (lambda (_%id170164%_)
                         (let ((__tmp171773 (gensym _%id170164%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171773)))
                       _%methods170162%_))
                 (_%_170175%_
                  (for-each
                   (lambda (_%g170167170170%_ _%g170168170172%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167737%_
                        _%g170167170170%_
                        _%g170168170172%_)))
                   _%methods170162%_
                   _%$methods170166%_))
                 (_%methods-bind170185%_
                  (map (lambda (_%g170177170180%_ _%g170178170182%_)
                         (_%generate-method-bind167647%_
                          _%$klass170158%_
                          _%$method-table170160%_
                          _%g170177170180%_
                          _%g170178170182%_))
                       _%methods170162%_
                       _%$methods170166%_))
                 (_%slots170187%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167738%_)))
                 (_%$slots170191%_
                  (map (lambda (_%id170189%_)
                         (let ((__tmp171774 (gensym _%id170189%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171774)))
                       _%slots170187%_))
                 (_%_170200%_
                  (for-each
                   (lambda (_%g170192170195%_ _%g170193170197%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167738%_
                        _%g170192170195%_
                        _%g170193170197%_)))
                   _%slots170187%_
                   _%$slots170191%_))
                 (_%slots-bind170209%_
                  (map (lambda (_%g170201170204%_ _%g170202170206%_)
                         (_%generate-slot-bind167648%_
                          _%$klass170158%_
                          _%g170201170204%_
                          _%g170202170206%_))
                       _%slots170187%_
                       _%$slots170191%_))
                 (_%specializer-lambda-expr170282%_
                  (let* ((_%g170211170225%_
                          (lambda (_%g170212170222%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170212170222%_))))
                         (_%g170210170279%_
                          (lambda (_%g170212170228%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170212170228%_))
                                (let ((_%e170215170230%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170212170228%_))))
                                  (let ((_%hd170216170233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170215170230%_)))
                                        (_%tl170217170235%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170215170230%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170217170235%_))
                                        (let ((_%e170218170238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170217170235%_))))
                                          (let ((_%hd170219170241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170218170238%_)))
                                                (_%tl170220170243%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170218170238%_))))
                                            ((lambda (_%L170246%_ _%L170247%_)
                                               (let* ((_%self170270%_
                                                       (list-ref
                                                        _%L170247%_
                                                        _%self-index169709%_))
                                                      (_%body170276%_
                                                       (map (lambda (_%g170271170273%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170270%_
                                                               _%$klass170158%_
                                                               _%method-calls167737%_
                                                               _%slot-refs167738%_
                                                               _%g170271170273%_))
                                                            _%L170246%_))
                                                      (__tmp171775
                                                       (cons '%#lambda
                                                             (cons _%L170247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171775
                                                  _%L169940%_)))
                                             _%tl170220170243%_
                                             _%hd170219170241%_)))
                                        (_%g170211170225%_
                                         _%g170212170228%_))))
                                (_%g170211170225%_ _%g170212170228%_)))))
                    (_%g170210170279%_ _%L169940%_)))
                 (_%specializer-case-lambda-expr170417%_
                  (let* ((_%g170284170303%_
                          (lambda (_%g170285170300%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170285170300%_))))
                         (_%g170283170414%_
                          (lambda (_%g170285170306%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170285170306%_))
                                (let ((_%e170287170308%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170285170306%_))))
                                  (let ((_%hd170288170311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170287170308%_)))
                                        (_%tl170289170313%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170287170308%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170289170313%_))
                                        (let ((_g171776_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170289170313%_
                                                  '0))))
                                          (begin
                                            (let ((_g171777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171776_)
                                                         (##vector-length
                                                          _g171776_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171777_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171777_)))
                                            (let ((_%target170290170316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171776_
                                                      0)))
                                                  (_%tl170292170318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171776_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170292170318%_))
                                                  (letrec ((_%loop170293170321%_
                                                            (lambda (_%hd170291170324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170297170326%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170291170324%_))
                          (let ((_%e170294170329%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170291170324%_))))
                            (let ((_%lp-hd170295170332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170294170329%_)))
                                  (_%lp-tl170296170334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170294170329%_))))
                              (_%loop170293170321%_
                               _%lp-tl170296170334%_
                               (cons _%lp-hd170295170332%_
                                     _%clause170297170326%_))))
                          (let ((_%clause170298170337%_
                                 (reverse _%clause170297170326%_)))
                            ((lambda (_%L170340%_)
                               (let* ((_%clauses170412%_
                                       (map (lambda (_%clause170354%_)
                                              (let* ((_%g170356170367%_
                                                      (lambda (_%g170357170364%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170357170364%_))))
                                                     (_%g170355170402%_
                                                      (lambda (_%g170357170370%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170357170370%_))
                                                            (let ((_%e170360170372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170357170370%_))))
                      (let ((_%hd170361170375%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170360170372%_)))
                            (_%tl170362170377%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170360170372%_))))
                        ((lambda (_%L170380%_ _%L170381%_)
                           (let* ((_%self170393%_
                                   (list-ref _%L170381%_ _%self-index169709%_))
                                  (_%body170399%_
                                   (map (lambda (_%g170394170396%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170393%_
                                           _%$klass170158%_
                                           _%method-calls167737%_
                                           _%slot-refs167738%_
                                           _%g170394170396%_))
                                        _%L170380%_)))
                             (cons _%L170381%_ _%body170399%_)))
                         _%tl170362170377%_
                         _%hd170361170375%_)))
                    (_%g170356170367%_ _%g170357170370%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170355170402%_
                                                 _%clause170354%_)))
                                            (let ((__tmp171778
                                                   (lambda (_%g170404170407%_
                                                            _%g170405170409%_)
                                                     (cons _%g170404170407%_
                                                           _%g170405170409%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171778
                                               '()
                                               _%L170340%_))))
                                      (__tmp171779
                                       (cons '%#case-lambda
                                             _%clauses170412%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171779
                                  _%L169939%_)))
                             _%clause170298170337%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170293170321%_
                                                     _%target170290170316%_
                                                     '()))
                                                  (_%g170284170303%_
                                                   _%g170285170306%_)))))
                                        (_%g170284170303%_
                                         _%g170285170306%_))))
                                (_%g170284170303%_ _%g170285170306%_)))))
                    (_%g170283170414%_ _%L169939%_)))
                 (_%specializer-impl170419%_
                  (let ((__tmp171780
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169409%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171781
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170282%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170417%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171781
                                                _%stx167645%_))
                                             '()))
                                 '())
                           (cons _%L169406%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169405%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171780 _%stx167645%_)))
                 (_%specializer-impl170421%_
                  (_%generate-specializer-impl167649%_
                   _%$klass170158%_
                   _%$method-table170160%_
                   _%methods-bind170185%_
                   _%slots-bind170209%_
                   _%specializer-impl170419%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171783
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167718%_)))
                                                          (__tmp171782
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170156%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171783
                                                       '" => "
                                                       __tmp171782))
                                                    (_%generate-specializer-def167650%_
                                                     _%L167718%_
                                                     _%specializer-id170156%_
                                                     _%specializer-impl170421%_))))
                                            _%hd169872169934%_
                                            _%hd169869169926%_
                                            _%hd169866169918%_)
                                           (_%g169848169878%_
                                            _%g169849169881%_))))
                                   (_%g169848169878%_ _%g169849169881%_))
                               (_%g169848169878%_ _%g169849169881%_))
                           (_%g169848169878%_ _%g169849169881%_))))
                   (_%g169848169878%_ _%g169849169881%_))
               (_%g169848169878%_ _%g169849169881%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169848169878%_
                                                _%g169849169881%_))))
                                       (_%g169848169878%_ _%g169849169881%_))))
                               (_%g169848169878%_ _%g169849169881%_))))
                       (_%g169848169878%_ _%g169849169881%_))))
               (_%g169848169878%_ _%g169849169881%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169847170424%_ _%L169407%_))
                                         _%stx167645%_))))
                             _%hd169505169628%_
                             _%kw-ref169503169649%_
                             _%hd169493169615%_
                             _%hd169484169591%_
                             _%hd169475169567%_)
                            (_%g169449169511%_ _%g169450169514%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169498169633%_
                                                 _%target169495169620%_
                                                 '()))
                                              (_%g169449169511%_
                                               _%g169450169514%_))))
                                      (_%g169449169511%_ _%g169450169514%_)))))
                            (_%g169449169511%_ _%g169450169514%_))
                        (_%g169449169511%_ _%g169450169514%_))
                    (_%g169449169511%_ _%g169450169514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169449169511%_
                                                     _%g169450169514%_))
                                                (_%g169449169511%_
                                                 _%g169450169514%_))
                                            (_%g169449169511%_
                                             _%g169450169514%_))))
                                    (_%g169449169511%_ _%g169450169514%_))))
                            (_%g169449169511%_ _%g169450169514%_))
                        (_%g169449169511%_ _%g169450169514%_))))
                (_%g169449169511%_ _%g169450169514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169449169511%_
                                                     _%g169450169514%_))
                                                (_%g169449169511%_
                                                 _%g169450169514%_))))
                                        (_%g169449169511%_
                                         _%g169450169514%_))))
                                (_%g169449169511%_ _%g169450169514%_))
                            (_%g169449169511%_ _%g169450169514%_))))
                    (_%g169449169511%_ _%g169450169514%_))
                (_%g169449169511%_ _%g169450169514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169449169511%_
                                                     _%g169450169514%_))))
                                            (_%g169449169511%_
                                             _%g169450169514%_))))
                                    (_%g169449169511%_ _%g169450169514%_))
                                (_%g169449169511%_ _%g169450169514%_))
                            (_%g169449169511%_ _%g169450169514%_))))
                    (_%g169449169511%_ _%g169450169514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169449169511%_
                                                     _%g169450169514%_))))
                                            (_%g169449169511%_
                                             _%g169450169514%_))
                                        (_%g169449169511%_ _%g169450169514%_))
                                    (_%g169449169511%_ _%g169450169514%_))))
                            (_%g169449169511%_ _%g169450169514%_)))))
                (_%g169448170428%_ _%L169406%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169282169400%_
                                                    _%hd169279169392%_
                                                    _%hd169276169384%_
                                                    _%hd169273169376%_
                                                    _%hd169255169328%_)
                                                   (_%g169235169288%_
                                                    _%g169236169291%_))))
                                           (_%g169235169288%_
                                            _%g169236169291%_))
                                       (_%g169235169288%_ _%g169236169291%_))
                                   (_%g169235169288%_ _%g169236169291%_))
                               (_%g169235169288%_ _%g169236169291%_))))
                       (_%g169235169288%_ _%g169236169291%_))
                   (_%g169235169288%_ _%g169236169291%_))
               (_%g169235169288%_ _%g169236169291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169235169288%_
                                                _%g169236169291%_))
                                           (_%g169235169288%_
                                            _%g169236169291%_))))
                                   (_%g169235169288%_ _%g169236169291%_))))
                           (_%g169235169288%_ _%g169236169291%_))))
                   (_%g169235169288%_ _%g169236169291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169235169288%_
                                                    _%g169236169291%_))
                                               (_%g169235169288%_
                                                _%g169236169291%_))
                                           (_%g169235169288%_
                                            _%g169236169291%_))))
                                   (_%g169235169288%_ _%g169236169291%_))))
                           (_%g169235169288%_ _%g169236169291%_))
                       (_%g169235169288%_ _%g169236169291%_))))
               (_%g169235169288%_ _%g169236169291%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169235169288%_
                                                _%g169236169291%_))))
                                       (_%g169235169288%_ _%g169236169291%_))))
                               (_%g169235169288%_ _%g169236169291%_))
                           (_%g169235169288%_ _%g169236169291%_))
                       (_%g169235169288%_ _%g169236169291%_))))
               (_%g169235169288%_ _%g169236169291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169234170431%_ _%L167717%_))
                                         _%stx167645%_))))))))
                  (_%__kont170654170655%_ (lambda () _%stx167645%_)))
              (let ((_%__match170683170684%_
                     (lambda (_%e167657167685%_
                              _%hd167658167688%_
                              _%tl167659167690%_
                              _%e167660167693%_
                              _%hd167661167696%_
                              _%tl167662167698%_
                              _%e167663167701%_
                              _%hd167664167704%_
                              _%tl167665167706%_
                              _%e167666167709%_
                              _%hd167667167712%_
                              _%tl167668167714%_)
                       (let ((_%L167717%_ _%hd167667167712%_)
                             (_%L167718%_ _%hd167664167704%_))
                         (if (let ((__tmp171784
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167718%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171784))
                             (_%__kont170652170653%_ _%L167717%_ _%L167718%_)
                             (_%__kont170654170655%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170650170651%_))
                    (let ((_%e167657167685%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170650170651%_))))
                      (let ((_%tl167659167690%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167657167685%_)))
                            (_%hd167658167688%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167657167685%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167659167690%_))
                            (let ((_%e167660167693%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167659167690%_))))
                              (let ((_%tl167662167698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167660167693%_)))
                                    (_%hd167661167696%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167660167693%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167661167696%_))
                                    (let ((_%e167663167701%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167661167696%_))))
                                      (let ((_%tl167665167706%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167663167701%_)))
                                            (_%hd167664167704%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167663167701%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167665167706%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167662167698%_))
                                                (let ((_%e167666167709%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167662167698%_))))
                                                  (let ((_%tl167668167714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167666167709%_)))
                                                        (_%hd167667167712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167666167709%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167668167714%_))
                                                        (_%__match170683170684%_
                                                         _%e167657167685%_
                                                         _%hd167658167688%_
                                                         _%tl167659167690%_
                                                         _%e167660167693%_
                                                         _%hd167661167696%_
                                                         _%tl167662167698%_
                                                         _%e167663167701%_
                                                         _%hd167664167704%_
                                                         _%tl167665167706%_
                                                         _%e167666167709%_
                                                         _%hd167667167712%_
                                                         _%tl167668167714%_)
                                                        (_%__kont170654170655%_))))
                                                (_%__kont170654170655%_))
                                            (_%__kont170654170655%_))))
                                    (_%__kont170654170655%_))))
                            (_%__kont170654170655%_))))
                    (_%__kont170654170655%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166605%_ _%stx166606%_)
        (let* ((_%__stx170686170687%_ _%stx166606%_)
               (_%g166614166836%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170686170687%_)))))
          (let ((_%__kont170688170689%_
                 (lambda (_%L167593%_ _%L167594%_ _%L167595%_ _%L167596%_)
                   (let ((__tmp171786
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166605%_ 'methods)))
                         (__tmp171785
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167594%_))))
                     (declare (not safe))
                     (hash-put! __tmp171786 __tmp171785 '#t))
                   (for-each
                    (lambda (_%g167629167631%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166605%_ _%g167629167631%_)))
                    (let ((__tmp171787
                           (lambda (_%g167633167636%_ _%g167634167638%_)
                             (cons _%g167633167636%_ _%g167634167638%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171787 '() _%L167593%_)))))
                (_%__kont170692170693%_
                 (lambda (_%L167428%_
                          _%L167429%_
                          _%L167430%_
                          _%L167431%_
                          _%L167432%_)
                   (let ((__tmp171789
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166605%_ 'methods)))
                         (__tmp171788
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167429%_))))
                     (declare (not safe))
                     (hash-put! __tmp171789 __tmp171788 '#t))
                   (for-each
                    (lambda (_%g167472167474%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166605%_ _%g167472167474%_)))
                    (let ((__tmp171790
                           (lambda (_%g167476167479%_ _%g167477167481%_)
                             (cons _%g167476167479%_ _%g167477167481%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171790 '() _%L167428%_)))))
                (_%__kont170696170697%_
                 (lambda (_%L167261%_ _%L167262%_ _%L167263%_)
                   (let ((__tmp171792
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166605%_ 'slots)))
                         (__tmp171791
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167261%_))))
                     (declare (not safe))
                     (hash-put! __tmp171792 __tmp171791 '#t))))
                (_%__kont170698170699%_
                 (lambda (_%L167138%_ _%L167139%_ _%L167140%_ _%L167141%_)
                   (let ((__tmp171794
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166605%_ 'slots)))
                         (__tmp171793
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167139%_))))
                     (declare (not safe))
                     (hash-put! __tmp171794 __tmp171793 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166605%_ _%L167138%_))))
                (_%__kont170700170701%_
                 (lambda (_%L167012%_ _%L167013%_)
                   (let* ((_%accessor167035%_
                           (let ((__tmp171795
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167013%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171795)))
                          (_%klass167037%_
                           (let ((__tmp171796
                                  (##structure-ref
                                   _%accessor167035%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166606%_
                              __tmp171796)))
                          (_%slot167039%_
                           (##structure-ref
                            _%accessor167035%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167035%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167037%_
                                     _%slot167039%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167037%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171798
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166605%_ 'slots)))
                               (__tmp171797
                                (##structure-ref
                                 _%accessor167035%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171798 __tmp171797 '#t))))))
                (_%__kont170702170703%_
                 (lambda (_%L166912%_ _%L166913%_ _%L166914%_)
                   (let* ((_%mutator166941%_
                           (let ((__tmp171799
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166914%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171799)))
                          (_%klass166943%_
                           (let ((__tmp171800
                                  (##structure-ref
                                   _%mutator166941%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166606%_
                              __tmp171800)))
                          (_%slot166945%_
                           (##structure-ref
                            _%mutator166941%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator166941%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166943%_
                                     _%slot166945%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166943%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171801
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166605%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171801 _%slot166945%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166605%_ _%L166912%_)))))
                (_%__kont170704170705%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166605%_ _%stx166606%_)))))
            (let* ((_%__match171185171186%_
                    (lambda (_%e166808166848%_
                             _%hd166809166851%_
                             _%tl166810166853%_
                             _%e166811166856%_
                             _%hd166812166859%_
                             _%tl166813166861%_
                             _%e166814166864%_
                             _%hd166815166867%_
                             _%tl166816166869%_
                             _%e166817166872%_
                             _%hd166818166875%_
                             _%tl166819166877%_
                             _%e166820166880%_
                             _%hd166821166883%_
                             _%tl166822166885%_
                             _%e166823166888%_
                             _%hd166824166891%_
                             _%tl166825166893%_
                             _%e166826166896%_
                             _%hd166827166899%_
                             _%tl166828166901%_
                             _%e166829166904%_
                             _%hd166830166907%_
                             _%tl166831166909%_)
                      (let ((_%L166912%_ _%hd166830166907%_)
                            (_%L166913%_ _%hd166827166899%_)
                            (_%L166914%_ _%hd166818166875%_))
                        (if (and (let ((__tmp171802
                                        (let ((__tmp171803
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166914%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171803))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171802
                                    'gxc#!mutator::t))
                                 (let ((__tmp171804
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166605%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166913%_
                                    __tmp171804)))
                            (_%__kont170702170703%_
                             _%L166912%_
                             _%L166913%_
                             _%L166914%_)
                            (_%__kont170704170705%_)))))
                   (_%__match171183171184%_
                    (lambda (_%e166808166848%_
                             _%hd166809166851%_
                             _%tl166810166853%_
                             _%e166811166856%_
                             _%hd166812166859%_
                             _%tl166813166861%_
                             _%e166814166864%_
                             _%hd166815166867%_
                             _%tl166816166869%_
                             _%e166817166872%_
                             _%hd166818166875%_
                             _%tl166819166877%_
                             _%e166820166880%_
                             _%hd166821166883%_
                             _%tl166822166885%_
                             _%e166823166888%_
                             _%hd166824166891%_
                             _%tl166825166893%_
                             _%e166826166896%_
                             _%hd166827166899%_
                             _%tl166828166901%_
                             _%e166829166904%_
                             _%hd166830166907%_
                             _%tl166831166909%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166831166909%_))
                          (_%__match171185171186%_
                           _%e166808166848%_
                           _%hd166809166851%_
                           _%tl166810166853%_
                           _%e166811166856%_
                           _%hd166812166859%_
                           _%tl166813166861%_
                           _%e166814166864%_
                           _%hd166815166867%_
                           _%tl166816166869%_
                           _%e166817166872%_
                           _%hd166818166875%_
                           _%tl166819166877%_
                           _%e166820166880%_
                           _%hd166821166883%_
                           _%tl166822166885%_
                           _%e166823166888%_
                           _%hd166824166891%_
                           _%tl166825166893%_
                           _%e166826166896%_
                           _%hd166827166899%_
                           _%tl166828166901%_
                           _%e166829166904%_
                           _%hd166830166907%_
                           _%tl166831166909%_)
                          (_%__kont170704170705%_))))
                   (_%__match171177171178%_
                    (lambda (_%e166808166848%_
                             _%hd166809166851%_
                             _%tl166810166853%_
                             _%e166811166856%_
                             _%hd166812166859%_
                             _%tl166813166861%_
                             _%e166814166864%_
                             _%hd166815166867%_
                             _%tl166816166869%_
                             _%e166817166872%_
                             _%hd166818166875%_
                             _%tl166819166877%_
                             _%e166820166880%_
                             _%hd166821166883%_
                             _%tl166822166885%_
                             _%e166823166888%_
                             _%hd166824166891%_
                             _%tl166825166893%_
                             _%e166826166896%_
                             _%hd166827166899%_
                             _%tl166828166901%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166822166885%_))
                          (let ((_%e166829166904%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166822166885%_))))
                            (let ((_%tl166831166909%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166829166904%_)))
                                  (_%hd166830166907%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166829166904%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166831166909%_))
                                  (_%__match171185171186%_
                                   _%e166808166848%_
                                   _%hd166809166851%_
                                   _%tl166810166853%_
                                   _%e166811166856%_
                                   _%hd166812166859%_
                                   _%tl166813166861%_
                                   _%e166814166864%_
                                   _%hd166815166867%_
                                   _%tl166816166869%_
                                   _%e166817166872%_
                                   _%hd166818166875%_
                                   _%tl166819166877%_
                                   _%e166820166880%_
                                   _%hd166821166883%_
                                   _%tl166822166885%_
                                   _%e166823166888%_
                                   _%hd166824166891%_
                                   _%tl166825166893%_
                                   _%e166826166896%_
                                   _%hd166827166899%_
                                   _%tl166828166901%_
                                   _%e166829166904%_
                                   _%hd166830166907%_
                                   _%tl166831166909%_)
                                  (_%__kont170704170705%_))))
                          (_%__kont170704170705%_))))
                   (_%__match171123171124%_
                    (lambda (_%e166784166956%_
                             _%hd166785166959%_
                             _%tl166786166961%_
                             _%e166787166964%_
                             _%hd166788166967%_
                             _%tl166789166969%_
                             _%e166790166972%_
                             _%hd166791166975%_
                             _%tl166792166977%_
                             _%e166793166980%_
                             _%hd166794166983%_
                             _%tl166795166985%_
                             _%e166796166988%_
                             _%hd166797166991%_
                             _%tl166798166993%_
                             _%e166799166996%_
                             _%hd166800166999%_
                             _%tl166801167001%_
                             _%e166802167004%_
                             _%hd166803167007%_
                             _%tl166804167009%_)
                      (let ((_%L167012%_ _%hd166803167007%_)
                            (_%L167013%_ _%hd166794166983%_))
                        (if (and (let ((__tmp171805
                                        (let ((__tmp171806
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167013%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171806))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171805
                                    'gxc#!accessor::t))
                                 (let ((__tmp171807
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166605%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167012%_
                                    __tmp171807)))
                            (_%__kont170700170701%_ _%L167012%_ _%L167013%_)
                            (_%__kont170704170705%_)))))
                   (_%__match171121171122%_
                    (lambda (_%e166784166956%_
                             _%hd166785166959%_
                             _%tl166786166961%_
                             _%e166787166964%_
                             _%hd166788166967%_
                             _%tl166789166969%_
                             _%e166790166972%_
                             _%hd166791166975%_
                             _%tl166792166977%_
                             _%e166793166980%_
                             _%hd166794166983%_
                             _%tl166795166985%_
                             _%e166796166988%_
                             _%hd166797166991%_
                             _%tl166798166993%_
                             _%e166799166996%_
                             _%hd166800166999%_
                             _%tl166801167001%_
                             _%e166802167004%_
                             _%hd166803167007%_
                             _%tl166804167009%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166798166993%_))
                          (_%__match171123171124%_
                           _%e166784166956%_
                           _%hd166785166959%_
                           _%tl166786166961%_
                           _%e166787166964%_
                           _%hd166788166967%_
                           _%tl166789166969%_
                           _%e166790166972%_
                           _%hd166791166975%_
                           _%tl166792166977%_
                           _%e166793166980%_
                           _%hd166794166983%_
                           _%tl166795166985%_
                           _%e166796166988%_
                           _%hd166797166991%_
                           _%tl166798166993%_
                           _%e166799166996%_
                           _%hd166800166999%_
                           _%tl166801167001%_
                           _%e166802167004%_
                           _%hd166803167007%_
                           _%tl166804167009%_)
                          (_%__match171177171178%_
                           _%e166784166956%_
                           _%hd166785166959%_
                           _%tl166786166961%_
                           _%e166787166964%_
                           _%hd166788166967%_
                           _%tl166789166969%_
                           _%e166790166972%_
                           _%hd166791166975%_
                           _%tl166792166977%_
                           _%e166793166980%_
                           _%hd166794166983%_
                           _%tl166795166985%_
                           _%e166796166988%_
                           _%hd166797166991%_
                           _%tl166798166993%_
                           _%e166799166996%_
                           _%hd166800166999%_
                           _%tl166801167001%_
                           _%e166802167004%_
                           _%hd166803167007%_
                           _%tl166804167009%_))))
                   (_%__match171067171068%_
                    (lambda (_%e166749167050%_
                             _%hd166750167053%_
                             _%tl166751167055%_
                             _%e166752167058%_
                             _%hd166753167061%_
                             _%tl166754167063%_
                             _%e166755167066%_
                             _%hd166756167069%_
                             _%tl166757167071%_
                             _%e166758167074%_
                             _%hd166759167077%_
                             _%tl166760167079%_
                             _%e166761167082%_
                             _%hd166762167085%_
                             _%tl166763167087%_
                             _%e166764167090%_
                             _%hd166765167093%_
                             _%tl166766167095%_
                             _%e166767167098%_
                             _%hd166768167101%_
                             _%tl166769167103%_
                             _%e166770167106%_
                             _%hd166771167109%_
                             _%tl166772167111%_
                             _%e166773167114%_
                             _%hd166774167117%_
                             _%tl166775167119%_
                             _%e166776167122%_
                             _%hd166777167125%_
                             _%tl166778167127%_
                             _%e166779167130%_
                             _%hd166780167133%_
                             _%tl166781167135%_)
                      (let ((_%L167138%_ _%hd166780167133%_)
                            (_%L167139%_ _%hd166777167125%_)
                            (_%L167140%_ _%hd166768167101%_)
                            (_%L167141%_ _%hd166759167077%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167141%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167141%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171808
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166605%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167140%_
                                    __tmp171808)))
                            (_%__kont170698170699%_
                             _%L167138%_
                             _%L167139%_
                             _%L167140%_
                             _%L167141%_)
                            (_%__kont170704170705%_)))))
                   (_%__match171059171060%_
                    (lambda (_%e166749167050%_
                             _%hd166750167053%_
                             _%tl166751167055%_
                             _%e166752167058%_
                             _%hd166753167061%_
                             _%tl166754167063%_
                             _%e166755167066%_
                             _%hd166756167069%_
                             _%tl166757167071%_
                             _%e166758167074%_
                             _%hd166759167077%_
                             _%tl166760167079%_
                             _%e166761167082%_
                             _%hd166762167085%_
                             _%tl166763167087%_
                             _%e166764167090%_
                             _%hd166765167093%_
                             _%tl166766167095%_
                             _%e166767167098%_
                             _%hd166768167101%_
                             _%tl166769167103%_
                             _%e166770167106%_
                             _%hd166771167109%_
                             _%tl166772167111%_
                             _%e166773167114%_
                             _%hd166774167117%_
                             _%tl166775167119%_
                             _%e166776167122%_
                             _%hd166777167125%_
                             _%tl166778167127%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166772167111%_))
                          (let ((_%e166779167130%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166772167111%_))))
                            (let ((_%tl166781167135%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166779167130%_)))
                                  (_%hd166780167133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166779167130%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166781167135%_))
                                  (_%__match171067171068%_
                                   _%e166749167050%_
                                   _%hd166750167053%_
                                   _%tl166751167055%_
                                   _%e166752167058%_
                                   _%hd166753167061%_
                                   _%tl166754167063%_
                                   _%e166755167066%_
                                   _%hd166756167069%_
                                   _%tl166757167071%_
                                   _%e166758167074%_
                                   _%hd166759167077%_
                                   _%tl166760167079%_
                                   _%e166761167082%_
                                   _%hd166762167085%_
                                   _%tl166763167087%_
                                   _%e166764167090%_
                                   _%hd166765167093%_
                                   _%tl166766167095%_
                                   _%e166767167098%_
                                   _%hd166768167101%_
                                   _%tl166769167103%_
                                   _%e166770167106%_
                                   _%hd166771167109%_
                                   _%tl166772167111%_
                                   _%e166773167114%_
                                   _%hd166774167117%_
                                   _%tl166775167119%_
                                   _%e166776167122%_
                                   _%hd166777167125%_
                                   _%tl166778167127%_
                                   _%e166779167130%_
                                   _%hd166780167133%_
                                   _%tl166781167135%_)
                                  (_%__kont170704170705%_))))
                          (_%__match171183171184%_
                           _%e166749167050%_
                           _%hd166750167053%_
                           _%tl166751167055%_
                           _%e166752167058%_
                           _%hd166753167061%_
                           _%tl166754167063%_
                           _%e166755167066%_
                           _%hd166756167069%_
                           _%tl166757167071%_
                           _%e166758167074%_
                           _%hd166759167077%_
                           _%tl166760167079%_
                           _%e166761167082%_
                           _%hd166762167085%_
                           _%tl166763167087%_
                           _%e166764167090%_
                           _%hd166765167093%_
                           _%tl166766167095%_
                           _%e166767167098%_
                           _%hd166768167101%_
                           _%tl166769167103%_
                           _%e166770167106%_
                           _%hd166771167109%_
                           _%tl166772167111%_))))
                   (_%__match170981170982%_
                    (lambda (_%e166715167181%_
                             _%hd166716167184%_
                             _%tl166717167186%_
                             _%e166718167189%_
                             _%hd166719167192%_
                             _%tl166720167194%_
                             _%e166721167197%_
                             _%hd166722167200%_
                             _%tl166723167202%_
                             _%e166724167205%_
                             _%hd166725167208%_
                             _%tl166726167210%_
                             _%e166727167213%_
                             _%hd166728167216%_
                             _%tl166729167218%_
                             _%e166730167221%_
                             _%hd166731167224%_
                             _%tl166732167226%_
                             _%e166733167229%_
                             _%hd166734167232%_
                             _%tl166735167234%_
                             _%e166736167237%_
                             _%hd166737167240%_
                             _%tl166738167242%_
                             _%e166739167245%_
                             _%hd166740167248%_
                             _%tl166741167250%_
                             _%e166742167253%_
                             _%hd166743167256%_
                             _%tl166744167258%_)
                      (let ((_%L167261%_ _%hd166743167256%_)
                            (_%L167262%_ _%hd166734167232%_)
                            (_%L167263%_ _%hd166725167208%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167263%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167263%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171809
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166605%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167262%_
                                    __tmp171809)))
                            (_%__kont170696170697%_
                             _%L167261%_
                             _%L167262%_
                             _%L167263%_)
                            (_%__match171185171186%_
                             _%e166715167181%_
                             _%hd166716167184%_
                             _%tl166717167186%_
                             _%e166718167189%_
                             _%hd166719167192%_
                             _%tl166720167194%_
                             _%e166721167197%_
                             _%hd166722167200%_
                             _%tl166723167202%_
                             _%e166724167205%_
                             _%hd166725167208%_
                             _%tl166726167210%_
                             _%e166727167213%_
                             _%hd166728167216%_
                             _%tl166729167218%_
                             _%e166730167221%_
                             _%hd166731167224%_
                             _%tl166732167226%_
                             _%e166733167229%_
                             _%hd166734167232%_
                             _%tl166735167234%_
                             _%e166736167237%_
                             _%hd166737167240%_
                             _%tl166738167242%_)))))
                   (_%__match170979170980%_
                    (lambda (_%e166715167181%_
                             _%hd166716167184%_
                             _%tl166717167186%_
                             _%e166718167189%_
                             _%hd166719167192%_
                             _%tl166720167194%_
                             _%e166721167197%_
                             _%hd166722167200%_
                             _%tl166723167202%_
                             _%e166724167205%_
                             _%hd166725167208%_
                             _%tl166726167210%_
                             _%e166727167213%_
                             _%hd166728167216%_
                             _%tl166729167218%_
                             _%e166730167221%_
                             _%hd166731167224%_
                             _%tl166732167226%_
                             _%e166733167229%_
                             _%hd166734167232%_
                             _%tl166735167234%_
                             _%e166736167237%_
                             _%hd166737167240%_
                             _%tl166738167242%_
                             _%e166739167245%_
                             _%hd166740167248%_
                             _%tl166741167250%_
                             _%e166742167253%_
                             _%hd166743167256%_
                             _%tl166744167258%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166738167242%_))
                          (_%__match170981170982%_
                           _%e166715167181%_
                           _%hd166716167184%_
                           _%tl166717167186%_
                           _%e166718167189%_
                           _%hd166719167192%_
                           _%tl166720167194%_
                           _%e166721167197%_
                           _%hd166722167200%_
                           _%tl166723167202%_
                           _%e166724167205%_
                           _%hd166725167208%_
                           _%tl166726167210%_
                           _%e166727167213%_
                           _%hd166728167216%_
                           _%tl166729167218%_
                           _%e166730167221%_
                           _%hd166731167224%_
                           _%tl166732167226%_
                           _%e166733167229%_
                           _%hd166734167232%_
                           _%tl166735167234%_
                           _%e166736167237%_
                           _%hd166737167240%_
                           _%tl166738167242%_
                           _%e166739167245%_
                           _%hd166740167248%_
                           _%tl166741167250%_
                           _%e166742167253%_
                           _%hd166743167256%_
                           _%tl166744167258%_)
                          (_%__match171059171060%_
                           _%e166715167181%_
                           _%hd166716167184%_
                           _%tl166717167186%_
                           _%e166718167189%_
                           _%hd166719167192%_
                           _%tl166720167194%_
                           _%e166721167197%_
                           _%hd166722167200%_
                           _%tl166723167202%_
                           _%e166724167205%_
                           _%hd166725167208%_
                           _%tl166726167210%_
                           _%e166727167213%_
                           _%hd166728167216%_
                           _%tl166729167218%_
                           _%e166730167221%_
                           _%hd166731167224%_
                           _%tl166732167226%_
                           _%e166733167229%_
                           _%hd166734167232%_
                           _%tl166735167234%_
                           _%e166736167237%_
                           _%hd166737167240%_
                           _%tl166738167242%_
                           _%e166739167245%_
                           _%hd166740167248%_
                           _%tl166741167250%_
                           _%e166742167253%_
                           _%hd166743167256%_
                           _%tl166744167258%_))))
                   (_%__match170969170970%_
                    (lambda (_%e166715167181%_
                             _%hd166716167184%_
                             _%tl166717167186%_
                             _%e166718167189%_
                             _%hd166719167192%_
                             _%tl166720167194%_
                             _%e166721167197%_
                             _%hd166722167200%_
                             _%tl166723167202%_
                             _%e166724167205%_
                             _%hd166725167208%_
                             _%tl166726167210%_
                             _%e166727167213%_
                             _%hd166728167216%_
                             _%tl166729167218%_
                             _%e166730167221%_
                             _%hd166731167224%_
                             _%tl166732167226%_
                             _%e166733167229%_
                             _%hd166734167232%_
                             _%tl166735167234%_
                             _%e166736167237%_
                             _%hd166737167240%_
                             _%tl166738167242%_
                             _%e166739167245%_
                             _%hd166740167248%_
                             _%tl166741167250%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166740167248%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166741167250%_))
                              (let ((_%e166742167253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166741167250%_))))
                                (let ((_%tl166744167258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166742167253%_)))
                                      (_%hd166743167256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166742167253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166744167258%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166738167242%_))
                                          (_%__match170981170982%_
                                           _%e166715167181%_
                                           _%hd166716167184%_
                                           _%tl166717167186%_
                                           _%e166718167189%_
                                           _%hd166719167192%_
                                           _%tl166720167194%_
                                           _%e166721167197%_
                                           _%hd166722167200%_
                                           _%tl166723167202%_
                                           _%e166724167205%_
                                           _%hd166725167208%_
                                           _%tl166726167210%_
                                           _%e166727167213%_
                                           _%hd166728167216%_
                                           _%tl166729167218%_
                                           _%e166730167221%_
                                           _%hd166731167224%_
                                           _%tl166732167226%_
                                           _%e166733167229%_
                                           _%hd166734167232%_
                                           _%tl166735167234%_
                                           _%e166736167237%_
                                           _%hd166737167240%_
                                           _%tl166738167242%_
                                           _%e166739167245%_
                                           _%hd166740167248%_
                                           _%tl166741167250%_
                                           _%e166742167253%_
                                           _%hd166743167256%_
                                           _%tl166744167258%_)
                                          (_%__match171059171060%_
                                           _%e166715167181%_
                                           _%hd166716167184%_
                                           _%tl166717167186%_
                                           _%e166718167189%_
                                           _%hd166719167192%_
                                           _%tl166720167194%_
                                           _%e166721167197%_
                                           _%hd166722167200%_
                                           _%tl166723167202%_
                                           _%e166724167205%_
                                           _%hd166725167208%_
                                           _%tl166726167210%_
                                           _%e166727167213%_
                                           _%hd166728167216%_
                                           _%tl166729167218%_
                                           _%e166730167221%_
                                           _%hd166731167224%_
                                           _%tl166732167226%_
                                           _%e166733167229%_
                                           _%hd166734167232%_
                                           _%tl166735167234%_
                                           _%e166736167237%_
                                           _%hd166737167240%_
                                           _%tl166738167242%_
                                           _%e166739167245%_
                                           _%hd166740167248%_
                                           _%tl166741167250%_
                                           _%e166742167253%_
                                           _%hd166743167256%_
                                           _%tl166744167258%_))
                                      (_%__match171183171184%_
                                       _%e166715167181%_
                                       _%hd166716167184%_
                                       _%tl166717167186%_
                                       _%e166718167189%_
                                       _%hd166719167192%_
                                       _%tl166720167194%_
                                       _%e166721167197%_
                                       _%hd166722167200%_
                                       _%tl166723167202%_
                                       _%e166724167205%_
                                       _%hd166725167208%_
                                       _%tl166726167210%_
                                       _%e166727167213%_
                                       _%hd166728167216%_
                                       _%tl166729167218%_
                                       _%e166730167221%_
                                       _%hd166731167224%_
                                       _%tl166732167226%_
                                       _%e166733167229%_
                                       _%hd166734167232%_
                                       _%tl166735167234%_
                                       _%e166736167237%_
                                       _%hd166737167240%_
                                       _%tl166738167242%_))))
                              (_%__match171183171184%_
                               _%e166715167181%_
                               _%hd166716167184%_
                               _%tl166717167186%_
                               _%e166718167189%_
                               _%hd166719167192%_
                               _%tl166720167194%_
                               _%e166721167197%_
                               _%hd166722167200%_
                               _%tl166723167202%_
                               _%e166724167205%_
                               _%hd166725167208%_
                               _%tl166726167210%_
                               _%e166727167213%_
                               _%hd166728167216%_
                               _%tl166729167218%_
                               _%e166730167221%_
                               _%hd166731167224%_
                               _%tl166732167226%_
                               _%e166733167229%_
                               _%hd166734167232%_
                               _%tl166735167234%_
                               _%e166736167237%_
                               _%hd166737167240%_
                               _%tl166738167242%_))
                          (_%__match171183171184%_
                           _%e166715167181%_
                           _%hd166716167184%_
                           _%tl166717167186%_
                           _%e166718167189%_
                           _%hd166719167192%_
                           _%tl166720167194%_
                           _%e166721167197%_
                           _%hd166722167200%_
                           _%tl166723167202%_
                           _%e166724167205%_
                           _%hd166725167208%_
                           _%tl166726167210%_
                           _%e166727167213%_
                           _%hd166728167216%_
                           _%tl166729167218%_
                           _%e166730167221%_
                           _%hd166731167224%_
                           _%tl166732167226%_
                           _%e166733167229%_
                           _%hd166734167232%_
                           _%tl166735167234%_
                           _%e166736167237%_
                           _%hd166737167240%_
                           _%tl166738167242%_))))
                   (_%__match170901170902%_
                    (lambda (_%e166664167300%_
                             _%hd166665167303%_
                             _%tl166666167305%_
                             _%e166667167308%_
                             _%hd166668167311%_
                             _%tl166669167313%_
                             _%e166670167316%_
                             _%hd166671167319%_
                             _%tl166672167321%_
                             _%e166673167324%_
                             _%hd166674167327%_
                             _%tl166675167329%_
                             _%e166676167332%_
                             _%hd166677167335%_
                             _%tl166678167337%_
                             _%e166679167340%_
                             _%hd166680167343%_
                             _%tl166681167345%_
                             _%e166682167348%_
                             _%hd166683167351%_
                             _%tl166684167353%_
                             _%e166685167356%_
                             _%hd166686167359%_
                             _%tl166687167361%_
                             _%e166688167364%_
                             _%hd166689167367%_
                             _%tl166690167369%_
                             _%e166691167372%_
                             _%hd166692167375%_
                             _%tl166693167377%_
                             _%e166694167380%_
                             _%hd166695167383%_
                             _%tl166696167385%_
                             _%e166697167388%_
                             _%hd166698167391%_
                             _%tl166699167393%_
                             _%e166700167396%_
                             _%hd166701167399%_
                             _%tl166702167401%_
                             _%__splice170694170695%_
                             _%target166703167404%_
                             _%tl166705167406%_)
                      (letrec ((_%loop166706167409%_
                                (lambda (_%hd166704167412%_
                                         _%args166710167414%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166704167412%_))
                                      (let ((_%e166707167417%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166704167412%_))))
                                        (let ((_%lp-tl166709167422%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166707167417%_)))
                                              (_%lp-hd166708167420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166707167417%_))))
                                          (_%loop166706167409%_
                                           _%lp-tl166709167422%_
                                           (cons _%lp-hd166708167420%_
                                                 _%args166710167414%_))))
                                      (let ((_%args166711167425%_
                                             (reverse _%args166710167414%_)))
                                        (let ((_%L167428%_
                                               _%args166711167425%_)
                                              (_%L167429%_ _%hd166701167399%_)
                                              (_%L167430%_ _%hd166692167375%_)
                                              (_%L167431%_ _%hd166683167351%_)
                                              (_%L167432%_ _%hd166674167327%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167432%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167431%_
                                                      'call-method))
                                                   (let ((__tmp171810
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166605%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167430%_
                                                      __tmp171810)))
                                              (_%__kont170692170693%_
                                               _%L167428%_
                                               _%L167429%_
                                               _%L167430%_
                                               _%L167431%_
                                               _%L167432%_)
                                              (_%__kont170704170705%_))))))))
                        (_%loop166706167409%_ _%target166703167404%_ '()))))
                   (_%__match170859170860%_
                    (lambda (_%e166664167300%_
                             _%hd166665167303%_
                             _%tl166666167305%_
                             _%e166667167308%_
                             _%hd166668167311%_
                             _%tl166669167313%_
                             _%e166670167316%_
                             _%hd166671167319%_
                             _%tl166672167321%_
                             _%e166673167324%_
                             _%hd166674167327%_
                             _%tl166675167329%_
                             _%e166676167332%_
                             _%hd166677167335%_
                             _%tl166678167337%_
                             _%e166679167340%_
                             _%hd166680167343%_
                             _%tl166681167345%_
                             _%e166682167348%_
                             _%hd166683167351%_
                             _%tl166684167353%_
                             _%e166685167356%_
                             _%hd166686167359%_
                             _%tl166687167361%_
                             _%e166688167364%_
                             _%hd166689167367%_
                             _%tl166690167369%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166689167367%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166690167369%_))
                              (let ((_%e166691167372%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166690167369%_))))
                                (let ((_%tl166693167377%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166691167372%_)))
                                      (_%hd166692167375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166691167372%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166693167377%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166687167361%_))
                                          (let ((_%e166694167380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166687167361%_))))
                                            (let ((_%tl166696167385%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166694167380%_)))
                                                  (_%hd166695167383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166694167380%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166695167383%_))
                                                  (let ((_%e166697167388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166695167383%_))))
                                                    (let ((_%tl166699167393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166697167388%_)))
                                                          (_%hd166698167391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166697167388%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166698167391%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166698167391%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166699167393%_))
                          (let ((_%e166700167396%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166699167393%_))))
                            (let ((_%tl166702167401%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166700167396%_)))
                                  (_%hd166701167399%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166700167396%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166702167401%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166696167385%_))
                                      (let ((_%__splice170694170695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166696167385%_
                                                '0))))
                                        (let ((_%tl166705167406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170694170695%_
                                                  '1)))
                                              (_%target166703167404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170694170695%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166705167406%_))
                                              (_%__match170901170902%_
                                               _%e166664167300%_
                                               _%hd166665167303%_
                                               _%tl166666167305%_
                                               _%e166667167308%_
                                               _%hd166668167311%_
                                               _%tl166669167313%_
                                               _%e166670167316%_
                                               _%hd166671167319%_
                                               _%tl166672167321%_
                                               _%e166673167324%_
                                               _%hd166674167327%_
                                               _%tl166675167329%_
                                               _%e166676167332%_
                                               _%hd166677167335%_
                                               _%tl166678167337%_
                                               _%e166679167340%_
                                               _%hd166680167343%_
                                               _%tl166681167345%_
                                               _%e166682167348%_
                                               _%hd166683167351%_
                                               _%tl166684167353%_
                                               _%e166685167356%_
                                               _%hd166686167359%_
                                               _%tl166687167361%_
                                               _%e166688167364%_
                                               _%hd166689167367%_
                                               _%tl166690167369%_
                                               _%e166691167372%_
                                               _%hd166692167375%_
                                               _%tl166693167377%_
                                               _%e166694167380%_
                                               _%hd166695167383%_
                                               _%tl166696167385%_
                                               _%e166697167388%_
                                               _%hd166698167391%_
                                               _%tl166699167393%_
                                               _%e166700167396%_
                                               _%hd166701167399%_
                                               _%tl166702167401%_
                                               _%__splice170694170695%_
                                               _%target166703167404%_
                                               _%tl166705167406%_)
                                              (_%__kont170704170705%_))))
                                      (_%__kont170704170705%_))
                                  (_%__kont170704170705%_))))
                          (_%__kont170704170705%_))
                      (_%__kont170704170705%_))
                  (_%__kont170704170705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170704170705%_))))
                                          (_%__match171183171184%_
                                           _%e166664167300%_
                                           _%hd166665167303%_
                                           _%tl166666167305%_
                                           _%e166667167308%_
                                           _%hd166668167311%_
                                           _%tl166669167313%_
                                           _%e166670167316%_
                                           _%hd166671167319%_
                                           _%tl166672167321%_
                                           _%e166673167324%_
                                           _%hd166674167327%_
                                           _%tl166675167329%_
                                           _%e166676167332%_
                                           _%hd166677167335%_
                                           _%tl166678167337%_
                                           _%e166679167340%_
                                           _%hd166680167343%_
                                           _%tl166681167345%_
                                           _%e166682167348%_
                                           _%hd166683167351%_
                                           _%tl166684167353%_
                                           _%e166685167356%_
                                           _%hd166686167359%_
                                           _%tl166687167361%_))
                                      (_%__match171183171184%_
                                       _%e166664167300%_
                                       _%hd166665167303%_
                                       _%tl166666167305%_
                                       _%e166667167308%_
                                       _%hd166668167311%_
                                       _%tl166669167313%_
                                       _%e166670167316%_
                                       _%hd166671167319%_
                                       _%tl166672167321%_
                                       _%e166673167324%_
                                       _%hd166674167327%_
                                       _%tl166675167329%_
                                       _%e166676167332%_
                                       _%hd166677167335%_
                                       _%tl166678167337%_
                                       _%e166679167340%_
                                       _%hd166680167343%_
                                       _%tl166681167345%_
                                       _%e166682167348%_
                                       _%hd166683167351%_
                                       _%tl166684167353%_
                                       _%e166685167356%_
                                       _%hd166686167359%_
                                       _%tl166687167361%_))))
                              (_%__match171183171184%_
                               _%e166664167300%_
                               _%hd166665167303%_
                               _%tl166666167305%_
                               _%e166667167308%_
                               _%hd166668167311%_
                               _%tl166669167313%_
                               _%e166670167316%_
                               _%hd166671167319%_
                               _%tl166672167321%_
                               _%e166673167324%_
                               _%hd166674167327%_
                               _%tl166675167329%_
                               _%e166676167332%_
                               _%hd166677167335%_
                               _%tl166678167337%_
                               _%e166679167340%_
                               _%hd166680167343%_
                               _%tl166681167345%_
                               _%e166682167348%_
                               _%hd166683167351%_
                               _%tl166684167353%_
                               _%e166685167356%_
                               _%hd166686167359%_
                               _%tl166687167361%_))
                          (_%__match170969170970%_
                           _%e166664167300%_
                           _%hd166665167303%_
                           _%tl166666167305%_
                           _%e166667167308%_
                           _%hd166668167311%_
                           _%tl166669167313%_
                           _%e166670167316%_
                           _%hd166671167319%_
                           _%tl166672167321%_
                           _%e166673167324%_
                           _%hd166674167327%_
                           _%tl166675167329%_
                           _%e166676167332%_
                           _%hd166677167335%_
                           _%tl166678167337%_
                           _%e166679167340%_
                           _%hd166680167343%_
                           _%tl166681167345%_
                           _%e166682167348%_
                           _%hd166683167351%_
                           _%tl166684167353%_
                           _%e166685167356%_
                           _%hd166686167359%_
                           _%tl166687167361%_
                           _%e166688167364%_
                           _%hd166689167367%_
                           _%tl166690167369%_))))
                   (_%__match170791170792%_
                    (lambda (_%e166620167489%_
                             _%hd166621167492%_
                             _%tl166622167494%_
                             _%e166623167497%_
                             _%hd166624167500%_
                             _%tl166625167502%_
                             _%e166626167505%_
                             _%hd166627167508%_
                             _%tl166628167510%_
                             _%e166629167513%_
                             _%hd166630167516%_
                             _%tl166631167518%_
                             _%e166632167521%_
                             _%hd166633167524%_
                             _%tl166634167526%_
                             _%e166635167529%_
                             _%hd166636167532%_
                             _%tl166637167534%_
                             _%e166638167537%_
                             _%hd166639167540%_
                             _%tl166640167542%_
                             _%e166641167545%_
                             _%hd166642167548%_
                             _%tl166643167550%_
                             _%e166644167553%_
                             _%hd166645167556%_
                             _%tl166646167558%_
                             _%e166647167561%_
                             _%hd166648167564%_
                             _%tl166649167566%_
                             _%__splice170690170691%_
                             _%target166650167569%_
                             _%tl166652167571%_)
                      (letrec ((_%loop166653167574%_
                                (lambda (_%hd166651167577%_
                                         _%args166657167579%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166651167577%_))
                                      (let ((_%e166654167582%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166651167577%_))))
                                        (let ((_%lp-tl166656167587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166654167582%_)))
                                              (_%lp-hd166655167585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166654167582%_))))
                                          (_%loop166653167574%_
                                           _%lp-tl166656167587%_
                                           (cons _%lp-hd166655167585%_
                                                 _%args166657167579%_))))
                                      (let ((_%args166658167590%_
                                             (reverse _%args166657167579%_)))
                                        (let ((_%L167593%_
                                               _%args166658167590%_)
                                              (_%L167594%_ _%hd166648167564%_)
                                              (_%L167595%_ _%hd166639167540%_)
                                              (_%L167596%_ _%hd166630167516%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167596%_
                                                      'call-method))
                                                   (let ((__tmp171811
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166605%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167595%_
                                                      __tmp171811)))
                                              (_%__kont170688170689%_
                                               _%L167593%_
                                               _%L167594%_
                                               _%L167595%_
                                               _%L167596%_)
                                              (_%__match170979170980%_
                                               _%e166620167489%_
                                               _%hd166621167492%_
                                               _%tl166622167494%_
                                               _%e166623167497%_
                                               _%hd166624167500%_
                                               _%tl166625167502%_
                                               _%e166626167505%_
                                               _%hd166627167508%_
                                               _%tl166628167510%_
                                               _%e166629167513%_
                                               _%hd166630167516%_
                                               _%tl166631167518%_
                                               _%e166632167521%_
                                               _%hd166633167524%_
                                               _%tl166634167526%_
                                               _%e166635167529%_
                                               _%hd166636167532%_
                                               _%tl166637167534%_
                                               _%e166638167537%_
                                               _%hd166639167540%_
                                               _%tl166640167542%_
                                               _%e166641167545%_
                                               _%hd166642167548%_
                                               _%tl166643167550%_
                                               _%e166644167553%_
                                               _%hd166645167556%_
                                               _%tl166646167558%_
                                               _%e166647167561%_
                                               _%hd166648167564%_
                                               _%tl166649167566%_))))))))
                        (_%loop166653167574%_ _%target166650167569%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170686170687%_))
                  (let ((_%e166620167489%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170686170687%_))))
                    (let ((_%tl166622167494%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166620167489%_)))
                          (_%hd166621167492%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166620167489%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166622167494%_))
                          (let ((_%e166623167497%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166622167494%_))))
                            (let ((_%tl166625167502%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166623167497%_)))
                                  (_%hd166624167500%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166623167497%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166624167500%_))
                                  (let ((_%e166626167505%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166624167500%_))))
                                    (let ((_%tl166628167510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166626167505%_)))
                                          (_%hd166627167508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166626167505%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166627167508%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166627167508%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166628167510%_))
                                                  (let ((_%e166629167513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166628167510%_))))
                                                    (let ((_%tl166631167518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166629167513%_)))
                                                          (_%hd166630167516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166629167513%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166631167518%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166625167502%_))
                      (let ((_%e166632167521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166625167502%_))))
                        (let ((_%tl166634167526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166632167521%_)))
                              (_%hd166633167524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166632167521%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166633167524%_))
                              (let ((_%e166635167529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166633167524%_))))
                                (let ((_%tl166637167534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166635167529%_)))
                                      (_%hd166636167532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166635167529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166636167532%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166636167532%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166637167534%_))
                                              (let ((_%e166638167537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166637167534%_))))
                                                (let ((_%tl166640167542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166638167537%_)))
                                                      (_%hd166639167540%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166638167537%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166640167542%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166634167526%_))
                                                          (let ((_%e166641167545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166634167526%_))))
                    (let ((_%tl166643167550%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166641167545%_)))
                          (_%hd166642167548%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166641167545%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166642167548%_))
                          (let ((_%e166644167553%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166642167548%_))))
                            (let ((_%tl166646167558%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166644167553%_)))
                                  (_%hd166645167556%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166644167553%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166645167556%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166645167556%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166646167558%_))
                                          (let ((_%e166647167561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166646167558%_))))
                                            (let ((_%tl166649167566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166647167561%_)))
                                                  (_%hd166648167564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166647167561%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166649167566%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166643167550%_))
                                                      (let ((_%__splice170690170691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166643167550%_ '0))))
                (let ((_%tl166652167571%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170690170691%_ '1)))
                      (_%target166650167569%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170690170691%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166652167571%_))
                      (_%__match170791170792%_
                       _%e166620167489%_
                       _%hd166621167492%_
                       _%tl166622167494%_
                       _%e166623167497%_
                       _%hd166624167500%_
                       _%tl166625167502%_
                       _%e166626167505%_
                       _%hd166627167508%_
                       _%tl166628167510%_
                       _%e166629167513%_
                       _%hd166630167516%_
                       _%tl166631167518%_
                       _%e166632167521%_
                       _%hd166633167524%_
                       _%tl166634167526%_
                       _%e166635167529%_
                       _%hd166636167532%_
                       _%tl166637167534%_
                       _%e166638167537%_
                       _%hd166639167540%_
                       _%tl166640167542%_
                       _%e166641167545%_
                       _%hd166642167548%_
                       _%tl166643167550%_
                       _%e166644167553%_
                       _%hd166645167556%_
                       _%tl166646167558%_
                       _%e166647167561%_
                       _%hd166648167564%_
                       _%tl166649167566%_
                       _%__splice170690170691%_
                       _%target166650167569%_
                       _%tl166652167571%_)
                      (_%__match170979170980%_
                       _%e166620167489%_
                       _%hd166621167492%_
                       _%tl166622167494%_
                       _%e166623167497%_
                       _%hd166624167500%_
                       _%tl166625167502%_
                       _%e166626167505%_
                       _%hd166627167508%_
                       _%tl166628167510%_
                       _%e166629167513%_
                       _%hd166630167516%_
                       _%tl166631167518%_
                       _%e166632167521%_
                       _%hd166633167524%_
                       _%tl166634167526%_
                       _%e166635167529%_
                       _%hd166636167532%_
                       _%tl166637167534%_
                       _%e166638167537%_
                       _%hd166639167540%_
                       _%tl166640167542%_
                       _%e166641167545%_
                       _%hd166642167548%_
                       _%tl166643167550%_
                       _%e166644167553%_
                       _%hd166645167556%_
                       _%tl166646167558%_
                       _%e166647167561%_
                       _%hd166648167564%_
                       _%tl166649167566%_))))
              (_%__match170979170980%_
               _%e166620167489%_
               _%hd166621167492%_
               _%tl166622167494%_
               _%e166623167497%_
               _%hd166624167500%_
               _%tl166625167502%_
               _%e166626167505%_
               _%hd166627167508%_
               _%tl166628167510%_
               _%e166629167513%_
               _%hd166630167516%_
               _%tl166631167518%_
               _%e166632167521%_
               _%hd166633167524%_
               _%tl166634167526%_
               _%e166635167529%_
               _%hd166636167532%_
               _%tl166637167534%_
               _%e166638167537%_
               _%hd166639167540%_
               _%tl166640167542%_
               _%e166641167545%_
               _%hd166642167548%_
               _%tl166643167550%_
               _%e166644167553%_
               _%hd166645167556%_
               _%tl166646167558%_
               _%e166647167561%_
               _%hd166648167564%_
               _%tl166649167566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171183171184%_
                                                   _%e166620167489%_
                                                   _%hd166621167492%_
                                                   _%tl166622167494%_
                                                   _%e166623167497%_
                                                   _%hd166624167500%_
                                                   _%tl166625167502%_
                                                   _%e166626167505%_
                                                   _%hd166627167508%_
                                                   _%tl166628167510%_
                                                   _%e166629167513%_
                                                   _%hd166630167516%_
                                                   _%tl166631167518%_
                                                   _%e166632167521%_
                                                   _%hd166633167524%_
                                                   _%tl166634167526%_
                                                   _%e166635167529%_
                                                   _%hd166636167532%_
                                                   _%tl166637167534%_
                                                   _%e166638167537%_
                                                   _%hd166639167540%_
                                                   _%tl166640167542%_
                                                   _%e166641167545%_
                                                   _%hd166642167548%_
                                                   _%tl166643167550%_))))
                                          (_%__match171183171184%_
                                           _%e166620167489%_
                                           _%hd166621167492%_
                                           _%tl166622167494%_
                                           _%e166623167497%_
                                           _%hd166624167500%_
                                           _%tl166625167502%_
                                           _%e166626167505%_
                                           _%hd166627167508%_
                                           _%tl166628167510%_
                                           _%e166629167513%_
                                           _%hd166630167516%_
                                           _%tl166631167518%_
                                           _%e166632167521%_
                                           _%hd166633167524%_
                                           _%tl166634167526%_
                                           _%e166635167529%_
                                           _%hd166636167532%_
                                           _%tl166637167534%_
                                           _%e166638167537%_
                                           _%hd166639167540%_
                                           _%tl166640167542%_
                                           _%e166641167545%_
                                           _%hd166642167548%_
                                           _%tl166643167550%_))
                                      (_%__match170859170860%_
                                       _%e166620167489%_
                                       _%hd166621167492%_
                                       _%tl166622167494%_
                                       _%e166623167497%_
                                       _%hd166624167500%_
                                       _%tl166625167502%_
                                       _%e166626167505%_
                                       _%hd166627167508%_
                                       _%tl166628167510%_
                                       _%e166629167513%_
                                       _%hd166630167516%_
                                       _%tl166631167518%_
                                       _%e166632167521%_
                                       _%hd166633167524%_
                                       _%tl166634167526%_
                                       _%e166635167529%_
                                       _%hd166636167532%_
                                       _%tl166637167534%_
                                       _%e166638167537%_
                                       _%hd166639167540%_
                                       _%tl166640167542%_
                                       _%e166641167545%_
                                       _%hd166642167548%_
                                       _%tl166643167550%_
                                       _%e166644167553%_
                                       _%hd166645167556%_
                                       _%tl166646167558%_))
                                  (_%__match171183171184%_
                                   _%e166620167489%_
                                   _%hd166621167492%_
                                   _%tl166622167494%_
                                   _%e166623167497%_
                                   _%hd166624167500%_
                                   _%tl166625167502%_
                                   _%e166626167505%_
                                   _%hd166627167508%_
                                   _%tl166628167510%_
                                   _%e166629167513%_
                                   _%hd166630167516%_
                                   _%tl166631167518%_
                                   _%e166632167521%_
                                   _%hd166633167524%_
                                   _%tl166634167526%_
                                   _%e166635167529%_
                                   _%hd166636167532%_
                                   _%tl166637167534%_
                                   _%e166638167537%_
                                   _%hd166639167540%_
                                   _%tl166640167542%_
                                   _%e166641167545%_
                                   _%hd166642167548%_
                                   _%tl166643167550%_))))
                          (_%__match171183171184%_
                           _%e166620167489%_
                           _%hd166621167492%_
                           _%tl166622167494%_
                           _%e166623167497%_
                           _%hd166624167500%_
                           _%tl166625167502%_
                           _%e166626167505%_
                           _%hd166627167508%_
                           _%tl166628167510%_
                           _%e166629167513%_
                           _%hd166630167516%_
                           _%tl166631167518%_
                           _%e166632167521%_
                           _%hd166633167524%_
                           _%tl166634167526%_
                           _%e166635167529%_
                           _%hd166636167532%_
                           _%tl166637167534%_
                           _%e166638167537%_
                           _%hd166639167540%_
                           _%tl166640167542%_
                           _%e166641167545%_
                           _%hd166642167548%_
                           _%tl166643167550%_))))
                  (_%__match171121171122%_
                   _%e166620167489%_
                   _%hd166621167492%_
                   _%tl166622167494%_
                   _%e166623167497%_
                   _%hd166624167500%_
                   _%tl166625167502%_
                   _%e166626167505%_
                   _%hd166627167508%_
                   _%tl166628167510%_
                   _%e166629167513%_
                   _%hd166630167516%_
                   _%tl166631167518%_
                   _%e166632167521%_
                   _%hd166633167524%_
                   _%tl166634167526%_
                   _%e166635167529%_
                   _%hd166636167532%_
                   _%tl166637167534%_
                   _%e166638167537%_
                   _%hd166639167540%_
                   _%tl166640167542%_))
              (_%__kont170704170705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170704170705%_))
                                          (_%__kont170704170705%_))
                                      (_%__kont170704170705%_))))
                              (_%__kont170704170705%_))))
                      (_%__kont170704170705%_))
                  (_%__kont170704170705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170704170705%_))
                                              (_%__kont170704170705%_))
                                          (_%__kont170704170705%_))))
                                  (_%__kont170704170705%_))))
                          (_%__kont170704170705%_))))
                  (_%__kont170704170705%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165544%_ _%stx165545%_)
        (letrec ((_%force-e165547%_
                  (lambda (_%target166603%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166603%_ '()))
                                      '()))))))
          (let* ((_%__stx171188171189%_ _%stx165545%_)
                 (_%g165555165777%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171188171189%_)))))
            (let ((_%__kont171190171191%_
                   (lambda (_%L166549%_ _%L166550%_ _%L166551%_ _%L166552%_)
                     (let ((_%$method166597%_
                            (let ((__tmp171813
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165544%_ 'methods)))
                                  (__tmp171812
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166550%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171813 __tmp171812)))
                           (_%args166598%_
                            (map (lambda (_%g166585166587%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165544%_
                                      _%g166585166587%_)))
                                 (let ((__tmp171814
                                        (lambda (_%g166589166592%_
                                                 _%g166590166594%_)
                                          (cons _%g166589166592%_
                                                _%g166590166594%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171814 '() _%L166549%_)))))
                       (let ((__tmp171815
                              (cons '%#call
                                    (cons (_%force-e165547%_ _%$method166597%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165544%_
                                                               'receiver))
                                                            '()))
                                                _%args166598%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171815 _%stx165545%_)))))
                  (_%__kont171194171195%_
                   (lambda (_%L166381%_
                            _%L166382%_
                            _%L166383%_
                            _%L166384%_
                            _%L166385%_)
                     (let ((_%$method166437%_
                            (let ((__tmp171817
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165544%_ 'methods)))
                                  (__tmp171816
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166382%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171817 __tmp171816)))
                           (_%args166438%_
                            (map (lambda (_%g166425166427%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165544%_
                                      _%g166425166427%_)))
                                 (let ((__tmp171818
                                        (lambda (_%g166429166432%_
                                                 _%g166430166434%_)
                                          (cons _%g166429166432%_
                                                _%g166430166434%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171818 '() _%L166381%_)))))
                       (let ((__tmp171819
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165547%_
                                                 _%$method166437%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165544%_ 'receiver))
                          '()))
              _%args166438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171819 _%stx165545%_)))))
                  (_%__kont171198171199%_
                   (lambda (_%L166212%_ _%L166213%_ _%L166214%_)
                     (let* ((_%$field166246%_
                             (let ((__tmp171821
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165544%_ 'slots)))
                                   (__tmp171820
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166212%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171821 __tmp171820)))
                            (__tmp171822
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165544%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166246%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165544%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171822 _%stx165545%_))))
                  (_%__kont171200171201%_
                   (lambda (_%L166086%_ _%L166087%_ _%L166088%_ _%L166089%_)
                     (let ((_%$field166124%_
                            (let ((__tmp171824
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165544%_ 'slots)))
                                  (__tmp171823
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166087%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171824 __tmp171823)))
                           (_%expr166125%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165544%_ _%L166086%_))))
                       (let ((__tmp171825
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165544%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166124%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165544%_ 'receiver))
                          '()))
              (cons _%expr166125%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171825 _%stx165545%_)))))
                  (_%__kont171202171203%_
                   (lambda (_%L165958%_ _%L165959%_)
                     (let* ((_%accessor165981%_
                             (let ((__tmp171826
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165959%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171826)))
                            (_%klass165983%_
                             (let ((__tmp171827
                                    (##structure-ref
                                     _%accessor165981%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165545%_
                                __tmp171827)))
                            (_%slot165985%_
                             (##structure-ref
                              _%accessor165981%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor165981%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165983%_
                                       _%slot165985%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165983%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165545%_
                           (let* ((_%$field165991%_
                                   (let ((__tmp171828
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171828 _%slot165985%_)))
                                  (__tmp171829
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165544%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165544%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171829
                              _%stx165545%_))))))
                  (_%__kont171204171205%_
                   (lambda (_%L165853%_ _%L165854%_ _%L165855%_)
                     (let* ((_%mutator165883%_
                             (let ((__tmp171830
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165855%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171830)))
                            (_%klass165885%_
                             (let ((__tmp171831
                                    (##structure-ref
                                     _%mutator165883%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165545%_
                                __tmp171831)))
                            (_%slot165887%_
                             (##structure-ref
                              _%mutator165883%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165889%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165544%_ _%L165853%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165883%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165885%_
                                       _%slot165887%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165885%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171832
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165855%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165854%_
                                                                '()))
                                                    (cons _%expr165889%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171832 _%stx165545%_))
                           (let* ((_%$field165895%_
                                   (let ((__tmp171833
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171833 _%slot165887%_)))
                                  (__tmp171834
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165544%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165544%_ 'receiver))
                               '()))
                   (cons _%expr165889%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171834
                              _%stx165545%_))))))
                  (_%__kont171206171207%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165544%_ _%stx165545%_)))))
              (let* ((_%__match171687171688%_
                      (lambda (_%e165749165789%_
                               _%hd165750165792%_
                               _%tl165751165794%_
                               _%e165752165797%_
                               _%hd165753165800%_
                               _%tl165754165802%_
                               _%e165755165805%_
                               _%hd165756165808%_
                               _%tl165757165810%_
                               _%e165758165813%_
                               _%hd165759165816%_
                               _%tl165760165818%_
                               _%e165761165821%_
                               _%hd165762165824%_
                               _%tl165763165826%_
                               _%e165764165829%_
                               _%hd165765165832%_
                               _%tl165766165834%_
                               _%e165767165837%_
                               _%hd165768165840%_
                               _%tl165769165842%_
                               _%e165770165845%_
                               _%hd165771165848%_
                               _%tl165772165850%_)
                        (let ((_%L165853%_ _%hd165771165848%_)
                              (_%L165854%_ _%hd165768165840%_)
                              (_%L165855%_ _%hd165759165816%_))
                          (if (and (let ((__tmp171835
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165854%_
                                      __tmp171835))
                                   (let ((__tmp171836
                                          (let ((__tmp171837
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165855%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171837))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171836
                                      'gxc#!mutator::t)))
                              (_%__kont171204171205%_
                               _%L165853%_
                               _%L165854%_
                               _%L165855%_)
                              (_%__kont171206171207%_)))))
                     (_%__match171685171686%_
                      (lambda (_%e165749165789%_
                               _%hd165750165792%_
                               _%tl165751165794%_
                               _%e165752165797%_
                               _%hd165753165800%_
                               _%tl165754165802%_
                               _%e165755165805%_
                               _%hd165756165808%_
                               _%tl165757165810%_
                               _%e165758165813%_
                               _%hd165759165816%_
                               _%tl165760165818%_
                               _%e165761165821%_
                               _%hd165762165824%_
                               _%tl165763165826%_
                               _%e165764165829%_
                               _%hd165765165832%_
                               _%tl165766165834%_
                               _%e165767165837%_
                               _%hd165768165840%_
                               _%tl165769165842%_
                               _%e165770165845%_
                               _%hd165771165848%_
                               _%tl165772165850%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165772165850%_))
                            (_%__match171687171688%_
                             _%e165749165789%_
                             _%hd165750165792%_
                             _%tl165751165794%_
                             _%e165752165797%_
                             _%hd165753165800%_
                             _%tl165754165802%_
                             _%e165755165805%_
                             _%hd165756165808%_
                             _%tl165757165810%_
                             _%e165758165813%_
                             _%hd165759165816%_
                             _%tl165760165818%_
                             _%e165761165821%_
                             _%hd165762165824%_
                             _%tl165763165826%_
                             _%e165764165829%_
                             _%hd165765165832%_
                             _%tl165766165834%_
                             _%e165767165837%_
                             _%hd165768165840%_
                             _%tl165769165842%_
                             _%e165770165845%_
                             _%hd165771165848%_
                             _%tl165772165850%_)
                            (_%__kont171206171207%_))))
                     (_%__match171679171680%_
                      (lambda (_%e165749165789%_
                               _%hd165750165792%_
                               _%tl165751165794%_
                               _%e165752165797%_
                               _%hd165753165800%_
                               _%tl165754165802%_
                               _%e165755165805%_
                               _%hd165756165808%_
                               _%tl165757165810%_
                               _%e165758165813%_
                               _%hd165759165816%_
                               _%tl165760165818%_
                               _%e165761165821%_
                               _%hd165762165824%_
                               _%tl165763165826%_
                               _%e165764165829%_
                               _%hd165765165832%_
                               _%tl165766165834%_
                               _%e165767165837%_
                               _%hd165768165840%_
                               _%tl165769165842%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165763165826%_))
                            (let ((_%e165770165845%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165763165826%_))))
                              (let ((_%tl165772165850%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165770165845%_)))
                                    (_%hd165771165848%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165770165845%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165772165850%_))
                                    (_%__match171687171688%_
                                     _%e165749165789%_
                                     _%hd165750165792%_
                                     _%tl165751165794%_
                                     _%e165752165797%_
                                     _%hd165753165800%_
                                     _%tl165754165802%_
                                     _%e165755165805%_
                                     _%hd165756165808%_
                                     _%tl165757165810%_
                                     _%e165758165813%_
                                     _%hd165759165816%_
                                     _%tl165760165818%_
                                     _%e165761165821%_
                                     _%hd165762165824%_
                                     _%tl165763165826%_
                                     _%e165764165829%_
                                     _%hd165765165832%_
                                     _%tl165766165834%_
                                     _%e165767165837%_
                                     _%hd165768165840%_
                                     _%tl165769165842%_
                                     _%e165770165845%_
                                     _%hd165771165848%_
                                     _%tl165772165850%_)
                                    (_%__kont171206171207%_))))
                            (_%__kont171206171207%_))))
                     (_%__match171625171626%_
                      (lambda (_%e165725165902%_
                               _%hd165726165905%_
                               _%tl165727165907%_
                               _%e165728165910%_
                               _%hd165729165913%_
                               _%tl165730165915%_
                               _%e165731165918%_
                               _%hd165732165921%_
                               _%tl165733165923%_
                               _%e165734165926%_
                               _%hd165735165929%_
                               _%tl165736165931%_
                               _%e165737165934%_
                               _%hd165738165937%_
                               _%tl165739165939%_
                               _%e165740165942%_
                               _%hd165741165945%_
                               _%tl165742165947%_
                               _%e165743165950%_
                               _%hd165744165953%_
                               _%tl165745165955%_)
                        (let ((_%L165958%_ _%hd165744165953%_)
                              (_%L165959%_ _%hd165735165929%_))
                          (if (and (let ((__tmp171838
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165958%_
                                      __tmp171838))
                                   (let ((__tmp171839
                                          (let ((__tmp171840
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165959%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171840))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171839
                                      'gxc#!accessor::t)))
                              (_%__kont171202171203%_ _%L165958%_ _%L165959%_)
                              (_%__kont171206171207%_)))))
                     (_%__match171623171624%_
                      (lambda (_%e165725165902%_
                               _%hd165726165905%_
                               _%tl165727165907%_
                               _%e165728165910%_
                               _%hd165729165913%_
                               _%tl165730165915%_
                               _%e165731165918%_
                               _%hd165732165921%_
                               _%tl165733165923%_
                               _%e165734165926%_
                               _%hd165735165929%_
                               _%tl165736165931%_
                               _%e165737165934%_
                               _%hd165738165937%_
                               _%tl165739165939%_
                               _%e165740165942%_
                               _%hd165741165945%_
                               _%tl165742165947%_
                               _%e165743165950%_
                               _%hd165744165953%_
                               _%tl165745165955%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165739165939%_))
                            (_%__match171625171626%_
                             _%e165725165902%_
                             _%hd165726165905%_
                             _%tl165727165907%_
                             _%e165728165910%_
                             _%hd165729165913%_
                             _%tl165730165915%_
                             _%e165731165918%_
                             _%hd165732165921%_
                             _%tl165733165923%_
                             _%e165734165926%_
                             _%hd165735165929%_
                             _%tl165736165931%_
                             _%e165737165934%_
                             _%hd165738165937%_
                             _%tl165739165939%_
                             _%e165740165942%_
                             _%hd165741165945%_
                             _%tl165742165947%_
                             _%e165743165950%_
                             _%hd165744165953%_
                             _%tl165745165955%_)
                            (_%__match171679171680%_
                             _%e165725165902%_
                             _%hd165726165905%_
                             _%tl165727165907%_
                             _%e165728165910%_
                             _%hd165729165913%_
                             _%tl165730165915%_
                             _%e165731165918%_
                             _%hd165732165921%_
                             _%tl165733165923%_
                             _%e165734165926%_
                             _%hd165735165929%_
                             _%tl165736165931%_
                             _%e165737165934%_
                             _%hd165738165937%_
                             _%tl165739165939%_
                             _%e165740165942%_
                             _%hd165741165945%_
                             _%tl165742165947%_
                             _%e165743165950%_
                             _%hd165744165953%_
                             _%tl165745165955%_))))
                     (_%__match171569171570%_
                      (lambda (_%e165690165998%_
                               _%hd165691166001%_
                               _%tl165692166003%_
                               _%e165693166006%_
                               _%hd165694166009%_
                               _%tl165695166011%_
                               _%e165696166014%_
                               _%hd165697166017%_
                               _%tl165698166019%_
                               _%e165699166022%_
                               _%hd165700166025%_
                               _%tl165701166027%_
                               _%e165702166030%_
                               _%hd165703166033%_
                               _%tl165704166035%_
                               _%e165705166038%_
                               _%hd165706166041%_
                               _%tl165707166043%_
                               _%e165708166046%_
                               _%hd165709166049%_
                               _%tl165710166051%_
                               _%e165711166054%_
                               _%hd165712166057%_
                               _%tl165713166059%_
                               _%e165714166062%_
                               _%hd165715166065%_
                               _%tl165716166067%_
                               _%e165717166070%_
                               _%hd165718166073%_
                               _%tl165719166075%_
                               _%e165720166078%_
                               _%hd165721166081%_
                               _%tl165722166083%_)
                        (let ((_%L166086%_ _%hd165721166081%_)
                              (_%L166087%_ _%hd165718166073%_)
                              (_%L166088%_ _%hd165709166049%_)
                              (_%L166089%_ _%hd165700166025%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166089%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166089%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171841
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166088%_
                                      __tmp171841)))
                              (_%__kont171200171201%_
                               _%L166086%_
                               _%L166087%_
                               _%L166088%_
                               _%L166089%_)
                              (_%__kont171206171207%_)))))
                     (_%__match171561171562%_
                      (lambda (_%e165690165998%_
                               _%hd165691166001%_
                               _%tl165692166003%_
                               _%e165693166006%_
                               _%hd165694166009%_
                               _%tl165695166011%_
                               _%e165696166014%_
                               _%hd165697166017%_
                               _%tl165698166019%_
                               _%e165699166022%_
                               _%hd165700166025%_
                               _%tl165701166027%_
                               _%e165702166030%_
                               _%hd165703166033%_
                               _%tl165704166035%_
                               _%e165705166038%_
                               _%hd165706166041%_
                               _%tl165707166043%_
                               _%e165708166046%_
                               _%hd165709166049%_
                               _%tl165710166051%_
                               _%e165711166054%_
                               _%hd165712166057%_
                               _%tl165713166059%_
                               _%e165714166062%_
                               _%hd165715166065%_
                               _%tl165716166067%_
                               _%e165717166070%_
                               _%hd165718166073%_
                               _%tl165719166075%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165713166059%_))
                            (let ((_%e165720166078%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165713166059%_))))
                              (let ((_%tl165722166083%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165720166078%_)))
                                    (_%hd165721166081%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165720166078%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165722166083%_))
                                    (_%__match171569171570%_
                                     _%e165690165998%_
                                     _%hd165691166001%_
                                     _%tl165692166003%_
                                     _%e165693166006%_
                                     _%hd165694166009%_
                                     _%tl165695166011%_
                                     _%e165696166014%_
                                     _%hd165697166017%_
                                     _%tl165698166019%_
                                     _%e165699166022%_
                                     _%hd165700166025%_
                                     _%tl165701166027%_
                                     _%e165702166030%_
                                     _%hd165703166033%_
                                     _%tl165704166035%_
                                     _%e165705166038%_
                                     _%hd165706166041%_
                                     _%tl165707166043%_
                                     _%e165708166046%_
                                     _%hd165709166049%_
                                     _%tl165710166051%_
                                     _%e165711166054%_
                                     _%hd165712166057%_
                                     _%tl165713166059%_
                                     _%e165714166062%_
                                     _%hd165715166065%_
                                     _%tl165716166067%_
                                     _%e165717166070%_
                                     _%hd165718166073%_
                                     _%tl165719166075%_
                                     _%e165720166078%_
                                     _%hd165721166081%_
                                     _%tl165722166083%_)
                                    (_%__kont171206171207%_))))
                            (_%__match171685171686%_
                             _%e165690165998%_
                             _%hd165691166001%_
                             _%tl165692166003%_
                             _%e165693166006%_
                             _%hd165694166009%_
                             _%tl165695166011%_
                             _%e165696166014%_
                             _%hd165697166017%_
                             _%tl165698166019%_
                             _%e165699166022%_
                             _%hd165700166025%_
                             _%tl165701166027%_
                             _%e165702166030%_
                             _%hd165703166033%_
                             _%tl165704166035%_
                             _%e165705166038%_
                             _%hd165706166041%_
                             _%tl165707166043%_
                             _%e165708166046%_
                             _%hd165709166049%_
                             _%tl165710166051%_
                             _%e165711166054%_
                             _%hd165712166057%_
                             _%tl165713166059%_))))
                     (_%__match171483171484%_
                      (lambda (_%e165656166132%_
                               _%hd165657166135%_
                               _%tl165658166137%_
                               _%e165659166140%_
                               _%hd165660166143%_
                               _%tl165661166145%_
                               _%e165662166148%_
                               _%hd165663166151%_
                               _%tl165664166153%_
                               _%e165665166156%_
                               _%hd165666166159%_
                               _%tl165667166161%_
                               _%e165668166164%_
                               _%hd165669166167%_
                               _%tl165670166169%_
                               _%e165671166172%_
                               _%hd165672166175%_
                               _%tl165673166177%_
                               _%e165674166180%_
                               _%hd165675166183%_
                               _%tl165676166185%_
                               _%e165677166188%_
                               _%hd165678166191%_
                               _%tl165679166193%_
                               _%e165680166196%_
                               _%hd165681166199%_
                               _%tl165682166201%_
                               _%e165683166204%_
                               _%hd165684166207%_
                               _%tl165685166209%_)
                        (let ((_%L166212%_ _%hd165684166207%_)
                              (_%L166213%_ _%hd165675166183%_)
                              (_%L166214%_ _%hd165666166159%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166214%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166214%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171842
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165544%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166213%_
                                      __tmp171842)))
                              (_%__kont171198171199%_
                               _%L166212%_
                               _%L166213%_
                               _%L166214%_)
                              (_%__match171687171688%_
                               _%e165656166132%_
                               _%hd165657166135%_
                               _%tl165658166137%_
                               _%e165659166140%_
                               _%hd165660166143%_
                               _%tl165661166145%_
                               _%e165662166148%_
                               _%hd165663166151%_
                               _%tl165664166153%_
                               _%e165665166156%_
                               _%hd165666166159%_
                               _%tl165667166161%_
                               _%e165668166164%_
                               _%hd165669166167%_
                               _%tl165670166169%_
                               _%e165671166172%_
                               _%hd165672166175%_
                               _%tl165673166177%_
                               _%e165674166180%_
                               _%hd165675166183%_
                               _%tl165676166185%_
                               _%e165677166188%_
                               _%hd165678166191%_
                               _%tl165679166193%_)))))
                     (_%__match171481171482%_
                      (lambda (_%e165656166132%_
                               _%hd165657166135%_
                               _%tl165658166137%_
                               _%e165659166140%_
                               _%hd165660166143%_
                               _%tl165661166145%_
                               _%e165662166148%_
                               _%hd165663166151%_
                               _%tl165664166153%_
                               _%e165665166156%_
                               _%hd165666166159%_
                               _%tl165667166161%_
                               _%e165668166164%_
                               _%hd165669166167%_
                               _%tl165670166169%_
                               _%e165671166172%_
                               _%hd165672166175%_
                               _%tl165673166177%_
                               _%e165674166180%_
                               _%hd165675166183%_
                               _%tl165676166185%_
                               _%e165677166188%_
                               _%hd165678166191%_
                               _%tl165679166193%_
                               _%e165680166196%_
                               _%hd165681166199%_
                               _%tl165682166201%_
                               _%e165683166204%_
                               _%hd165684166207%_
                               _%tl165685166209%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165679166193%_))
                            (_%__match171483171484%_
                             _%e165656166132%_
                             _%hd165657166135%_
                             _%tl165658166137%_
                             _%e165659166140%_
                             _%hd165660166143%_
                             _%tl165661166145%_
                             _%e165662166148%_
                             _%hd165663166151%_
                             _%tl165664166153%_
                             _%e165665166156%_
                             _%hd165666166159%_
                             _%tl165667166161%_
                             _%e165668166164%_
                             _%hd165669166167%_
                             _%tl165670166169%_
                             _%e165671166172%_
                             _%hd165672166175%_
                             _%tl165673166177%_
                             _%e165674166180%_
                             _%hd165675166183%_
                             _%tl165676166185%_
                             _%e165677166188%_
                             _%hd165678166191%_
                             _%tl165679166193%_
                             _%e165680166196%_
                             _%hd165681166199%_
                             _%tl165682166201%_
                             _%e165683166204%_
                             _%hd165684166207%_
                             _%tl165685166209%_)
                            (_%__match171561171562%_
                             _%e165656166132%_
                             _%hd165657166135%_
                             _%tl165658166137%_
                             _%e165659166140%_
                             _%hd165660166143%_
                             _%tl165661166145%_
                             _%e165662166148%_
                             _%hd165663166151%_
                             _%tl165664166153%_
                             _%e165665166156%_
                             _%hd165666166159%_
                             _%tl165667166161%_
                             _%e165668166164%_
                             _%hd165669166167%_
                             _%tl165670166169%_
                             _%e165671166172%_
                             _%hd165672166175%_
                             _%tl165673166177%_
                             _%e165674166180%_
                             _%hd165675166183%_
                             _%tl165676166185%_
                             _%e165677166188%_
                             _%hd165678166191%_
                             _%tl165679166193%_
                             _%e165680166196%_
                             _%hd165681166199%_
                             _%tl165682166201%_
                             _%e165683166204%_
                             _%hd165684166207%_
                             _%tl165685166209%_))))
                     (_%__match171471171472%_
                      (lambda (_%e165656166132%_
                               _%hd165657166135%_
                               _%tl165658166137%_
                               _%e165659166140%_
                               _%hd165660166143%_
                               _%tl165661166145%_
                               _%e165662166148%_
                               _%hd165663166151%_
                               _%tl165664166153%_
                               _%e165665166156%_
                               _%hd165666166159%_
                               _%tl165667166161%_
                               _%e165668166164%_
                               _%hd165669166167%_
                               _%tl165670166169%_
                               _%e165671166172%_
                               _%hd165672166175%_
                               _%tl165673166177%_
                               _%e165674166180%_
                               _%hd165675166183%_
                               _%tl165676166185%_
                               _%e165677166188%_
                               _%hd165678166191%_
                               _%tl165679166193%_
                               _%e165680166196%_
                               _%hd165681166199%_
                               _%tl165682166201%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165681166199%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165682166201%_))
                                (let ((_%e165683166204%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165682166201%_))))
                                  (let ((_%tl165685166209%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165683166204%_)))
                                        (_%hd165684166207%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165683166204%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165685166209%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165679166193%_))
                                            (_%__match171483171484%_
                                             _%e165656166132%_
                                             _%hd165657166135%_
                                             _%tl165658166137%_
                                             _%e165659166140%_
                                             _%hd165660166143%_
                                             _%tl165661166145%_
                                             _%e165662166148%_
                                             _%hd165663166151%_
                                             _%tl165664166153%_
                                             _%e165665166156%_
                                             _%hd165666166159%_
                                             _%tl165667166161%_
                                             _%e165668166164%_
                                             _%hd165669166167%_
                                             _%tl165670166169%_
                                             _%e165671166172%_
                                             _%hd165672166175%_
                                             _%tl165673166177%_
                                             _%e165674166180%_
                                             _%hd165675166183%_
                                             _%tl165676166185%_
                                             _%e165677166188%_
                                             _%hd165678166191%_
                                             _%tl165679166193%_
                                             _%e165680166196%_
                                             _%hd165681166199%_
                                             _%tl165682166201%_
                                             _%e165683166204%_
                                             _%hd165684166207%_
                                             _%tl165685166209%_)
                                            (_%__match171561171562%_
                                             _%e165656166132%_
                                             _%hd165657166135%_
                                             _%tl165658166137%_
                                             _%e165659166140%_
                                             _%hd165660166143%_
                                             _%tl165661166145%_
                                             _%e165662166148%_
                                             _%hd165663166151%_
                                             _%tl165664166153%_
                                             _%e165665166156%_
                                             _%hd165666166159%_
                                             _%tl165667166161%_
                                             _%e165668166164%_
                                             _%hd165669166167%_
                                             _%tl165670166169%_
                                             _%e165671166172%_
                                             _%hd165672166175%_
                                             _%tl165673166177%_
                                             _%e165674166180%_
                                             _%hd165675166183%_
                                             _%tl165676166185%_
                                             _%e165677166188%_
                                             _%hd165678166191%_
                                             _%tl165679166193%_
                                             _%e165680166196%_
                                             _%hd165681166199%_
                                             _%tl165682166201%_
                                             _%e165683166204%_
                                             _%hd165684166207%_
                                             _%tl165685166209%_))
                                        (_%__match171685171686%_
                                         _%e165656166132%_
                                         _%hd165657166135%_
                                         _%tl165658166137%_
                                         _%e165659166140%_
                                         _%hd165660166143%_
                                         _%tl165661166145%_
                                         _%e165662166148%_
                                         _%hd165663166151%_
                                         _%tl165664166153%_
                                         _%e165665166156%_
                                         _%hd165666166159%_
                                         _%tl165667166161%_
                                         _%e165668166164%_
                                         _%hd165669166167%_
                                         _%tl165670166169%_
                                         _%e165671166172%_
                                         _%hd165672166175%_
                                         _%tl165673166177%_
                                         _%e165674166180%_
                                         _%hd165675166183%_
                                         _%tl165676166185%_
                                         _%e165677166188%_
                                         _%hd165678166191%_
                                         _%tl165679166193%_))))
                                (_%__match171685171686%_
                                 _%e165656166132%_
                                 _%hd165657166135%_
                                 _%tl165658166137%_
                                 _%e165659166140%_
                                 _%hd165660166143%_
                                 _%tl165661166145%_
                                 _%e165662166148%_
                                 _%hd165663166151%_
                                 _%tl165664166153%_
                                 _%e165665166156%_
                                 _%hd165666166159%_
                                 _%tl165667166161%_
                                 _%e165668166164%_
                                 _%hd165669166167%_
                                 _%tl165670166169%_
                                 _%e165671166172%_
                                 _%hd165672166175%_
                                 _%tl165673166177%_
                                 _%e165674166180%_
                                 _%hd165675166183%_
                                 _%tl165676166185%_
                                 _%e165677166188%_
                                 _%hd165678166191%_
                                 _%tl165679166193%_))
                            (_%__match171685171686%_
                             _%e165656166132%_
                             _%hd165657166135%_
                             _%tl165658166137%_
                             _%e165659166140%_
                             _%hd165660166143%_
                             _%tl165661166145%_
                             _%e165662166148%_
                             _%hd165663166151%_
                             _%tl165664166153%_
                             _%e165665166156%_
                             _%hd165666166159%_
                             _%tl165667166161%_
                             _%e165668166164%_
                             _%hd165669166167%_
                             _%tl165670166169%_
                             _%e165671166172%_
                             _%hd165672166175%_
                             _%tl165673166177%_
                             _%e165674166180%_
                             _%hd165675166183%_
                             _%tl165676166185%_
                             _%e165677166188%_
                             _%hd165678166191%_
                             _%tl165679166193%_))))
                     (_%__match171403171404%_
                      (lambda (_%e165605166253%_
                               _%hd165606166256%_
                               _%tl165607166258%_
                               _%e165608166261%_
                               _%hd165609166264%_
                               _%tl165610166266%_
                               _%e165611166269%_
                               _%hd165612166272%_
                               _%tl165613166274%_
                               _%e165614166277%_
                               _%hd165615166280%_
                               _%tl165616166282%_
                               _%e165617166285%_
                               _%hd165618166288%_
                               _%tl165619166290%_
                               _%e165620166293%_
                               _%hd165621166296%_
                               _%tl165622166298%_
                               _%e165623166301%_
                               _%hd165624166304%_
                               _%tl165625166306%_
                               _%e165626166309%_
                               _%hd165627166312%_
                               _%tl165628166314%_
                               _%e165629166317%_
                               _%hd165630166320%_
                               _%tl165631166322%_
                               _%e165632166325%_
                               _%hd165633166328%_
                               _%tl165634166330%_
                               _%e165635166333%_
                               _%hd165636166336%_
                               _%tl165637166338%_
                               _%e165638166341%_
                               _%hd165639166344%_
                               _%tl165640166346%_
                               _%e165641166349%_
                               _%hd165642166352%_
                               _%tl165643166354%_
                               _%__splice171196171197%_
                               _%target165644166357%_
                               _%tl165646166359%_)
                        (letrec ((_%loop165647166362%_
                                  (lambda (_%hd165645166365%_
                                           _%args165651166367%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165645166365%_))
                                        (let ((_%e165648166370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165645166365%_))))
                                          (let ((_%lp-tl165650166375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165648166370%_)))
                                                (_%lp-hd165649166373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165648166370%_))))
                                            (_%loop165647166362%_
                                             _%lp-tl165650166375%_
                                             (cons _%lp-hd165649166373%_
                                                   _%args165651166367%_))))
                                        (let ((_%args165652166378%_
                                               (reverse _%args165651166367%_)))
                                          (let ((_%L166381%_
                                                 _%args165652166378%_)
                                                (_%L166382%_
                                                 _%hd165642166352%_)
                                                (_%L166383%_
                                                 _%hd165633166328%_)
                                                (_%L166384%_
                                                 _%hd165624166304%_)
                                                (_%L166385%_
                                                 _%hd165615166280%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166385%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166384%_
                                                        'call-method))
                                                     (let ((__tmp171843
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165544%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166383%_
                                                        __tmp171843)))
                                                (_%__kont171194171195%_
                                                 _%L166381%_
                                                 _%L166382%_
                                                 _%L166383%_
                                                 _%L166384%_
                                                 _%L166385%_)
                                                (_%__kont171206171207%_))))))))
                          (_%loop165647166362%_ _%target165644166357%_ '()))))
                     (_%__match171361171362%_
                      (lambda (_%e165605166253%_
                               _%hd165606166256%_
                               _%tl165607166258%_
                               _%e165608166261%_
                               _%hd165609166264%_
                               _%tl165610166266%_
                               _%e165611166269%_
                               _%hd165612166272%_
                               _%tl165613166274%_
                               _%e165614166277%_
                               _%hd165615166280%_
                               _%tl165616166282%_
                               _%e165617166285%_
                               _%hd165618166288%_
                               _%tl165619166290%_
                               _%e165620166293%_
                               _%hd165621166296%_
                               _%tl165622166298%_
                               _%e165623166301%_
                               _%hd165624166304%_
                               _%tl165625166306%_
                               _%e165626166309%_
                               _%hd165627166312%_
                               _%tl165628166314%_
                               _%e165629166317%_
                               _%hd165630166320%_
                               _%tl165631166322%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165630166320%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165631166322%_))
                                (let ((_%e165632166325%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165631166322%_))))
                                  (let ((_%tl165634166330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165632166325%_)))
                                        (_%hd165633166328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165632166325%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165634166330%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165628166314%_))
                                            (let ((_%e165635166333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165628166314%_))))
                                              (let ((_%tl165637166338%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165635166333%_)))
                                                    (_%hd165636166336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165635166333%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165636166336%_))
                                                    (let ((_%e165638166341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165636166336%_))))
                                                      (let ((_%tl165640166346%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165638166341%_)))
                    (_%hd165639166344%_
                     (let () (declare (not safe)) (##car _%e165638166341%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165639166344%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165639166344%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165640166346%_))
                            (let ((_%e165641166349%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165640166346%_))))
                              (let ((_%tl165643166354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165641166349%_)))
                                    (_%hd165642166352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165641166349%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165643166354%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165637166338%_))
                                        (let ((_%__splice171196171197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165637166338%_
                                                  '0))))
                                          (let ((_%tl165646166359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171196171197%_
                                                    '1)))
                                                (_%target165644166357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171196171197%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165646166359%_))
                                                (_%__match171403171404%_
                                                 _%e165605166253%_
                                                 _%hd165606166256%_
                                                 _%tl165607166258%_
                                                 _%e165608166261%_
                                                 _%hd165609166264%_
                                                 _%tl165610166266%_
                                                 _%e165611166269%_
                                                 _%hd165612166272%_
                                                 _%tl165613166274%_
                                                 _%e165614166277%_
                                                 _%hd165615166280%_
                                                 _%tl165616166282%_
                                                 _%e165617166285%_
                                                 _%hd165618166288%_
                                                 _%tl165619166290%_
                                                 _%e165620166293%_
                                                 _%hd165621166296%_
                                                 _%tl165622166298%_
                                                 _%e165623166301%_
                                                 _%hd165624166304%_
                                                 _%tl165625166306%_
                                                 _%e165626166309%_
                                                 _%hd165627166312%_
                                                 _%tl165628166314%_
                                                 _%e165629166317%_
                                                 _%hd165630166320%_
                                                 _%tl165631166322%_
                                                 _%e165632166325%_
                                                 _%hd165633166328%_
                                                 _%tl165634166330%_
                                                 _%e165635166333%_
                                                 _%hd165636166336%_
                                                 _%tl165637166338%_
                                                 _%e165638166341%_
                                                 _%hd165639166344%_
                                                 _%tl165640166346%_
                                                 _%e165641166349%_
                                                 _%hd165642166352%_
                                                 _%tl165643166354%_
                                                 _%__splice171196171197%_
                                                 _%target165644166357%_
                                                 _%tl165646166359%_)
                                                (_%__kont171206171207%_))))
                                        (_%__kont171206171207%_))
                                    (_%__kont171206171207%_))))
                            (_%__kont171206171207%_))
                        (_%__kont171206171207%_))
                    (_%__kont171206171207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171206171207%_))))
                                            (_%__match171685171686%_
                                             _%e165605166253%_
                                             _%hd165606166256%_
                                             _%tl165607166258%_
                                             _%e165608166261%_
                                             _%hd165609166264%_
                                             _%tl165610166266%_
                                             _%e165611166269%_
                                             _%hd165612166272%_
                                             _%tl165613166274%_
                                             _%e165614166277%_
                                             _%hd165615166280%_
                                             _%tl165616166282%_
                                             _%e165617166285%_
                                             _%hd165618166288%_
                                             _%tl165619166290%_
                                             _%e165620166293%_
                                             _%hd165621166296%_
                                             _%tl165622166298%_
                                             _%e165623166301%_
                                             _%hd165624166304%_
                                             _%tl165625166306%_
                                             _%e165626166309%_
                                             _%hd165627166312%_
                                             _%tl165628166314%_))
                                        (_%__match171685171686%_
                                         _%e165605166253%_
                                         _%hd165606166256%_
                                         _%tl165607166258%_
                                         _%e165608166261%_
                                         _%hd165609166264%_
                                         _%tl165610166266%_
                                         _%e165611166269%_
                                         _%hd165612166272%_
                                         _%tl165613166274%_
                                         _%e165614166277%_
                                         _%hd165615166280%_
                                         _%tl165616166282%_
                                         _%e165617166285%_
                                         _%hd165618166288%_
                                         _%tl165619166290%_
                                         _%e165620166293%_
                                         _%hd165621166296%_
                                         _%tl165622166298%_
                                         _%e165623166301%_
                                         _%hd165624166304%_
                                         _%tl165625166306%_
                                         _%e165626166309%_
                                         _%hd165627166312%_
                                         _%tl165628166314%_))))
                                (_%__match171685171686%_
                                 _%e165605166253%_
                                 _%hd165606166256%_
                                 _%tl165607166258%_
                                 _%e165608166261%_
                                 _%hd165609166264%_
                                 _%tl165610166266%_
                                 _%e165611166269%_
                                 _%hd165612166272%_
                                 _%tl165613166274%_
                                 _%e165614166277%_
                                 _%hd165615166280%_
                                 _%tl165616166282%_
                                 _%e165617166285%_
                                 _%hd165618166288%_
                                 _%tl165619166290%_
                                 _%e165620166293%_
                                 _%hd165621166296%_
                                 _%tl165622166298%_
                                 _%e165623166301%_
                                 _%hd165624166304%_
                                 _%tl165625166306%_
                                 _%e165626166309%_
                                 _%hd165627166312%_
                                 _%tl165628166314%_))
                            (_%__match171471171472%_
                             _%e165605166253%_
                             _%hd165606166256%_
                             _%tl165607166258%_
                             _%e165608166261%_
                             _%hd165609166264%_
                             _%tl165610166266%_
                             _%e165611166269%_
                             _%hd165612166272%_
                             _%tl165613166274%_
                             _%e165614166277%_
                             _%hd165615166280%_
                             _%tl165616166282%_
                             _%e165617166285%_
                             _%hd165618166288%_
                             _%tl165619166290%_
                             _%e165620166293%_
                             _%hd165621166296%_
                             _%tl165622166298%_
                             _%e165623166301%_
                             _%hd165624166304%_
                             _%tl165625166306%_
                             _%e165626166309%_
                             _%hd165627166312%_
                             _%tl165628166314%_
                             _%e165629166317%_
                             _%hd165630166320%_
                             _%tl165631166322%_))))
                     (_%__match171293171294%_
                      (lambda (_%e165561166445%_
                               _%hd165562166448%_
                               _%tl165563166450%_
                               _%e165564166453%_
                               _%hd165565166456%_
                               _%tl165566166458%_
                               _%e165567166461%_
                               _%hd165568166464%_
                               _%tl165569166466%_
                               _%e165570166469%_
                               _%hd165571166472%_
                               _%tl165572166474%_
                               _%e165573166477%_
                               _%hd165574166480%_
                               _%tl165575166482%_
                               _%e165576166485%_
                               _%hd165577166488%_
                               _%tl165578166490%_
                               _%e165579166493%_
                               _%hd165580166496%_
                               _%tl165581166498%_
                               _%e165582166501%_
                               _%hd165583166504%_
                               _%tl165584166506%_
                               _%e165585166509%_
                               _%hd165586166512%_
                               _%tl165587166514%_
                               _%e165588166517%_
                               _%hd165589166520%_
                               _%tl165590166522%_
                               _%__splice171192171193%_
                               _%target165591166525%_
                               _%tl165593166527%_)
                        (letrec ((_%loop165594166530%_
                                  (lambda (_%hd165592166533%_
                                           _%args165598166535%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165592166533%_))
                                        (let ((_%e165595166538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165592166533%_))))
                                          (let ((_%lp-tl165597166543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165595166538%_)))
                                                (_%lp-hd165596166541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165595166538%_))))
                                            (_%loop165594166530%_
                                             _%lp-tl165597166543%_
                                             (cons _%lp-hd165596166541%_
                                                   _%args165598166535%_))))
                                        (let ((_%args165599166546%_
                                               (reverse _%args165598166535%_)))
                                          (let ((_%L166549%_
                                                 _%args165599166546%_)
                                                (_%L166550%_
                                                 _%hd165589166520%_)
                                                (_%L166551%_
                                                 _%hd165580166496%_)
                                                (_%L166552%_
                                                 _%hd165571166472%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166552%_
                                                        'call-method))
                                                     (let ((__tmp171844
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165544%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166551%_
                                                        __tmp171844)))
                                                (_%__kont171190171191%_
                                                 _%L166549%_
                                                 _%L166550%_
                                                 _%L166551%_
                                                 _%L166552%_)
                                                (_%__match171481171482%_
                                                 _%e165561166445%_
                                                 _%hd165562166448%_
                                                 _%tl165563166450%_
                                                 _%e165564166453%_
                                                 _%hd165565166456%_
                                                 _%tl165566166458%_
                                                 _%e165567166461%_
                                                 _%hd165568166464%_
                                                 _%tl165569166466%_
                                                 _%e165570166469%_
                                                 _%hd165571166472%_
                                                 _%tl165572166474%_
                                                 _%e165573166477%_
                                                 _%hd165574166480%_
                                                 _%tl165575166482%_
                                                 _%e165576166485%_
                                                 _%hd165577166488%_
                                                 _%tl165578166490%_
                                                 _%e165579166493%_
                                                 _%hd165580166496%_
                                                 _%tl165581166498%_
                                                 _%e165582166501%_
                                                 _%hd165583166504%_
                                                 _%tl165584166506%_
                                                 _%e165585166509%_
                                                 _%hd165586166512%_
                                                 _%tl165587166514%_
                                                 _%e165588166517%_
                                                 _%hd165589166520%_
                                                 _%tl165590166522%_))))))))
                          (_%loop165594166530%_ _%target165591166525%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171188171189%_))
                    (let ((_%e165561166445%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171188171189%_))))
                      (let ((_%tl165563166450%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165561166445%_)))
                            (_%hd165562166448%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165561166445%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165563166450%_))
                            (let ((_%e165564166453%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165563166450%_))))
                              (let ((_%tl165566166458%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165564166453%_)))
                                    (_%hd165565166456%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165564166453%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165565166456%_))
                                    (let ((_%e165567166461%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165565166456%_))))
                                      (let ((_%tl165569166466%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165567166461%_)))
                                            (_%hd165568166464%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165567166461%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165568166464%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165568166464%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165569166466%_))
                                                    (let ((_%e165570166469%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165569166466%_))))
                                                      (let ((_%tl165572166474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165570166469%_)))
                    (_%hd165571166472%_
                     (let () (declare (not safe)) (##car _%e165570166469%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165572166474%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165566166458%_))
                        (let ((_%e165573166477%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165566166458%_))))
                          (let ((_%tl165575166482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165573166477%_)))
                                (_%hd165574166480%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165573166477%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165574166480%_))
                                (let ((_%e165576166485%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165574166480%_))))
                                  (let ((_%tl165578166490%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165576166485%_)))
                                        (_%hd165577166488%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165576166485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165577166488%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165577166488%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165578166490%_))
                                                (let ((_%e165579166493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165578166490%_))))
                                                  (let ((_%tl165581166498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165579166493%_)))
                                                        (_%hd165580166496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165579166493%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165581166498%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165575166482%_))
                                                            (let ((_%e165582166501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165575166482%_))))
                      (let ((_%tl165584166506%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165582166501%_)))
                            (_%hd165583166504%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165582166501%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165583166504%_))
                            (let ((_%e165585166509%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165583166504%_))))
                              (let ((_%tl165587166514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165585166509%_)))
                                    (_%hd165586166512%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165585166509%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165586166512%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165586166512%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165587166514%_))
                                            (let ((_%e165588166517%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165587166514%_))))
                                              (let ((_%tl165590166522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165588166517%_)))
                                                    (_%hd165589166520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165588166517%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165590166522%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165584166506%_))
                                                        (let ((_%__splice171192171193%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165584166506%_ '0))))
                  (let ((_%tl165593166527%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171192171193%_ '1)))
                        (_%target165591166525%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171192171193%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165593166527%_))
                        (_%__match171293171294%_
                         _%e165561166445%_
                         _%hd165562166448%_
                         _%tl165563166450%_
                         _%e165564166453%_
                         _%hd165565166456%_
                         _%tl165566166458%_
                         _%e165567166461%_
                         _%hd165568166464%_
                         _%tl165569166466%_
                         _%e165570166469%_
                         _%hd165571166472%_
                         _%tl165572166474%_
                         _%e165573166477%_
                         _%hd165574166480%_
                         _%tl165575166482%_
                         _%e165576166485%_
                         _%hd165577166488%_
                         _%tl165578166490%_
                         _%e165579166493%_
                         _%hd165580166496%_
                         _%tl165581166498%_
                         _%e165582166501%_
                         _%hd165583166504%_
                         _%tl165584166506%_
                         _%e165585166509%_
                         _%hd165586166512%_
                         _%tl165587166514%_
                         _%e165588166517%_
                         _%hd165589166520%_
                         _%tl165590166522%_
                         _%__splice171192171193%_
                         _%target165591166525%_
                         _%tl165593166527%_)
                        (_%__match171481171482%_
                         _%e165561166445%_
                         _%hd165562166448%_
                         _%tl165563166450%_
                         _%e165564166453%_
                         _%hd165565166456%_
                         _%tl165566166458%_
                         _%e165567166461%_
                         _%hd165568166464%_
                         _%tl165569166466%_
                         _%e165570166469%_
                         _%hd165571166472%_
                         _%tl165572166474%_
                         _%e165573166477%_
                         _%hd165574166480%_
                         _%tl165575166482%_
                         _%e165576166485%_
                         _%hd165577166488%_
                         _%tl165578166490%_
                         _%e165579166493%_
                         _%hd165580166496%_
                         _%tl165581166498%_
                         _%e165582166501%_
                         _%hd165583166504%_
                         _%tl165584166506%_
                         _%e165585166509%_
                         _%hd165586166512%_
                         _%tl165587166514%_
                         _%e165588166517%_
                         _%hd165589166520%_
                         _%tl165590166522%_))))
                (_%__match171481171482%_
                 _%e165561166445%_
                 _%hd165562166448%_
                 _%tl165563166450%_
                 _%e165564166453%_
                 _%hd165565166456%_
                 _%tl165566166458%_
                 _%e165567166461%_
                 _%hd165568166464%_
                 _%tl165569166466%_
                 _%e165570166469%_
                 _%hd165571166472%_
                 _%tl165572166474%_
                 _%e165573166477%_
                 _%hd165574166480%_
                 _%tl165575166482%_
                 _%e165576166485%_
                 _%hd165577166488%_
                 _%tl165578166490%_
                 _%e165579166493%_
                 _%hd165580166496%_
                 _%tl165581166498%_
                 _%e165582166501%_
                 _%hd165583166504%_
                 _%tl165584166506%_
                 _%e165585166509%_
                 _%hd165586166512%_
                 _%tl165587166514%_
                 _%e165588166517%_
                 _%hd165589166520%_
                 _%tl165590166522%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171685171686%_
                                                     _%e165561166445%_
                                                     _%hd165562166448%_
                                                     _%tl165563166450%_
                                                     _%e165564166453%_
                                                     _%hd165565166456%_
                                                     _%tl165566166458%_
                                                     _%e165567166461%_
                                                     _%hd165568166464%_
                                                     _%tl165569166466%_
                                                     _%e165570166469%_
                                                     _%hd165571166472%_
                                                     _%tl165572166474%_
                                                     _%e165573166477%_
                                                     _%hd165574166480%_
                                                     _%tl165575166482%_
                                                     _%e165576166485%_
                                                     _%hd165577166488%_
                                                     _%tl165578166490%_
                                                     _%e165579166493%_
                                                     _%hd165580166496%_
                                                     _%tl165581166498%_
                                                     _%e165582166501%_
                                                     _%hd165583166504%_
                                                     _%tl165584166506%_))))
                                            (_%__match171685171686%_
                                             _%e165561166445%_
                                             _%hd165562166448%_
                                             _%tl165563166450%_
                                             _%e165564166453%_
                                             _%hd165565166456%_
                                             _%tl165566166458%_
                                             _%e165567166461%_
                                             _%hd165568166464%_
                                             _%tl165569166466%_
                                             _%e165570166469%_
                                             _%hd165571166472%_
                                             _%tl165572166474%_
                                             _%e165573166477%_
                                             _%hd165574166480%_
                                             _%tl165575166482%_
                                             _%e165576166485%_
                                             _%hd165577166488%_
                                             _%tl165578166490%_
                                             _%e165579166493%_
                                             _%hd165580166496%_
                                             _%tl165581166498%_
                                             _%e165582166501%_
                                             _%hd165583166504%_
                                             _%tl165584166506%_))
                                        (_%__match171361171362%_
                                         _%e165561166445%_
                                         _%hd165562166448%_
                                         _%tl165563166450%_
                                         _%e165564166453%_
                                         _%hd165565166456%_
                                         _%tl165566166458%_
                                         _%e165567166461%_
                                         _%hd165568166464%_
                                         _%tl165569166466%_
                                         _%e165570166469%_
                                         _%hd165571166472%_
                                         _%tl165572166474%_
                                         _%e165573166477%_
                                         _%hd165574166480%_
                                         _%tl165575166482%_
                                         _%e165576166485%_
                                         _%hd165577166488%_
                                         _%tl165578166490%_
                                         _%e165579166493%_
                                         _%hd165580166496%_
                                         _%tl165581166498%_
                                         _%e165582166501%_
                                         _%hd165583166504%_
                                         _%tl165584166506%_
                                         _%e165585166509%_
                                         _%hd165586166512%_
                                         _%tl165587166514%_))
                                    (_%__match171685171686%_
                                     _%e165561166445%_
                                     _%hd165562166448%_
                                     _%tl165563166450%_
                                     _%e165564166453%_
                                     _%hd165565166456%_
                                     _%tl165566166458%_
                                     _%e165567166461%_
                                     _%hd165568166464%_
                                     _%tl165569166466%_
                                     _%e165570166469%_
                                     _%hd165571166472%_
                                     _%tl165572166474%_
                                     _%e165573166477%_
                                     _%hd165574166480%_
                                     _%tl165575166482%_
                                     _%e165576166485%_
                                     _%hd165577166488%_
                                     _%tl165578166490%_
                                     _%e165579166493%_
                                     _%hd165580166496%_
                                     _%tl165581166498%_
                                     _%e165582166501%_
                                     _%hd165583166504%_
                                     _%tl165584166506%_))))
                            (_%__match171685171686%_
                             _%e165561166445%_
                             _%hd165562166448%_
                             _%tl165563166450%_
                             _%e165564166453%_
                             _%hd165565166456%_
                             _%tl165566166458%_
                             _%e165567166461%_
                             _%hd165568166464%_
                             _%tl165569166466%_
                             _%e165570166469%_
                             _%hd165571166472%_
                             _%tl165572166474%_
                             _%e165573166477%_
                             _%hd165574166480%_
                             _%tl165575166482%_
                             _%e165576166485%_
                             _%hd165577166488%_
                             _%tl165578166490%_
                             _%e165579166493%_
                             _%hd165580166496%_
                             _%tl165581166498%_
                             _%e165582166501%_
                             _%hd165583166504%_
                             _%tl165584166506%_))))
                    (_%__match171623171624%_
                     _%e165561166445%_
                     _%hd165562166448%_
                     _%tl165563166450%_
                     _%e165564166453%_
                     _%hd165565166456%_
                     _%tl165566166458%_
                     _%e165567166461%_
                     _%hd165568166464%_
                     _%tl165569166466%_
                     _%e165570166469%_
                     _%hd165571166472%_
                     _%tl165572166474%_
                     _%e165573166477%_
                     _%hd165574166480%_
                     _%tl165575166482%_
                     _%e165576166485%_
                     _%hd165577166488%_
                     _%tl165578166490%_
                     _%e165579166493%_
                     _%hd165580166496%_
                     _%tl165581166498%_))
                (_%__kont171206171207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171206171207%_))
                                            (_%__kont171206171207%_))
                                        (_%__kont171206171207%_))))
                                (_%__kont171206171207%_))))
                        (_%__kont171206171207%_))
                    (_%__kont171206171207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171206171207%_))
                                                (_%__kont171206171207%_))
                                            (_%__kont171206171207%_))))
                                    (_%__kont171206171207%_))))
                            (_%__kont171206171207%_))))
                    (_%__kont171206171207%_))))))))))
