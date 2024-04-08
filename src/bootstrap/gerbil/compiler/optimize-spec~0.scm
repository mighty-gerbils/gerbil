(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712602658)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp171697 (list gxc#::identity::t))
            (__tmp171696 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp171697
         '()
         __tmp171696
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args170562%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args170562%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp171698
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
        (__make-promise __tmp171698)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx170554%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self170557%_
                (let ((__obj171691
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj171691))
               (__tmp171699
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self170557%_ _%stx170554%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp171699
           gxc#current-compile-method
           _%self170557%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp171701 (list gxc#::void::t))
            (__tmp171700 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp171701
         '(receiver methods slots)
         __tmp171700
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args170551%_
        (apply make-instance gxc#::collect-object-refs::t _%$args170551%_)))
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
      (let ((__tmp171702
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
        (__make-promise __tmp171702)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords170517%_
               _%receiver170512170518%_
               _%methods170513170520%_
               _%slots170514170522%_
               _%stx170524%_)
        (let* ((_%receiver170527%_
                (if (eq? _%receiver170512170518%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170512170518%_))
               (_%methods170529%_
                (if (eq? _%methods170513170520%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170513170520%_))
               (_%slots170531%_
                (if (eq? _%slots170514170522%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170514170522%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self170533%_
                  (let ((__obj171693
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
                       __obj171693
                       _%receiver170527%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171693
                       _%methods170529%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171693
                       _%slots170531%_
                       '3
                       '#f
                       '#f))
                    __obj171693))
                 (__tmp171703
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170533%_ _%stx170524%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171703
             gxc#current-compile-method
             _%self170533%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords170540%_ . _%args170541%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords170540%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170540%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170540%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170540%_
                  'slots:
                  absent-value))
               _%args170541%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args170515170547%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args170515170547%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp171705 (list gxc#::basic-xform-expression::t))
            (__tmp171704 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp171705
         '(receiver klass methods slots)
         __tmp171704
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args170508%_
        (apply make-instance gxc#::subst-object-refs::t _%$args170508%_)))
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
      (let ((__tmp171706
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
        (__make-promise __tmp171706)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords170470%_
               _%receiver170464170471%_
               _%klass170465170473%_
               _%methods170466170475%_
               _%slots170467170477%_
               _%stx170479%_)
        (let* ((_%receiver170482%_
                (if (eq? _%receiver170464170471%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver170464170471%_))
               (_%klass170484%_
                (if (eq? _%klass170465170473%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass170465170473%_))
               (_%methods170486%_
                (if (eq? _%methods170466170475%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods170466170475%_))
               (_%slots170488%_
                (if (eq? _%slots170467170477%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots170467170477%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self170490%_
                  (let ((__obj171695
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
                       __obj171695
                       _%receiver170482%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171695
                       _%klass170484%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171695
                       _%methods170486%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj171695
                       _%slots170488%_
                       '4
                       '#f
                       '#f))
                    __obj171695))
                 (__tmp171707
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self170490%_ _%stx170479%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp171707
             gxc#current-compile-method
             _%self170490%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords170497%_ . _%args170498%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords170497%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170497%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170497%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170497%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords170497%_
                  'slots:
                  absent-value))
               _%args170498%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args170468170504%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args170468170504%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self167645%_ _%stx167646%_)
        (letrec ((_%generate-method-bind167648%_
                  (lambda (_%$klass170456%_
                           _%$method-table170457%_
                           _%id170458%_
                           _%$id170459%_)
                    (let ((_%$tmp170461%_
                           (let ((__tmp171708
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171708))))
                      (cons (cons _%$id170459%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp170461%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table170457%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id170458%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp170461%_ '()))
                    (cons (cons '%#ref (cons _%$tmp170461%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id170458%_
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
                 (_%generate-slot-bind167649%_
                  (lambda (_%$klass170450%_ _%id170451%_ _%$id170452%_)
                    (let ((_%$tmp170454%_
                           (let ((__tmp171709
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp171709))))
                      (cons (cons _%$id170452%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp170454%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass170450%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id170451%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp170454%_ '()))
                        (cons (cons '%#ref (cons _%$tmp170454%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id170451%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl167650%_
                  (lambda (_%$klass170444%_
                           _%$method-table170445%_
                           _%methods-bind170446%_
                           _%slots-bind170447%_
                           _%specializer-impl170448%_)
                    (let ((__tmp171710
                           (cons '%#lambda
                                 (cons (cons _%$klass170444%_
                                             (cons _%$method-table170445%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind170447%_
                                                            _%methods-bind170446%_))
                                                         (cons _%specializer-impl170448%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171710 _%stx167646%_))))
                 (_%generate-specializer-def167651%_
                  (lambda (_%id170440%_
                           _%specializer-id170441%_
                           _%specializer-impl170442%_)
                    (let ((__tmp171711
                           (cons '%#begin
                                 (cons _%stx167646%_
                                       (cons (let ((__tmp171712
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id170441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl170442%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171712
                                                _%stx167646%_))
                                             (cons (let ((__tmp171713
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id170440%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id170441%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171713
                                                      _%stx167646%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp171711 _%stx167646%_)))))
          (let* ((_%__stx170651170652%_ _%stx167646%_)
                 (_%g167654167674%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx170651170652%_)))))
            (let ((_%__kont170653170654%_
                   (lambda (_%L167718%_ _%L167719%_)
                     (let ((_%method-calls167738%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs167739%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty167740%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?167742%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls167738%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs167739%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L167718%_))
                             (let* ((_%__stx170565170566%_ _%L167718%_)
                                    (_%g168130168148%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx170565170566%_)))))
                               (let ((_%__kont170567170568%_
                                      (lambda (_%L168184%_
                                               _%L168185%_
                                               _%L168186%_)
                                        (for-each
                                         (lambda (_%g168202168204%_)
                                           (gxc#apply-collect-object-refs__%
                                            '#f
                                            _%L168186%_
                                            _%method-calls167738%_
                                            _%slot-refs167739%_
                                            _%g168202168204%_))
                                         _%L168184%_)
                                        (if (_%no-specializer?167742%_)
                                            _%stx167646%_
                                            (let* ((_%specializer-id168213%_
                                                    (let* ((_%id168207%_
                                                            (let ((__tmp171714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%L167719%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp171714 '"::specialize")))
                   (_%specializer-id168210%_
                    (let ((__tmp171715
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _%stx167646%_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _%id168207%_ __tmp171715))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _%specializer-id168210%_))
              _%specializer-id168210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$klass168215%_
                                                    (let ((__tmp171716
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171716)))
                                                   (_%$method-table168217%_
                                                    (let ((__tmp171717
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp171717)))
                                                   (_%methods168219%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%method-calls167738%_)))
                                                   (_%$methods168223%_
                                                    (map (lambda (_%id168221%_)
                                                           (let ((__tmp171718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168221%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171718)))
                 _%methods168219%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168232%_
                                                    (for-each
                                                     (lambda (_%g168224168227%_
                                                              _%g168225168229%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%method-calls167738%_
                                                          _%g168224168227%_
                                                          _%g168225168229%_)))
                                                     _%methods168219%_
                                                     _%$methods168223%_))
                                                   (_%methods-bind168242%_
                                                    (map (lambda (_%g168234168237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168235168239%_)
                   (_%generate-method-bind167648%_
                    _%$klass168215%_
                    _%$method-table168217%_
                    _%g168234168237%_
                    _%g168235168239%_))
                 _%methods168219%_
                 _%$methods168223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%slots168244%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _%slot-refs167739%_)))
                                                   (_%$slots168248%_
                                                    (map (lambda (_%id168246%_)
                                                           (let ((__tmp171719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _%id168246%_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp171719)))
                 _%slots168244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%_168257%_
                                                    (for-each
                                                     (lambda (_%g168249168252%_
                                                              _%g168250168254%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%slot-refs167739%_
                                                          _%g168249168252%_
                                                          _%g168250168254%_)))
                                                     _%slots168244%_
                                                     _%$slots168248%_))
                                                   (_%slots-bind168266%_
                                                    (map (lambda (_%g168258168261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g168259168263%_)
                   (_%generate-slot-bind167649%_
                    _%$klass168215%_
                    _%g168258168261%_
                    _%g168259168263%_))
                 _%slots168244%_
                 _%$slots168248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-body168272%_
                                                    (map (lambda (_%g168267168269%_)
                                                           (gxc#apply-subst-object-refs__%
                                                            '#f
                                                            _%L168186%_
                                                            _%$klass168215%_
                                                            _%method-calls167738%_
                                                            _%slot-refs167739%_
                                                            _%g168267168269%_))
                                                         _%L168184%_))
                                                   (_%specializer-impl168274%_
                                                    (let ((__tmp171720
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _%L168186%_ _%L168185%_)
                               _%specializer-body168272%_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp171720 _%stx167646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%specializer-impl168276%_
                                                    (_%generate-specializer-impl167650%_
                                                     _%$klass168215%_
                                                     _%$method-table168217%_
                                                     _%methods-bind168242%_
                                                     _%slots-bind168266%_
                                                     _%specializer-impl168274%_)))
                                              (let ((__tmp171722
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L167719%_)))
                                                    (__tmp171721
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%specializer-id168213%_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp171722
                                                 '" => "
                                                 __tmp171721))
                                              (_%generate-specializer-def167651%_
                                               _%L167719%_
                                               _%specializer-id168213%_
                                               _%specializer-impl168276%_)))))
                                     (_%__kont170569170570%_
                                      (lambda () _%stx167646%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx170565170566%_))
                                     (let ((_%e168135168160%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx170565170566%_))))
                                       (let ((_%tl168137168165%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e168135168160%_)))
                                             (_%hd168136168163%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e168135168160%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl168137168165%_))
                                             (let ((_%e168138168168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl168137168165%_))))
                                               (let ((_%tl168140168173%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e168138168168%_)))
                                                     (_%hd168139168171%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e168138168168%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd168139168171%_))
                                                     (let ((_%e168141168176%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd168139168171%_))))
                                                       (let ((_%tl168143168181%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168141168176%_)))
                     (_%hd168142168179%_
                      (let () (declare (not safe)) (##car _%e168141168176%_))))
                 (_%__kont170567170568%_
                  _%tl168140168173%_
                  _%tl168143168181%_
                  _%hd168142168179%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont170569170570%_))))
                                             (_%__kont170569170570%_))))
                                     (_%__kont170569170570%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L167718%_))
                                 (let* ((_%g168283168302%_
                                         (lambda (_%g168284168299%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g168284168299%_))))
                                        (_%g168282168589%_
                                         (lambda (_%g168284168305%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g168284168305%_))
                                               (let ((_%e168286168307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g168284168305%_))))
                                                 (let ((_%hd168287168310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e168286168307%_)))
                                                       (_%tl168288168312%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e168286168307%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl168288168312%_))
                                                       (let ((_g171723_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl168288168312%_ '0))))
                 (begin
                   (let ((_g171724_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g171723_)
                                (##vector-length _g171723_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g171724_ 2)))
                         (error "Context expects 2 values" _g171724_)))
                   (let ((_%target168289168315%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171723_ 0)))
                         (_%tl168291168317%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g171723_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl168291168317%_))
                         (letrec ((_%loop168292168320%_
                                   (lambda (_%hd168290168323%_
                                            _%clause168296168325%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168290168323%_))
                                         (let ((_%e168293168328%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168290168323%_))))
                                           (let ((_%lp-hd168294168331%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168293168328%_)))
                                                 (_%lp-tl168295168333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168293168328%_))))
                                             (_%loop168292168320%_
                                              _%lp-tl168295168333%_
                                              (cons _%lp-hd168294168331%_
                                                    _%clause168296168325%_))))
                                         (let ((_%clause168297168336%_
                                                (reverse _%clause168296168325%_)))
                                           ((lambda (_%L168339%_)
                                              (for-each
                                               (lambda (_%clause168353%_)
                                                 (let* ((_%__stx170591170592%_
                                                         _%clause168353%_)
                                                        (_%g168356168371%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx170591170592%_)))))
                                                   (let ((_%__kont170593170594%_
                                                          (lambda (_%L168399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L168400%_
                           _%L168401%_)
                    (for-each
                     (lambda (_%g168416168418%_)
                       (gxc#apply-collect-object-refs__%
                        '#f
                        _%L168401%_
                        _%method-calls167738%_
                        _%slot-refs167739%_
                        _%g168416168418%_))
                     _%L168399%_)))
                 (_%__kont170595170596%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx170591170592%_))
                                                         (let ((_%e168361168383%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx170591170592%_))))
                   (let ((_%tl168363168388%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e168361168383%_)))
                         (_%hd168362168386%_
                          (let ()
                            (declare (not safe))
                            (##car _%e168361168383%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd168362168386%_))
                         (let ((_%e168364168391%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd168362168386%_))))
                           (let ((_%tl168366168396%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e168364168391%_)))
                                 (_%hd168365168394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e168364168391%_))))
                             (_%__kont170593170594%_
                              _%tl168363168388%_
                              _%tl168366168396%_
                              _%hd168365168394%_)))
                         (_%__kont170595170596%_))))
                 (_%__kont170595170596%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp171725
                                                      (lambda (_%g168423168426%_
                                                               _%g168424168428%_)
                                                        (cons _%g168423168426%_
                                                              _%g168424168428%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171725
                                                  '()
                                                  _%L168339%_)))
                                              (if (_%no-specializer?167742%_)
                                                  _%stx167646%_
                                                  (let* ((_%specializer-id168437%_
                                                          (let* ((_%id168431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171726
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167719%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171726 '"::specialize")))
                         (_%specializer-id168434%_
                          (let ((__tmp171727
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167646%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id168431%_
                             __tmp171727))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id168434%_))
                    _%specializer-id168434%_))
                 (_%$klass168439%_
                  (let ((__tmp171728
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171728)))
                 (_%$method-table168441%_
                  (let ((__tmp171729
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171729)))
                 (_%methods168443%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167738%_)))
                 (_%$methods168447%_
                  (map (lambda (_%id168445%_)
                         (let ((__tmp171730 (gensym _%id168445%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171730)))
                       _%methods168443%_))
                 (_%_168456%_
                  (for-each
                   (lambda (_%g168448168451%_ _%g168449168453%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167738%_
                        _%g168448168451%_
                        _%g168449168453%_)))
                   _%methods168443%_
                   _%$methods168447%_))
                 (_%methods-bind168466%_
                  (map (lambda (_%g168458168461%_ _%g168459168463%_)
                         (_%generate-method-bind167648%_
                          _%$klass168439%_
                          _%$method-table168441%_
                          _%g168458168461%_
                          _%g168459168463%_))
                       _%methods168443%_
                       _%$methods168447%_))
                 (_%slots168468%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167739%_)))
                 (_%$slots168472%_
                  (map (lambda (_%id168470%_)
                         (let ((__tmp171731 (gensym _%id168470%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171731)))
                       _%slots168468%_))
                 (_%_168481%_
                  (for-each
                   (lambda (_%g168473168476%_ _%g168474168478%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167739%_
                        _%g168473168476%_
                        _%g168474168478%_)))
                   _%slots168468%_
                   _%$slots168472%_))
                 (_%slots-bind168490%_
                  (map (lambda (_%g168482168485%_ _%g168483168487%_)
                         (_%generate-slot-bind167649%_
                          _%$klass168439%_
                          _%g168482168485%_
                          _%g168483168487%_))
                       _%slots168468%_
                       _%$slots168472%_))
                 (_%specializer-clauses168582%_
                  (map (lambda (_%clause168492%_)
                         (let* ((_%__stx170611170612%_ _%clause168492%_)
                                (_%g168495168510%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx170611170612%_)))))
                           (let ((_%__kont170613170614%_
                                  (lambda (_%L168538%_ _%L168539%_ _%L168540%_)
                                    (let ((_%body168570%_
                                           (map (lambda (_%g168565168567%_)
                                                  (gxc#apply-subst-object-refs__%
                                                   '#f
                                                   _%L168540%_
                                                   _%$klass168439%_
                                                   _%method-calls167738%_
                                                   _%slot-refs167739%_
                                                   _%g168565168567%_))
                                                _%L168538%_)))
                                      (cons (cons _%L168540%_ _%L168539%_)
                                            _%body168570%_))))
                                 (_%__kont170615170616%_
                                  (lambda () _%clause168492%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx170611170612%_))
                                 (let ((_%e168500168522%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx170611170612%_))))
                                   (let ((_%tl168502168527%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e168500168522%_)))
                                         (_%hd168501168525%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e168500168522%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd168501168525%_))
                                         (let ((_%e168503168530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd168501168525%_))))
                                           (let ((_%tl168505168535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168503168530%_)))
                                                 (_%hd168504168533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168503168530%_))))
                                             (_%__kont170613170614%_
                                              _%tl168502168527%_
                                              _%tl168505168535%_
                                              _%hd168504168533%_)))
                                         (_%__kont170615170616%_))))
                                 (_%__kont170615170616%_)))))
                       (let ((__tmp171732
                              (lambda (_%g168574168577%_ _%g168575168579%_)
                                (cons _%g168574168577%_ _%g168575168579%_))))
                         (declare (not safe))
                         (__foldr1 __tmp171732 '() _%L168339%_))))
                 (_%specializer-impl168584%_
                  (let ((__tmp171733
                         (cons '%#case-lambda _%specializer-clauses168582%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171733 _%stx167646%_)))
                 (_%specializer-impl168586%_
                  (_%generate-specializer-impl167650%_
                   _%$klass168439%_
                   _%$method-table168441%_
                   _%methods-bind168466%_
                   _%slots-bind168490%_
                   _%specializer-impl168584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171735
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167719%_)))
                                                          (__tmp171734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id168437%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171735
                                                       '" => "
                                                       __tmp171734))
                                                    (_%generate-specializer-def167651%_
                                                     _%L167719%_
                                                     _%specializer-id168437%_
                                                     _%specializer-impl168586%_))))
                                            _%clause168297168336%_))))))
                           (_%loop168292168320%_ _%target168289168315%_ '()))
                         (_%g168283168302%_ _%g168284168305%_)))))
               (_%g168283168302%_ _%g168284168305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g168283168302%_
                                                _%g168284168305%_)))))
                                   (_%g168282168589%_ _%L167718%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L167718%_))
                                     (let* ((_%g168593168623%_
                                             (lambda (_%g168594168620%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g168594168620%_))))
                                            (_%g168592169232%_
                                             (lambda (_%g168594168626%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g168594168626%_))
                                                   (let ((_%e168598168628%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g168594168626%_))))
                                                     (let ((_%hd168599168631%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e168598168628%_)))
                                                           (_%tl168600168633%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e168598168628%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl168600168633%_))
                                                           (let ((_%e168601168636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl168600168633%_))))
                     (let ((_%hd168602168639%_
                            (let ()
                              (declare (not safe))
                              (##car _%e168601168636%_)))
                           (_%tl168603168641%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e168601168636%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd168602168639%_))
                           (let ((_%e168604168644%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd168602168639%_))))
                             (let ((_%hd168605168647%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e168604168644%_)))
                                   (_%tl168606168649%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e168604168644%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd168605168647%_))
                                   (let ((_%e168607168652%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd168605168647%_))))
                                     (let ((_%hd168608168655%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e168607168652%_)))
                                           (_%tl168609168657%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e168607168652%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd168608168655%_))
                                           (let ((_%e168610168660%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd168608168655%_))))
                                             (let ((_%hd168611168663%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e168610168660%_)))
                                                   (_%tl168612168665%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e168610168660%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl168612168665%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl168609168657%_))
                                                       (let ((_%e168613168668%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl168609168657%_))))
                 (let ((_%hd168614168671%_
                        (let ()
                          (declare (not safe))
                          (##car _%e168613168668%_)))
                       (_%tl168615168673%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e168613168668%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl168615168673%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl168606168649%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl168603168641%_))
                               (let ((_%e168616168676%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl168603168641%_))))
                                 (let ((_%hd168617168679%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e168616168676%_)))
                                       (_%tl168618168681%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e168616168676%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl168618168681%_))
                                       ((lambda (_%L168684%_
                                                 _%L168685%_
                                                 _%L168686%_)
                                          (let* ((_%g168710168728%_
                                                  (lambda (_%g168711168725%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168711168725%_))))
                                                 (_%g168709168779%_
                                                  (lambda (_%g168711168731%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168711168731%_))
                                                        (let ((_%e168715168733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168711168731%_))))
                  (let ((_%hd168716168736%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168715168733%_)))
                        (_%tl168717168738%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168715168733%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl168717168738%_))
                        (let ((_%e168718168741%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168717168738%_))))
                          (let ((_%hd168719168744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168718168741%_)))
                                (_%tl168720168746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168718168741%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd168719168744%_))
                                (let ((_%e168721168749%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd168719168744%_))))
                                  (let ((_%hd168722168752%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168721168749%_)))
                                        (_%tl168723168754%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168721168749%_))))
                                    ((lambda (_%L168757%_
                                              _%L168758%_
                                              _%L168759%_)
                                       (for-each
                                        (lambda (_%g168774168776%_)
                                          (gxc#apply-collect-object-refs__%
                                           '#f
                                           _%L168759%_
                                           _%method-calls167738%_
                                           _%slot-refs167739%_
                                           _%g168774168776%_))
                                        _%L168757%_))
                                     _%tl168720168746%_
                                     _%tl168723168754%_
                                     _%hd168722168752%_)))
                                (_%g168710168728%_ _%g168711168731%_))))
                        (_%g168710168728%_ _%g168711168731%_))))
                (_%g168710168728%_ _%g168711168731%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168709168779%_ _%L168685%_))
                                          (let* ((_%g168782168801%_
                                                  (lambda (_%g168783168798%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g168783168798%_))))
                                                 (_%g168781168920%_
                                                  (lambda (_%g168783168804%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g168783168804%_))
                                                        (let ((_%e168785168806%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g168783168804%_))))
                  (let ((_%hd168786168809%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168785168806%_)))
                        (_%tl168787168811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168785168806%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl168787168811%_))
                        (let ((_g171736_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl168787168811%_
                                  '0))))
                          (begin
                            (let ((_g171737_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g171736_)
                                         (##vector-length _g171736_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g171737_ 2)))
                                  (error "Context expects 2 values"
                                         _g171737_)))
                            (let ((_%target168788168814%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171736_ 0)))
                                  (_%tl168790168816%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g171736_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168790168816%_))
                                  (letrec ((_%loop168791168819%_
                                            (lambda (_%hd168789168822%_
                                                     _%clause168795168824%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168789168822%_))
                                                  (let ((_%e168792168827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168789168822%_))))
                                                    (let ((_%lp-hd168793168830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168792168827%_)))
                                                          (_%lp-tl168794168832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168792168827%_))))
                                                      (_%loop168791168819%_
                                                       _%lp-tl168794168832%_
                                                       (cons _%lp-hd168793168830%_
                                                             _%clause168795168824%_))))
                                                  (let ((_%clause168796168835%_
                                                         (reverse _%clause168795168824%_)))
                                                    ((lambda (_%L168838%_)
                                                       (for-each
                                                        (lambda (_%clause168851%_)
                                                          (let* ((_%g168853168868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g168854168865%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g168854168865%_))))
                         (_%g168852168910%_
                          (lambda (_%g168854168871%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g168854168871%_))
                                (let ((_%e168858168873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g168854168871%_))))
                                  (let ((_%hd168859168876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168858168873%_)))
                                        (_%tl168860168878%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168858168873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd168859168876%_))
                                        (let ((_%e168861168881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd168859168876%_))))
                                          (let ((_%hd168862168884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168861168881%_)))
                                                (_%tl168863168886%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168861168881%_))))
                                            ((lambda (_%L168889%_
                                                      _%L168890%_
                                                      _%L168891%_)
                                               (for-each
                                                (lambda (_%g168905168907%_)
                                                  (gxc#apply-collect-object-refs__%
                                                   '#f
                                                   _%L168891%_
                                                   _%method-calls167738%_
                                                   _%slot-refs167739%_
                                                   _%g168905168907%_))
                                                _%L168889%_))
                                             _%tl168860168878%_
                                             _%tl168863168886%_
                                             _%hd168862168884%_)))
                                        (_%g168853168868%_
                                         _%g168854168871%_))))
                                (_%g168853168868%_ _%g168854168871%_)))))
                    (_%g168852168910%_ _%clause168851%_)))
                (let ((__tmp171738
                       (lambda (_%g168912168915%_ _%g168913168917%_)
                         (cons _%g168912168915%_ _%g168913168917%_))))
                  (declare (not safe))
                  (__foldr1 __tmp171738 '() _%L168838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause168796168835%_))))))
                                    (_%loop168791168819%_
                                     _%target168788168814%_
                                     '()))
                                  (_%g168782168801%_ _%g168783168804%_)))))
                        (_%g168782168801%_ _%g168783168804%_))))
                (_%g168782168801%_ _%g168783168804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g168781168920%_ _%L168684%_))
                                          (if (_%no-specializer?167742%_)
                                              _%stx167646%_
                                              (let* ((_%specializer-id168929%_
                                                      (let* ((_%id168923%_
                                                              (let ((__tmp171739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L167719%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp171739 '"::specialize")))
                     (_%specializer-id168926%_
                      (let ((__tmp171740
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx167646%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id168923%_ __tmp171740))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id168926%_))
                _%specializer-id168926%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass168931%_
                                                      (let ((__tmp171741
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp171741)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table168933%_
                                                      (let ((__tmp171742
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp171742)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods168935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls167738%_)))
                                                     (_%$methods168939%_
                                                      (map (lambda (_%id168937%_)
                                                             (let ((__tmp171743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168937%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171743)))
                   _%methods168935%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168948%_
                                                      (for-each
                                                       (lambda (_%g168940168943%_
                                                                _%g168941168945%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls167738%_
                                                            _%g168940168943%_
                                                            _%g168941168945%_)))
                                                       _%methods168935%_
                                                       _%$methods168939%_))
                                                     (_%methods-bind168958%_
                                                      (map (lambda (_%g168950168953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168951168955%_)
                     (_%generate-method-bind167648%_
                      _%$klass168931%_
                      _%$method-table168933%_
                      _%g168950168953%_
                      _%g168951168955%_))
                   _%methods168935%_
                   _%$methods168939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots168960%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs167739%_)))
                                                     (_%$slots168964%_
                                                      (map (lambda (_%id168962%_)
                                                             (let ((__tmp171744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id168962%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp171744)))
                   _%slots168960%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_168973%_
                                                      (for-each
                                                       (lambda (_%g168965168968%_
                                                                _%g168966168970%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs167739%_
                                                            _%g168965168968%_
                                                            _%g168966168970%_)))
                                                       _%slots168960%_
                                                       _%$slots168964%_))
                                                     (_%slots-bind168982%_
                                                      (map (lambda (_%g168974168977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g168975168979%_)
                     (_%generate-slot-bind167649%_
                      _%$klass168931%_
                      _%g168974168977%_
                      _%g168975168979%_))
                   _%slots168960%_
                   _%$slots168964%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr169068%_
                                                      (let* ((_%g168984169002%_
                                                              (lambda (_%g168985168999%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g168985168999%_))))
                     (_%g168983169065%_
                      (lambda (_%g168985169005%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g168985169005%_))
                            (let ((_%e168989169007%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g168985169005%_))))
                              (let ((_%hd168990169010%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168989169007%_)))
                                    (_%tl168991169012%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168989169007%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168991169012%_))
                                    (let ((_%e168992169015%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168991169012%_))))
                                      (let ((_%hd168993169018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168992169015%_)))
                                            (_%tl168994169020%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168992169015%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168993169018%_))
                                            (let ((_%e168995169023%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168993169018%_))))
                                              (let ((_%hd168996169026%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168995169023%_)))
                                                    (_%tl168997169028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168995169023%_))))
                                                ((lambda (_%L169031%_
                                                          _%L169032%_
                                                          _%L169033%_)
                                                   (let* ((_%body169063%_
                                                           (map (lambda (_%g169058169060%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%L169033%_
                           _%$klass168931%_
                           _%method-calls167738%_
                           _%slot-refs167739%_
                           _%g169058169060%_))
                        _%L169031%_))
                  (__tmp171745
                   (cons '%#lambda
                         (cons (cons _%L169033%_ _%L169032%_)
                               _%body169063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp171745
                                                      _%L168685%_)))
                                                 _%tl168994169020%_
                                                 _%tl168997169028%_
                                                 _%hd168996169026%_)))
                                            (_%g168984169002%_
                                             _%g168985169005%_))))
                                    (_%g168984169002%_ _%g168985169005%_))))
                            (_%g168984169002%_ _%g168985169005%_)))))
                (_%g168983169065%_ _%L168685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr169225%_
                                                      (let* ((_%g169070169089%_
                                                              (lambda (_%g169071169086%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169071169086%_))))
                     (_%g169069169222%_
                      (lambda (_%g169071169092%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169071169092%_))
                            (let ((_%e169073169094%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169071169092%_))))
                              (let ((_%hd169074169097%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169073169094%_)))
                                    (_%tl169075169099%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169073169094%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169075169099%_))
                                    (let ((_g171746_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl169075169099%_
                                              '0))))
                                      (begin
                                        (let ((_g171747_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g171746_)
                                                     (##vector-length
                                                      _g171746_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g171747_ 2)))
                                              (error "Context expects 2 values"
                                                     _g171747_)))
                                        (let ((_%target169076169102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171746_ 0)))
                                              (_%tl169078169104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g171746_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169078169104%_))
                                              (letrec ((_%loop169079169107%_
                                                        (lambda (_%hd169077169110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause169083169112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169077169110%_))
                      (let ((_%e169080169115%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169077169110%_))))
                        (let ((_%lp-hd169081169118%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169080169115%_)))
                              (_%lp-tl169082169120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169080169115%_))))
                          (_%loop169079169107%_
                           _%lp-tl169082169120%_
                           (cons _%lp-hd169081169118%_
                                 _%clause169083169112%_))))
                      (let ((_%clause169084169123%_
                             (reverse _%clause169083169112%_)))
                        ((lambda (_%L169126%_)
                           (let* ((_%clauses169220%_
                                   (map (lambda (_%clause169140%_)
                                          (let* ((_%__stx170631170632%_
                                                  _%clause169140%_)
                                                 (_%g169143169158%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx170631170632%_)))))
                                            (let ((_%__kont170633170634%_
                                                   (lambda (_%L169186%_
                                                            _%L169187%_
                                                            _%L169188%_)
                                                     (let ((_%body169208%_
                                                            (map (lambda (_%g169203169205%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%L169188%_
                            _%$klass168931%_
                            _%method-calls167738%_
                            _%slot-refs167739%_
                            _%g169203169205%_))
                         _%L169186%_)))
               (cons (cons _%L169188%_ _%L169187%_) _%body169208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170635170636%_
                                                   (lambda ()
                                                     _%clause169140%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx170631170632%_))
                                                  (let ((_%e169148169170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx170631170632%_))))
                                                    (let ((_%tl169150169175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169148169170%_)))
                                                          (_%hd169149169173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169148169170%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd169149169173%_))
                                                          (let ((_%e169151169178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd169149169173%_))))
                    (let ((_%tl169153169183%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169151169178%_)))
                          (_%hd169152169181%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169151169178%_))))
                      (_%__kont170633170634%_
                       _%tl169150169175%_
                       _%tl169153169183%_
                       _%hd169152169181%_)))
                  (_%__kont170635170636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170635170636%_)))))
                                        (let ((__tmp171748
                                               (lambda (_%g169212169215%_
                                                        _%g169213169217%_)
                                                 (cons _%g169212169215%_
                                                       _%g169213169217%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp171748
                                           '()
                                           _%L169126%_))))
                                  (__tmp171749
                                   (cons '%#case-lambda _%clauses169220%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171749 _%L168684%_)))
                         _%clause169084169123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169079169107%_
                                                 _%target169076169102%_
                                                 '()))
                                              (_%g169070169089%_
                                               _%g169071169092%_)))))
                                    (_%g169070169089%_ _%g169071169092%_))))
                            (_%g169070169089%_ _%g169071169092%_)))))
                (_%g169069169222%_ _%L168684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169227%_
                                                      (let ((__tmp171750
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L168686%_ '())
                                             (cons _%specializer-lambda-expr169068%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr169225%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp171750 _%stx167646%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl169229%_
                                                      (_%generate-specializer-impl167650%_
                                                       _%$klass168931%_
                                                       _%$method-table168933%_
                                                       _%methods-bind168958%_
                                                       _%slots-bind168982%_
                                                       _%specializer-impl169227%_)))
                                                (let ((__tmp171752
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167719%_)))
                                                      (__tmp171751
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id168929%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp171752
                                                   '" => "
                                                   __tmp171751))
                                                (_%generate-specializer-def167651%_
                                                 _%L167719%_
                                                 _%specializer-id168929%_
                                                 _%specializer-impl169229%_))))
                                        _%hd168617168679%_
                                        _%hd168614168671%_
                                        _%hd168611168663%_)
                                       (_%g168593168623%_ _%g168594168626%_))))
                               (_%g168593168623%_ _%g168594168626%_))
                           (_%g168593168623%_ _%g168594168626%_))
                       (_%g168593168623%_ _%g168594168626%_))))
               (_%g168593168623%_ _%g168594168626%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168593168623%_
                                                    _%g168594168626%_))))
                                           (_%g168593168623%_
                                            _%g168594168626%_))))
                                   (_%g168593168623%_ _%g168594168626%_))))
                           (_%g168593168623%_ _%g168594168626%_))))
                   (_%g168593168623%_ _%g168594168626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g168593168623%_
                                                    _%g168594168626%_)))))
                                       (_%g168592169232%_ _%L167718%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L167718%_))
                                         (let* ((_%g169236169289%_
                                                 (lambda (_%g169237169286%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169237169286%_))))
                                                (_%g169235170432%_
                                                 (lambda (_%g169237169292%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169237169292%_))
                                                       (let ((_%e169243169294%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169237169292%_))))
                 (let ((_%hd169244169297%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169243169294%_)))
                       (_%tl169245169299%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169243169294%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd169244169297%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd169244169297%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl169245169299%_))
                               (let ((_%e169246169302%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl169245169299%_))))
                                 (let ((_%hd169247169305%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169246169302%_)))
                                       (_%tl169248169307%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169246169302%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169247169305%_))
                                       (let ((_%e169249169310%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169247169305%_))))
                                         (let ((_%hd169250169313%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169249169310%_)))
                                               (_%tl169251169315%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169249169310%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169250169313%_))
                                               (let ((_%e169252169318%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169250169313%_))))
                                                 (let ((_%hd169253169321%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169252169318%_)))
                                                       (_%tl169254169323%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169252169318%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd169253169321%_))
                                                       (let ((_%e169255169326%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd169253169321%_))))
                 (let ((_%hd169256169329%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169255169326%_)))
                       (_%tl169257169331%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169255169326%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl169257169331%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl169254169323%_))
                           (let ((_%e169258169334%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl169254169323%_))))
                             (let ((_%hd169259169337%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169258169334%_)))
                                   (_%tl169260169339%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169258169334%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169259169337%_))
                                   (let ((_%e169261169342%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169259169337%_))))
                                     (let ((_%hd169262169345%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169261169342%_)))
                                           (_%tl169263169347%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169261169342%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd169262169345%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd169262169345%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl169263169347%_))
                                                   (let ((_%e169264169350%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl169263169347%_))))
                                                     (let ((_%hd169265169353%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169264169350%_)))
                                                           (_%tl169266169355%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169264169350%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd169265169353%_))
                                                           (let ((_%e169267169358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd169265169353%_))))
                     (let ((_%hd169268169361%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169267169358%_)))
                           (_%tl169269169363%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169267169358%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd169268169361%_))
                           (let ((_%e169270169366%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd169268169361%_))))
                             (let ((_%hd169271169369%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e169270169366%_)))
                                   (_%tl169272169371%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e169270169366%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd169271169369%_))
                                   (let ((_%e169273169374%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd169271169369%_))))
                                     (let ((_%hd169274169377%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169273169374%_)))
                                           (_%tl169275169379%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169273169374%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169275169379%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl169272169371%_))
                                               (let ((_%e169276169382%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl169272169371%_))))
                                                 (let ((_%hd169277169385%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169276169382%_)))
                                                       (_%tl169278169387%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169276169382%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169278169387%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl169269169363%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl169266169355%_))
                       (let ((_%e169279169390%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169266169355%_))))
                         (let ((_%hd169280169393%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169279169390%_)))
                               (_%tl169281169395%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169279169390%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169281169395%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl169260169339%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl169251169315%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl169248169307%_))
                                           (let ((_%e169282169398%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl169248169307%_))))
                                             (let ((_%hd169283169401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e169282169398%_)))
                                                   (_%tl169284169403%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e169282169398%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl169284169403%_))
                                                   ((lambda (_%L169406%_
                                                             _%L169407%_
                                                             _%L169408%_
                                                             _%L169409%_
                                                             _%L169410%_)
                                                      (let* ((_%g169450169512%_
                                                              (lambda (_%g169451169509%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g169451169509%_))))
                     (_%g169449170429%_
                      (lambda (_%g169451169515%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g169451169515%_))
                            (let ((_%e169457169517%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g169451169515%_))))
                              (let ((_%hd169458169520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169457169517%_)))
                                    (_%tl169459169522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169457169517%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169458169520%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd169458169520%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169459169522%_))
                                            (let ((_%e169460169525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169459169522%_))))
                                              (let ((_%hd169461169528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169460169525%_)))
                                                    (_%tl169462169530%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169460169525%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169462169530%_))
                                                    (let ((_%e169463169533%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169462169530%_))))
                                                      (let ((_%hd169464169536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169463169533%_)))
                    (_%tl169465169538%_
                     (let () (declare (not safe)) (##cdr _%e169463169533%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd169464169536%_))
                    (let ((_%e169466169541%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169464169536%_))))
                      (let ((_%hd169467169544%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169466169541%_)))
                            (_%tl169468169546%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169466169541%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd169467169544%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd169467169544%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169468169546%_))
                                    (let ((_%e169469169549%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169468169546%_))))
                                      (let ((_%hd169470169552%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169469169549%_)))
                                            (_%tl169471169554%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169469169549%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169470169552%_))
                                            (let ((_%e169472169557%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169470169552%_))))
                                              (let ((_%hd169473169560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169472169557%_)))
                                                    (_%tl169474169562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169472169557%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169473169560%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169473169560%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169474169562%_))
                                                            (let ((_%e169475169565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169474169562%_))))
                      (let ((_%hd169476169568%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169475169565%_)))
                            (_%tl169477169570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169475169565%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169477169570%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl169471169554%_))
                                (let ((_%e169478169573%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl169471169554%_))))
                                  (let ((_%hd169479169576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169478169573%_)))
                                        (_%tl169480169578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169478169573%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd169479169576%_))
                                        (let ((_%e169481169581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd169479169576%_))))
                                          (let ((_%hd169482169584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169481169581%_)))
                                                (_%tl169483169586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169481169581%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd169482169584%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd169482169584%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169483169586%_))
                                                        (let ((_%e169484169589%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169483169586%_))))
                  (let ((_%hd169485169592%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169484169589%_)))
                        (_%tl169486169594%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169484169589%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl169486169594%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169480169578%_))
                            (let ((_%e169487169597%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169480169578%_))))
                              (let ((_%hd169488169600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169487169597%_)))
                                    (_%tl169489169602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169487169597%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169488169600%_))
                                    (let ((_%e169490169605%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169488169600%_))))
                                      (let ((_%hd169491169608%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169490169605%_)))
                                            (_%tl169492169610%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169490169605%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd169491169608%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd169491169608%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169492169610%_))
                                                    (let ((_%e169493169613%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169492169610%_))))
                                                      (let ((_%hd169494169616%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e169493169613%_)))
                    (_%tl169495169618%_
                     (let () (declare (not safe)) (##cdr _%e169493169613%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169495169618%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl169489169602%_))
                        (if (let ((__tmp171753
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl169489169602%_))))
                              (declare (not safe))
                              (##fx>= __tmp171753 '1))
                            (let ((_g171754_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl169489169602%_
                                      '1))))
                              (begin
                                (let ((_g171755_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171754_)
                                             (##vector-length _g171754_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171755_ 2)))
                                      (error "Context expects 2 values"
                                             _g171755_)))
                                (let ((_%target169496169621%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171754_ 0)))
                                      (_%tl169498169623%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171754_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169498169623%_))
                                      (let ((_%e169505169626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169498169623%_))))
                                        (let ((_%hd169506169629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169505169626%_)))
                                              (_%tl169507169631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169505169626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169507169631%_))
                                              (letrec ((_%loop169499169634%_
                                                        (lambda (_%hd169497169637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref169503169639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd169497169637%_))
                      (let ((_%e169500169642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd169497169637%_))))
                        (let ((_%lp-hd169501169645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169500169642%_)))
                              (_%lp-tl169502169647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169500169642%_))))
                          (_%loop169499169634%_
                           _%lp-tl169502169647%_
                           (cons _%lp-hd169501169645%_
                                 _%kw-ref169503169639%_))))
                      (let ((_%kw-ref169504169650%_
                             (reverse _%kw-ref169503169639%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169465169538%_))
                            ((lambda (_%L169653%_
                                      _%L169654%_
                                      _%L169655%_
                                      _%L169656%_
                                      _%L169657%_)
                               (let* ((_%kw-count169708%_
                                       (length (let ((__tmp171756
                                                      (lambda (_%g169700169703%_
                                                               _%g169701169705%_)
                                                        (cons _%g169700169703%_
                                                              _%g169701169705%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp171756
                                                  '()
                                                  _%L169654%_))))
                                      (_%self-index169710%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count169708%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L169408%_))
                                     (let* ((_%g169714169728%_
                                             (lambda (_%g169715169725%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g169715169725%_))))
                                            (_%g169713169845%_
                                             (lambda (_%g169715169731%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g169715169731%_))
                                                   (let ((_%e169718169733%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g169715169731%_))))
                                                     (let ((_%hd169719169736%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e169718169733%_)))
                                                           (_%tl169720169738%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e169718169733%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169720169738%_))
                                                           (let ((_%e169721169741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169720169738%_))))
                     (let ((_%hd169722169744%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169721169741%_)))
                           (_%tl169723169746%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169721169741%_))))
                       ((lambda (_%L169749%_ _%L169750%_)
                          (let ((_%self169767%_
                                 (list-ref _%L169750%_ _%self-index169710%_)))
                            (for-each
                             (lambda (_%g169768169770%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%self169767%_
                                _%method-calls167738%_
                                _%slot-refs167739%_
                                _%g169768169770%_))
                             _%L169749%_)
                            (if (_%no-specializer?167742%_)
                                _%stx167646%_
                                (let* ((_%specializer-id169779%_
                                        (let* ((_%id169773%_
                                                (let ((__tmp171757
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L167719%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp171757
                                                   '"::specialize")))
                                               (_%specializer-id169776%_
                                                (let ((__tmp171758
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx167646%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id169773%_
                                                   __tmp171758))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id169776%_))
                                          _%specializer-id169776%_))
                                       (_%$klass169781%_
                                        (let ((__tmp171759
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171759)))
                                       (_%$method-table169783%_
                                        (let ((__tmp171760
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp171760)))
                                       (_%methods169785%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls167738%_)))
                                       (_%$methods169789%_
                                        (map (lambda (_%id169787%_)
                                               (let ((__tmp171761
                                                      (gensym _%id169787%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171761)))
                                             _%methods169785%_))
                                       (_%_169798%_
                                        (for-each
                                         (lambda (_%g169790169793%_
                                                  _%g169791169795%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls167738%_
                                              _%g169790169793%_
                                              _%g169791169795%_)))
                                         _%methods169785%_
                                         _%$methods169789%_))
                                       (_%methods-bind169808%_
                                        (map (lambda (_%g169800169803%_
                                                      _%g169801169805%_)
                                               (_%generate-method-bind167648%_
                                                _%$klass169781%_
                                                _%$method-table169783%_
                                                _%g169800169803%_
                                                _%g169801169805%_))
                                             _%methods169785%_
                                             _%$methods169789%_))
                                       (_%slots169810%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs167739%_)))
                                       (_%$slots169814%_
                                        (map (lambda (_%id169812%_)
                                               (let ((__tmp171762
                                                      (gensym _%id169812%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp171762)))
                                             _%slots169810%_))
                                       (_%_169823%_
                                        (for-each
                                         (lambda (_%g169815169818%_
                                                  _%g169816169820%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs167739%_
                                              _%g169815169818%_
                                              _%g169816169820%_)))
                                         _%slots169810%_
                                         _%$slots169814%_))
                                       (_%slots-bind169832%_
                                        (map (lambda (_%g169824169827%_
                                                      _%g169825169829%_)
                                               (_%generate-slot-bind167649%_
                                                _%$klass169781%_
                                                _%g169824169827%_
                                                _%g169825169829%_))
                                             _%slots169810%_
                                             _%$slots169814%_))
                                       (_%specializer-impl169840%_
                                        (let* ((_%specializer-body169838%_
                                                (map (lambda (_%g169833169835%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%self169767%_
                                                        _%$klass169781%_
                                                        _%method-calls167738%_
                                                        _%slot-refs167739%_
                                                        _%g169833169835%_))
                                                     _%L169749%_))
                                               (__tmp171763
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L169410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L169409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp171764
                                   (cons '%#lambda
                                         (cons _%L169750%_
                                               _%specializer-body169838%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp171764 _%L169408%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L169407%_ '())))
                                      '()))
                          '())
                    (cons _%L169406%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp171763
                                           _%stx167646%_)))
                                       (_%specializer-impl169842%_
                                        (_%generate-specializer-impl167650%_
                                         _%$klass169781%_
                                         _%$method-table169783%_
                                         _%methods-bind169808%_
                                         _%slots-bind169832%_
                                         _%specializer-impl169840%_)))
                                  (let ((__tmp171766
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L167719%_)))
                                        (__tmp171765
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id169779%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp171766
                                     '" => "
                                     __tmp171765))
                                  (_%generate-specializer-def167651%_
                                   _%L167719%_
                                   _%specializer-id169779%_
                                   _%specializer-impl169842%_)))))
                        _%tl169723169746%_
                        _%hd169722169744%_)))
                   (_%g169714169728%_ _%g169715169731%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169714169728%_
                                                    _%g169715169731%_)))))
                                       (_%g169713169845%_ _%L169408%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L169408%_))
                                         (let* ((_%g169849169879%_
                                                 (lambda (_%g169850169876%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g169850169876%_))))
                                                (_%g169848170425%_
                                                 (lambda (_%g169850169882%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g169850169882%_))
                                                       (let ((_%e169854169884%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g169850169882%_))))
                 (let ((_%hd169855169887%_
                        (let ()
                          (declare (not safe))
                          (##car _%e169854169884%_)))
                       (_%tl169856169889%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e169854169884%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl169856169889%_))
                       (let ((_%e169857169892%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl169856169889%_))))
                         (let ((_%hd169858169895%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e169857169892%_)))
                               (_%tl169859169897%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e169857169892%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd169858169895%_))
                               (let ((_%e169860169900%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd169858169895%_))))
                                 (let ((_%hd169861169903%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e169860169900%_)))
                                       (_%tl169862169905%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e169860169900%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd169861169903%_))
                                       (let ((_%e169863169908%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd169861169903%_))))
                                         (let ((_%hd169864169911%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e169863169908%_)))
                                               (_%tl169865169913%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e169863169908%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd169864169911%_))
                                               (let ((_%e169866169916%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd169864169911%_))))
                                                 (let ((_%hd169867169919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e169866169916%_)))
                                                       (_%tl169868169921%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e169866169916%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl169868169921%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl169865169913%_))
                                                           (let ((_%e169869169924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl169865169913%_))))
                     (let ((_%hd169870169927%_
                            (let ()
                              (declare (not safe))
                              (##car _%e169869169924%_)))
                           (_%tl169871169929%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e169869169924%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl169871169929%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl169862169905%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl169859169897%_))
                                   (let ((_%e169872169932%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl169859169897%_))))
                                     (let ((_%hd169873169935%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e169872169932%_)))
                                           (_%tl169874169937%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e169872169932%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl169874169937%_))
                                           ((lambda (_%L169940%_
                                                     _%L169941%_
                                                     _%L169942%_)
                                              (let* ((_%g169966169980%_
                                                      (lambda (_%g169967169977%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g169967169977%_))))
                                                     (_%g169965170021%_
                                                      (lambda (_%g169967169983%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g169967169983%_))
                                                            (let ((_%e169970169985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g169967169983%_))))
                      (let ((_%hd169971169988%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169970169985%_)))
                            (_%tl169972169990%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169970169985%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169972169990%_))
                            (let ((_%e169973169993%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169972169990%_))))
                              (let ((_%hd169974169996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169973169993%_)))
                                    (_%tl169975169998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169973169993%_))))
                                ((lambda (_%L170001%_ _%L170002%_)
                                   (let ((_%self170015%_
                                          (list-ref
                                           _%L170002%_
                                           _%self-index169710%_)))
                                     (for-each
                                      (lambda (_%g170016170018%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%self170015%_
                                         _%method-calls167738%_
                                         _%slot-refs167739%_
                                         _%g170016170018%_))
                                      _%L170001%_)))
                                 _%tl169975169998%_
                                 _%hd169974169996%_)))
                            (_%g169966169980%_ _%g169967169983%_))))
                    (_%g169966169980%_ _%g169967169983%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g169965170021%_
                                                 _%L169941%_))
                                              (let* ((_%g170024170043%_
                                                      (lambda (_%g170025170040%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170025170040%_))))
                                                     (_%g170023170148%_
                                                      (lambda (_%g170025170046%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170025170046%_))
                                                            (let ((_%e170027170048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170025170046%_))))
                      (let ((_%hd170028170051%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170027170048%_)))
                            (_%tl170029170053%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170027170048%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl170029170053%_))
                            (let ((_g171767_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl170029170053%_
                                      '0))))
                              (begin
                                (let ((_g171768_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g171767_)
                                             (##vector-length _g171767_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g171768_ 2)))
                                      (error "Context expects 2 values"
                                             _g171768_)))
                                (let ((_%target170030170056%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171767_ 0)))
                                      (_%tl170032170058%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g171767_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl170032170058%_))
                                      (letrec ((_%loop170033170061%_
                                                (lambda (_%hd170031170064%_
                                                         _%clause170037170066%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd170031170064%_))
                                                      (let ((_%e170034170069%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd170031170064%_))))
                (let ((_%lp-hd170035170072%_
                       (let () (declare (not safe)) (##car _%e170034170069%_)))
                      (_%lp-tl170036170074%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e170034170069%_))))
                  (_%loop170033170061%_
                   _%lp-tl170036170074%_
                   (cons _%lp-hd170035170072%_ _%clause170037170066%_))))
              (let ((_%clause170038170077%_ (reverse _%clause170037170066%_)))
                ((lambda (_%L170080%_)
                   (for-each
                    (lambda (_%clause170093%_)
                      (let* ((_%g170095170106%_
                              (lambda (_%g170096170103%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g170096170103%_))))
                             (_%g170094170138%_
                              (lambda (_%g170096170109%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g170096170109%_))
                                    (let ((_%e170099170111%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g170096170109%_))))
                                      (let ((_%hd170100170114%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170099170111%_)))
                                            (_%tl170101170116%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170099170111%_))))
                                        ((lambda (_%L170119%_ _%L170120%_)
                                           (let ((_%self170132%_
                                                  (list-ref
                                                   _%L170120%_
                                                   _%self-index169710%_)))
                                             (for-each
                                              (lambda (_%g170133170135%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%self170132%_
                                                 _%method-calls167738%_
                                                 _%slot-refs167739%_
                                                 _%g170133170135%_))
                                              _%L170119%_)))
                                         _%tl170101170116%_
                                         _%hd170100170114%_)))
                                    (_%g170095170106%_ _%g170096170109%_)))))
                        (_%g170094170138%_ _%clause170093%_)))
                    (let ((__tmp171769
                           (lambda (_%g170140170143%_ _%g170141170145%_)
                             (cons _%g170140170143%_ _%g170141170145%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171769 '() _%L170080%_))))
                 _%clause170038170077%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop170033170061%_
                                         _%target170030170056%_
                                         '()))
                                      (_%g170024170043%_ _%g170025170046%_)))))
                            (_%g170024170043%_ _%g170025170046%_))))
                    (_%g170024170043%_ _%g170025170046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170023170148%_
                                                 _%L169940%_))
                                              (if (_%no-specializer?167742%_)
                                                  _%stx167646%_
                                                  (let* ((_%specializer-id170157%_
                                                          (let* ((_%id170151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp171770
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L167719%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp171770 '"::specialize")))
                         (_%specializer-id170154%_
                          (let ((__tmp171771
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx167646%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170151%_
                             __tmp171771))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170154%_))
                    _%specializer-id170154%_))
                 (_%$klass170159%_
                  (let ((__tmp171772
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171772)))
                 (_%$method-table170161%_
                  (let ((__tmp171773
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp171773)))
                 (_%methods170163%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls167738%_)))
                 (_%$methods170167%_
                  (map (lambda (_%id170165%_)
                         (let ((__tmp171774 (gensym _%id170165%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171774)))
                       _%methods170163%_))
                 (_%_170176%_
                  (for-each
                   (lambda (_%g170168170171%_ _%g170169170173%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls167738%_
                        _%g170168170171%_
                        _%g170169170173%_)))
                   _%methods170163%_
                   _%$methods170167%_))
                 (_%methods-bind170186%_
                  (map (lambda (_%g170178170181%_ _%g170179170183%_)
                         (_%generate-method-bind167648%_
                          _%$klass170159%_
                          _%$method-table170161%_
                          _%g170178170181%_
                          _%g170179170183%_))
                       _%methods170163%_
                       _%$methods170167%_))
                 (_%slots170188%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs167739%_)))
                 (_%$slots170192%_
                  (map (lambda (_%id170190%_)
                         (let ((__tmp171775 (gensym _%id170190%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp171775)))
                       _%slots170188%_))
                 (_%_170201%_
                  (for-each
                   (lambda (_%g170193170196%_ _%g170194170198%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs167739%_
                        _%g170193170196%_
                        _%g170194170198%_)))
                   _%slots170188%_
                   _%$slots170192%_))
                 (_%slots-bind170210%_
                  (map (lambda (_%g170202170205%_ _%g170203170207%_)
                         (_%generate-slot-bind167649%_
                          _%$klass170159%_
                          _%g170202170205%_
                          _%g170203170207%_))
                       _%slots170188%_
                       _%$slots170192%_))
                 (_%specializer-lambda-expr170283%_
                  (let* ((_%g170212170226%_
                          (lambda (_%g170213170223%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170213170223%_))))
                         (_%g170211170280%_
                          (lambda (_%g170213170229%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170213170229%_))
                                (let ((_%e170216170231%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170213170229%_))))
                                  (let ((_%hd170217170234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170216170231%_)))
                                        (_%tl170218170236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170216170231%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl170218170236%_))
                                        (let ((_%e170219170239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl170218170236%_))))
                                          (let ((_%hd170220170242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170219170239%_)))
                                                (_%tl170221170244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170219170239%_))))
                                            ((lambda (_%L170247%_ _%L170248%_)
                                               (let* ((_%self170271%_
                                                       (list-ref
                                                        _%L170248%_
                                                        _%self-index169710%_))
                                                      (_%body170277%_
                                                       (map (lambda (_%g170272170274%_)
                                                              (gxc#apply-subst-object-refs__%
                                                               '#f
                                                               _%self170271%_
                                                               _%$klass170159%_
                                                               _%method-calls167738%_
                                                               _%slot-refs167739%_
                                                               _%g170272170274%_))
                                                            _%L170247%_))
                                                      (__tmp171776
                                                       (cons '%#lambda
                                                             (cons _%L170248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body170277%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp171776
                                                  _%L169941%_)))
                                             _%tl170221170244%_
                                             _%hd170220170242%_)))
                                        (_%g170212170226%_
                                         _%g170213170229%_))))
                                (_%g170212170226%_ _%g170213170229%_)))))
                    (_%g170211170280%_ _%L169941%_)))
                 (_%specializer-case-lambda-expr170418%_
                  (let* ((_%g170285170304%_
                          (lambda (_%g170286170301%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170286170301%_))))
                         (_%g170284170415%_
                          (lambda (_%g170286170307%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170286170307%_))
                                (let ((_%e170288170309%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170286170307%_))))
                                  (let ((_%hd170289170312%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170288170309%_)))
                                        (_%tl170290170314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170288170309%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170290170314%_))
                                        (let ((_g171777_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl170290170314%_
                                                  '0))))
                                          (begin
                                            (let ((_g171778_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g171777_)
                                                         (##vector-length
                                                          _g171777_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g171778_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g171778_)))
                                            (let ((_%target170291170317%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171777_
                                                      0)))
                                                  (_%tl170293170319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g171777_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl170293170319%_))
                                                  (letrec ((_%loop170294170322%_
                                                            (lambda (_%hd170292170325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause170298170327%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd170292170325%_))
                          (let ((_%e170295170330%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd170292170325%_))))
                            (let ((_%lp-hd170296170333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170295170330%_)))
                                  (_%lp-tl170297170335%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170295170330%_))))
                              (_%loop170294170322%_
                               _%lp-tl170297170335%_
                               (cons _%lp-hd170296170333%_
                                     _%clause170298170327%_))))
                          (let ((_%clause170299170338%_
                                 (reverse _%clause170298170327%_)))
                            ((lambda (_%L170341%_)
                               (let* ((_%clauses170413%_
                                       (map (lambda (_%clause170355%_)
                                              (let* ((_%g170357170368%_
                                                      (lambda (_%g170358170365%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g170358170365%_))))
                                                     (_%g170356170403%_
                                                      (lambda (_%g170358170371%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g170358170371%_))
                                                            (let ((_%e170361170373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g170358170371%_))))
                      (let ((_%hd170362170376%_
                             (let ()
                               (declare (not safe))
                               (##car _%e170361170373%_)))
                            (_%tl170363170378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e170361170373%_))))
                        ((lambda (_%L170381%_ _%L170382%_)
                           (let* ((_%self170394%_
                                   (list-ref _%L170382%_ _%self-index169710%_))
                                  (_%body170400%_
                                   (map (lambda (_%g170395170397%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%self170394%_
                                           _%$klass170159%_
                                           _%method-calls167738%_
                                           _%slot-refs167739%_
                                           _%g170395170397%_))
                                        _%L170381%_)))
                             (cons _%L170382%_ _%body170400%_)))
                         _%tl170363170378%_
                         _%hd170362170376%_)))
                    (_%g170357170368%_ _%g170358170371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g170356170403%_
                                                 _%clause170355%_)))
                                            (let ((__tmp171779
                                                   (lambda (_%g170405170408%_
                                                            _%g170406170410%_)
                                                     (cons _%g170405170408%_
                                                           _%g170406170410%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp171779
                                               '()
                                               _%L170341%_))))
                                      (__tmp171780
                                       (cons '%#case-lambda
                                             _%clauses170413%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp171780
                                  _%L169940%_)))
                             _%clause170299170338%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop170294170322%_
                                                     _%target170291170317%_
                                                     '()))
                                                  (_%g170285170304%_
                                                   _%g170286170307%_)))))
                                        (_%g170285170304%_
                                         _%g170286170307%_))))
                                (_%g170285170304%_ _%g170286170307%_)))))
                    (_%g170284170415%_ _%L169940%_)))
                 (_%specializer-impl170420%_
                  (let ((__tmp171781
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L169410%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L169409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp171782
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L169942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr170283%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr170418%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp171782
                                                _%stx167646%_))
                                             '()))
                                 '())
                           (cons _%L169407%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L169406%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp171781 _%stx167646%_)))
                 (_%specializer-impl170422%_
                  (_%generate-specializer-impl167650%_
                   _%$klass170159%_
                   _%$method-table170161%_
                   _%methods-bind170186%_
                   _%slots-bind170210%_
                   _%specializer-impl170420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp171784
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L167719%_)))
                                                          (__tmp171783
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170157%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp171784
                                                       '" => "
                                                       __tmp171783))
                                                    (_%generate-specializer-def167651%_
                                                     _%L167719%_
                                                     _%specializer-id170157%_
                                                     _%specializer-impl170422%_))))
                                            _%hd169873169935%_
                                            _%hd169870169927%_
                                            _%hd169867169919%_)
                                           (_%g169849169879%_
                                            _%g169850169882%_))))
                                   (_%g169849169879%_ _%g169850169882%_))
                               (_%g169849169879%_ _%g169850169882%_))
                           (_%g169849169879%_ _%g169850169882%_))))
                   (_%g169849169879%_ _%g169850169882%_))
               (_%g169849169879%_ _%g169850169882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169849169879%_
                                                _%g169850169882%_))))
                                       (_%g169849169879%_ _%g169850169882%_))))
                               (_%g169849169879%_ _%g169850169882%_))))
                       (_%g169849169879%_ _%g169850169882%_))))
               (_%g169849169879%_ _%g169850169882%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169848170425%_ _%L169408%_))
                                         _%stx167646%_))))
                             _%hd169506169629%_
                             _%kw-ref169504169650%_
                             _%hd169494169616%_
                             _%hd169485169592%_
                             _%hd169476169568%_)
                            (_%g169450169512%_ _%g169451169515%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop169499169634%_
                                                 _%target169496169621%_
                                                 '()))
                                              (_%g169450169512%_
                                               _%g169451169515%_))))
                                      (_%g169450169512%_ _%g169451169515%_)))))
                            (_%g169450169512%_ _%g169451169515%_))
                        (_%g169450169512%_ _%g169451169515%_))
                    (_%g169450169512%_ _%g169451169515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169450169512%_
                                                     _%g169451169515%_))
                                                (_%g169450169512%_
                                                 _%g169451169515%_))
                                            (_%g169450169512%_
                                             _%g169451169515%_))))
                                    (_%g169450169512%_ _%g169451169515%_))))
                            (_%g169450169512%_ _%g169451169515%_))
                        (_%g169450169512%_ _%g169451169515%_))))
                (_%g169450169512%_ _%g169451169515%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169450169512%_
                                                     _%g169451169515%_))
                                                (_%g169450169512%_
                                                 _%g169451169515%_))))
                                        (_%g169450169512%_
                                         _%g169451169515%_))))
                                (_%g169450169512%_ _%g169451169515%_))
                            (_%g169450169512%_ _%g169451169515%_))))
                    (_%g169450169512%_ _%g169451169515%_))
                (_%g169450169512%_ _%g169451169515%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169450169512%_
                                                     _%g169451169515%_))))
                                            (_%g169450169512%_
                                             _%g169451169515%_))))
                                    (_%g169450169512%_ _%g169451169515%_))
                                (_%g169450169512%_ _%g169451169515%_))
                            (_%g169450169512%_ _%g169451169515%_))))
                    (_%g169450169512%_ _%g169451169515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g169450169512%_
                                                     _%g169451169515%_))))
                                            (_%g169450169512%_
                                             _%g169451169515%_))
                                        (_%g169450169512%_ _%g169451169515%_))
                                    (_%g169450169512%_ _%g169451169515%_))))
                            (_%g169450169512%_ _%g169451169515%_)))))
                (_%g169449170429%_ _%L169407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd169283169401%_
                                                    _%hd169280169393%_
                                                    _%hd169277169385%_
                                                    _%hd169274169377%_
                                                    _%hd169256169329%_)
                                                   (_%g169236169289%_
                                                    _%g169237169292%_))))
                                           (_%g169236169289%_
                                            _%g169237169292%_))
                                       (_%g169236169289%_ _%g169237169292%_))
                                   (_%g169236169289%_ _%g169237169292%_))
                               (_%g169236169289%_ _%g169237169292%_))))
                       (_%g169236169289%_ _%g169237169292%_))
                   (_%g169236169289%_ _%g169237169292%_))
               (_%g169236169289%_ _%g169237169292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169236169289%_
                                                _%g169237169292%_))
                                           (_%g169236169289%_
                                            _%g169237169292%_))))
                                   (_%g169236169289%_ _%g169237169292%_))))
                           (_%g169236169289%_ _%g169237169292%_))))
                   (_%g169236169289%_ _%g169237169292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g169236169289%_
                                                    _%g169237169292%_))
                                               (_%g169236169289%_
                                                _%g169237169292%_))
                                           (_%g169236169289%_
                                            _%g169237169292%_))))
                                   (_%g169236169289%_ _%g169237169292%_))))
                           (_%g169236169289%_ _%g169237169292%_))
                       (_%g169236169289%_ _%g169237169292%_))))
               (_%g169236169289%_ _%g169237169292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g169236169289%_
                                                _%g169237169292%_))))
                                       (_%g169236169289%_ _%g169237169292%_))))
                               (_%g169236169289%_ _%g169237169292%_))
                           (_%g169236169289%_ _%g169237169292%_))
                       (_%g169236169289%_ _%g169237169292%_))))
               (_%g169236169289%_ _%g169237169292%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g169235170432%_ _%L167718%_))
                                         _%stx167646%_))))))))
                  (_%__kont170655170656%_ (lambda () _%stx167646%_)))
              (let ((_%__match170684170685%_
                     (lambda (_%e167658167686%_
                              _%hd167659167689%_
                              _%tl167660167691%_
                              _%e167661167694%_
                              _%hd167662167697%_
                              _%tl167663167699%_
                              _%e167664167702%_
                              _%hd167665167705%_
                              _%tl167666167707%_
                              _%e167667167710%_
                              _%hd167668167713%_
                              _%tl167669167715%_)
                       (let ((_%L167718%_ _%hd167668167713%_)
                             (_%L167719%_ _%hd167665167705%_))
                         (if (let ((__tmp171785
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167719%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp171785))
                             (_%__kont170653170654%_ _%L167718%_ _%L167719%_)
                             (_%__kont170655170656%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx170651170652%_))
                    (let ((_%e167658167686%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx170651170652%_))))
                      (let ((_%tl167660167691%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167658167686%_)))
                            (_%hd167659167689%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167658167686%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167660167691%_))
                            (let ((_%e167661167694%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167660167691%_))))
                              (let ((_%tl167663167699%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167661167694%_)))
                                    (_%hd167662167697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167661167694%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167662167697%_))
                                    (let ((_%e167664167702%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167662167697%_))))
                                      (let ((_%tl167666167707%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167664167702%_)))
                                            (_%hd167665167705%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167664167702%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167666167707%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167663167699%_))
                                                (let ((_%e167667167710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167663167699%_))))
                                                  (let ((_%tl167669167715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167667167710%_)))
                                                        (_%hd167668167713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167667167710%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167669167715%_))
                                                        (_%__match170684170685%_
                                                         _%e167658167686%_
                                                         _%hd167659167689%_
                                                         _%tl167660167691%_
                                                         _%e167661167694%_
                                                         _%hd167662167697%_
                                                         _%tl167663167699%_
                                                         _%e167664167702%_
                                                         _%hd167665167705%_
                                                         _%tl167666167707%_
                                                         _%e167667167710%_
                                                         _%hd167668167713%_
                                                         _%tl167669167715%_)
                                                        (_%__kont170655170656%_))))
                                                (_%__kont170655170656%_))
                                            (_%__kont170655170656%_))))
                                    (_%__kont170655170656%_))))
                            (_%__kont170655170656%_))))
                    (_%__kont170655170656%_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self166606%_ _%stx166607%_)
        (let* ((_%__stx170687170688%_ _%stx166607%_)
               (_%g166615166837%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx170687170688%_)))))
          (let ((_%__kont170689170690%_
                 (lambda (_%L167594%_ _%L167595%_ _%L167596%_ _%L167597%_)
                   (let ((__tmp171787
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166606%_ 'methods)))
                         (__tmp171786
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167595%_))))
                     (declare (not safe))
                     (hash-put! __tmp171787 __tmp171786 '#t))
                   (for-each
                    (lambda (_%g167630167632%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166606%_ _%g167630167632%_)))
                    (let ((__tmp171788
                           (lambda (_%g167634167637%_ _%g167635167639%_)
                             (cons _%g167634167637%_ _%g167635167639%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171788 '() _%L167594%_)))))
                (_%__kont170693170694%_
                 (lambda (_%L167429%_
                          _%L167430%_
                          _%L167431%_
                          _%L167432%_
                          _%L167433%_)
                   (let ((__tmp171790
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166606%_ 'methods)))
                         (__tmp171789
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167430%_))))
                     (declare (not safe))
                     (hash-put! __tmp171790 __tmp171789 '#t))
                   (for-each
                    (lambda (_%g167473167475%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166606%_ _%g167473167475%_)))
                    (let ((__tmp171791
                           (lambda (_%g167477167480%_ _%g167478167482%_)
                             (cons _%g167477167480%_ _%g167478167482%_))))
                      (declare (not safe))
                      (__foldr1 __tmp171791 '() _%L167429%_)))))
                (_%__kont170697170698%_
                 (lambda (_%L167262%_ _%L167263%_ _%L167264%_)
                   (let ((__tmp171793
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166606%_ 'slots)))
                         (__tmp171792
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167262%_))))
                     (declare (not safe))
                     (hash-put! __tmp171793 __tmp171792 '#t))))
                (_%__kont170699170700%_
                 (lambda (_%L167139%_ _%L167140%_ _%L167141%_ _%L167142%_)
                   (let ((__tmp171795
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self166606%_ 'slots)))
                         (__tmp171794
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L167140%_))))
                     (declare (not safe))
                     (hash-put! __tmp171795 __tmp171794 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self166606%_ _%L167139%_))))
                (_%__kont170701170702%_
                 (lambda (_%L167013%_ _%L167014%_)
                   (let* ((_%accessor167036%_
                           (let ((__tmp171796
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L167014%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171796)))
                          (_%klass167038%_
                           (let ((__tmp171797
                                  (##structure-ref
                                   _%accessor167036%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166607%_
                              __tmp171797)))
                          (_%slot167040%_
                           (##structure-ref
                            _%accessor167036%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor167036%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass167038%_
                                     _%slot167040%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass167038%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171799
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166606%_ 'slots)))
                               (__tmp171798
                                (##structure-ref
                                 _%accessor167036%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp171799 __tmp171798 '#t))))))
                (_%__kont170703170704%_
                 (lambda (_%L166913%_ _%L166914%_ _%L166915%_)
                   (let* ((_%mutator166942%_
                           (let ((__tmp171800
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L166915%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp171800)))
                          (_%klass166944%_
                           (let ((__tmp171801
                                  (##structure-ref
                                   _%mutator166942%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx166607%_
                              __tmp171801)))
                          (_%slot166946%_
                           (##structure-ref
                            _%mutator166942%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator166942%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass166944%_
                                     _%slot166946%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass166944%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp171802
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self166606%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp171802 _%slot166946%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self166606%_ _%L166913%_)))))
                (_%__kont170705170706%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self166606%_ _%stx166607%_)))))
            (let* ((_%__match171186171187%_
                    (lambda (_%e166809166849%_
                             _%hd166810166852%_
                             _%tl166811166854%_
                             _%e166812166857%_
                             _%hd166813166860%_
                             _%tl166814166862%_
                             _%e166815166865%_
                             _%hd166816166868%_
                             _%tl166817166870%_
                             _%e166818166873%_
                             _%hd166819166876%_
                             _%tl166820166878%_
                             _%e166821166881%_
                             _%hd166822166884%_
                             _%tl166823166886%_
                             _%e166824166889%_
                             _%hd166825166892%_
                             _%tl166826166894%_
                             _%e166827166897%_
                             _%hd166828166900%_
                             _%tl166829166902%_
                             _%e166830166905%_
                             _%hd166831166908%_
                             _%tl166832166910%_)
                      (let ((_%L166913%_ _%hd166831166908%_)
                            (_%L166914%_ _%hd166828166900%_)
                            (_%L166915%_ _%hd166819166876%_))
                        (if (and (let ((__tmp171803
                                        (let ((__tmp171804
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L166915%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171804))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171803
                                    'gxc#!mutator::t))
                                 (let ((__tmp171805
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166606%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L166914%_
                                    __tmp171805)))
                            (_%__kont170703170704%_
                             _%L166913%_
                             _%L166914%_
                             _%L166915%_)
                            (_%__kont170705170706%_)))))
                   (_%__match171184171185%_
                    (lambda (_%e166809166849%_
                             _%hd166810166852%_
                             _%tl166811166854%_
                             _%e166812166857%_
                             _%hd166813166860%_
                             _%tl166814166862%_
                             _%e166815166865%_
                             _%hd166816166868%_
                             _%tl166817166870%_
                             _%e166818166873%_
                             _%hd166819166876%_
                             _%tl166820166878%_
                             _%e166821166881%_
                             _%hd166822166884%_
                             _%tl166823166886%_
                             _%e166824166889%_
                             _%hd166825166892%_
                             _%tl166826166894%_
                             _%e166827166897%_
                             _%hd166828166900%_
                             _%tl166829166902%_
                             _%e166830166905%_
                             _%hd166831166908%_
                             _%tl166832166910%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166832166910%_))
                          (_%__match171186171187%_
                           _%e166809166849%_
                           _%hd166810166852%_
                           _%tl166811166854%_
                           _%e166812166857%_
                           _%hd166813166860%_
                           _%tl166814166862%_
                           _%e166815166865%_
                           _%hd166816166868%_
                           _%tl166817166870%_
                           _%e166818166873%_
                           _%hd166819166876%_
                           _%tl166820166878%_
                           _%e166821166881%_
                           _%hd166822166884%_
                           _%tl166823166886%_
                           _%e166824166889%_
                           _%hd166825166892%_
                           _%tl166826166894%_
                           _%e166827166897%_
                           _%hd166828166900%_
                           _%tl166829166902%_
                           _%e166830166905%_
                           _%hd166831166908%_
                           _%tl166832166910%_)
                          (_%__kont170705170706%_))))
                   (_%__match171178171179%_
                    (lambda (_%e166809166849%_
                             _%hd166810166852%_
                             _%tl166811166854%_
                             _%e166812166857%_
                             _%hd166813166860%_
                             _%tl166814166862%_
                             _%e166815166865%_
                             _%hd166816166868%_
                             _%tl166817166870%_
                             _%e166818166873%_
                             _%hd166819166876%_
                             _%tl166820166878%_
                             _%e166821166881%_
                             _%hd166822166884%_
                             _%tl166823166886%_
                             _%e166824166889%_
                             _%hd166825166892%_
                             _%tl166826166894%_
                             _%e166827166897%_
                             _%hd166828166900%_
                             _%tl166829166902%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166823166886%_))
                          (let ((_%e166830166905%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166823166886%_))))
                            (let ((_%tl166832166910%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166830166905%_)))
                                  (_%hd166831166908%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166830166905%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166832166910%_))
                                  (_%__match171186171187%_
                                   _%e166809166849%_
                                   _%hd166810166852%_
                                   _%tl166811166854%_
                                   _%e166812166857%_
                                   _%hd166813166860%_
                                   _%tl166814166862%_
                                   _%e166815166865%_
                                   _%hd166816166868%_
                                   _%tl166817166870%_
                                   _%e166818166873%_
                                   _%hd166819166876%_
                                   _%tl166820166878%_
                                   _%e166821166881%_
                                   _%hd166822166884%_
                                   _%tl166823166886%_
                                   _%e166824166889%_
                                   _%hd166825166892%_
                                   _%tl166826166894%_
                                   _%e166827166897%_
                                   _%hd166828166900%_
                                   _%tl166829166902%_
                                   _%e166830166905%_
                                   _%hd166831166908%_
                                   _%tl166832166910%_)
                                  (_%__kont170705170706%_))))
                          (_%__kont170705170706%_))))
                   (_%__match171124171125%_
                    (lambda (_%e166785166957%_
                             _%hd166786166960%_
                             _%tl166787166962%_
                             _%e166788166965%_
                             _%hd166789166968%_
                             _%tl166790166970%_
                             _%e166791166973%_
                             _%hd166792166976%_
                             _%tl166793166978%_
                             _%e166794166981%_
                             _%hd166795166984%_
                             _%tl166796166986%_
                             _%e166797166989%_
                             _%hd166798166992%_
                             _%tl166799166994%_
                             _%e166800166997%_
                             _%hd166801167000%_
                             _%tl166802167002%_
                             _%e166803167005%_
                             _%hd166804167008%_
                             _%tl166805167010%_)
                      (let ((_%L167013%_ _%hd166804167008%_)
                            (_%L167014%_ _%hd166795166984%_))
                        (if (and (let ((__tmp171806
                                        (let ((__tmp171807
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L167014%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp171807))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp171806
                                    'gxc#!accessor::t))
                                 (let ((__tmp171808
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166606%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167013%_
                                    __tmp171808)))
                            (_%__kont170701170702%_ _%L167013%_ _%L167014%_)
                            (_%__kont170705170706%_)))))
                   (_%__match171122171123%_
                    (lambda (_%e166785166957%_
                             _%hd166786166960%_
                             _%tl166787166962%_
                             _%e166788166965%_
                             _%hd166789166968%_
                             _%tl166790166970%_
                             _%e166791166973%_
                             _%hd166792166976%_
                             _%tl166793166978%_
                             _%e166794166981%_
                             _%hd166795166984%_
                             _%tl166796166986%_
                             _%e166797166989%_
                             _%hd166798166992%_
                             _%tl166799166994%_
                             _%e166800166997%_
                             _%hd166801167000%_
                             _%tl166802167002%_
                             _%e166803167005%_
                             _%hd166804167008%_
                             _%tl166805167010%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166799166994%_))
                          (_%__match171124171125%_
                           _%e166785166957%_
                           _%hd166786166960%_
                           _%tl166787166962%_
                           _%e166788166965%_
                           _%hd166789166968%_
                           _%tl166790166970%_
                           _%e166791166973%_
                           _%hd166792166976%_
                           _%tl166793166978%_
                           _%e166794166981%_
                           _%hd166795166984%_
                           _%tl166796166986%_
                           _%e166797166989%_
                           _%hd166798166992%_
                           _%tl166799166994%_
                           _%e166800166997%_
                           _%hd166801167000%_
                           _%tl166802167002%_
                           _%e166803167005%_
                           _%hd166804167008%_
                           _%tl166805167010%_)
                          (_%__match171178171179%_
                           _%e166785166957%_
                           _%hd166786166960%_
                           _%tl166787166962%_
                           _%e166788166965%_
                           _%hd166789166968%_
                           _%tl166790166970%_
                           _%e166791166973%_
                           _%hd166792166976%_
                           _%tl166793166978%_
                           _%e166794166981%_
                           _%hd166795166984%_
                           _%tl166796166986%_
                           _%e166797166989%_
                           _%hd166798166992%_
                           _%tl166799166994%_
                           _%e166800166997%_
                           _%hd166801167000%_
                           _%tl166802167002%_
                           _%e166803167005%_
                           _%hd166804167008%_
                           _%tl166805167010%_))))
                   (_%__match171068171069%_
                    (lambda (_%e166750167051%_
                             _%hd166751167054%_
                             _%tl166752167056%_
                             _%e166753167059%_
                             _%hd166754167062%_
                             _%tl166755167064%_
                             _%e166756167067%_
                             _%hd166757167070%_
                             _%tl166758167072%_
                             _%e166759167075%_
                             _%hd166760167078%_
                             _%tl166761167080%_
                             _%e166762167083%_
                             _%hd166763167086%_
                             _%tl166764167088%_
                             _%e166765167091%_
                             _%hd166766167094%_
                             _%tl166767167096%_
                             _%e166768167099%_
                             _%hd166769167102%_
                             _%tl166770167104%_
                             _%e166771167107%_
                             _%hd166772167110%_
                             _%tl166773167112%_
                             _%e166774167115%_
                             _%hd166775167118%_
                             _%tl166776167120%_
                             _%e166777167123%_
                             _%hd166778167126%_
                             _%tl166779167128%_
                             _%e166780167131%_
                             _%hd166781167134%_
                             _%tl166782167136%_)
                      (let ((_%L167139%_ _%hd166781167134%_)
                            (_%L167140%_ _%hd166778167126%_)
                            (_%L167141%_ _%hd166769167102%_)
                            (_%L167142%_ _%hd166760167078%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167142%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167142%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp171809
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166606%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167141%_
                                    __tmp171809)))
                            (_%__kont170699170700%_
                             _%L167139%_
                             _%L167140%_
                             _%L167141%_
                             _%L167142%_)
                            (_%__kont170705170706%_)))))
                   (_%__match171060171061%_
                    (lambda (_%e166750167051%_
                             _%hd166751167054%_
                             _%tl166752167056%_
                             _%e166753167059%_
                             _%hd166754167062%_
                             _%tl166755167064%_
                             _%e166756167067%_
                             _%hd166757167070%_
                             _%tl166758167072%_
                             _%e166759167075%_
                             _%hd166760167078%_
                             _%tl166761167080%_
                             _%e166762167083%_
                             _%hd166763167086%_
                             _%tl166764167088%_
                             _%e166765167091%_
                             _%hd166766167094%_
                             _%tl166767167096%_
                             _%e166768167099%_
                             _%hd166769167102%_
                             _%tl166770167104%_
                             _%e166771167107%_
                             _%hd166772167110%_
                             _%tl166773167112%_
                             _%e166774167115%_
                             _%hd166775167118%_
                             _%tl166776167120%_
                             _%e166777167123%_
                             _%hd166778167126%_
                             _%tl166779167128%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166773167112%_))
                          (let ((_%e166780167131%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166773167112%_))))
                            (let ((_%tl166782167136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166780167131%_)))
                                  (_%hd166781167134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166780167131%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166782167136%_))
                                  (_%__match171068171069%_
                                   _%e166750167051%_
                                   _%hd166751167054%_
                                   _%tl166752167056%_
                                   _%e166753167059%_
                                   _%hd166754167062%_
                                   _%tl166755167064%_
                                   _%e166756167067%_
                                   _%hd166757167070%_
                                   _%tl166758167072%_
                                   _%e166759167075%_
                                   _%hd166760167078%_
                                   _%tl166761167080%_
                                   _%e166762167083%_
                                   _%hd166763167086%_
                                   _%tl166764167088%_
                                   _%e166765167091%_
                                   _%hd166766167094%_
                                   _%tl166767167096%_
                                   _%e166768167099%_
                                   _%hd166769167102%_
                                   _%tl166770167104%_
                                   _%e166771167107%_
                                   _%hd166772167110%_
                                   _%tl166773167112%_
                                   _%e166774167115%_
                                   _%hd166775167118%_
                                   _%tl166776167120%_
                                   _%e166777167123%_
                                   _%hd166778167126%_
                                   _%tl166779167128%_
                                   _%e166780167131%_
                                   _%hd166781167134%_
                                   _%tl166782167136%_)
                                  (_%__kont170705170706%_))))
                          (_%__match171184171185%_
                           _%e166750167051%_
                           _%hd166751167054%_
                           _%tl166752167056%_
                           _%e166753167059%_
                           _%hd166754167062%_
                           _%tl166755167064%_
                           _%e166756167067%_
                           _%hd166757167070%_
                           _%tl166758167072%_
                           _%e166759167075%_
                           _%hd166760167078%_
                           _%tl166761167080%_
                           _%e166762167083%_
                           _%hd166763167086%_
                           _%tl166764167088%_
                           _%e166765167091%_
                           _%hd166766167094%_
                           _%tl166767167096%_
                           _%e166768167099%_
                           _%hd166769167102%_
                           _%tl166770167104%_
                           _%e166771167107%_
                           _%hd166772167110%_
                           _%tl166773167112%_))))
                   (_%__match170982170983%_
                    (lambda (_%e166716167182%_
                             _%hd166717167185%_
                             _%tl166718167187%_
                             _%e166719167190%_
                             _%hd166720167193%_
                             _%tl166721167195%_
                             _%e166722167198%_
                             _%hd166723167201%_
                             _%tl166724167203%_
                             _%e166725167206%_
                             _%hd166726167209%_
                             _%tl166727167211%_
                             _%e166728167214%_
                             _%hd166729167217%_
                             _%tl166730167219%_
                             _%e166731167222%_
                             _%hd166732167225%_
                             _%tl166733167227%_
                             _%e166734167230%_
                             _%hd166735167233%_
                             _%tl166736167235%_
                             _%e166737167238%_
                             _%hd166738167241%_
                             _%tl166739167243%_
                             _%e166740167246%_
                             _%hd166741167249%_
                             _%tl166742167251%_
                             _%e166743167254%_
                             _%hd166744167257%_
                             _%tl166745167259%_)
                      (let ((_%L167262%_ _%hd166744167257%_)
                            (_%L167263%_ _%hd166735167233%_)
                            (_%L167264%_ _%hd166726167209%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167264%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L167264%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp171810
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self166606%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L167263%_
                                    __tmp171810)))
                            (_%__kont170697170698%_
                             _%L167262%_
                             _%L167263%_
                             _%L167264%_)
                            (_%__match171186171187%_
                             _%e166716167182%_
                             _%hd166717167185%_
                             _%tl166718167187%_
                             _%e166719167190%_
                             _%hd166720167193%_
                             _%tl166721167195%_
                             _%e166722167198%_
                             _%hd166723167201%_
                             _%tl166724167203%_
                             _%e166725167206%_
                             _%hd166726167209%_
                             _%tl166727167211%_
                             _%e166728167214%_
                             _%hd166729167217%_
                             _%tl166730167219%_
                             _%e166731167222%_
                             _%hd166732167225%_
                             _%tl166733167227%_
                             _%e166734167230%_
                             _%hd166735167233%_
                             _%tl166736167235%_
                             _%e166737167238%_
                             _%hd166738167241%_
                             _%tl166739167243%_)))))
                   (_%__match170980170981%_
                    (lambda (_%e166716167182%_
                             _%hd166717167185%_
                             _%tl166718167187%_
                             _%e166719167190%_
                             _%hd166720167193%_
                             _%tl166721167195%_
                             _%e166722167198%_
                             _%hd166723167201%_
                             _%tl166724167203%_
                             _%e166725167206%_
                             _%hd166726167209%_
                             _%tl166727167211%_
                             _%e166728167214%_
                             _%hd166729167217%_
                             _%tl166730167219%_
                             _%e166731167222%_
                             _%hd166732167225%_
                             _%tl166733167227%_
                             _%e166734167230%_
                             _%hd166735167233%_
                             _%tl166736167235%_
                             _%e166737167238%_
                             _%hd166738167241%_
                             _%tl166739167243%_
                             _%e166740167246%_
                             _%hd166741167249%_
                             _%tl166742167251%_
                             _%e166743167254%_
                             _%hd166744167257%_
                             _%tl166745167259%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl166739167243%_))
                          (_%__match170982170983%_
                           _%e166716167182%_
                           _%hd166717167185%_
                           _%tl166718167187%_
                           _%e166719167190%_
                           _%hd166720167193%_
                           _%tl166721167195%_
                           _%e166722167198%_
                           _%hd166723167201%_
                           _%tl166724167203%_
                           _%e166725167206%_
                           _%hd166726167209%_
                           _%tl166727167211%_
                           _%e166728167214%_
                           _%hd166729167217%_
                           _%tl166730167219%_
                           _%e166731167222%_
                           _%hd166732167225%_
                           _%tl166733167227%_
                           _%e166734167230%_
                           _%hd166735167233%_
                           _%tl166736167235%_
                           _%e166737167238%_
                           _%hd166738167241%_
                           _%tl166739167243%_
                           _%e166740167246%_
                           _%hd166741167249%_
                           _%tl166742167251%_
                           _%e166743167254%_
                           _%hd166744167257%_
                           _%tl166745167259%_)
                          (_%__match171060171061%_
                           _%e166716167182%_
                           _%hd166717167185%_
                           _%tl166718167187%_
                           _%e166719167190%_
                           _%hd166720167193%_
                           _%tl166721167195%_
                           _%e166722167198%_
                           _%hd166723167201%_
                           _%tl166724167203%_
                           _%e166725167206%_
                           _%hd166726167209%_
                           _%tl166727167211%_
                           _%e166728167214%_
                           _%hd166729167217%_
                           _%tl166730167219%_
                           _%e166731167222%_
                           _%hd166732167225%_
                           _%tl166733167227%_
                           _%e166734167230%_
                           _%hd166735167233%_
                           _%tl166736167235%_
                           _%e166737167238%_
                           _%hd166738167241%_
                           _%tl166739167243%_
                           _%e166740167246%_
                           _%hd166741167249%_
                           _%tl166742167251%_
                           _%e166743167254%_
                           _%hd166744167257%_
                           _%tl166745167259%_))))
                   (_%__match170970170971%_
                    (lambda (_%e166716167182%_
                             _%hd166717167185%_
                             _%tl166718167187%_
                             _%e166719167190%_
                             _%hd166720167193%_
                             _%tl166721167195%_
                             _%e166722167198%_
                             _%hd166723167201%_
                             _%tl166724167203%_
                             _%e166725167206%_
                             _%hd166726167209%_
                             _%tl166727167211%_
                             _%e166728167214%_
                             _%hd166729167217%_
                             _%tl166730167219%_
                             _%e166731167222%_
                             _%hd166732167225%_
                             _%tl166733167227%_
                             _%e166734167230%_
                             _%hd166735167233%_
                             _%tl166736167235%_
                             _%e166737167238%_
                             _%hd166738167241%_
                             _%tl166739167243%_
                             _%e166740167246%_
                             _%hd166741167249%_
                             _%tl166742167251%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd166741167249%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166742167251%_))
                              (let ((_%e166743167254%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166742167251%_))))
                                (let ((_%tl166745167259%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166743167254%_)))
                                      (_%hd166744167257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166743167254%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166745167259%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl166739167243%_))
                                          (_%__match170982170983%_
                                           _%e166716167182%_
                                           _%hd166717167185%_
                                           _%tl166718167187%_
                                           _%e166719167190%_
                                           _%hd166720167193%_
                                           _%tl166721167195%_
                                           _%e166722167198%_
                                           _%hd166723167201%_
                                           _%tl166724167203%_
                                           _%e166725167206%_
                                           _%hd166726167209%_
                                           _%tl166727167211%_
                                           _%e166728167214%_
                                           _%hd166729167217%_
                                           _%tl166730167219%_
                                           _%e166731167222%_
                                           _%hd166732167225%_
                                           _%tl166733167227%_
                                           _%e166734167230%_
                                           _%hd166735167233%_
                                           _%tl166736167235%_
                                           _%e166737167238%_
                                           _%hd166738167241%_
                                           _%tl166739167243%_
                                           _%e166740167246%_
                                           _%hd166741167249%_
                                           _%tl166742167251%_
                                           _%e166743167254%_
                                           _%hd166744167257%_
                                           _%tl166745167259%_)
                                          (_%__match171060171061%_
                                           _%e166716167182%_
                                           _%hd166717167185%_
                                           _%tl166718167187%_
                                           _%e166719167190%_
                                           _%hd166720167193%_
                                           _%tl166721167195%_
                                           _%e166722167198%_
                                           _%hd166723167201%_
                                           _%tl166724167203%_
                                           _%e166725167206%_
                                           _%hd166726167209%_
                                           _%tl166727167211%_
                                           _%e166728167214%_
                                           _%hd166729167217%_
                                           _%tl166730167219%_
                                           _%e166731167222%_
                                           _%hd166732167225%_
                                           _%tl166733167227%_
                                           _%e166734167230%_
                                           _%hd166735167233%_
                                           _%tl166736167235%_
                                           _%e166737167238%_
                                           _%hd166738167241%_
                                           _%tl166739167243%_
                                           _%e166740167246%_
                                           _%hd166741167249%_
                                           _%tl166742167251%_
                                           _%e166743167254%_
                                           _%hd166744167257%_
                                           _%tl166745167259%_))
                                      (_%__match171184171185%_
                                       _%e166716167182%_
                                       _%hd166717167185%_
                                       _%tl166718167187%_
                                       _%e166719167190%_
                                       _%hd166720167193%_
                                       _%tl166721167195%_
                                       _%e166722167198%_
                                       _%hd166723167201%_
                                       _%tl166724167203%_
                                       _%e166725167206%_
                                       _%hd166726167209%_
                                       _%tl166727167211%_
                                       _%e166728167214%_
                                       _%hd166729167217%_
                                       _%tl166730167219%_
                                       _%e166731167222%_
                                       _%hd166732167225%_
                                       _%tl166733167227%_
                                       _%e166734167230%_
                                       _%hd166735167233%_
                                       _%tl166736167235%_
                                       _%e166737167238%_
                                       _%hd166738167241%_
                                       _%tl166739167243%_))))
                              (_%__match171184171185%_
                               _%e166716167182%_
                               _%hd166717167185%_
                               _%tl166718167187%_
                               _%e166719167190%_
                               _%hd166720167193%_
                               _%tl166721167195%_
                               _%e166722167198%_
                               _%hd166723167201%_
                               _%tl166724167203%_
                               _%e166725167206%_
                               _%hd166726167209%_
                               _%tl166727167211%_
                               _%e166728167214%_
                               _%hd166729167217%_
                               _%tl166730167219%_
                               _%e166731167222%_
                               _%hd166732167225%_
                               _%tl166733167227%_
                               _%e166734167230%_
                               _%hd166735167233%_
                               _%tl166736167235%_
                               _%e166737167238%_
                               _%hd166738167241%_
                               _%tl166739167243%_))
                          (_%__match171184171185%_
                           _%e166716167182%_
                           _%hd166717167185%_
                           _%tl166718167187%_
                           _%e166719167190%_
                           _%hd166720167193%_
                           _%tl166721167195%_
                           _%e166722167198%_
                           _%hd166723167201%_
                           _%tl166724167203%_
                           _%e166725167206%_
                           _%hd166726167209%_
                           _%tl166727167211%_
                           _%e166728167214%_
                           _%hd166729167217%_
                           _%tl166730167219%_
                           _%e166731167222%_
                           _%hd166732167225%_
                           _%tl166733167227%_
                           _%e166734167230%_
                           _%hd166735167233%_
                           _%tl166736167235%_
                           _%e166737167238%_
                           _%hd166738167241%_
                           _%tl166739167243%_))))
                   (_%__match170902170903%_
                    (lambda (_%e166665167301%_
                             _%hd166666167304%_
                             _%tl166667167306%_
                             _%e166668167309%_
                             _%hd166669167312%_
                             _%tl166670167314%_
                             _%e166671167317%_
                             _%hd166672167320%_
                             _%tl166673167322%_
                             _%e166674167325%_
                             _%hd166675167328%_
                             _%tl166676167330%_
                             _%e166677167333%_
                             _%hd166678167336%_
                             _%tl166679167338%_
                             _%e166680167341%_
                             _%hd166681167344%_
                             _%tl166682167346%_
                             _%e166683167349%_
                             _%hd166684167352%_
                             _%tl166685167354%_
                             _%e166686167357%_
                             _%hd166687167360%_
                             _%tl166688167362%_
                             _%e166689167365%_
                             _%hd166690167368%_
                             _%tl166691167370%_
                             _%e166692167373%_
                             _%hd166693167376%_
                             _%tl166694167378%_
                             _%e166695167381%_
                             _%hd166696167384%_
                             _%tl166697167386%_
                             _%e166698167389%_
                             _%hd166699167392%_
                             _%tl166700167394%_
                             _%e166701167397%_
                             _%hd166702167400%_
                             _%tl166703167402%_
                             _%__splice170695170696%_
                             _%target166704167405%_
                             _%tl166706167407%_)
                      (letrec ((_%loop166707167410%_
                                (lambda (_%hd166705167413%_
                                         _%args166711167415%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166705167413%_))
                                      (let ((_%e166708167418%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166705167413%_))))
                                        (let ((_%lp-tl166710167423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166708167418%_)))
                                              (_%lp-hd166709167421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166708167418%_))))
                                          (_%loop166707167410%_
                                           _%lp-tl166710167423%_
                                           (cons _%lp-hd166709167421%_
                                                 _%args166711167415%_))))
                                      (let ((_%args166712167426%_
                                             (reverse _%args166711167415%_)))
                                        (let ((_%L167429%_
                                               _%args166712167426%_)
                                              (_%L167430%_ _%hd166702167400%_)
                                              (_%L167431%_ _%hd166693167376%_)
                                              (_%L167432%_ _%hd166684167352%_)
                                              (_%L167433%_ _%hd166675167328%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167433%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167432%_
                                                      'call-method))
                                                   (let ((__tmp171811
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166606%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167431%_
                                                      __tmp171811)))
                                              (_%__kont170693170694%_
                                               _%L167429%_
                                               _%L167430%_
                                               _%L167431%_
                                               _%L167432%_
                                               _%L167433%_)
                                              (_%__kont170705170706%_))))))))
                        (_%loop166707167410%_ _%target166704167405%_ '()))))
                   (_%__match170860170861%_
                    (lambda (_%e166665167301%_
                             _%hd166666167304%_
                             _%tl166667167306%_
                             _%e166668167309%_
                             _%hd166669167312%_
                             _%tl166670167314%_
                             _%e166671167317%_
                             _%hd166672167320%_
                             _%tl166673167322%_
                             _%e166674167325%_
                             _%hd166675167328%_
                             _%tl166676167330%_
                             _%e166677167333%_
                             _%hd166678167336%_
                             _%tl166679167338%_
                             _%e166680167341%_
                             _%hd166681167344%_
                             _%tl166682167346%_
                             _%e166683167349%_
                             _%hd166684167352%_
                             _%tl166685167354%_
                             _%e166686167357%_
                             _%hd166687167360%_
                             _%tl166688167362%_
                             _%e166689167365%_
                             _%hd166690167368%_
                             _%tl166691167370%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd166690167368%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166691167370%_))
                              (let ((_%e166692167373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166691167370%_))))
                                (let ((_%tl166694167378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166692167373%_)))
                                      (_%hd166693167376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166692167373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl166694167378%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166688167362%_))
                                          (let ((_%e166695167381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166688167362%_))))
                                            (let ((_%tl166697167386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166695167381%_)))
                                                  (_%hd166696167384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166695167381%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd166696167384%_))
                                                  (let ((_%e166698167389%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd166696167384%_))))
                                                    (let ((_%tl166700167394%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166698167389%_)))
                                                          (_%hd166699167392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166698167389%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd166699167392%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd166699167392%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166700167394%_))
                          (let ((_%e166701167397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166700167394%_))))
                            (let ((_%tl166703167402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166701167397%_)))
                                  (_%hd166702167400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166701167397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl166703167402%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl166697167386%_))
                                      (let ((_%__splice170695170696%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl166697167386%_
                                                '0))))
                                        (let ((_%tl166706167407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170695170696%_
                                                  '1)))
                                              (_%target166704167405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice170695170696%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166706167407%_))
                                              (_%__match170902170903%_
                                               _%e166665167301%_
                                               _%hd166666167304%_
                                               _%tl166667167306%_
                                               _%e166668167309%_
                                               _%hd166669167312%_
                                               _%tl166670167314%_
                                               _%e166671167317%_
                                               _%hd166672167320%_
                                               _%tl166673167322%_
                                               _%e166674167325%_
                                               _%hd166675167328%_
                                               _%tl166676167330%_
                                               _%e166677167333%_
                                               _%hd166678167336%_
                                               _%tl166679167338%_
                                               _%e166680167341%_
                                               _%hd166681167344%_
                                               _%tl166682167346%_
                                               _%e166683167349%_
                                               _%hd166684167352%_
                                               _%tl166685167354%_
                                               _%e166686167357%_
                                               _%hd166687167360%_
                                               _%tl166688167362%_
                                               _%e166689167365%_
                                               _%hd166690167368%_
                                               _%tl166691167370%_
                                               _%e166692167373%_
                                               _%hd166693167376%_
                                               _%tl166694167378%_
                                               _%e166695167381%_
                                               _%hd166696167384%_
                                               _%tl166697167386%_
                                               _%e166698167389%_
                                               _%hd166699167392%_
                                               _%tl166700167394%_
                                               _%e166701167397%_
                                               _%hd166702167400%_
                                               _%tl166703167402%_
                                               _%__splice170695170696%_
                                               _%target166704167405%_
                                               _%tl166706167407%_)
                                              (_%__kont170705170706%_))))
                                      (_%__kont170705170706%_))
                                  (_%__kont170705170706%_))))
                          (_%__kont170705170706%_))
                      (_%__kont170705170706%_))
                  (_%__kont170705170706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170705170706%_))))
                                          (_%__match171184171185%_
                                           _%e166665167301%_
                                           _%hd166666167304%_
                                           _%tl166667167306%_
                                           _%e166668167309%_
                                           _%hd166669167312%_
                                           _%tl166670167314%_
                                           _%e166671167317%_
                                           _%hd166672167320%_
                                           _%tl166673167322%_
                                           _%e166674167325%_
                                           _%hd166675167328%_
                                           _%tl166676167330%_
                                           _%e166677167333%_
                                           _%hd166678167336%_
                                           _%tl166679167338%_
                                           _%e166680167341%_
                                           _%hd166681167344%_
                                           _%tl166682167346%_
                                           _%e166683167349%_
                                           _%hd166684167352%_
                                           _%tl166685167354%_
                                           _%e166686167357%_
                                           _%hd166687167360%_
                                           _%tl166688167362%_))
                                      (_%__match171184171185%_
                                       _%e166665167301%_
                                       _%hd166666167304%_
                                       _%tl166667167306%_
                                       _%e166668167309%_
                                       _%hd166669167312%_
                                       _%tl166670167314%_
                                       _%e166671167317%_
                                       _%hd166672167320%_
                                       _%tl166673167322%_
                                       _%e166674167325%_
                                       _%hd166675167328%_
                                       _%tl166676167330%_
                                       _%e166677167333%_
                                       _%hd166678167336%_
                                       _%tl166679167338%_
                                       _%e166680167341%_
                                       _%hd166681167344%_
                                       _%tl166682167346%_
                                       _%e166683167349%_
                                       _%hd166684167352%_
                                       _%tl166685167354%_
                                       _%e166686167357%_
                                       _%hd166687167360%_
                                       _%tl166688167362%_))))
                              (_%__match171184171185%_
                               _%e166665167301%_
                               _%hd166666167304%_
                               _%tl166667167306%_
                               _%e166668167309%_
                               _%hd166669167312%_
                               _%tl166670167314%_
                               _%e166671167317%_
                               _%hd166672167320%_
                               _%tl166673167322%_
                               _%e166674167325%_
                               _%hd166675167328%_
                               _%tl166676167330%_
                               _%e166677167333%_
                               _%hd166678167336%_
                               _%tl166679167338%_
                               _%e166680167341%_
                               _%hd166681167344%_
                               _%tl166682167346%_
                               _%e166683167349%_
                               _%hd166684167352%_
                               _%tl166685167354%_
                               _%e166686167357%_
                               _%hd166687167360%_
                               _%tl166688167362%_))
                          (_%__match170970170971%_
                           _%e166665167301%_
                           _%hd166666167304%_
                           _%tl166667167306%_
                           _%e166668167309%_
                           _%hd166669167312%_
                           _%tl166670167314%_
                           _%e166671167317%_
                           _%hd166672167320%_
                           _%tl166673167322%_
                           _%e166674167325%_
                           _%hd166675167328%_
                           _%tl166676167330%_
                           _%e166677167333%_
                           _%hd166678167336%_
                           _%tl166679167338%_
                           _%e166680167341%_
                           _%hd166681167344%_
                           _%tl166682167346%_
                           _%e166683167349%_
                           _%hd166684167352%_
                           _%tl166685167354%_
                           _%e166686167357%_
                           _%hd166687167360%_
                           _%tl166688167362%_
                           _%e166689167365%_
                           _%hd166690167368%_
                           _%tl166691167370%_))))
                   (_%__match170792170793%_
                    (lambda (_%e166621167490%_
                             _%hd166622167493%_
                             _%tl166623167495%_
                             _%e166624167498%_
                             _%hd166625167501%_
                             _%tl166626167503%_
                             _%e166627167506%_
                             _%hd166628167509%_
                             _%tl166629167511%_
                             _%e166630167514%_
                             _%hd166631167517%_
                             _%tl166632167519%_
                             _%e166633167522%_
                             _%hd166634167525%_
                             _%tl166635167527%_
                             _%e166636167530%_
                             _%hd166637167533%_
                             _%tl166638167535%_
                             _%e166639167538%_
                             _%hd166640167541%_
                             _%tl166641167543%_
                             _%e166642167546%_
                             _%hd166643167549%_
                             _%tl166644167551%_
                             _%e166645167554%_
                             _%hd166646167557%_
                             _%tl166647167559%_
                             _%e166648167562%_
                             _%hd166649167565%_
                             _%tl166650167567%_
                             _%__splice170691170692%_
                             _%target166651167570%_
                             _%tl166653167572%_)
                      (letrec ((_%loop166654167575%_
                                (lambda (_%hd166652167578%_
                                         _%args166658167580%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd166652167578%_))
                                      (let ((_%e166655167583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd166652167578%_))))
                                        (let ((_%lp-tl166657167588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166655167583%_)))
                                              (_%lp-hd166656167586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166655167583%_))))
                                          (_%loop166654167575%_
                                           _%lp-tl166657167588%_
                                           (cons _%lp-hd166656167586%_
                                                 _%args166658167580%_))))
                                      (let ((_%args166659167591%_
                                             (reverse _%args166658167580%_)))
                                        (let ((_%L167594%_
                                               _%args166659167591%_)
                                              (_%L167595%_ _%hd166649167565%_)
                                              (_%L167596%_ _%hd166640167541%_)
                                              (_%L167597%_ _%hd166631167517%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L167597%_
                                                      'call-method))
                                                   (let ((__tmp171812
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self166606%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L167596%_
                                                      __tmp171812)))
                                              (_%__kont170689170690%_
                                               _%L167594%_
                                               _%L167595%_
                                               _%L167596%_
                                               _%L167597%_)
                                              (_%__match170980170981%_
                                               _%e166621167490%_
                                               _%hd166622167493%_
                                               _%tl166623167495%_
                                               _%e166624167498%_
                                               _%hd166625167501%_
                                               _%tl166626167503%_
                                               _%e166627167506%_
                                               _%hd166628167509%_
                                               _%tl166629167511%_
                                               _%e166630167514%_
                                               _%hd166631167517%_
                                               _%tl166632167519%_
                                               _%e166633167522%_
                                               _%hd166634167525%_
                                               _%tl166635167527%_
                                               _%e166636167530%_
                                               _%hd166637167533%_
                                               _%tl166638167535%_
                                               _%e166639167538%_
                                               _%hd166640167541%_
                                               _%tl166641167543%_
                                               _%e166642167546%_
                                               _%hd166643167549%_
                                               _%tl166644167551%_
                                               _%e166645167554%_
                                               _%hd166646167557%_
                                               _%tl166647167559%_
                                               _%e166648167562%_
                                               _%hd166649167565%_
                                               _%tl166650167567%_))))))))
                        (_%loop166654167575%_ _%target166651167570%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx170687170688%_))
                  (let ((_%e166621167490%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx170687170688%_))))
                    (let ((_%tl166623167495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166621167490%_)))
                          (_%hd166622167493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166621167490%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166623167495%_))
                          (let ((_%e166624167498%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166623167495%_))))
                            (let ((_%tl166626167503%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166624167498%_)))
                                  (_%hd166625167501%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166624167498%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166625167501%_))
                                  (let ((_%e166627167506%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166625167501%_))))
                                    (let ((_%tl166629167511%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166627167506%_)))
                                          (_%hd166628167509%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166627167506%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166628167509%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166628167509%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166629167511%_))
                                                  (let ((_%e166630167514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166629167511%_))))
                                                    (let ((_%tl166632167519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166630167514%_)))
                                                          (_%hd166631167517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166630167514%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166632167519%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl166626167503%_))
                      (let ((_%e166633167522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl166626167503%_))))
                        (let ((_%tl166635167527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e166633167522%_)))
                              (_%hd166634167525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e166633167522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd166634167525%_))
                              (let ((_%e166636167530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd166634167525%_))))
                                (let ((_%tl166638167535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166636167530%_)))
                                      (_%hd166637167533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166636167530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd166637167533%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd166637167533%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl166638167535%_))
                                              (let ((_%e166639167538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl166638167535%_))))
                                                (let ((_%tl166641167543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e166639167538%_)))
                                                      (_%hd166640167541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e166639167538%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl166641167543%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl166635167527%_))
                                                          (let ((_%e166642167546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl166635167527%_))))
                    (let ((_%tl166644167551%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166642167546%_)))
                          (_%hd166643167549%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166642167546%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166643167549%_))
                          (let ((_%e166645167554%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166643167549%_))))
                            (let ((_%tl166647167559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166645167554%_)))
                                  (_%hd166646167557%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166645167554%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd166646167557%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd166646167557%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl166647167559%_))
                                          (let ((_%e166648167562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl166647167559%_))))
                                            (let ((_%tl166650167567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e166648167562%_)))
                                                  (_%hd166649167565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e166648167562%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166650167567%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl166644167551%_))
                                                      (let ((_%__splice170691170692%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl166644167551%_ '0))))
                (let ((_%tl166653167572%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170691170692%_ '1)))
                      (_%target166651167570%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice170691170692%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl166653167572%_))
                      (_%__match170792170793%_
                       _%e166621167490%_
                       _%hd166622167493%_
                       _%tl166623167495%_
                       _%e166624167498%_
                       _%hd166625167501%_
                       _%tl166626167503%_
                       _%e166627167506%_
                       _%hd166628167509%_
                       _%tl166629167511%_
                       _%e166630167514%_
                       _%hd166631167517%_
                       _%tl166632167519%_
                       _%e166633167522%_
                       _%hd166634167525%_
                       _%tl166635167527%_
                       _%e166636167530%_
                       _%hd166637167533%_
                       _%tl166638167535%_
                       _%e166639167538%_
                       _%hd166640167541%_
                       _%tl166641167543%_
                       _%e166642167546%_
                       _%hd166643167549%_
                       _%tl166644167551%_
                       _%e166645167554%_
                       _%hd166646167557%_
                       _%tl166647167559%_
                       _%e166648167562%_
                       _%hd166649167565%_
                       _%tl166650167567%_
                       _%__splice170691170692%_
                       _%target166651167570%_
                       _%tl166653167572%_)
                      (_%__match170980170981%_
                       _%e166621167490%_
                       _%hd166622167493%_
                       _%tl166623167495%_
                       _%e166624167498%_
                       _%hd166625167501%_
                       _%tl166626167503%_
                       _%e166627167506%_
                       _%hd166628167509%_
                       _%tl166629167511%_
                       _%e166630167514%_
                       _%hd166631167517%_
                       _%tl166632167519%_
                       _%e166633167522%_
                       _%hd166634167525%_
                       _%tl166635167527%_
                       _%e166636167530%_
                       _%hd166637167533%_
                       _%tl166638167535%_
                       _%e166639167538%_
                       _%hd166640167541%_
                       _%tl166641167543%_
                       _%e166642167546%_
                       _%hd166643167549%_
                       _%tl166644167551%_
                       _%e166645167554%_
                       _%hd166646167557%_
                       _%tl166647167559%_
                       _%e166648167562%_
                       _%hd166649167565%_
                       _%tl166650167567%_))))
              (_%__match170980170981%_
               _%e166621167490%_
               _%hd166622167493%_
               _%tl166623167495%_
               _%e166624167498%_
               _%hd166625167501%_
               _%tl166626167503%_
               _%e166627167506%_
               _%hd166628167509%_
               _%tl166629167511%_
               _%e166630167514%_
               _%hd166631167517%_
               _%tl166632167519%_
               _%e166633167522%_
               _%hd166634167525%_
               _%tl166635167527%_
               _%e166636167530%_
               _%hd166637167533%_
               _%tl166638167535%_
               _%e166639167538%_
               _%hd166640167541%_
               _%tl166641167543%_
               _%e166642167546%_
               _%hd166643167549%_
               _%tl166644167551%_
               _%e166645167554%_
               _%hd166646167557%_
               _%tl166647167559%_
               _%e166648167562%_
               _%hd166649167565%_
               _%tl166650167567%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match171184171185%_
                                                   _%e166621167490%_
                                                   _%hd166622167493%_
                                                   _%tl166623167495%_
                                                   _%e166624167498%_
                                                   _%hd166625167501%_
                                                   _%tl166626167503%_
                                                   _%e166627167506%_
                                                   _%hd166628167509%_
                                                   _%tl166629167511%_
                                                   _%e166630167514%_
                                                   _%hd166631167517%_
                                                   _%tl166632167519%_
                                                   _%e166633167522%_
                                                   _%hd166634167525%_
                                                   _%tl166635167527%_
                                                   _%e166636167530%_
                                                   _%hd166637167533%_
                                                   _%tl166638167535%_
                                                   _%e166639167538%_
                                                   _%hd166640167541%_
                                                   _%tl166641167543%_
                                                   _%e166642167546%_
                                                   _%hd166643167549%_
                                                   _%tl166644167551%_))))
                                          (_%__match171184171185%_
                                           _%e166621167490%_
                                           _%hd166622167493%_
                                           _%tl166623167495%_
                                           _%e166624167498%_
                                           _%hd166625167501%_
                                           _%tl166626167503%_
                                           _%e166627167506%_
                                           _%hd166628167509%_
                                           _%tl166629167511%_
                                           _%e166630167514%_
                                           _%hd166631167517%_
                                           _%tl166632167519%_
                                           _%e166633167522%_
                                           _%hd166634167525%_
                                           _%tl166635167527%_
                                           _%e166636167530%_
                                           _%hd166637167533%_
                                           _%tl166638167535%_
                                           _%e166639167538%_
                                           _%hd166640167541%_
                                           _%tl166641167543%_
                                           _%e166642167546%_
                                           _%hd166643167549%_
                                           _%tl166644167551%_))
                                      (_%__match170860170861%_
                                       _%e166621167490%_
                                       _%hd166622167493%_
                                       _%tl166623167495%_
                                       _%e166624167498%_
                                       _%hd166625167501%_
                                       _%tl166626167503%_
                                       _%e166627167506%_
                                       _%hd166628167509%_
                                       _%tl166629167511%_
                                       _%e166630167514%_
                                       _%hd166631167517%_
                                       _%tl166632167519%_
                                       _%e166633167522%_
                                       _%hd166634167525%_
                                       _%tl166635167527%_
                                       _%e166636167530%_
                                       _%hd166637167533%_
                                       _%tl166638167535%_
                                       _%e166639167538%_
                                       _%hd166640167541%_
                                       _%tl166641167543%_
                                       _%e166642167546%_
                                       _%hd166643167549%_
                                       _%tl166644167551%_
                                       _%e166645167554%_
                                       _%hd166646167557%_
                                       _%tl166647167559%_))
                                  (_%__match171184171185%_
                                   _%e166621167490%_
                                   _%hd166622167493%_
                                   _%tl166623167495%_
                                   _%e166624167498%_
                                   _%hd166625167501%_
                                   _%tl166626167503%_
                                   _%e166627167506%_
                                   _%hd166628167509%_
                                   _%tl166629167511%_
                                   _%e166630167514%_
                                   _%hd166631167517%_
                                   _%tl166632167519%_
                                   _%e166633167522%_
                                   _%hd166634167525%_
                                   _%tl166635167527%_
                                   _%e166636167530%_
                                   _%hd166637167533%_
                                   _%tl166638167535%_
                                   _%e166639167538%_
                                   _%hd166640167541%_
                                   _%tl166641167543%_
                                   _%e166642167546%_
                                   _%hd166643167549%_
                                   _%tl166644167551%_))))
                          (_%__match171184171185%_
                           _%e166621167490%_
                           _%hd166622167493%_
                           _%tl166623167495%_
                           _%e166624167498%_
                           _%hd166625167501%_
                           _%tl166626167503%_
                           _%e166627167506%_
                           _%hd166628167509%_
                           _%tl166629167511%_
                           _%e166630167514%_
                           _%hd166631167517%_
                           _%tl166632167519%_
                           _%e166633167522%_
                           _%hd166634167525%_
                           _%tl166635167527%_
                           _%e166636167530%_
                           _%hd166637167533%_
                           _%tl166638167535%_
                           _%e166639167538%_
                           _%hd166640167541%_
                           _%tl166641167543%_
                           _%e166642167546%_
                           _%hd166643167549%_
                           _%tl166644167551%_))))
                  (_%__match171122171123%_
                   _%e166621167490%_
                   _%hd166622167493%_
                   _%tl166623167495%_
                   _%e166624167498%_
                   _%hd166625167501%_
                   _%tl166626167503%_
                   _%e166627167506%_
                   _%hd166628167509%_
                   _%tl166629167511%_
                   _%e166630167514%_
                   _%hd166631167517%_
                   _%tl166632167519%_
                   _%e166633167522%_
                   _%hd166634167525%_
                   _%tl166635167527%_
                   _%e166636167530%_
                   _%hd166637167533%_
                   _%tl166638167535%_
                   _%e166639167538%_
                   _%hd166640167541%_
                   _%tl166641167543%_))
              (_%__kont170705170706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont170705170706%_))
                                          (_%__kont170705170706%_))
                                      (_%__kont170705170706%_))))
                              (_%__kont170705170706%_))))
                      (_%__kont170705170706%_))
                  (_%__kont170705170706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont170705170706%_))
                                              (_%__kont170705170706%_))
                                          (_%__kont170705170706%_))))
                                  (_%__kont170705170706%_))))
                          (_%__kont170705170706%_))))
                  (_%__kont170705170706%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self165545%_ _%stx165546%_)
        (letrec ((_%force-e165548%_
                  (lambda (_%target166604%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target166604%_ '()))
                                      '()))))))
          (let* ((_%__stx171189171190%_ _%stx165546%_)
                 (_%g165556165778%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx171189171190%_)))))
            (let ((_%__kont171191171192%_
                   (lambda (_%L166550%_ _%L166551%_ _%L166552%_ _%L166553%_)
                     (let ((_%$method166598%_
                            (let ((__tmp171814
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165545%_ 'methods)))
                                  (__tmp171813
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166551%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171814 __tmp171813)))
                           (_%args166599%_
                            (map (lambda (_%g166586166588%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165545%_
                                      _%g166586166588%_)))
                                 (let ((__tmp171815
                                        (lambda (_%g166590166593%_
                                                 _%g166591166595%_)
                                          (cons _%g166590166593%_
                                                _%g166591166595%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171815 '() _%L166550%_)))))
                       (let ((__tmp171816
                              (cons '%#call
                                    (cons (_%force-e165548%_ _%$method166598%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165545%_
                                                               'receiver))
                                                            '()))
                                                _%args166599%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171816 _%stx165546%_)))))
                  (_%__kont171195171196%_
                   (lambda (_%L166382%_
                            _%L166383%_
                            _%L166384%_
                            _%L166385%_
                            _%L166386%_)
                     (let ((_%$method166438%_
                            (let ((__tmp171818
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165545%_ 'methods)))
                                  (__tmp171817
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166383%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171818 __tmp171817)))
                           (_%args166439%_
                            (map (lambda (_%g166426166428%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165545%_
                                      _%g166426166428%_)))
                                 (let ((__tmp171819
                                        (lambda (_%g166430166433%_
                                                 _%g166431166435%_)
                                          (cons _%g166430166433%_
                                                _%g166431166435%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp171819 '() _%L166382%_)))))
                       (let ((__tmp171820
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e165548%_
                                                 _%$method166438%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165545%_ 'receiver))
                          '()))
              _%args166439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171820 _%stx165546%_)))))
                  (_%__kont171199171200%_
                   (lambda (_%L166213%_ _%L166214%_ _%L166215%_)
                     (let* ((_%$field166247%_
                             (let ((__tmp171822
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self165545%_ 'slots)))
                                   (__tmp171821
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L166213%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp171822 __tmp171821)))
                            (__tmp171823
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self165545%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field166247%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self165545%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp171823 _%stx165546%_))))
                  (_%__kont171201171202%_
                   (lambda (_%L166087%_ _%L166088%_ _%L166089%_ _%L166090%_)
                     (let ((_%$field166125%_
                            (let ((__tmp171825
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self165545%_ 'slots)))
                                  (__tmp171824
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L166088%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp171825 __tmp171824)))
                           (_%expr166126%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self165545%_ _%L166087%_))))
                       (let ((__tmp171826
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self165545%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field166125%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self165545%_ 'receiver))
                          '()))
              (cons _%expr166126%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp171826 _%stx165546%_)))))
                  (_%__kont171203171204%_
                   (lambda (_%L165959%_ _%L165960%_)
                     (let* ((_%accessor165982%_
                             (let ((__tmp171827
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165960%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171827)))
                            (_%klass165984%_
                             (let ((__tmp171828
                                    (##structure-ref
                                     _%accessor165982%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165546%_
                                __tmp171828)))
                            (_%slot165986%_
                             (##structure-ref
                              _%accessor165982%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor165982%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165984%_
                                       _%slot165986%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165984%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx165546%_
                           (let* ((_%$field165992%_
                                   (let ((__tmp171829
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171829 _%slot165986%_)))
                                  (__tmp171830
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165545%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165545%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171830
                              _%stx165546%_))))))
                  (_%__kont171205171206%_
                   (lambda (_%L165854%_ _%L165855%_ _%L165856%_)
                     (let* ((_%mutator165884%_
                             (let ((__tmp171831
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L165856%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp171831)))
                            (_%klass165886%_
                             (let ((__tmp171832
                                    (##structure-ref
                                     _%mutator165884%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx165546%_
                                __tmp171832)))
                            (_%slot165888%_
                             (##structure-ref
                              _%mutator165884%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr165890%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self165545%_ _%L165854%_))))
                       (if (and (not (##structure-ref
                                      _%mutator165884%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass165886%_
                                       _%slot165888%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass165886%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp171833
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L165856%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L165855%_
                                                                '()))
                                                    (cons _%expr165890%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp171833 _%stx165546%_))
                           (let* ((_%$field165896%_
                                   (let ((__tmp171834
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp171834 _%slot165888%_)))
                                  (__tmp171835
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self165545%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field165896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self165545%_ 'receiver))
                               '()))
                   (cons _%expr165890%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp171835
                              _%stx165546%_))))))
                  (_%__kont171207171208%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self165545%_ _%stx165546%_)))))
              (let* ((_%__match171688171689%_
                      (lambda (_%e165750165790%_
                               _%hd165751165793%_
                               _%tl165752165795%_
                               _%e165753165798%_
                               _%hd165754165801%_
                               _%tl165755165803%_
                               _%e165756165806%_
                               _%hd165757165809%_
                               _%tl165758165811%_
                               _%e165759165814%_
                               _%hd165760165817%_
                               _%tl165761165819%_
                               _%e165762165822%_
                               _%hd165763165825%_
                               _%tl165764165827%_
                               _%e165765165830%_
                               _%hd165766165833%_
                               _%tl165767165835%_
                               _%e165768165838%_
                               _%hd165769165841%_
                               _%tl165770165843%_
                               _%e165771165846%_
                               _%hd165772165849%_
                               _%tl165773165851%_)
                        (let ((_%L165854%_ _%hd165772165849%_)
                              (_%L165855%_ _%hd165769165841%_)
                              (_%L165856%_ _%hd165760165817%_))
                          (if (and (let ((__tmp171836
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165855%_
                                      __tmp171836))
                                   (let ((__tmp171837
                                          (let ((__tmp171838
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165856%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171838))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171837
                                      'gxc#!mutator::t)))
                              (_%__kont171205171206%_
                               _%L165854%_
                               _%L165855%_
                               _%L165856%_)
                              (_%__kont171207171208%_)))))
                     (_%__match171686171687%_
                      (lambda (_%e165750165790%_
                               _%hd165751165793%_
                               _%tl165752165795%_
                               _%e165753165798%_
                               _%hd165754165801%_
                               _%tl165755165803%_
                               _%e165756165806%_
                               _%hd165757165809%_
                               _%tl165758165811%_
                               _%e165759165814%_
                               _%hd165760165817%_
                               _%tl165761165819%_
                               _%e165762165822%_
                               _%hd165763165825%_
                               _%tl165764165827%_
                               _%e165765165830%_
                               _%hd165766165833%_
                               _%tl165767165835%_
                               _%e165768165838%_
                               _%hd165769165841%_
                               _%tl165770165843%_
                               _%e165771165846%_
                               _%hd165772165849%_
                               _%tl165773165851%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165773165851%_))
                            (_%__match171688171689%_
                             _%e165750165790%_
                             _%hd165751165793%_
                             _%tl165752165795%_
                             _%e165753165798%_
                             _%hd165754165801%_
                             _%tl165755165803%_
                             _%e165756165806%_
                             _%hd165757165809%_
                             _%tl165758165811%_
                             _%e165759165814%_
                             _%hd165760165817%_
                             _%tl165761165819%_
                             _%e165762165822%_
                             _%hd165763165825%_
                             _%tl165764165827%_
                             _%e165765165830%_
                             _%hd165766165833%_
                             _%tl165767165835%_
                             _%e165768165838%_
                             _%hd165769165841%_
                             _%tl165770165843%_
                             _%e165771165846%_
                             _%hd165772165849%_
                             _%tl165773165851%_)
                            (_%__kont171207171208%_))))
                     (_%__match171680171681%_
                      (lambda (_%e165750165790%_
                               _%hd165751165793%_
                               _%tl165752165795%_
                               _%e165753165798%_
                               _%hd165754165801%_
                               _%tl165755165803%_
                               _%e165756165806%_
                               _%hd165757165809%_
                               _%tl165758165811%_
                               _%e165759165814%_
                               _%hd165760165817%_
                               _%tl165761165819%_
                               _%e165762165822%_
                               _%hd165763165825%_
                               _%tl165764165827%_
                               _%e165765165830%_
                               _%hd165766165833%_
                               _%tl165767165835%_
                               _%e165768165838%_
                               _%hd165769165841%_
                               _%tl165770165843%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165764165827%_))
                            (let ((_%e165771165846%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165764165827%_))))
                              (let ((_%tl165773165851%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165771165846%_)))
                                    (_%hd165772165849%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165771165846%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165773165851%_))
                                    (_%__match171688171689%_
                                     _%e165750165790%_
                                     _%hd165751165793%_
                                     _%tl165752165795%_
                                     _%e165753165798%_
                                     _%hd165754165801%_
                                     _%tl165755165803%_
                                     _%e165756165806%_
                                     _%hd165757165809%_
                                     _%tl165758165811%_
                                     _%e165759165814%_
                                     _%hd165760165817%_
                                     _%tl165761165819%_
                                     _%e165762165822%_
                                     _%hd165763165825%_
                                     _%tl165764165827%_
                                     _%e165765165830%_
                                     _%hd165766165833%_
                                     _%tl165767165835%_
                                     _%e165768165838%_
                                     _%hd165769165841%_
                                     _%tl165770165843%_
                                     _%e165771165846%_
                                     _%hd165772165849%_
                                     _%tl165773165851%_)
                                    (_%__kont171207171208%_))))
                            (_%__kont171207171208%_))))
                     (_%__match171626171627%_
                      (lambda (_%e165726165903%_
                               _%hd165727165906%_
                               _%tl165728165908%_
                               _%e165729165911%_
                               _%hd165730165914%_
                               _%tl165731165916%_
                               _%e165732165919%_
                               _%hd165733165922%_
                               _%tl165734165924%_
                               _%e165735165927%_
                               _%hd165736165930%_
                               _%tl165737165932%_
                               _%e165738165935%_
                               _%hd165739165938%_
                               _%tl165740165940%_
                               _%e165741165943%_
                               _%hd165742165946%_
                               _%tl165743165948%_
                               _%e165744165951%_
                               _%hd165745165954%_
                               _%tl165746165956%_)
                        (let ((_%L165959%_ _%hd165745165954%_)
                              (_%L165960%_ _%hd165736165930%_))
                          (if (and (let ((__tmp171839
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L165959%_
                                      __tmp171839))
                                   (let ((__tmp171840
                                          (let ((__tmp171841
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165960%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp171841))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp171840
                                      'gxc#!accessor::t)))
                              (_%__kont171203171204%_ _%L165959%_ _%L165960%_)
                              (_%__kont171207171208%_)))))
                     (_%__match171624171625%_
                      (lambda (_%e165726165903%_
                               _%hd165727165906%_
                               _%tl165728165908%_
                               _%e165729165911%_
                               _%hd165730165914%_
                               _%tl165731165916%_
                               _%e165732165919%_
                               _%hd165733165922%_
                               _%tl165734165924%_
                               _%e165735165927%_
                               _%hd165736165930%_
                               _%tl165737165932%_
                               _%e165738165935%_
                               _%hd165739165938%_
                               _%tl165740165940%_
                               _%e165741165943%_
                               _%hd165742165946%_
                               _%tl165743165948%_
                               _%e165744165951%_
                               _%hd165745165954%_
                               _%tl165746165956%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165740165940%_))
                            (_%__match171626171627%_
                             _%e165726165903%_
                             _%hd165727165906%_
                             _%tl165728165908%_
                             _%e165729165911%_
                             _%hd165730165914%_
                             _%tl165731165916%_
                             _%e165732165919%_
                             _%hd165733165922%_
                             _%tl165734165924%_
                             _%e165735165927%_
                             _%hd165736165930%_
                             _%tl165737165932%_
                             _%e165738165935%_
                             _%hd165739165938%_
                             _%tl165740165940%_
                             _%e165741165943%_
                             _%hd165742165946%_
                             _%tl165743165948%_
                             _%e165744165951%_
                             _%hd165745165954%_
                             _%tl165746165956%_)
                            (_%__match171680171681%_
                             _%e165726165903%_
                             _%hd165727165906%_
                             _%tl165728165908%_
                             _%e165729165911%_
                             _%hd165730165914%_
                             _%tl165731165916%_
                             _%e165732165919%_
                             _%hd165733165922%_
                             _%tl165734165924%_
                             _%e165735165927%_
                             _%hd165736165930%_
                             _%tl165737165932%_
                             _%e165738165935%_
                             _%hd165739165938%_
                             _%tl165740165940%_
                             _%e165741165943%_
                             _%hd165742165946%_
                             _%tl165743165948%_
                             _%e165744165951%_
                             _%hd165745165954%_
                             _%tl165746165956%_))))
                     (_%__match171570171571%_
                      (lambda (_%e165691165999%_
                               _%hd165692166002%_
                               _%tl165693166004%_
                               _%e165694166007%_
                               _%hd165695166010%_
                               _%tl165696166012%_
                               _%e165697166015%_
                               _%hd165698166018%_
                               _%tl165699166020%_
                               _%e165700166023%_
                               _%hd165701166026%_
                               _%tl165702166028%_
                               _%e165703166031%_
                               _%hd165704166034%_
                               _%tl165705166036%_
                               _%e165706166039%_
                               _%hd165707166042%_
                               _%tl165708166044%_
                               _%e165709166047%_
                               _%hd165710166050%_
                               _%tl165711166052%_
                               _%e165712166055%_
                               _%hd165713166058%_
                               _%tl165714166060%_
                               _%e165715166063%_
                               _%hd165716166066%_
                               _%tl165717166068%_
                               _%e165718166071%_
                               _%hd165719166074%_
                               _%tl165720166076%_
                               _%e165721166079%_
                               _%hd165722166082%_
                               _%tl165723166084%_)
                        (let ((_%L166087%_ _%hd165722166082%_)
                              (_%L166088%_ _%hd165719166074%_)
                              (_%L166089%_ _%hd165710166050%_)
                              (_%L166090%_ _%hd165701166026%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166090%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166090%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp171842
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166089%_
                                      __tmp171842)))
                              (_%__kont171201171202%_
                               _%L166087%_
                               _%L166088%_
                               _%L166089%_
                               _%L166090%_)
                              (_%__kont171207171208%_)))))
                     (_%__match171562171563%_
                      (lambda (_%e165691165999%_
                               _%hd165692166002%_
                               _%tl165693166004%_
                               _%e165694166007%_
                               _%hd165695166010%_
                               _%tl165696166012%_
                               _%e165697166015%_
                               _%hd165698166018%_
                               _%tl165699166020%_
                               _%e165700166023%_
                               _%hd165701166026%_
                               _%tl165702166028%_
                               _%e165703166031%_
                               _%hd165704166034%_
                               _%tl165705166036%_
                               _%e165706166039%_
                               _%hd165707166042%_
                               _%tl165708166044%_
                               _%e165709166047%_
                               _%hd165710166050%_
                               _%tl165711166052%_
                               _%e165712166055%_
                               _%hd165713166058%_
                               _%tl165714166060%_
                               _%e165715166063%_
                               _%hd165716166066%_
                               _%tl165717166068%_
                               _%e165718166071%_
                               _%hd165719166074%_
                               _%tl165720166076%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165714166060%_))
                            (let ((_%e165721166079%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165714166060%_))))
                              (let ((_%tl165723166084%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165721166079%_)))
                                    (_%hd165722166082%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165721166079%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165723166084%_))
                                    (_%__match171570171571%_
                                     _%e165691165999%_
                                     _%hd165692166002%_
                                     _%tl165693166004%_
                                     _%e165694166007%_
                                     _%hd165695166010%_
                                     _%tl165696166012%_
                                     _%e165697166015%_
                                     _%hd165698166018%_
                                     _%tl165699166020%_
                                     _%e165700166023%_
                                     _%hd165701166026%_
                                     _%tl165702166028%_
                                     _%e165703166031%_
                                     _%hd165704166034%_
                                     _%tl165705166036%_
                                     _%e165706166039%_
                                     _%hd165707166042%_
                                     _%tl165708166044%_
                                     _%e165709166047%_
                                     _%hd165710166050%_
                                     _%tl165711166052%_
                                     _%e165712166055%_
                                     _%hd165713166058%_
                                     _%tl165714166060%_
                                     _%e165715166063%_
                                     _%hd165716166066%_
                                     _%tl165717166068%_
                                     _%e165718166071%_
                                     _%hd165719166074%_
                                     _%tl165720166076%_
                                     _%e165721166079%_
                                     _%hd165722166082%_
                                     _%tl165723166084%_)
                                    (_%__kont171207171208%_))))
                            (_%__match171686171687%_
                             _%e165691165999%_
                             _%hd165692166002%_
                             _%tl165693166004%_
                             _%e165694166007%_
                             _%hd165695166010%_
                             _%tl165696166012%_
                             _%e165697166015%_
                             _%hd165698166018%_
                             _%tl165699166020%_
                             _%e165700166023%_
                             _%hd165701166026%_
                             _%tl165702166028%_
                             _%e165703166031%_
                             _%hd165704166034%_
                             _%tl165705166036%_
                             _%e165706166039%_
                             _%hd165707166042%_
                             _%tl165708166044%_
                             _%e165709166047%_
                             _%hd165710166050%_
                             _%tl165711166052%_
                             _%e165712166055%_
                             _%hd165713166058%_
                             _%tl165714166060%_))))
                     (_%__match171484171485%_
                      (lambda (_%e165657166133%_
                               _%hd165658166136%_
                               _%tl165659166138%_
                               _%e165660166141%_
                               _%hd165661166144%_
                               _%tl165662166146%_
                               _%e165663166149%_
                               _%hd165664166152%_
                               _%tl165665166154%_
                               _%e165666166157%_
                               _%hd165667166160%_
                               _%tl165668166162%_
                               _%e165669166165%_
                               _%hd165670166168%_
                               _%tl165671166170%_
                               _%e165672166173%_
                               _%hd165673166176%_
                               _%tl165674166178%_
                               _%e165675166181%_
                               _%hd165676166184%_
                               _%tl165677166186%_
                               _%e165678166189%_
                               _%hd165679166192%_
                               _%tl165680166194%_
                               _%e165681166197%_
                               _%hd165682166200%_
                               _%tl165683166202%_
                               _%e165684166205%_
                               _%hd165685166208%_
                               _%tl165686166210%_)
                        (let ((_%L166213%_ _%hd165685166208%_)
                              (_%L166214%_ _%hd165676166184%_)
                              (_%L166215%_ _%hd165667166160%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166215%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L166215%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp171843
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self165545%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L166214%_
                                      __tmp171843)))
                              (_%__kont171199171200%_
                               _%L166213%_
                               _%L166214%_
                               _%L166215%_)
                              (_%__match171688171689%_
                               _%e165657166133%_
                               _%hd165658166136%_
                               _%tl165659166138%_
                               _%e165660166141%_
                               _%hd165661166144%_
                               _%tl165662166146%_
                               _%e165663166149%_
                               _%hd165664166152%_
                               _%tl165665166154%_
                               _%e165666166157%_
                               _%hd165667166160%_
                               _%tl165668166162%_
                               _%e165669166165%_
                               _%hd165670166168%_
                               _%tl165671166170%_
                               _%e165672166173%_
                               _%hd165673166176%_
                               _%tl165674166178%_
                               _%e165675166181%_
                               _%hd165676166184%_
                               _%tl165677166186%_
                               _%e165678166189%_
                               _%hd165679166192%_
                               _%tl165680166194%_)))))
                     (_%__match171482171483%_
                      (lambda (_%e165657166133%_
                               _%hd165658166136%_
                               _%tl165659166138%_
                               _%e165660166141%_
                               _%hd165661166144%_
                               _%tl165662166146%_
                               _%e165663166149%_
                               _%hd165664166152%_
                               _%tl165665166154%_
                               _%e165666166157%_
                               _%hd165667166160%_
                               _%tl165668166162%_
                               _%e165669166165%_
                               _%hd165670166168%_
                               _%tl165671166170%_
                               _%e165672166173%_
                               _%hd165673166176%_
                               _%tl165674166178%_
                               _%e165675166181%_
                               _%hd165676166184%_
                               _%tl165677166186%_
                               _%e165678166189%_
                               _%hd165679166192%_
                               _%tl165680166194%_
                               _%e165681166197%_
                               _%hd165682166200%_
                               _%tl165683166202%_
                               _%e165684166205%_
                               _%hd165685166208%_
                               _%tl165686166210%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl165680166194%_))
                            (_%__match171484171485%_
                             _%e165657166133%_
                             _%hd165658166136%_
                             _%tl165659166138%_
                             _%e165660166141%_
                             _%hd165661166144%_
                             _%tl165662166146%_
                             _%e165663166149%_
                             _%hd165664166152%_
                             _%tl165665166154%_
                             _%e165666166157%_
                             _%hd165667166160%_
                             _%tl165668166162%_
                             _%e165669166165%_
                             _%hd165670166168%_
                             _%tl165671166170%_
                             _%e165672166173%_
                             _%hd165673166176%_
                             _%tl165674166178%_
                             _%e165675166181%_
                             _%hd165676166184%_
                             _%tl165677166186%_
                             _%e165678166189%_
                             _%hd165679166192%_
                             _%tl165680166194%_
                             _%e165681166197%_
                             _%hd165682166200%_
                             _%tl165683166202%_
                             _%e165684166205%_
                             _%hd165685166208%_
                             _%tl165686166210%_)
                            (_%__match171562171563%_
                             _%e165657166133%_
                             _%hd165658166136%_
                             _%tl165659166138%_
                             _%e165660166141%_
                             _%hd165661166144%_
                             _%tl165662166146%_
                             _%e165663166149%_
                             _%hd165664166152%_
                             _%tl165665166154%_
                             _%e165666166157%_
                             _%hd165667166160%_
                             _%tl165668166162%_
                             _%e165669166165%_
                             _%hd165670166168%_
                             _%tl165671166170%_
                             _%e165672166173%_
                             _%hd165673166176%_
                             _%tl165674166178%_
                             _%e165675166181%_
                             _%hd165676166184%_
                             _%tl165677166186%_
                             _%e165678166189%_
                             _%hd165679166192%_
                             _%tl165680166194%_
                             _%e165681166197%_
                             _%hd165682166200%_
                             _%tl165683166202%_
                             _%e165684166205%_
                             _%hd165685166208%_
                             _%tl165686166210%_))))
                     (_%__match171472171473%_
                      (lambda (_%e165657166133%_
                               _%hd165658166136%_
                               _%tl165659166138%_
                               _%e165660166141%_
                               _%hd165661166144%_
                               _%tl165662166146%_
                               _%e165663166149%_
                               _%hd165664166152%_
                               _%tl165665166154%_
                               _%e165666166157%_
                               _%hd165667166160%_
                               _%tl165668166162%_
                               _%e165669166165%_
                               _%hd165670166168%_
                               _%tl165671166170%_
                               _%e165672166173%_
                               _%hd165673166176%_
                               _%tl165674166178%_
                               _%e165675166181%_
                               _%hd165676166184%_
                               _%tl165677166186%_
                               _%e165678166189%_
                               _%hd165679166192%_
                               _%tl165680166194%_
                               _%e165681166197%_
                               _%hd165682166200%_
                               _%tl165683166202%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd165682166200%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165683166202%_))
                                (let ((_%e165684166205%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165683166202%_))))
                                  (let ((_%tl165686166210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165684166205%_)))
                                        (_%hd165685166208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165684166205%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165686166210%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl165680166194%_))
                                            (_%__match171484171485%_
                                             _%e165657166133%_
                                             _%hd165658166136%_
                                             _%tl165659166138%_
                                             _%e165660166141%_
                                             _%hd165661166144%_
                                             _%tl165662166146%_
                                             _%e165663166149%_
                                             _%hd165664166152%_
                                             _%tl165665166154%_
                                             _%e165666166157%_
                                             _%hd165667166160%_
                                             _%tl165668166162%_
                                             _%e165669166165%_
                                             _%hd165670166168%_
                                             _%tl165671166170%_
                                             _%e165672166173%_
                                             _%hd165673166176%_
                                             _%tl165674166178%_
                                             _%e165675166181%_
                                             _%hd165676166184%_
                                             _%tl165677166186%_
                                             _%e165678166189%_
                                             _%hd165679166192%_
                                             _%tl165680166194%_
                                             _%e165681166197%_
                                             _%hd165682166200%_
                                             _%tl165683166202%_
                                             _%e165684166205%_
                                             _%hd165685166208%_
                                             _%tl165686166210%_)
                                            (_%__match171562171563%_
                                             _%e165657166133%_
                                             _%hd165658166136%_
                                             _%tl165659166138%_
                                             _%e165660166141%_
                                             _%hd165661166144%_
                                             _%tl165662166146%_
                                             _%e165663166149%_
                                             _%hd165664166152%_
                                             _%tl165665166154%_
                                             _%e165666166157%_
                                             _%hd165667166160%_
                                             _%tl165668166162%_
                                             _%e165669166165%_
                                             _%hd165670166168%_
                                             _%tl165671166170%_
                                             _%e165672166173%_
                                             _%hd165673166176%_
                                             _%tl165674166178%_
                                             _%e165675166181%_
                                             _%hd165676166184%_
                                             _%tl165677166186%_
                                             _%e165678166189%_
                                             _%hd165679166192%_
                                             _%tl165680166194%_
                                             _%e165681166197%_
                                             _%hd165682166200%_
                                             _%tl165683166202%_
                                             _%e165684166205%_
                                             _%hd165685166208%_
                                             _%tl165686166210%_))
                                        (_%__match171686171687%_
                                         _%e165657166133%_
                                         _%hd165658166136%_
                                         _%tl165659166138%_
                                         _%e165660166141%_
                                         _%hd165661166144%_
                                         _%tl165662166146%_
                                         _%e165663166149%_
                                         _%hd165664166152%_
                                         _%tl165665166154%_
                                         _%e165666166157%_
                                         _%hd165667166160%_
                                         _%tl165668166162%_
                                         _%e165669166165%_
                                         _%hd165670166168%_
                                         _%tl165671166170%_
                                         _%e165672166173%_
                                         _%hd165673166176%_
                                         _%tl165674166178%_
                                         _%e165675166181%_
                                         _%hd165676166184%_
                                         _%tl165677166186%_
                                         _%e165678166189%_
                                         _%hd165679166192%_
                                         _%tl165680166194%_))))
                                (_%__match171686171687%_
                                 _%e165657166133%_
                                 _%hd165658166136%_
                                 _%tl165659166138%_
                                 _%e165660166141%_
                                 _%hd165661166144%_
                                 _%tl165662166146%_
                                 _%e165663166149%_
                                 _%hd165664166152%_
                                 _%tl165665166154%_
                                 _%e165666166157%_
                                 _%hd165667166160%_
                                 _%tl165668166162%_
                                 _%e165669166165%_
                                 _%hd165670166168%_
                                 _%tl165671166170%_
                                 _%e165672166173%_
                                 _%hd165673166176%_
                                 _%tl165674166178%_
                                 _%e165675166181%_
                                 _%hd165676166184%_
                                 _%tl165677166186%_
                                 _%e165678166189%_
                                 _%hd165679166192%_
                                 _%tl165680166194%_))
                            (_%__match171686171687%_
                             _%e165657166133%_
                             _%hd165658166136%_
                             _%tl165659166138%_
                             _%e165660166141%_
                             _%hd165661166144%_
                             _%tl165662166146%_
                             _%e165663166149%_
                             _%hd165664166152%_
                             _%tl165665166154%_
                             _%e165666166157%_
                             _%hd165667166160%_
                             _%tl165668166162%_
                             _%e165669166165%_
                             _%hd165670166168%_
                             _%tl165671166170%_
                             _%e165672166173%_
                             _%hd165673166176%_
                             _%tl165674166178%_
                             _%e165675166181%_
                             _%hd165676166184%_
                             _%tl165677166186%_
                             _%e165678166189%_
                             _%hd165679166192%_
                             _%tl165680166194%_))))
                     (_%__match171404171405%_
                      (lambda (_%e165606166254%_
                               _%hd165607166257%_
                               _%tl165608166259%_
                               _%e165609166262%_
                               _%hd165610166265%_
                               _%tl165611166267%_
                               _%e165612166270%_
                               _%hd165613166273%_
                               _%tl165614166275%_
                               _%e165615166278%_
                               _%hd165616166281%_
                               _%tl165617166283%_
                               _%e165618166286%_
                               _%hd165619166289%_
                               _%tl165620166291%_
                               _%e165621166294%_
                               _%hd165622166297%_
                               _%tl165623166299%_
                               _%e165624166302%_
                               _%hd165625166305%_
                               _%tl165626166307%_
                               _%e165627166310%_
                               _%hd165628166313%_
                               _%tl165629166315%_
                               _%e165630166318%_
                               _%hd165631166321%_
                               _%tl165632166323%_
                               _%e165633166326%_
                               _%hd165634166329%_
                               _%tl165635166331%_
                               _%e165636166334%_
                               _%hd165637166337%_
                               _%tl165638166339%_
                               _%e165639166342%_
                               _%hd165640166345%_
                               _%tl165641166347%_
                               _%e165642166350%_
                               _%hd165643166353%_
                               _%tl165644166355%_
                               _%__splice171197171198%_
                               _%target165645166358%_
                               _%tl165647166360%_)
                        (letrec ((_%loop165648166363%_
                                  (lambda (_%hd165646166366%_
                                           _%args165652166368%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165646166366%_))
                                        (let ((_%e165649166371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165646166366%_))))
                                          (let ((_%lp-tl165651166376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165649166371%_)))
                                                (_%lp-hd165650166374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165649166371%_))))
                                            (_%loop165648166363%_
                                             _%lp-tl165651166376%_
                                             (cons _%lp-hd165650166374%_
                                                   _%args165652166368%_))))
                                        (let ((_%args165653166379%_
                                               (reverse _%args165652166368%_)))
                                          (let ((_%L166382%_
                                                 _%args165653166379%_)
                                                (_%L166383%_
                                                 _%hd165643166353%_)
                                                (_%L166384%_
                                                 _%hd165634166329%_)
                                                (_%L166385%_
                                                 _%hd165625166305%_)
                                                (_%L166386%_
                                                 _%hd165616166281%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166386%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166385%_
                                                        'call-method))
                                                     (let ((__tmp171844
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165545%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166384%_
                                                        __tmp171844)))
                                                (_%__kont171195171196%_
                                                 _%L166382%_
                                                 _%L166383%_
                                                 _%L166384%_
                                                 _%L166385%_
                                                 _%L166386%_)
                                                (_%__kont171207171208%_))))))))
                          (_%loop165648166363%_ _%target165645166358%_ '()))))
                     (_%__match171362171363%_
                      (lambda (_%e165606166254%_
                               _%hd165607166257%_
                               _%tl165608166259%_
                               _%e165609166262%_
                               _%hd165610166265%_
                               _%tl165611166267%_
                               _%e165612166270%_
                               _%hd165613166273%_
                               _%tl165614166275%_
                               _%e165615166278%_
                               _%hd165616166281%_
                               _%tl165617166283%_
                               _%e165618166286%_
                               _%hd165619166289%_
                               _%tl165620166291%_
                               _%e165621166294%_
                               _%hd165622166297%_
                               _%tl165623166299%_
                               _%e165624166302%_
                               _%hd165625166305%_
                               _%tl165626166307%_
                               _%e165627166310%_
                               _%hd165628166313%_
                               _%tl165629166315%_
                               _%e165630166318%_
                               _%hd165631166321%_
                               _%tl165632166323%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd165631166321%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165632166323%_))
                                (let ((_%e165633166326%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165632166323%_))))
                                  (let ((_%tl165635166331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165633166326%_)))
                                        (_%hd165634166329%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165633166326%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165635166331%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165629166315%_))
                                            (let ((_%e165636166334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165629166315%_))))
                                              (let ((_%tl165638166339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165636166334%_)))
                                                    (_%hd165637166337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165636166334%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd165637166337%_))
                                                    (let ((_%e165639166342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd165637166337%_))))
                                                      (let ((_%tl165641166347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165639166342%_)))
                    (_%hd165640166345%_
                     (let () (declare (not safe)) (##car _%e165639166342%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd165640166345%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd165640166345%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165641166347%_))
                            (let ((_%e165642166350%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165641166347%_))))
                              (let ((_%tl165644166355%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165642166350%_)))
                                    (_%hd165643166353%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165642166350%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl165644166355%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl165638166339%_))
                                        (let ((_%__splice171197171198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl165638166339%_
                                                  '0))))
                                          (let ((_%tl165647166360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171197171198%_
                                                    '1)))
                                                (_%target165645166358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171197171198%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165647166360%_))
                                                (_%__match171404171405%_
                                                 _%e165606166254%_
                                                 _%hd165607166257%_
                                                 _%tl165608166259%_
                                                 _%e165609166262%_
                                                 _%hd165610166265%_
                                                 _%tl165611166267%_
                                                 _%e165612166270%_
                                                 _%hd165613166273%_
                                                 _%tl165614166275%_
                                                 _%e165615166278%_
                                                 _%hd165616166281%_
                                                 _%tl165617166283%_
                                                 _%e165618166286%_
                                                 _%hd165619166289%_
                                                 _%tl165620166291%_
                                                 _%e165621166294%_
                                                 _%hd165622166297%_
                                                 _%tl165623166299%_
                                                 _%e165624166302%_
                                                 _%hd165625166305%_
                                                 _%tl165626166307%_
                                                 _%e165627166310%_
                                                 _%hd165628166313%_
                                                 _%tl165629166315%_
                                                 _%e165630166318%_
                                                 _%hd165631166321%_
                                                 _%tl165632166323%_
                                                 _%e165633166326%_
                                                 _%hd165634166329%_
                                                 _%tl165635166331%_
                                                 _%e165636166334%_
                                                 _%hd165637166337%_
                                                 _%tl165638166339%_
                                                 _%e165639166342%_
                                                 _%hd165640166345%_
                                                 _%tl165641166347%_
                                                 _%e165642166350%_
                                                 _%hd165643166353%_
                                                 _%tl165644166355%_
                                                 _%__splice171197171198%_
                                                 _%target165645166358%_
                                                 _%tl165647166360%_)
                                                (_%__kont171207171208%_))))
                                        (_%__kont171207171208%_))
                                    (_%__kont171207171208%_))))
                            (_%__kont171207171208%_))
                        (_%__kont171207171208%_))
                    (_%__kont171207171208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171207171208%_))))
                                            (_%__match171686171687%_
                                             _%e165606166254%_
                                             _%hd165607166257%_
                                             _%tl165608166259%_
                                             _%e165609166262%_
                                             _%hd165610166265%_
                                             _%tl165611166267%_
                                             _%e165612166270%_
                                             _%hd165613166273%_
                                             _%tl165614166275%_
                                             _%e165615166278%_
                                             _%hd165616166281%_
                                             _%tl165617166283%_
                                             _%e165618166286%_
                                             _%hd165619166289%_
                                             _%tl165620166291%_
                                             _%e165621166294%_
                                             _%hd165622166297%_
                                             _%tl165623166299%_
                                             _%e165624166302%_
                                             _%hd165625166305%_
                                             _%tl165626166307%_
                                             _%e165627166310%_
                                             _%hd165628166313%_
                                             _%tl165629166315%_))
                                        (_%__match171686171687%_
                                         _%e165606166254%_
                                         _%hd165607166257%_
                                         _%tl165608166259%_
                                         _%e165609166262%_
                                         _%hd165610166265%_
                                         _%tl165611166267%_
                                         _%e165612166270%_
                                         _%hd165613166273%_
                                         _%tl165614166275%_
                                         _%e165615166278%_
                                         _%hd165616166281%_
                                         _%tl165617166283%_
                                         _%e165618166286%_
                                         _%hd165619166289%_
                                         _%tl165620166291%_
                                         _%e165621166294%_
                                         _%hd165622166297%_
                                         _%tl165623166299%_
                                         _%e165624166302%_
                                         _%hd165625166305%_
                                         _%tl165626166307%_
                                         _%e165627166310%_
                                         _%hd165628166313%_
                                         _%tl165629166315%_))))
                                (_%__match171686171687%_
                                 _%e165606166254%_
                                 _%hd165607166257%_
                                 _%tl165608166259%_
                                 _%e165609166262%_
                                 _%hd165610166265%_
                                 _%tl165611166267%_
                                 _%e165612166270%_
                                 _%hd165613166273%_
                                 _%tl165614166275%_
                                 _%e165615166278%_
                                 _%hd165616166281%_
                                 _%tl165617166283%_
                                 _%e165618166286%_
                                 _%hd165619166289%_
                                 _%tl165620166291%_
                                 _%e165621166294%_
                                 _%hd165622166297%_
                                 _%tl165623166299%_
                                 _%e165624166302%_
                                 _%hd165625166305%_
                                 _%tl165626166307%_
                                 _%e165627166310%_
                                 _%hd165628166313%_
                                 _%tl165629166315%_))
                            (_%__match171472171473%_
                             _%e165606166254%_
                             _%hd165607166257%_
                             _%tl165608166259%_
                             _%e165609166262%_
                             _%hd165610166265%_
                             _%tl165611166267%_
                             _%e165612166270%_
                             _%hd165613166273%_
                             _%tl165614166275%_
                             _%e165615166278%_
                             _%hd165616166281%_
                             _%tl165617166283%_
                             _%e165618166286%_
                             _%hd165619166289%_
                             _%tl165620166291%_
                             _%e165621166294%_
                             _%hd165622166297%_
                             _%tl165623166299%_
                             _%e165624166302%_
                             _%hd165625166305%_
                             _%tl165626166307%_
                             _%e165627166310%_
                             _%hd165628166313%_
                             _%tl165629166315%_
                             _%e165630166318%_
                             _%hd165631166321%_
                             _%tl165632166323%_))))
                     (_%__match171294171295%_
                      (lambda (_%e165562166446%_
                               _%hd165563166449%_
                               _%tl165564166451%_
                               _%e165565166454%_
                               _%hd165566166457%_
                               _%tl165567166459%_
                               _%e165568166462%_
                               _%hd165569166465%_
                               _%tl165570166467%_
                               _%e165571166470%_
                               _%hd165572166473%_
                               _%tl165573166475%_
                               _%e165574166478%_
                               _%hd165575166481%_
                               _%tl165576166483%_
                               _%e165577166486%_
                               _%hd165578166489%_
                               _%tl165579166491%_
                               _%e165580166494%_
                               _%hd165581166497%_
                               _%tl165582166499%_
                               _%e165583166502%_
                               _%hd165584166505%_
                               _%tl165585166507%_
                               _%e165586166510%_
                               _%hd165587166513%_
                               _%tl165588166515%_
                               _%e165589166518%_
                               _%hd165590166521%_
                               _%tl165591166523%_
                               _%__splice171193171194%_
                               _%target165592166526%_
                               _%tl165594166528%_)
                        (letrec ((_%loop165595166531%_
                                  (lambda (_%hd165593166534%_
                                           _%args165599166536%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd165593166534%_))
                                        (let ((_%e165596166539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd165593166534%_))))
                                          (let ((_%lp-tl165598166544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165596166539%_)))
                                                (_%lp-hd165597166542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165596166539%_))))
                                            (_%loop165595166531%_
                                             _%lp-tl165598166544%_
                                             (cons _%lp-hd165597166542%_
                                                   _%args165599166536%_))))
                                        (let ((_%args165600166547%_
                                               (reverse _%args165599166536%_)))
                                          (let ((_%L166550%_
                                                 _%args165600166547%_)
                                                (_%L166551%_
                                                 _%hd165590166521%_)
                                                (_%L166552%_
                                                 _%hd165581166497%_)
                                                (_%L166553%_
                                                 _%hd165572166473%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L166553%_
                                                        'call-method))
                                                     (let ((__tmp171845
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self165545%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L166552%_
                                                        __tmp171845)))
                                                (_%__kont171191171192%_
                                                 _%L166550%_
                                                 _%L166551%_
                                                 _%L166552%_
                                                 _%L166553%_)
                                                (_%__match171482171483%_
                                                 _%e165562166446%_
                                                 _%hd165563166449%_
                                                 _%tl165564166451%_
                                                 _%e165565166454%_
                                                 _%hd165566166457%_
                                                 _%tl165567166459%_
                                                 _%e165568166462%_
                                                 _%hd165569166465%_
                                                 _%tl165570166467%_
                                                 _%e165571166470%_
                                                 _%hd165572166473%_
                                                 _%tl165573166475%_
                                                 _%e165574166478%_
                                                 _%hd165575166481%_
                                                 _%tl165576166483%_
                                                 _%e165577166486%_
                                                 _%hd165578166489%_
                                                 _%tl165579166491%_
                                                 _%e165580166494%_
                                                 _%hd165581166497%_
                                                 _%tl165582166499%_
                                                 _%e165583166502%_
                                                 _%hd165584166505%_
                                                 _%tl165585166507%_
                                                 _%e165586166510%_
                                                 _%hd165587166513%_
                                                 _%tl165588166515%_
                                                 _%e165589166518%_
                                                 _%hd165590166521%_
                                                 _%tl165591166523%_))))))))
                          (_%loop165595166531%_ _%target165592166526%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx171189171190%_))
                    (let ((_%e165562166446%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx171189171190%_))))
                      (let ((_%tl165564166451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165562166446%_)))
                            (_%hd165563166449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165562166446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl165564166451%_))
                            (let ((_%e165565166454%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl165564166451%_))))
                              (let ((_%tl165567166459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165565166454%_)))
                                    (_%hd165566166457%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165565166454%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd165566166457%_))
                                    (let ((_%e165568166462%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd165566166457%_))))
                                      (let ((_%tl165570166467%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e165568166462%_)))
                                            (_%hd165569166465%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e165568166462%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd165569166465%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd165569166465%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl165570166467%_))
                                                    (let ((_%e165571166470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl165570166467%_))))
                                                      (let ((_%tl165573166475%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e165571166470%_)))
                    (_%hd165572166473%_
                     (let () (declare (not safe)) (##car _%e165571166470%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl165573166475%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl165567166459%_))
                        (let ((_%e165574166478%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl165567166459%_))))
                          (let ((_%tl165576166483%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165574166478%_)))
                                (_%hd165575166481%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165574166478%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd165575166481%_))
                                (let ((_%e165577166486%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd165575166481%_))))
                                  (let ((_%tl165579166491%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165577166486%_)))
                                        (_%hd165578166489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165577166486%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd165578166489%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd165578166489%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165579166491%_))
                                                (let ((_%e165580166494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165579166491%_))))
                                                  (let ((_%tl165582166499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165580166494%_)))
                                                        (_%hd165581166497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165580166494%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165582166499%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl165576166483%_))
                                                            (let ((_%e165583166502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl165576166483%_))))
                      (let ((_%tl165585166507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e165583166502%_)))
                            (_%hd165584166505%_
                             (let ()
                               (declare (not safe))
                               (##car _%e165583166502%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd165584166505%_))
                            (let ((_%e165586166510%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd165584166505%_))))
                              (let ((_%tl165588166515%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e165586166510%_)))
                                    (_%hd165587166513%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e165586166510%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd165587166513%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd165587166513%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl165588166515%_))
                                            (let ((_%e165589166518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl165588166515%_))))
                                              (let ((_%tl165591166523%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e165589166518%_)))
                                                    (_%hd165590166521%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e165589166518%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl165591166523%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl165585166507%_))
                                                        (let ((_%__splice171193171194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl165585166507%_ '0))))
                  (let ((_%tl165594166528%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171193171194%_ '1)))
                        (_%target165592166526%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice171193171194%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl165594166528%_))
                        (_%__match171294171295%_
                         _%e165562166446%_
                         _%hd165563166449%_
                         _%tl165564166451%_
                         _%e165565166454%_
                         _%hd165566166457%_
                         _%tl165567166459%_
                         _%e165568166462%_
                         _%hd165569166465%_
                         _%tl165570166467%_
                         _%e165571166470%_
                         _%hd165572166473%_
                         _%tl165573166475%_
                         _%e165574166478%_
                         _%hd165575166481%_
                         _%tl165576166483%_
                         _%e165577166486%_
                         _%hd165578166489%_
                         _%tl165579166491%_
                         _%e165580166494%_
                         _%hd165581166497%_
                         _%tl165582166499%_
                         _%e165583166502%_
                         _%hd165584166505%_
                         _%tl165585166507%_
                         _%e165586166510%_
                         _%hd165587166513%_
                         _%tl165588166515%_
                         _%e165589166518%_
                         _%hd165590166521%_
                         _%tl165591166523%_
                         _%__splice171193171194%_
                         _%target165592166526%_
                         _%tl165594166528%_)
                        (_%__match171482171483%_
                         _%e165562166446%_
                         _%hd165563166449%_
                         _%tl165564166451%_
                         _%e165565166454%_
                         _%hd165566166457%_
                         _%tl165567166459%_
                         _%e165568166462%_
                         _%hd165569166465%_
                         _%tl165570166467%_
                         _%e165571166470%_
                         _%hd165572166473%_
                         _%tl165573166475%_
                         _%e165574166478%_
                         _%hd165575166481%_
                         _%tl165576166483%_
                         _%e165577166486%_
                         _%hd165578166489%_
                         _%tl165579166491%_
                         _%e165580166494%_
                         _%hd165581166497%_
                         _%tl165582166499%_
                         _%e165583166502%_
                         _%hd165584166505%_
                         _%tl165585166507%_
                         _%e165586166510%_
                         _%hd165587166513%_
                         _%tl165588166515%_
                         _%e165589166518%_
                         _%hd165590166521%_
                         _%tl165591166523%_))))
                (_%__match171482171483%_
                 _%e165562166446%_
                 _%hd165563166449%_
                 _%tl165564166451%_
                 _%e165565166454%_
                 _%hd165566166457%_
                 _%tl165567166459%_
                 _%e165568166462%_
                 _%hd165569166465%_
                 _%tl165570166467%_
                 _%e165571166470%_
                 _%hd165572166473%_
                 _%tl165573166475%_
                 _%e165574166478%_
                 _%hd165575166481%_
                 _%tl165576166483%_
                 _%e165577166486%_
                 _%hd165578166489%_
                 _%tl165579166491%_
                 _%e165580166494%_
                 _%hd165581166497%_
                 _%tl165582166499%_
                 _%e165583166502%_
                 _%hd165584166505%_
                 _%tl165585166507%_
                 _%e165586166510%_
                 _%hd165587166513%_
                 _%tl165588166515%_
                 _%e165589166518%_
                 _%hd165590166521%_
                 _%tl165591166523%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171686171687%_
                                                     _%e165562166446%_
                                                     _%hd165563166449%_
                                                     _%tl165564166451%_
                                                     _%e165565166454%_
                                                     _%hd165566166457%_
                                                     _%tl165567166459%_
                                                     _%e165568166462%_
                                                     _%hd165569166465%_
                                                     _%tl165570166467%_
                                                     _%e165571166470%_
                                                     _%hd165572166473%_
                                                     _%tl165573166475%_
                                                     _%e165574166478%_
                                                     _%hd165575166481%_
                                                     _%tl165576166483%_
                                                     _%e165577166486%_
                                                     _%hd165578166489%_
                                                     _%tl165579166491%_
                                                     _%e165580166494%_
                                                     _%hd165581166497%_
                                                     _%tl165582166499%_
                                                     _%e165583166502%_
                                                     _%hd165584166505%_
                                                     _%tl165585166507%_))))
                                            (_%__match171686171687%_
                                             _%e165562166446%_
                                             _%hd165563166449%_
                                             _%tl165564166451%_
                                             _%e165565166454%_
                                             _%hd165566166457%_
                                             _%tl165567166459%_
                                             _%e165568166462%_
                                             _%hd165569166465%_
                                             _%tl165570166467%_
                                             _%e165571166470%_
                                             _%hd165572166473%_
                                             _%tl165573166475%_
                                             _%e165574166478%_
                                             _%hd165575166481%_
                                             _%tl165576166483%_
                                             _%e165577166486%_
                                             _%hd165578166489%_
                                             _%tl165579166491%_
                                             _%e165580166494%_
                                             _%hd165581166497%_
                                             _%tl165582166499%_
                                             _%e165583166502%_
                                             _%hd165584166505%_
                                             _%tl165585166507%_))
                                        (_%__match171362171363%_
                                         _%e165562166446%_
                                         _%hd165563166449%_
                                         _%tl165564166451%_
                                         _%e165565166454%_
                                         _%hd165566166457%_
                                         _%tl165567166459%_
                                         _%e165568166462%_
                                         _%hd165569166465%_
                                         _%tl165570166467%_
                                         _%e165571166470%_
                                         _%hd165572166473%_
                                         _%tl165573166475%_
                                         _%e165574166478%_
                                         _%hd165575166481%_
                                         _%tl165576166483%_
                                         _%e165577166486%_
                                         _%hd165578166489%_
                                         _%tl165579166491%_
                                         _%e165580166494%_
                                         _%hd165581166497%_
                                         _%tl165582166499%_
                                         _%e165583166502%_
                                         _%hd165584166505%_
                                         _%tl165585166507%_
                                         _%e165586166510%_
                                         _%hd165587166513%_
                                         _%tl165588166515%_))
                                    (_%__match171686171687%_
                                     _%e165562166446%_
                                     _%hd165563166449%_
                                     _%tl165564166451%_
                                     _%e165565166454%_
                                     _%hd165566166457%_
                                     _%tl165567166459%_
                                     _%e165568166462%_
                                     _%hd165569166465%_
                                     _%tl165570166467%_
                                     _%e165571166470%_
                                     _%hd165572166473%_
                                     _%tl165573166475%_
                                     _%e165574166478%_
                                     _%hd165575166481%_
                                     _%tl165576166483%_
                                     _%e165577166486%_
                                     _%hd165578166489%_
                                     _%tl165579166491%_
                                     _%e165580166494%_
                                     _%hd165581166497%_
                                     _%tl165582166499%_
                                     _%e165583166502%_
                                     _%hd165584166505%_
                                     _%tl165585166507%_))))
                            (_%__match171686171687%_
                             _%e165562166446%_
                             _%hd165563166449%_
                             _%tl165564166451%_
                             _%e165565166454%_
                             _%hd165566166457%_
                             _%tl165567166459%_
                             _%e165568166462%_
                             _%hd165569166465%_
                             _%tl165570166467%_
                             _%e165571166470%_
                             _%hd165572166473%_
                             _%tl165573166475%_
                             _%e165574166478%_
                             _%hd165575166481%_
                             _%tl165576166483%_
                             _%e165577166486%_
                             _%hd165578166489%_
                             _%tl165579166491%_
                             _%e165580166494%_
                             _%hd165581166497%_
                             _%tl165582166499%_
                             _%e165583166502%_
                             _%hd165584166505%_
                             _%tl165585166507%_))))
                    (_%__match171624171625%_
                     _%e165562166446%_
                     _%hd165563166449%_
                     _%tl165564166451%_
                     _%e165565166454%_
                     _%hd165566166457%_
                     _%tl165567166459%_
                     _%e165568166462%_
                     _%hd165569166465%_
                     _%tl165570166467%_
                     _%e165571166470%_
                     _%hd165572166473%_
                     _%tl165573166475%_
                     _%e165574166478%_
                     _%hd165575166481%_
                     _%tl165576166483%_
                     _%e165577166486%_
                     _%hd165578166489%_
                     _%tl165579166491%_
                     _%e165580166494%_
                     _%hd165581166497%_
                     _%tl165582166499%_))
                (_%__kont171207171208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171207171208%_))
                                            (_%__kont171207171208%_))
                                        (_%__kont171207171208%_))))
                                (_%__kont171207171208%_))))
                        (_%__kont171207171208%_))
                    (_%__kont171207171208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171207171208%_))
                                                (_%__kont171207171208%_))
                                            (_%__kont171207171208%_))))
                                    (_%__kont171207171208%_))))
                            (_%__kont171207171208%_))))
                    (_%__kont171207171208%_))))))))))
